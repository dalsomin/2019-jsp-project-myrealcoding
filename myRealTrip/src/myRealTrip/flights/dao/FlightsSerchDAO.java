package myRealTrip.flights.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;

import com.util.JdbcUtil;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

public class FlightsSerchDAO {
	public JSONArray getOWFlightsList(Connection conn, String startCity, String endCity, String startDate, String nonstop, String freebag, String order, String[] airlineAliances, String[] aline_agences, String[] flightsTimes, String seatLevel, int adult, int child, int infant){
		JSONArray list = new JSONArray();
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		StringBuffer sql = new StringBuffer();
		sql.append(" select f.ft_code, f.fa_code, fg.fa_name, ft_apcode, aa.aa_name, ft_deptime, ft_arrtime, ft_flytime, f.ap_code, ca.c_name dept_name , b.bg_charge, b.bg_no, b.bg_weight, f.ap_code2, ca2.c_name arr_name ,v_arrtime, v_deptime, v.ap_code vap_code, vft_code, fg.fa_logo");
		sql.append(" ,ff.ff_fare a_fare, ff.ff_fuel a_fuel, ff.ff_tax a_tax, ff.ff_charge a_charge, ff.ff_confirm a_confirm, ff.ff_sum a_sum, ca3.c_name vap_name, ca3.ap_timediff v_timediff, ca2.ap_timediff arr_timediff, ca.ap_timediff dep_timediff  "                                               );
		if(child > 0)
			sql.append("  ,ff2.ff_fare c_fare, ff2.ff_fuel c_fuel, ff2.ff_tax c_tax, ff2.ff_charge c_charge, ff2.ff_confirm c_confirm, ff2.ff_sum c_sum ");
		if(infant > 0)
			sql.append("  ,ff3.ff_fare i_fare, ff3.ff_fuel i_fuel, ff3.ff_tax i_tax, ff3.ff_charge i_charge, ff3.ff_confirm i_confirm, ff3.ff_sum i_sum ");
		sql.append("		from f_ticket f left join via v on f.ft_code = v.ft_code                                                                                                                                                                       " );
		sql.append("		join cityAirport ca on ca.ap_code = f.ap_code                                                                                                                                                                             "      );
		sql.append("		join cityAirport ca2 on ca2.ap_code = f.ap_code2                                                                                                                                                                          "      );
		sql.append("		join flight_agency fg on fg.fa_code = f.fa_code                                                                                                                                                                           "      );
		sql.append("		join airlinealiance aa on aa.aa_code = fg.aa_code                                                                                                                                                                         "      );
		sql.append(" join baggage b on f.bg_code = b.bg_code "                                                                                                                                                                                               );
		sql.append(" join flight_fare ff on ff.ft_code = f.ft_code and ff.ft_pstype = '성인'  and ff.ff_seatLevel = ? "                                                                                                                                                                                          );
		if(child > 0)
			sql.append("  join flight_fare ff2 on ff2.ft_code = f.ft_code  and ff2.ft_pstype = '소아' and ff2.ff_seatLevel = ?  ");
		if(infant > 0)
			sql.append("  join flight_fare ff3 on ff3.ft_code = f.ft_code  and ff3.ft_pstype = '유아'  and ff3.ff_seatLevel = ?  ");
		sql.append(" left join cityAirport ca3 on ca3.ap_code = v.ap_code "                                                                                                                                                                                       );
		sql.append("		where ca.c_name =? and ca2.c_name =?                                                                                                                                                                          "                  );
		sql.append("		and substr(ft_deptime,0,10) = ?     "    );                                                                                                                                                                                                                                                                                                                                                                                                      
		
		if(freebag.equals("Y")) {
			sql.append( " and bg_charge = '무료' ");
		}
		// System.out.println(nonstop);
		if(nonstop.equals("Y")) {
			sql.append( " and v.ap_code  is null ");
		}else if(nonstop.equals("N")) {
			sql.append(" and v.ap_code  is not null ");
		}
		
		if(airlineAliances[0].equals("A")) {
			
		}else if(!airlineAliances[0].equals("")) {
			sql.append("and (");
			for (int i = 0; i < airlineAliances.length; i++) {
				if(i != 0) {
					sql.append(" or ");
				}
				sql.append( " aa.aa_name = '"+airlineAliances[i] + "'");
			}
			sql.append(") ");
		}else {
			sql.append( "  and aa.aa_name = '선택안함'  ");
		}
		
		
		if(aline_agences[0].equals("A")) {
			
		}else if(!aline_agences[0].equals("")) {
			sql.append("and (");
			for (int i = 0; i < aline_agences.length; i++) {
				if(i != 0) {
					sql.append( " or ");
				}
				sql.append( "  fg.fa_name = '"+aline_agences[i] + "'");
			}
			sql.append( ") ");
		}else {
			sql.append( "  and  fg.fa_name = '선택안함'  ");
		}
		
		if(flightsTimes[0].equals("A")) {
			
		}else if(!flightsTimes[0].equals("")) {
			// sql += "and (";
			StringBuffer sbdep = new StringBuffer();
			StringBuffer sbarr = new StringBuffer();
			sbdep.append(" and ( ");
			sbarr.append(" and ( ");
			int dep = 0;
			int arr = 0;
			// 편도는 앞의 3글자가 dep인지 arr인지 판단해서 출발 도착 판단할 것
			for (int i = 0; i < flightsTimes.length; i++) {
				
				if(flightsTimes[i].substring(0, 3).equals("dep")) {
					if(dep != 0) {
						sbdep.append(" or ");
					}
					sbdep.append( "  (substr(ft_deptime, 12, 5) between '" + flightsTimes[i].substring(5, 10) + "' and '" + flightsTimes[i].substring(11) + "')   ");
					dep ++;
					
				}else {
					if(arr != 0) {
						sbarr.append(" or ");
					}
					sbarr.append( "  (substr(ft_arrtime, 12, 5) between '" + flightsTimes[i].substring(5, 10) + "' and '" + flightsTimes[i].substring(11) + "')   ");
					arr ++;
					
				}
			}
			sbdep.append(" ) ");
			sbarr.append(" ) ");
			if(dep != 0)
				sql.append(sbdep.toString());
			if(arr != 0)
				sql.append(sbarr.toString());
			// sql += ") ";
		}else {
			sql.append( "  and  (substr(ft_deptime, 12, 5) = '선택안함' or substr(ft_arrtime, 12, 5) = '선택안함' )  ");
		}
		
		
		if(order.substring(0, 3).equals("dep")) {
			sql.append(" order by "+order.substring(4));			
		}else {
			sql.append(" order by " + order);
		}
		// System.out.println(sql);
		try {
			pstmt = conn.prepareStatement(sql.toString());
			int index = 0;
			pstmt.setString(++index, seatLevel);
			if(child > 0 )
				pstmt.setString(++index, seatLevel);
			if(infant > 0)
				pstmt.setString(++index, seatLevel);
			pstmt.setString(++index, startCity);
			pstmt.setString(++index, endCity);
			pstmt.setString(++index, startDate);
			// System.out.println("*****" + index);
			
			// System.out.println(sql);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				JSONObject dto = new JSONObject();
				dto.put("ft_code", rs.getInt("ft_code"));
				dto.put("vap_name", rs.getString("vap_name"));
				dto.put("dep_timediff", rs.getString("dep_timediff"));
				dto.put("arr_timediff", rs.getString("arr_timediff"));
				dto.put("v_timediff", rs.getString("v_timediff"));
				dto.put("fa_code", rs.getInt("fa_code"));
				dto.put("fa_name", rs.getString("fa_name"));
				dto.put("ft_apcode", rs.getString("ft_apcode"));
				dto.put("aa_name", rs.getString("aa_name"));
				dto.put("ft_deptime", rs.getString("ft_deptime"));
				dto.put("ft_arrtime", rs.getString("ft_arrtime"));
				dto.put("ft_flytime", rs.getString("ft_flytime"));
				dto.put("ap_code", rs.getString("ap_code"));
				dto.put("dept_name", rs.getString("dept_name"));
				
				if(rs.getString("bg_charge").equals("무료")) {
					String buffer = rs.getString("bg_charge") + " 수하물 " + rs.getInt("bg_no") + "개";
					dto.put("baggage", buffer);
				}
				dto.put("ap_code2", rs.getString("ap_code2"));
				dto.put("arr_name", rs.getString("arr_name"));
				dto.put("v_arrtime", rs.getString("v_arrtime"));
				dto.put("v_deptime", rs.getString("v_deptime"));
				dto.put("vap_code", rs.getString("vap_code"));
				dto.put("vft_code", rs.getString("vft_code"));
				
				dto.put("a_charge", rs.getInt("a_charge"));
				dto.put("a_confirm", rs.getString("a_confirm"));
				dto.put("a_fare", rs.getInt("a_fare"));
				dto.put("a_fuel", rs.getInt("a_fuel"));
				dto.put("a_sum", rs.getInt("a_sum"));
				dto.put("a_tax", rs.getInt("a_tax"));
				
				if(child > 0) {
					dto.put("c_charge", rs.getInt("c_charge"));
					dto.put("c_confirm", rs.getString("c_confirm"));
					dto.put("c_fare", rs.getInt("c_fare"));
					dto.put("c_fuel", rs.getInt("c_fuel"));
					dto.put("c_sum", rs.getInt("c_sum"));
					dto.put("c_tax", rs.getInt("c_tax"));
				}
				
				if(infant > 0) {
					dto.put("i_charge", rs.getInt("i_charge"));
					dto.put("i_confirm", rs.getString("i_confirm"));
					dto.put("i_fare", rs.getInt("i_fare"));
					dto.put("i_fuel", rs.getInt("i_fuel"));
					dto.put("i_sum", rs.getInt("i_sum"));
					dto.put("i_tax", rs.getInt("i_tax"));
				}
				
				
				dto.put("fa_logo", rs.getString("fa_logo"));
				
				list.add(dto);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
		}
		return list;
	} // 편도 리스트 가져오는 함수
	
