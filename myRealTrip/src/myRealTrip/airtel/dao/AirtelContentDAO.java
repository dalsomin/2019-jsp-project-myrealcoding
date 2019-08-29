package myRealTrip.airtel.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.util.JdbcUtil;

import myRealTrip.airtel.dto.AirtelContentDTO;
import myRealTrip.airtel.dto.AirtelOptionDTO;
import myRealTrip.review.dto.ReviewCountDTO;
import myRealTrip.review.dto.ReviewDTO;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

public class AirtelContentDAO {

	private static AirtelContentDAO dao = null;
	private AirtelContentDAO() {}
	public static AirtelContentDAO getInstance() {

		if(dao==null) {
			dao = new AirtelContentDAO();
		}
		return dao;
	}
	
	
	public  ArrayList<AirtelOptionDTO> getOptions (Connection conn, String p_code) {
		
		AirtelOptionDTO dto = null;
		
		ArrayList<AirtelOptionDTO> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String sql = " select a_d_name, a_d_price, a_d_code from a_detail where p_code =? ";
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, p_code);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
			
				dto = new AirtelOptionDTO();
				
				dto.setA_d_name(rs.getString("a_d_name"));
				dto.setA_d_price(rs.getInt("a_d_price"));
				dto.setA_d_code(rs.getInt("a_d_code"));
			
				list.add(dto);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
			JdbcUtil.close(conn);
		}
		
		return list;
	}
	
	public String [] getPartnerInfo(Connection conn, String p_code) {
		
		String [] infos = {"", ""};
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;		

		String sql = "  select member_name, introduce from product p, partner pa " + 
				" where p_code=? and p.memberid = pa.memberid  ";

		
			try {
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, p_code);
				rs = pstmt.executeQuery();
				rs.next();
				
				infos[0] = rs.getString("member_name");
				infos[1] = rs.getString("introduce");
			
				
			} catch (SQLException e) {
				e.printStackTrace();
			}finally {
				JdbcUtil.close(rs);
				JdbcUtil.close(pstmt);
				JdbcUtil.close(conn);
			}
		
		return infos;
		
	}


	public ArrayList<String> getContentPic (Connection conn, String p_code) {

		ArrayList<String> list = new ArrayList<>();

		PreparedStatement pstmt = null;
		ResultSet rs = null;

		String sql = " select b_d_picture from bnb_dpic where p_code = ? ";

		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, p_code);
			rs = pstmt.executeQuery();

			while (rs.next()) {
				list.add(rs.getString("b_d_picture"));
			}


		} catch (SQLException e) {
			e.printStackTrace();
		}


		return list;
	}


	public AirtelContentDTO getContent (Connection conn, String p_code) {

		AirtelContentDTO dto = new AirtelContentDTO();

		PreparedStatement pstmt = null;
		ResultSet rs = null;		

		String sql = "select a_use, a_cancel, a_etc, a_include, a_exclude from airtel where p_code = ? ";

		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, p_code);
			rs = pstmt.executeQuery();

			rs.next();
			dto.setA_cancel(rs.getString("a_cancel"));
			dto.setA_etc(rs.getString("a_etc"));
			dto.setA_use(rs.getString("a_use"));
			dto.setA_include(rs.getString("a_include"));
			dto.setA_exclude(rs.getString("a_exclude"));


		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
		}

		sql = "  select p_name, n_name, c_name, " + 
				" to_char(p_price,'9,999,999') p_price" + 
				" from product p, city c, nation n" + 
				" where p_code=? " + 
				" and p.CITY_CODE=c.C_CODE" + 
				" and c.N_CODE = n.N_CODE ";

		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, p_code);
			rs = pstmt.executeQuery();

			rs.next();
			dto.setCity(rs.getString("c_name"));
			dto.setNation(rs.getString("n_name"));
			dto.setP_name(rs.getString("p_name"));
			dto.setP_price(rs.getString("p_price"));

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
			JdbcUtil.close(conn);
		}


		return dto;
	}

}
