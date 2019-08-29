package myRealTrip.airtel.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;

import org.apache.catalina.valves.JDBCAccessLogValve;

import com.util.JdbcUtil;

import myRealTrip.airtel.dto.AirtelListDTO;

public class AirtelListDAO {

	private static AirtelListDAO dao = null;
	private AirtelListDAO() {}
	public static AirtelListDAO getInstance() {

		if(dao==null) {
			dao = new AirtelListDAO();
		}
		return dao;
	}

	private int pagePerContent = 4;
	
	public ArrayList<String> getCategory(Connection conn, String area, String nation){
		
		ArrayList<String> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String sql = " select a_type  from airtel a, product p  where a.p_code=p.p_code  " ; 

		if(area!=null && area!="")
			sql += " and city_code in (select c_code from airtelarea where  area_city='"+area+"') ";
		else if( nation!=null && nation!="" ) {	
			sql += " and city_code in (select c_code from airtelarea where  area_name='"+nation+"') ";
		}
		sql += "group by a_type ";
		
		
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while (rs.next()) {
				list.add(rs.getString("a_type"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}

	public ArrayList<AirtelListDTO> select(Connection conn, int currentPage, String order, String category, String area, String nation){

		String sql =  " select * from (                         " +
				" select rownum no, d.* from (                " +
				" select  t.*,                                         " +
				" (select count(*) from review r where r.p_code = t.p_code ) count,    " +
				" nvl((select avg(r_score) from review r where r.p_code = t.p_code ),0) score   " +
				" from(     " +
				" select a.p_code, a_period_start, a_period_end , p_name, a_type, p_pic, to_char(p_price,'9,999,999') p_price "+
				"  ,( select c_name from city where city_code=c_code ) cname, city_code  " +
				" from airtel a, product p, p_pic pp   " +
				" where a.p_code = p.p_code and p.p_code = pp.p_code " ;
		
		
		if(area!=null && area!="")
			sql += " and city_code in (select c_code from airtelarea where  area_city='"+area+"') ";
		else if( nation!=null && nation!="" ) {	
			sql += " and city_code in (select c_code from airtelarea where  area_name='"+nation+"') ";
		}
		
		switch (category) {
		case "airtel":			sql+= " and a_type='에어텔'  )t  "	;	break;
		case "package":		sql+= " and a_type='패키지'  )t  "	;	break;
		case "rentacar":		sql+= " and a_type='렌터카'  )t  "	;	break;
		case "transport":		sql+= " and a_type='항공권/승선권'  )t  "	;	break;
		case "accommodation":	sql+= " and a_type='숙박특가'  )t  "	;	break;
		default	:	sql+= "  )t  ";		break;
		}

		switch (order) {
		case "reviews":	sql += " order by count desc   " ;		break;
		case "price":		sql += " order by p_price desc " ; 		break;
		case "recent":		sql += " order by p_code asc   " ;		break;
		default :			sql += " order by score desc    " ; 		/*인기순 수정해야함!!!!!!!!!!!!*/		break;
		}
		sql += " )d ) where no between ? and ?    " ;
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ArrayList<AirtelListDTO> list = new ArrayList<>();
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, 1+(currentPage-1) * pagePerContent);
			pstmt.setInt(2, currentPage*pagePerContent);
			rs = pstmt.executeQuery();
			AirtelListDTO dto = null;
			while(rs.next()) {
				dto = new AirtelListDTO();
				dto.setP_code(rs.getString("p_code"));
				dto.setPic(rs.getString("p_pic"));
				dto.setA_period_start(rs.getDate("a_period_start"));
				dto.setA_period_end(rs.getDate("a_period_end"));
				dto.setTypename(rs.getString("a_type"));
				dto.setCity_code(rs.getString("cname"));
				dto.setP_name(rs.getString("p_name"));
				dto.setCount(rs.getInt("count"));
				dto.setScore(rs.getDouble("score"));
				dto.setP_price(rs.getString("p_price"));
				list.add(dto);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try { pstmt.close();} catch (SQLException e) {	e.printStackTrace();	}
			try {rs.close();    } catch (SQLException e) {	e.printStackTrace();}
			try {conn.close();  } catch (SQLException e) {	e.printStackTrace();}
		}
		return list;

	}
	
	public int getTotalPage(Connection conn, String category, String area, String nation) {
		
		int totalPage = 0;
		
		String sql = " select count(*) cnt from airtel a, product p where a.p_code = p.p_code  ";
		switch (category) {
		case "airtel":			sql+= " and a_type='에어텔'   "	;	break;
		case "package":		sql+= " and a_type='패키지'  "	;	break;
		case "rentacar":		sql+= " and a_type='렌터카'  "	;	break;
		case "transport":		sql+= " and a_type='항공권/승선권' "	;	break;
		case "accommodation":	sql+= " and a_type='숙박특가'  "	;	break;
		default	:	sql+= " and regexp_like(a_type,'*')  "	; break; 
		}
		
		if(area!=null && area!="")
			sql += " and city_code in (select c_code from airtelarea where  area_city='"+area+"') ";
		else if( nation!=null && nation!="" ) {	
			sql += " and city_code in (select c_code from airtelarea where  area_name='"+nation+"') ";
		}
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			rs.next();
			
			totalPage = rs.getInt("cnt")/pagePerContent;
			if(rs.getInt("cnt")%pagePerContent!=0) {
				totalPage += 1;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
			JdbcUtil.close(conn);
			
		}
		return totalPage;
	}
	
	
	
	public LinkedHashMap<String, ArrayList<String>> getCity(Connection conn){
		
		LinkedHashMap<String, ArrayList<String>> map = new LinkedHashMap<>();
		
		String sql = "select area_name, min(area_code) num from airtelarea group by AREA_NAME order by num";
		
		PreparedStatement pstmt = null, pstmt2 = null;
		ResultSet rs = null, rs2=null;
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			ArrayList<String> list = null;
			String area = "";
			
			while ( rs.next() ) {
				area = rs.getString("area_name");
				
				
				sql = String.format(" select area_city, min(area_code) num " + 
						" from airtelarea " + 
						" where area_name='%s' " + 
						" group by area_city " + 
						" order by num ", area);
				
				pstmt2 = conn.prepareStatement(sql);
				rs2 = pstmt2.executeQuery();
				list = new ArrayList<>();
				
				while ( rs2.next()) {
					String city = rs2.getString("area_city");
					list.add(city);
				}
				map.put(area, list);
			}
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			try { pstmt.close(); pstmt2.close();} catch (SQLException e) {	e.printStackTrace();	}
			try {rs.close();  rs2.close();   } catch (SQLException e) {	e.printStackTrace();}
			try {conn.close();  } catch (SQLException e) {	e.printStackTrace();}
		}
		return map;
	}
}