	public JSONArray getRTFlightsList(Connection conn, String startCity, String endCity, String startDate, String endDate, String nonstop, String freebag, String order, String[] airlineAliances, String[] aline_agences, String[] flightsTimes, String seatLevel, int adult, int child, int infant){
		// System.out.println("왕복 DAO");
		JSONArray list1 = new JSONArray();
		JSONArray list2 = new JSONArray();
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		// list1 출발
		StringBuffer sql = new StringBuffer();
		sql.append(" select f.ft_code, f.fa_code, fg.fa_name, ft_apcode, aa.aa_name, ft_deptime, ft_arrtime, ft_flytime, f.ap_code, ca.c_name dept_name , b.bg_charge, b.bg_no, b.bg_weight, f.ap_code2, ca2.c_name arr_name ,v_arrtime, v_deptime, v.ap_code vap_code, vft_code, fg.fa_logo");
		sql.append(" ,ff.ff_fare a_fare, ff.ff_fuel a_fuel, ff.ff_tax a_tax, ff.ff_charge a_charge, ff.ff_confirm a_confirm, ff.ff_sum a_sum, ca3.c_name vap_name, ca3.ap_timediff v_timediff, ca2.ap_timediff arr_timediff, ca.ap_timediff dep_timediff  "                                               );
		if(child>0)
			sql.append("  ,ff2.ff_fare c_fare, ff2.ff_fuel c_fuel, ff2.ff_tax c_tax, ff2.ff_charge c_charge, ff2.ff_confirm c_confirm, ff2.ff_sum c_sum ");
		if(infant > 0)
			sql.append("  ,ff3.ff_fare i_fare, ff3.ff_fuel i_fuel, ff3.ff_tax i_tax, ff3.ff_charge i_charge, ff3.ff_confirm i_confirm, ff3.ff_sum i_sum ");
		sql.append("		from f_ticket f left join via v on f.ft_code = v.ft_code                                                                                                                                                                       " );
		sql.append("		join cityAirport ca on ca.ap_code = f.ap_code                                                                                                                                                                             "      );
		sql.append("		join cityAirport ca2 on ca2.ap_code = f.ap_code2                                                                                                                                                                          "      );
		sql.append("		join flight_agency fg on fg.fa_code = f.fa_code                                                                                                                                                                           "      );
		sql.append("		join airlinealiance aa on aa.aa_code = fg.aa_code                                                                                                                                                                         "      );
		sql.append(" join baggage b on f.bg_code = b.bg_code "                                                                                                                                                                                               );
		sql.append(" join flight_fare ff on ff.ft_code = f.ft_code and ff.ft_pstype = '성인'  and ff.ff_seatLevel = ? "                                                                                                                                                                                          );
		if(child > 0)
			sql.append("  join flight_fare ff2 on ff2.ft_code = f.ft_code  and ff2.ft_pstype = '소아' and ff2.ff_seatLevel = ?  ");
		if(infant > 0)
			sql.append("  join flight_fare ff3 on ff3.ft_code = f.ft_code  and ff3.ft_pstype = '유아'  and ff3.ff_seatLevel = ?  ");
		sql.append(" join cityAirport ca3 on ca3.ap_code = v.ap_code "                                                                                                                                                                                       );
		sql.append("		where ca.c_name =? and ca2.c_name =?                                                                                                                                                                          "                  );
		sql.append("		and substr(ft_deptime,0,10) = ?     "    );                                                                                                                                                                                        
		
		if(freebag.equals("Y")) {
			sql.append(" and bg_charge = '무료' ");
		}
		
		if(nonstop.equals("Y")) {
			sql.append(" and v.ap_code  is null ");
		}else if(nonstop.equals("N")) {
			sql.append(" and v.ap_code  is not null ");
		}
		
		if(airlineAliances[0].equals("A")) {
			
		}else if(!airlineAliances[0].equals("")) {
			sql.append("and (");
			for (int i = 0; i < airlineAliances.length; i++) {
				if(i != 0) {
					sql.append("or");
				}
				sql.append( " aa.aa_name = '"+airlineAliances[i] + "'");
			}
			sql.append( ") ");
		}else {
			sql.append("  and aa.aa_name = '선택안함'  ");
		}
		
		if(aline_agences[0].equals("A")) {
			
		}else if(!aline_agences[0].equals("")) {
			sql.append("and (");
			for (int i = 0; i < aline_agences.length; i++) {
				if(i != 0) {
					sql.append("or");
				}
				sql.append("  fg.fa_name = '"+aline_agences[i] + "'");
			}
			sql.append(") ");
		}else {
			sql.append("  and  fg.fa_name = '선택안함'  ");
		}
		
		
		if(flightsTimes[0].equals("A")) {
			
		}else if(!flightsTimes[0].equals("")) {
			// sql += "and (";
			StringBuffer sbdep = new StringBuffer();
			StringBuffer sbarr = new StringBuffer();
			sbdep.append(" and ( ");
			sbarr.append(" and ( ");
			int dep = 0;
			int arr = 0;
			// 편도는 앞의 3글자가 dep인지 arr인지 판단해서 출발 도착 판단할 것
			for (int i = 0; i < flightsTimes.length; i++) {
				
				if(flightsTimes[i].substring(0, 4).equals("dep1")) {
					if(dep != 0) {
						sbdep.append(" or ");
					}
					sbdep.append( "  (substr(ft_deptime, 12, 5) between '" + flightsTimes[i].substring(5, 10) + "' and '" + flightsTimes[i].substring(11) + "')   ");
					dep ++;
					
				}else if(flightsTimes[i].substring(0, 4).equals("arr1")){
					if(arr != 0) {
						sbarr.append(" or ");
					}
					sbarr.append( "  (substr(ft_arrtime, 12, 5) between '" + flightsTimes[i].substring(5, 10) + "' and '" + flightsTimes[i].substring(11) + "')   ");
					arr ++;
					
				}
			}
			sbdep.append(" ) ");
			sbarr.append(" ) ");
			if(dep != 0)
				sql.append( sbdep.toString() );
			if(arr != 0)
				sql.append( sbarr.toString() );
			// sql += ") ";
		}else {
			sql.append("  and  (substr(ft_deptime, 12, 5) = '선택안함' or substr(ft_arrtime, 12, 5) = '선택안함' )  ");
		}
		
		
		
		if(order.substring(0, 3).equals("dep")) {
			sql.append(" order by "+order.substring(4));			
		}else if(!order.substring(0, 3).equals("arr")){
			sql.append(" order by " + order);
		}
		// System.out.println(startCity + "/" + endCity + "/" + startDate);
		try {
			pstmt = conn.prepareStatement(sql.toString());
			int index = 0;
			pstmt.setString(++index, seatLevel);
			if(child > 0 )
				pstmt.setString(++index, seatLevel);
			if(infant > 0)
				pstmt.setString(++index, seatLevel);
			pstmt.setString(++index, startCity);
			pstmt.setString(++index, endCity);
			pstmt.setString(++index, startDate);

			
			// System.out.println(sql);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				JSONObject dto = new JSONObject();
				dto.put("ft_code", rs.getInt("ft_code"));
				dto.put("vap_name", rs.getString("vap_name"));
				dto.put("dep_timediff", rs.getString("dep_timediff"));
				dto.put("arr_timediff", rs.getString("arr_timediff"));
				dto.put("v_timediff", rs.getString("v_timediff"));
				dto.put("fa_code", rs.getInt("fa_code"));
				dto.put("fa_name", rs.getString("fa_name"));
				dto.put("ft_apcode", rs.getString("ft_apcode"));
				dto.put("aa_name", rs.getString("aa_name"));
				dto.put("ft_deptime", rs.getString("ft_deptime"));
				dto.put("ft_arrtime", rs.getString("ft_arrtime"));
				dto.put("ft_flytime", rs.getString("ft_flytime"));
				dto.put("ap_code", rs.getString("ap_code"));
				dto.put("dept_name", rs.getString("dept_name"));
				
				if(rs.getString("bg_charge").equals("무료")) {
					String buffer = rs.getString("bg_charge") + " 수하물 " + rs.getInt("bg_no") + "개";
					dto.put("baggage", buffer);
				}
				dto.put("ap_code2", rs.getString("ap_code2"));
				dto.put("arr_name", rs.getString("arr_name"));
				dto.put("v_arrtime", rs.getString("v_arrtime"));
				dto.put("v_deptime", rs.getString("v_deptime"));
				dto.put("vap_code", rs.getString("vap_code"));
				dto.put("vft_code", rs.getString("vft_code"));
				
				dto.put("a_charge", rs.getInt("a_charge"));
				dto.put("a_confirm", rs.getString("a_confirm"));
				dto.put("a_fare", rs.getInt("a_fare"));
				dto.put("a_fuel", rs.getInt("a_fuel"));
				dto.put("a_sum", rs.getInt("a_sum"));
				dto.put("a_tax", rs.getInt("a_tax"));
				
				if(child > 0) {
					dto.put("c_charge", rs.getInt("c_charge"));
					dto.put("c_confirm", rs.getString("c_confirm"));
					dto.put("c_fare", rs.getInt("c_fare"));
					dto.put("c_fuel", rs.getInt("c_fuel"));
					dto.put("c_sum", rs.getInt("c_sum"));
					dto.put("c_tax", rs.getInt("c_tax"));
				}
				
				if(infant > 0) {
					dto.put("i_charge", rs.getInt("i_charge"));
					dto.put("i_confirm", rs.getString("i_confirm"));
					dto.put("i_fare", rs.getInt("i_fare"));
					dto.put("i_fuel", rs.getInt("i_fuel"));
					dto.put("i_sum", rs.getInt("i_sum"));
					dto.put("i_tax", rs.getInt("i_tax"));
				}
				
				dto.put("fa_logo", rs.getString("fa_logo"));
				
				list1.add(dto);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
		}
		
		// list2 출발
		sql = new StringBuffer();
		sql.append(" select f.ft_code, f.fa_code, fg.fa_name, ft_apcode, aa.aa_name, ft_deptime, ft_arrtime, ft_flytime, f.ap_code, ca.c_name dept_name , b.bg_charge, b.bg_no, b.bg_weight, f.ap_code2, ca2.c_name arr_name ,v_arrtime, v_deptime, v.ap_code vap_code, vft_code, fg.fa_logo");
		sql.append(" ,ff.ff_fare a_fare, ff.ff_fuel a_fuel, ff.ff_tax a_tax, ff.ff_charge a_charge, ff.ff_confirm a_confirm, ff.ff_sum a_sum, ca3.c_name vap_name, ca3.ap_timediff v_timediff, ca2.ap_timediff arr_timediff, ca.ap_timediff dep_timediff  "                                               );
				if(child > 0)
					sql.append("  ,ff2.ff_fare c_fare, ff2.ff_fuel c_fuel, ff2.ff_tax c_tax, ff2.ff_charge c_charge, ff2.ff_confirm c_confirm, ff2.ff_sum c_sum ");
				if(infant > 0)
					sql.append("  ,ff3.ff_fare i_fare, ff3.ff_fuel i_fuel, ff3.ff_tax i_tax, ff3.ff_charge i_charge, ff3.ff_confirm i_confirm, ff3.ff_sum i_sum ");
				sql.append("		from f_ticket f left join via v on f.ft_code = v.ft_code                                                                                                                                                                       " );
				sql.append("		join cityAirport ca on ca.ap_code = f.ap_code                                                                                                                                                                             "      );
				sql.append("		join cityAirport ca2 on ca2.ap_code = f.ap_code2                                                                                                                                                                          "      );
				sql.append("		join flight_agency fg on fg.fa_code = f.fa_code                                                                                                                                                                           "      );
				sql.append("		join airlinealiance aa on aa.aa_code = fg.aa_code                                                                                                                                                                         "      );
				sql.append(" join baggage b on f.bg_code = b.bg_code "                                                                                                                                                                                               );
				sql.append(" join flight_fare ff on ff.ft_code = f.ft_code and ff.ft_pstype = '성인'  and ff.ff_seatLevel = ? "                                                                                                                                                                                          );
				if(child > 0)
					sql.append("  join flight_fare ff2 on ff2.ft_code = f.ft_code  and ff2.ft_pstype = '소아' and ff2.ff_seatLevel = ?  ");
				if(infant > 0)
					sql.append("  join flight_fare ff3 on ff3.ft_code = f.ft_code  and ff3.ft_pstype = '유아'  and ff3.ff_seatLevel = ?  ");
				sql.append(" join cityAirport ca3 on ca3.ap_code = v.ap_code "                                                                                                                                                                                       );
				sql.append("		where ca.c_name =? and ca2.c_name =?                                                                                                                                                                          "                  );
				sql.append("		and substr(ft_deptime,0,10) = ?     "    );                                                                                                                                                                                                                                                                                                                                                                   
	
	if(freebag.equals("Y")) {
		sql.append(" and bg_charge = '무료' ");
	}
	
	if(nonstop.equals("Y")) {
		sql.append(" and v.ap_code  is null ");
	}else if(nonstop.equals("N")) {
		sql.append(" and v.ap_code  is not null ");
	}
	
	if(airlineAliances[0].equals("A")) {
		
	}else if(!airlineAliances[0].equals("")) {
		sql.append("and (");
		for (int i = 0; i < airlineAliances.length; i++) {
			if(i != 0) {
				sql.append("or");
			}
			sql.append( " aa.aa_name = '"+airlineAliances[i] + "'");
		}
		sql.append(") ");
	}else {
		sql.append("  and aa.aa_name = '선택안함'  ");
	}
	
	
	if(aline_agences[0].equals("A")) {
		
	}else if(!aline_agences[0].equals("")) {
		sql.append("and (");
		for (int i = 0; i < aline_agences.length; i++) {
			if(i != 0) {
				sql .append("or");
			}
			sql.append("  fg.fa_name = '"+aline_agences[i] + "'");
		}
		sql.append(") ");
	}else {
		sql.append("  and  fg.fa_name = '선택안함'  ");
	}
	
	if(flightsTimes[0].equals("A")) {
		
	}else if(!flightsTimes[0].equals("")) {
		// sql += "and (";
		StringBuffer sbdep = new StringBuffer();
		StringBuffer sbarr = new StringBuffer();
		sbdep.append(" and ( ");
		sbarr.append(" and ( ");
		int dep = 0;
		int arr = 0;
		// 편도는 앞의 3글자가 dep인지 arr인지 판단해서 출발 도착 판단할 것
		for (int i = 0; i < flightsTimes.length; i++) {
			
			if(flightsTimes[i].substring(0, 4).equals("dep2")) {
				if(dep != 0) {
					sbdep.append(" or ");
				}
				sbdep.append( "  (substr(ft_deptime, 12, 5) between '" + flightsTimes[i].substring(5, 10) + "' and '" + flightsTimes[i].substring(11) + "')   ");
				dep ++;
				
			}else if(flightsTimes[i].substring(0, 4).equals("arr2")){
				if(arr != 0) {
					sbarr.append(" or ");
				}
				sbarr.append( "  (substr(ft_arrtime, 12, 5) between '" + flightsTimes[i].substring(5, 10) + "' and '" + flightsTimes[i].substring(11) + "')   ");
				arr ++;
				
			}
		}
		sbdep.append(" ) ");
		sbarr.append(" ) ");
		if(dep != 0)
			sql.append( sbdep.toString());
		if(arr != 0)
			sql.append( sbarr.toString());
		// sql += ") ";
	}else {
		sql.append("  and  (substr(ft_deptime, 12, 5) = '선택안함' or substr(ft_arrtime, 12, 5) = '선택안함' )  ");
	}

	
	if(order.substring(0, 3).equals("arr")) {
		sql.append(" order by "+order.substring(4));			
	}else if(!order.substring(0, 3).equals("dep")){
		sql.append(" order by " + order);
	}
	// System.out.println(startCity + "/" + endCity + "/" + endDate);
	try {
		pstmt = conn.prepareStatement(sql.toString());
		int index = 0;
		pstmt.setString(++index, seatLevel);
		if(child > 0 )
			pstmt.setString(++index, seatLevel);
		if(infant > 0)
			pstmt.setString(++index, seatLevel);
		pstmt.setString(++index, endCity);
		pstmt.setString(++index, startCity);
		pstmt.setString(++index, endDate);

		
		// System.out.println(sql);
		rs = pstmt.executeQuery();
		
		while(rs.next()) {
			JSONObject dto = new JSONObject();
			dto.put("ft_code", rs.getInt("ft_code"));
			dto.put("vap_name", rs.getString("vap_name"));
			dto.put("dep_timediff", rs.getString("dep_timediff"));
			dto.put("arr_timediff", rs.getString("arr_timediff"));
			dto.put("v_timediff", rs.getString("v_timediff"));
			dto.put("fa_code", rs.getInt("fa_code"));
			dto.put("fa_name", rs.getString("fa_name"));
			dto.put("ft_apcode", rs.getString("ft_apcode"));
			dto.put("aa_name", rs.getString("aa_name"));
			dto.put("ft_deptime", rs.getString("ft_deptime"));
			dto.put("ft_arrtime", rs.getString("ft_arrtime"));
			dto.put("ft_flytime", rs.getString("ft_flytime"));
			dto.put("ap_code", rs.getString("ap_code"));
			dto.put("dept_name", rs.getString("dept_name"));
			
			if(rs.getString("bg_charge").equals("무료")) {
				String buffer = rs.getString("bg_charge") + " 수하물 " + rs.getInt("bg_no") + "개";
				dto.put("baggage", buffer);
			}
			dto.put("ap_code2", rs.getString("ap_code2"));
			dto.put("arr_name", rs.getString("arr_name"));
			dto.put("v_arrtime", rs.getString("v_arrtime"));
			dto.put("v_deptime", rs.getString("v_deptime"));
			dto.put("vap_code", rs.getString("vap_code"));
			dto.put("vft_code", rs.getString("vft_code"));
			
			dto.put("a_charge", rs.getInt("a_charge"));
			dto.put("a_confirm", rs.getString("a_confirm"));
			dto.put("a_fare", rs.getInt("a_fare"));
			dto.put("a_fuel", rs.getInt("a_fuel"));
			dto.put("a_sum", rs.getInt("a_sum"));
			dto.put("a_tax", rs.getInt("a_tax"));
			
			if(child > 0) {
				dto.put("c_charge", rs.getInt("c_charge"));
				dto.put("c_confirm", rs.getString("c_confirm"));
				dto.put("c_fare", rs.getInt("c_fare"));
				dto.put("c_fuel", rs.getInt("c_fuel"));
				dto.put("c_sum", rs.getInt("c_sum"));
				dto.put("c_tax", rs.getInt("c_tax"));
			}
			
			if(infant > 0) {
				dto.put("i_charge", rs.getInt("i_charge"));
				dto.put("i_confirm", rs.getString("i_confirm"));
				dto.put("i_fare", rs.getInt("i_fare"));
				dto.put("i_fuel", rs.getInt("i_fuel"));
				dto.put("i_sum", rs.getInt("i_sum"));
				dto.put("i_tax", rs.getInt("i_tax"));
			}
			
			dto.put("fa_logo", rs.getString("fa_logo"));
			
			list2.add(dto);
			// System.out.println(list2.size());
		}
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}finally {
		JdbcUtil.close(rs);
		JdbcUtil.close(pstmt);
	}
	
	JSONArray list = new JSONArray();
	for (int i = 0; i < list1.size(); i++) {
		JSONArray array = new JSONArray();
		array.add(list1.get(i));
		for (int j = 0; j < list2.size(); j++) {
			array.add(list2.get(j));
			list.add(array);
		}
	}
		return list;
	} // 왕복 리스트 가져오는 함수

