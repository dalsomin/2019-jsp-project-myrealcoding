package myRealTrip.order.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.util.JdbcUtil;

import myRealTrip.airtel.dto.AirtelOptionDTO;
import myRealTrip.order.dto.OrderDTO;

public class OrderDAO {
	
	private static OrderDAO dao = null;
	private OrderDAO() {}
	public static OrderDAO getInstance() {

		if(dao==null) {
			dao = new OrderDAO();
		}
		return dao;
	}
	

	public OrderDTO getInfo(Connection conn, String p_code) {
		
		OrderDTO dto = new OrderDTO();
		
		String sql = " select part.member_name, partnerpicture, p.p_name, p_pic from product p, p_pic pp, partner part "
						+ " where p.p_code= ? and p.p_code=pp.p_code and p.memberid= part.memberid" ; 
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, p_code);
			rs = pstmt.executeQuery();
			rs.next();
			
			dto.setP_name(rs.getString("p_name"));
			dto.setP_pic(rs.getString("p_pic"));
			dto.setPartner(rs.getString("member_name"));
			dto.setPartner_pic(rs.getString("partnerpicture"));
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
			JdbcUtil.close(conn);
		}
		
		
		return dto;
	}
	public ArrayList<AirtelOptionDTO> getOptions(Connection conn, String code) {

		ArrayList<AirtelOptionDTO>list = new ArrayList<>();
		AirtelOptionDTO dto = null;
		
		String sql = "select * from a_detail where a_d_code in (" + code + " ) ";
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while (rs.next()) {
				dto = new AirtelOptionDTO();
				dto.setA_d_name(rs.getString("a_d_name"));
				dto.setA_d_price(rs.getInt("a_d_price"));
				
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
	
	
	
	
}
