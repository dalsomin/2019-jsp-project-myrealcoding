package myRealTrip.tourticket.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.LinkedHashMap;

import com.util.JdbcUtil;

import myRealTrip.airtel.dao.AirtelListDAO;
import myRealTrip.tourticket.dto.TourticketContentDTO;
import myRealTrip.tourticket.dto.TourticketCourseDTO;
import myRealTrip.tourticket.dto.TourticketDTO;

public class TourticketContentDAO {
	
	private static TourticketContentDAO dao = null;
	private TourticketContentDAO() {}
	public static TourticketContentDAO getInstance() {

		if(dao==null) {
			dao = new TourticketContentDAO();
		}
		return dao;
	}
		
	public TourticketContentDTO getContent(Connection conn, String p_code) {
		
		TourticketContentDTO dto = new TourticketContentDTO();
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String sql = "select * from tourticket where p_code = ? ";	
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, p_code);
			rs = pstmt.executeQuery();
			
			rs.next();
			
			dto.setT_category(rs.getString("t_category"));
			dto.setT_cnr(rs.getString("t_cnr"));
			dto.setT_eguide(rs.getString("t_eguide"));
			dto.setT_eticket(rs.getString("t_eticket"));
			dto.setT_introduce(rs.getString("t_introduce"));
			dto.setT_lang(rs.getString("t_lang"));
			dto.setT_pinclusion(rs.getString("t_pinclusion"));
			dto.setT_promptly(rs.getString("t_promptly"));
			dto.setT_scale(rs.getString("t_scale"));
			dto.setT_spot(rs.getString("t_spot"));
			dto.setT_summary(rs.getString("t_summary"));
			dto.setT_tburden(rs.getString("t_tburden"));
			dto.setT_timer(rs.getString("t_timer"));
			dto.setT_trans(rs.getString("t_trans"));
			dto.setT_usemethod(rs.getString("t_usemethod"));
			dto.setT_rcm(rs.getString("t_rcm"));
			dto.setT_hour(rs.getString("t_hour"));		
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
			JdbcUtil.close(conn);
		}	
		return dto;
	}
	
	public TourticketDTO getProductInfo(Connection conn, String p_code) {
		
		TourticketDTO dto = new TourticketDTO();
		
		String sql = " select p.p_code, p_pic, p_name, to_char(p_price,'9,999,999') p_price " + 
				" , (select c_name from city where C_CODE=city_code) city "+ 
				" , (select n_name from nation n, city c where n.N_CODE= c.N_CODE and C_CODE=city_code) n_name " + 
				" from p_pic pp, product p " + 
				" where p.P_CODE = pp.P_CODE and p.P_CODE=? ";
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, p_code);
			rs = pstmt.executeQuery();
			
			rs.next();
			
			dto.setCity_code(rs.getString("city"));
			dto.setP_code(rs.getString("p_code"));
			dto.setP_name(rs.getString("p_name"));
			dto.setP_pic(rs.getString("p_pic"));
			dto.setP_price(rs.getString("p_price"));
			dto.setN_name(rs.getString("n_name"));
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
		}	
		sql = " select count(*) cnt, avg(r_score) score from review where p_code=? ";
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, p_code);
			rs = pstmt.executeQuery();
			
			rs.next();

			dto.setCnt(rs.getInt("cnt"));
			dto.setScore(rs.getDouble("score"));
		
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
			JdbcUtil.close(conn);
		}
		
		return dto;
	}
	
	public ArrayList<TourticketCourseDTO> getCourseInfo(Connection conn, String p_code){
		
		ArrayList<TourticketCourseDTO> list = new ArrayList<>();
		TourticketCourseDTO dto = null;
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String sql = "select * from t_course where pcode = ? ";
		
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, p_code);
			rs = pstmt.executeQuery();
			
			while (rs.next()) {
				dto = new TourticketCourseDTO();
				dto.setTc_detail(rs.getString("tc_detail"));
				dto.setTc_pic(rs.getString("tc_pic"));
				dto.setTc_title(rs.getString("tc_title"));
				dto.setTc_time(rs.getString("tc_time"));
				
				list.add(dto);
			}
			
			
		}catch (SQLException e) {
			e.printStackTrace();
		}finally {
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
			JdbcUtil.close(conn);
		}
		
		
		return list;
	}
	
	
	public LinkedHashMap<Integer, String> getPrice(Connection conn, String p_code) {
		
		LinkedHashMap<Integer, String> map = new LinkedHashMap<>();
		
		String sql = " select count(*) from d_price where pcode=? ";
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, p_code);
			rs = pstmt.executeQuery();
			rs.next();
			if(rs.getInt(1)>0) {
				map = getD_Price(conn, p_code);
			}else {
				map = getS_Price(conn, p_code);
			}
		}catch (SQLException e) {
			e.printStackTrace();
		}finally {
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
			JdbcUtil.close(conn);
		}
		return map;
		
	}
	
	public LinkedHashMap<Integer, String> getD_Price(Connection conn, String p_code) {
		
		LinkedHashMap<Integer, String> map = new LinkedHashMap<>();
		String sql = " select dp_people, to_char(dp_one,'9,999,999') price from d_price where pcode=? ";
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, p_code);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				map.put(rs.getInt("dp_people"), rs.getString("price"));
			}
			
		}catch (SQLException e) {
			e.printStackTrace();
		}finally {
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
		}
		return map;
	}
	
	
	public LinkedHashMap<Integer, String> getS_Price(Connection conn, String p_code) {
		
		LinkedHashMap<Integer, String> map = new LinkedHashMap<>();
		String sql = " select sp_maxp, to_char(sp_one,'9,999,999') price from s_price where pcode=? ";
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, p_code);
			rs = pstmt.executeQuery();
			rs.next();
			map.put(rs.getInt("sp_maxp"), rs.getString("price"));
			
		}catch (SQLException e) {
			e.printStackTrace();
		}finally {
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
		}
		
		return map;
	}
	
	
}