	public JSONArray getMTFlightsList(Connection conn, String startCity, String endCity,
			String startCity2, String endCity2, String date1, String date2,
			String nonstop, String freebag, String order, String[] airlineAliances, String[] aline_agences, String[] flightsTimes, String seatLevel, int adult, int child, int infant) {
		JSONArray list1 = new JSONArray();
		JSONArray list2 = new JSONArray();
		list1 = this.getOWFlightsList(conn, startCity, endCity, date1, nonstop, freebag, order, airlineAliances, aline_agences, flightsTimes, seatLevel, adult, child, infant);
		list2 = this.getOWFlightsList(conn, startCity2, endCity2, date2, nonstop, freebag, order, airlineAliances, aline_agences, flightsTimes, seatLevel, adult, child, infant);
		
		JSONArray list = new JSONArray();
		for (int i = 0; i < list1.size(); i++) {
			JSONArray array = new JSONArray();
			array.add(list1.get(i));
			for (int j = 0; j < list2.size(); j++) {
				array.add(list2.get(j));
				list.add(array);
			}
		}
		return list;
	}

	public JSONArray getMTFlightsList(Connection conn, String startCity, String endCity,
			String startCity2, String endCity2, String startCity3, String endCity3, String date1, String date2,
			String date3, String nonstop, String freebag, String order, String[] airlineAliances, String[] aline_agences, String[] flightsTimes, String seatLevel, int adult, int child, int infant) {
		JSONArray list1 = new JSONArray();
		JSONArray list2 = new JSONArray();
		JSONArray list3 = new JSONArray();
		//System.out.println("City2 : " + startCity2 + "/" + endCity2);
		//  System.out.println("date2 : " + date2);
		list1 = this.getOWFlightsList(conn, startCity, endCity, date1, nonstop, freebag, order, airlineAliances, aline_agences, flightsTimes, seatLevel, adult, child, infant);
		list2 = this.getOWFlightsList(conn, startCity2, endCity2, date2, nonstop, freebag, order, airlineAliances, aline_agences, flightsTimes, seatLevel, adult, child, infant);
		list3 = this.getOWFlightsList(conn, startCity3, endCity3, date3, nonstop, freebag, order, airlineAliances, aline_agences, flightsTimes, seatLevel, adult, child, infant);
		System.out.println("다구간: "+list1.size() + "/" + list2.size() + "/" + list3.size());
		JSONArray list = new JSONArray();
		for (int i = 0; i < list1.size(); i++) {
			JSONArray array = new JSONArray();
			array.add(list1.get(i));
			for (int j = 0; j < list2.size(); j++) {
				array.add(list2.get(j));
				for (int j2 = 0; j2 < list3.size(); j2++) {
					array.add(list3.get(j2));
					list.add(array);
				}
			}
		}
		return list;
	}

