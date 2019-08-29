package myRealTrip.myrealtripMember.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class DeleteRefAccDAO {

	private static DeleteRefAccDAO dao = new DeleteRefAccDAO();

	public static DeleteRefAccDAO getInstance() {
		return dao;
	}
	
	public int deleteRefAcc(Connection conn, int memberId) {

		String sql = " delete from ref_acc "
				+" where memberId=?  ";

		PreparedStatement pstmt = null;      
		int result = 0;
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, memberId); 
			result = pstmt.executeUpdate();
		} catch (SQLException e) { 
			e.printStackTrace();
		} finally {
			try { pstmt.close();} catch (SQLException e) {   e.printStackTrace();   }
		}
		return result;
	}
	
}
