package myRealTrip.order.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class PayDAO {
	
	private static PayDAO dao = null;
	private PayDAO() {}
	public static PayDAO getInstance() {

		if(dao==null) {
			dao = new PayDAO();
		}
		return dao;
	}
	
	public int insertOrder(Connection conn, String p_code, int m_id, String age, String purpose, String p_number, String message, String p_nation, String email) throws SQLException {
		
		int success = 0;
		
		String sql = " insert into m_order values ( seq_order.nextval, sysdate, ?, ?, ? ,? ,null ,? , ?, ?)"; 
		
		PreparedStatement pstmt = null;
		
		pstmt= conn.prepareStatement(sql);
		pstmt.setInt(1, m_id);
		pstmt.setString(2, p_code);
		pstmt.setString(3, age+"대");
		pstmt.setString(4, purpose);
		pstmt.setString(5, p_nation + "  " + p_number);
		pstmt.setString(6, email);
		pstmt.setString(7, message);
		
		success = pstmt.executeUpdate();
		
		return success;
	}
	public void insertOrderDetail(Connection conn, String od_code, String cnt) throws SQLException {

		String sql = "insert into o_detail values (seq_o_detail.nextval,"+ od_code +" , seq_order.currval, "+cnt+" )";
		
		PreparedStatement pstmt = null;
		
		pstmt= conn.prepareStatement(sql);
		pstmt.executeUpdate();
		
	}
	public void insertOrderInfo(Connection conn, String kname, String gender, String birthday, String ename) throws SQLException {

		String sql = "insert into order_info values (seq_o_info.nextval, ? , ?, ?, ? , seq_order.currval )";
		
		PreparedStatement pstmt = null;
		
		pstmt= conn.prepareStatement(sql);
		pstmt.setString(1, kname);
		pstmt.setString(2, gender);
		pstmt.setString(3, birthday);
		pstmt.setString(4, ename);
		pstmt.executeUpdate();

	}
	
	
	public void insertPay(Connection conn, String payment, String price) throws SQLException {
		
		String sql = "insert into pay values (seq_pay.nextval, seq_order.currval, ? , "+ price +" )";
		
		PreparedStatement pstmt = null;
		
		pstmt= conn.prepareStatement(sql);
		pstmt.setString(1, payment);
		pstmt.executeUpdate();
		
	}
	
	
	
	
}