	public JSONArray getMTFlightsList(Connection conn, String startCity, String endCity,
			String startCity2, String endCity2, String startCity3, String endCity3, String startCity4, String endCity4,
			String date1, String date2, String date3, String date4, String nonstop,
			String freebag, String order, String[] airlineAliances, String[] aline_agences, String[] flightsTimes, String seatLevel, int adult, int child, int infant) {
		JSONArray list1 = new JSONArray();
		JSONArray list2 = new JSONArray();
		JSONArray list3 = new JSONArray();
		JSONArray list4 = new JSONArray();
		list1 = this.getOWFlightsList(conn, startCity, endCity, date1, nonstop, freebag, order, airlineAliances, aline_agences, flightsTimes, seatLevel, adult, child, infant);
		list2 = this.getOWFlightsList(conn, startCity2, endCity2, date2, nonstop, freebag, order, airlineAliances, aline_agences, flightsTimes, seatLevel, adult, child, infant);
		list3 = this.getOWFlightsList(conn, startCity3, endCity3, date3, nonstop, freebag, order, airlineAliances, aline_agences, flightsTimes, seatLevel, adult, child, infant);
		list4 = this.getOWFlightsList(conn, startCity4, endCity4, date4, nonstop, freebag, order, airlineAliances, aline_agences, flightsTimes, seatLevel, adult, child, infant);
		
		JSONArray list = new JSONArray();
		for (int i = 0; i < list1.size(); i++) {
			JSONArray array = new JSONArray();
			array.add(list1.get(i));
			for (int j = 0; j < list2.size(); j++) {
				array.add(list2.get(j));
				for (int j2 = 0; j2 < list3.size(); j2++) {
					array.add(list3.get(j2));
					for (int k = 0; k < list4.size(); k++) {
						array.add(list4.get(k));
						list.add(array);
					}
				}
			}
		}
		return list;
	}
	
