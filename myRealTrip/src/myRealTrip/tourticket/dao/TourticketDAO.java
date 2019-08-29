package myRealTrip.tourticket.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.util.JdbcUtil;

import myRealTrip.tourticket.dto.TourticketDTO;
public class TourticketDAO {

	private static TourticketDAO dao = null;
	private TourticketDAO() {}
	public static TourticketDAO getInstance() {

		if(dao==null) {
			dao = new TourticketDAO();
		}
		return dao;
	}



	public ArrayList<String> getCities(Connection conn, String nation) {

		ArrayList<String> list = new ArrayList<>();

		PreparedStatement pstmt= null;
		ResultSet rs = null;

		String sql = " select c_name from city, nation " + 
				" where city.N_CODE=nation.n_code and n_name=? ";

		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, nation);
			rs = pstmt.executeQuery();

			while (rs.next()) {
				list.add(rs.getString("c_name"));
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
			JdbcUtil.close(conn);
		}


		return list;
	}


	public ArrayList<TourticketDTO> select(Connection conn, String nation, String city, String type ){

		ArrayList<TourticketDTO>list = new ArrayList<>();
		TourticketDTO dto = null;
		PreparedStatement pstmt= null;
		ResultSet rs = null;

		String sql = " select * from ( " + 
				" select rownum no, t.* " + 
				" from( " + 
				" select p.p_code, p_name , t_category, p_pic , t.T_PROMPTLY  " + 
				" , to_char(p_price,'9,999,999') p_price " + 
				" , (select c_name from city where city.C_CODE=city_code )city_code " + 
				" , (select count(*) from review r where r.P_CODE=p.p_code )cnt " + 
				" , nvl((select avg(r_score) from review r where r.P_CODE=p.p_code ),0) score " + 
				" from product p, tourticket t, p_pic pic  " + 
				" where p.p_code=t.p_code and pic.P_CODE=p.p_code ";

		if(city!=null && city!="")
			sql += " and city_code in (select c_code from city where  c_name='"+city+"') " ;
		else if( nation!=null && nation!="" ) {	
			sql += " and city_code in (select c_code from nation, city where  n_name='"+nation+"' and nation.N_CODE = city.N_CODE) ";
		}

		if(type.equals("recent")) sql +=	" order by p.p_code desc " ;
		else 							  sql +=	" order by cnt desc, score desc  "; 

		sql +=	" )t   ) where no between 1 and 12";

		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();

			while (rs.next()) {
				dto = new TourticketDTO();
				dto.setCity_code(rs.getString("city_code"));
				dto.setCnt(rs.getInt("cnt"));
				dto.setP_code(rs.getString("p_code"));
				dto.setP_name(rs.getString("p_name"));
				dto.setP_pic(rs.getString("p_pic"));
				dto.setP_price(rs.getString("p_price"));
				dto.setScore(rs.getDouble("score"));
				dto.setT_category(rs.getString("t_category"));
				dto.setT_promptly(rs.getString("T_PROMPTLY"));
				list.add(dto);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
			JdbcUtil.close(conn);
		}



		return list;

	}
	
	
	
	public ArrayList<String> getCategory(Connection conn, String city, String nation){
		
		ArrayList<String> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String sql = "select t_category from tourticket t, product p " + 
						"where t.p_code = p.p_code ";
				

		if(city!=null && city!="")
			sql += " and city_code in (select c_code from city where  c_name='"+city+"') " ;
		else if( nation!=null && nation!="" ) {	
			sql +=  " and city_code in (select c_code from nation, city where  n_name='"+nation+"' and nation.N_CODE = city.N_CODE) " ;
		}
		sql += "group by t_category order by t_category ";
		
		
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while (rs.next()) {
				list.add(rs.getString("t_category"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}



}
