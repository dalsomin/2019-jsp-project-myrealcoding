package myRealTrip.myrealtripMember.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;


public class ChangePWDAO {
	
	private static ChangePWDAO dao = new ChangePWDAO();

	public static ChangePWDAO getInstance() {
		return dao;
	}
	
	public int updatePassword(Connection conn, String member_pwd, int memberId){
		System.out.println("dao");
		String sql = " update member "
				+" set member_pwd = ? "
				+" where memberId = ? ";

		PreparedStatement pstmt = null;      
		int result = 0;
		try {
			pstmt = conn.prepareStatement(sql);
			// System.out.println("sql삽입");
			pstmt.setString(1, member_pwd);
			// System.out.println("1인자");
			pstmt.setInt(2, memberId);
			// System.out.println("2인자");
			result = pstmt.executeUpdate();
			 // System.out.println("실행완료");
		} catch (SQLException e) { 
			e.printStackTrace();
		} finally {
			try { pstmt.close();} catch (SQLException e) {   e.printStackTrace();   }
		}
		System.out.println("비밀번호 갱신");
		//System.out.println(result);
		return result;
	}
	
	
	/*
	
	*/

}