	public JSONObject getTicketInfo(Connection conn, int ft_code, int child, int infant, String seatLevel) {
		JSONObject dto = new JSONObject();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		StringBuffer sql = new StringBuffer();
		sql.append(" select f.ft_code, f.fa_code, fg.fa_name, ft_apcode, aa.aa_name, ft_deptime, ft_arrtime, ft_flytime, f.ap_code, ca.c_name dept_name , b.bg_charge, b.bg_no, b.bg_weight, f.ap_code2, ca2.c_name arr_name ,v_arrtime, v_deptime, v.ap_code vap_code, vft_code, fg.fa_logo");
		sql.append(" ,ff.ff_fare a_fare, ff.ff_fuel a_fuel, ff.ff_tax a_tax, ff.ff_charge a_charge, ff.ff_confirm a_confirm, ff.ff_sum a_sum, ca3.c_name vap_name, ca3.ap_timediff v_timediff, ca2.ap_timediff arr_timediff, ca.ap_timediff dep_timediff  "                                               );
		if(child > 0)
			sql.append("  ,ff2.ff_fare c_fare, ff2.ff_fuel c_fuel, ff2.ff_tax c_tax, ff2.ff_charge c_charge, ff2.ff_confirm c_confirm, ff2.ff_sum c_sum ");
		if(infant > 0)
			sql.append("  ,ff3.ff_fare i_fare, ff3.ff_fuel i_fuel, ff3.ff_tax i_tax, ff3.ff_charge i_charge, ff3.ff_confirm i_confirm, ff3.ff_sum i_sum ");
		sql.append("		from f_ticket f left join via v on f.ft_code = v.ft_code                                                                                                                                                                       " );
		sql.append("		join cityAirport ca on ca.ap_code = f.ap_code                                                                                                                                                                             "      );
		sql.append("		join cityAirport ca2 on ca2.ap_code = f.ap_code2                                                                                                                                                                          "      );
		sql.append("		join flight_agency fg on fg.fa_code = f.fa_code                                                                                                                                                                           "      );
		sql.append("		join airlinealiance aa on aa.aa_code = fg.aa_code                                                                                                                                                                         "      );
		sql.append(" join baggage b on f.bg_code = b.bg_code "                                                                                                                                                                                               );
		sql.append(" join flight_fare ff on ff.ft_code = f.ft_code and ff.ft_pstype = '성인'  and ff.ff_seatLevel = ? "                                                                                                                                                                                          );
		if(child > 0)
			sql.append("  join flight_fare ff2 on ff2.ft_code = f.ft_code  and ff2.ft_pstype = '소아' and ff2.ff_seatLevel = ?  ");
		if(infant > 0)
			sql.append("  join flight_fare ff3 on ff3.ft_code = f.ft_code  and ff3.ft_pstype = '유아'  and ff3.ff_seatLevel = ?  ");
		sql.append(" left join cityAirport ca3 on ca3.ap_code = v.ap_code "                                                                                                                                                                                       );
		sql.append("  where f.ft_code = ?  ");
		
		try {
			pstmt = conn.prepareStatement(sql.toString());
			int index = 0;
			pstmt.setString(++index, seatLevel);
			if(child > 0)
				pstmt.setString(++index, seatLevel);
			if(infant > 0)
				pstmt.setString(++index, seatLevel);
			pstmt.setInt(++index, ft_code);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				
				dto.put("ft_code", rs.getInt("ft_code"));
				dto.put("vap_name", rs.getString("vap_name"));
				dto.put("dep_timediff", rs.getString("dep_timediff"));
				dto.put("arr_timediff", rs.getString("arr_timediff"));
				dto.put("v_timediff", rs.getString("v_timediff"));
				dto.put("fa_code", rs.getInt("fa_code"));
				dto.put("fa_name", rs.getString("fa_name"));
				dto.put("ft_apcode", rs.getString("ft_apcode"));
				dto.put("aa_name", rs.getString("aa_name"));
				dto.put("ft_deptime", rs.getString("ft_deptime"));
				dto.put("ft_arrtime", rs.getString("ft_arrtime"));
				dto.put("ft_flytime", rs.getString("ft_flytime"));
				dto.put("ap_code", rs.getString("ap_code"));
				dto.put("dept_name", rs.getString("dept_name"));
				
				if(rs.getString("bg_charge").equals("무료")) {
					String buffer = rs.getString("bg_charge") + " 수하물 " + rs.getInt("bg_no") + "개";
					dto.put("baggage", buffer);
				}
				dto.put("ap_code2", rs.getString("ap_code2"));
				dto.put("arr_name", rs.getString("arr_name"));
				dto.put("v_arrtime", rs.getString("v_arrtime"));
				dto.put("v_deptime", rs.getString("v_deptime"));
				dto.put("vap_code", rs.getString("vap_code"));
				dto.put("vft_code", rs.getString("vft_code"));
				
				dto.put("a_charge", rs.getInt("a_charge"));
				dto.put("a_confirm", rs.getString("a_confirm"));
				dto.put("a_fare", rs.getInt("a_fare"));
				dto.put("a_fuel", rs.getInt("a_fuel"));
				dto.put("a_sum", rs.getInt("a_sum"));
				dto.put("a_tax", rs.getInt("a_tax"));
				
				if(child > 0) {
					dto.put("c_charge", rs.getInt("c_charge"));
					dto.put("c_confirm", rs.getString("c_confirm"));
					dto.put("c_fare", rs.getInt("c_fare"));
					dto.put("c_fuel", rs.getInt("c_fuel"));
					dto.put("c_sum", rs.getInt("c_sum"));
					dto.put("c_tax", rs.getInt("c_tax"));
				}
				
				if(infant > 0) {
					dto.put("i_charge", rs.getInt("i_charge"));
					dto.put("i_confirm", rs.getString("i_confirm"));
					dto.put("i_fare", rs.getInt("i_fare"));
					dto.put("i_fuel", rs.getInt("i_fuel"));
					dto.put("i_sum", rs.getInt("i_sum"));
					dto.put("i_tax", rs.getInt("i_tax"));
				}
				
				dto.put("fa_logo", rs.getString("fa_logo"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
		}
		return dto;
	}
}
