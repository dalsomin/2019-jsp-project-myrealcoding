package myRealTrip.myrealtripMember.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class DeleteIDDAO {

	private static DeleteIDDAO dao = new DeleteIDDAO();

	public static DeleteIDDAO getInstance() {
		return dao;
	}
	
	public void DisabledConstraint(Connection conn) {
		
		String sql = " ALTER TABLE member "
				+" DISABLE CONSTRAINT member CASCADE  ";
		
		PreparedStatement pstmt = null;
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.executeQuery();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try { pstmt.close();} catch (SQLException e) {   e.printStackTrace();   }
		}
		
	}
	
	
	
	public int deleteID(Connection conn, int memberId) {

		String sql = " delete from member "
				+" where memberId = ?  ";

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
	
	
	
	public void EnabledConstraintMemberPK(Connection conn) {
		
		String sql = " ALTER TABLE member "
				+" ENABLE CONSTRAINT member  ";
		
		PreparedStatement pstmt = null;
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.executeQuery();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try { pstmt.close();} catch (SQLException e) {   e.printStackTrace();   }
		}
		
	}
	
	
	
	public void EnabledConstraintAgree_mem(Connection conn) {
		
		String sql = " ALTER TABLE AGREE_MEM "
				+" ENABLE CONSTRAINT FK_MEMBER_TO_AGREE_MEM  ";
		
		PreparedStatement pstmt = null;
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.executeQuery();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try { pstmt.close();} catch (SQLException e) {   e.printStackTrace();   }
		}
		
	}
	
	
	public void EnabledConstraintB_feedback(Connection conn) {
		
		String sql = " ALTER TABLE B_FEEDBACK "
				+" ENABLE CONSTRAINT FK_MEMBER_TO_B_FEEDBACK  ";
		
		PreparedStatement pstmt = null;
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.executeQuery();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try { pstmt.close();} catch (SQLException e) {   e.printStackTrace();   }
		}
		
	}
	
	
	public void EnabledConstraintChatroom(Connection conn) {
		
		String sql = " ALTER TABLE CHATROOM "
				+" ENABLE CONSTRAINT FK_MEMBER_TO_CHATROOM  ";
		
		PreparedStatement pstmt = null;
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.executeQuery();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try { pstmt.close();} catch (SQLException e) {   e.printStackTrace();   }
		}
		
	}
	
	
	public void EnabledConstraintCoupon(Connection conn) {
		
		String sql = " ALTER TABLE COUPON "
				+" ENABLE CONSTRAINT FK_MEMBER_TO_COUPON  ";
		
		PreparedStatement pstmt = null;
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.executeQuery();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try { pstmt.close();} catch (SQLException e) {   e.printStackTrace();   }
		}
		
	}
	
	
	public void EnabledConstraintFlightbooking(Connection conn) {
		
		String sql = " ALTER TABLE FLIGHTBOOKING "
				+" ENABLE CONSTRAINT FK_MEMBER_TO_FLIGHTBOOKING  ";
		
		PreparedStatement pstmt = null;
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.executeQuery();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try { pstmt.close();} catch (SQLException e) {   e.printStackTrace();   }
		}
		
	}
	
	
	public void EnabledConstraintM_order(Connection conn) {
		
		String sql = " ALTER TABLE M_ORDER "
				+" ENABLE CONSTRAINT FK_MEMBER_TO_M_ORDER  ";

		PreparedStatement pstmt = null;
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.executeQuery();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try { pstmt.close();} catch (SQLException e) {   e.printStackTrace();   }
		}
		
	}
	
	
	public void EnabledConstraintPartner(Connection conn) {
		
		String sql = " ALTER TABLE PARTNER "
				+" ENABLE CONSTRAINT FK_MEMBER_TO_PARTNER  ";

		PreparedStatement pstmt = null;
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.executeQuery();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try { pstmt.close();} catch (SQLException e) {   e.printStackTrace();   }
		}
		
	}
	
	
	public void EnabledConstraintQna_list(Connection conn) {
		
		String sql = " ALTER TABLE QNA_LIST "
				+" ENABLE CONSTRAINT FK_MEMBER_TO_QNA_LIST  ";

		PreparedStatement pstmt = null;
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.executeQuery();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try { pstmt.close();} catch (SQLException e) {   e.printStackTrace();   }
		}
		
	}
	
	
	public void EnabledConstraintRef_acc(Connection conn) {
		
		String sql = " ALTER TABLE REF_ACC "
				+" ENABLE CONSTRAINT FK_MEMBER_TO_REF_ACC  ";

		PreparedStatement pstmt = null;
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.executeQuery();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try { pstmt.close();} catch (SQLException e) {   e.printStackTrace();   }
		}
		
	}
	
	
	public int deleteFromAgree_mem(Connection conn, int memberId) {

		String sql = " delete from AGREE_MEM "
				+" where memberid = ?  ";

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
	
	
	public int deleteFromPartner(Connection conn, int memberId) {

		String sql = " delete from PARTNER "
				+" where memberid = ?  ";
		
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
