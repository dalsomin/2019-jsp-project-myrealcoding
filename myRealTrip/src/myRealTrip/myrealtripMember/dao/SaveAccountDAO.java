package myRealTrip.myrealtripMember.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;


public class SaveAccountDAO {
	
	private static SaveAccountDAO dao = new SaveAccountDAO();

	public static SaveAccountDAO getInstance() {
		return dao;
	}
	
	
	
	
	public int insertAccount(Connection conn, int memberId, String ra_name, String ra_bank, long ra_sno ) {

		
		String sql = " insert into ref_acc values(?, ?, ?, ?) ";
		
		PreparedStatement pstmt = null;      
		int result = 0;
		try {
				//conn.setAutoCommit(true);   ////
				pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1, memberId);
				pstmt.setString(2, ra_name);			
				pstmt.setString(3, ra_bank);			
				pstmt.setLong(4, ra_sno);
				
				result = pstmt.executeUpdate();
				System.out.println("save account dao line 33 sql ="+sql);
				System.out.println("save account dao line 34 result ="+result);		
		} catch (SQLException e) { 
			e.printStackTrace();
		} finally {
			try { pstmt.close();} catch (SQLException e) {   e.printStackTrace();   }
		}
		

		return result;
	}
	
	
	

	public int updateAccount(Connection conn, String ra_name, String ra_bank, Long ra_sno, int memberId){
		System.out.println("dao");
		String sql = " update ref_acc "
				+" set ra_name = ? , ra_bank = ?, ra_sno = ? "
				+" where memberId = ? ";

		PreparedStatement pstmt = null;      
		int result = 0;
		try {
			pstmt = conn.prepareStatement(sql);
			 System.out.println("sql삽입");
			pstmt.setString(1, ra_name);
			 System.out.println("1인자");
			pstmt.setString(2, ra_bank);
			 System.out.println("2인자");
			pstmt.setLong(3, ra_sno);
			 System.out.println("3인자");
			pstmt.setInt(4, memberId);
			 System.out.println("4인자");
			result = pstmt.executeUpdate();
			 System.out.println("실행완료");
			 conn.commit();
		} catch (SQLException e) { 
			e.printStackTrace();
		} finally {
			try { pstmt.close();} catch (SQLException e) {   e.printStackTrace();   }
		}
		System.out.println("계좌번호 갱신");
		//System.out.println(result);
		return result;
	}
	
	
}
