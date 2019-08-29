package myRealTrip.myrealtripMember.service;

import java.sql.Connection;
import java.sql.SQLException;

import javax.naming.NamingException;

import com.util.ConnectionProvider;

import myRealTrip.myrealtripMember.dao.DeleteIDDAO;

public class DeleteIDService {
	
	
	public static void DisabledConstraint() {
		DeleteIDDAO dao = DeleteIDDAO.getInstance();
		try (Connection conn = ConnectionProvider.getConnection()) {			
		} catch (SQLException | NamingException e) {
			throw new RuntimeException(e);
		}
	}
	

	public static int deleteID(int memberId) {
		DeleteIDDAO dao = DeleteIDDAO.getInstance();
		try (Connection conn = ConnectionProvider.getConnection()) {			
			int result = dao.deleteID(conn, memberId);
			return result;
		} catch (SQLException | NamingException e) {
			throw new RuntimeException(e);
		}
	}
	
	
	public static void EnabledConstraint() {
		DeleteIDDAO dao = DeleteIDDAO.getInstance();
		try (Connection conn = ConnectionProvider.getConnection()) {		
			dao.EnabledConstraintMemberPK(conn);
			dao.EnabledConstraintAgree_mem(conn);
			dao.EnabledConstraintB_feedback(conn);
			dao.EnabledConstraintChatroom(conn);
			dao.EnabledConstraintCoupon(conn);
			dao.EnabledConstraintFlightbooking(conn);
			dao.EnabledConstraintM_order(conn);
			dao.EnabledConstraintPartner(conn);
			dao.EnabledConstraintQna_list(conn);
			dao.EnabledConstraintRef_acc(conn);
		} catch (SQLException | NamingException e) {
			throw new RuntimeException(e);
		}
	}
	
	
	public static int deleteFromAgree_mem(int memberId) {
		DeleteIDDAO dao = DeleteIDDAO.getInstance();
		try (Connection conn = ConnectionProvider.getConnection()) {			
			int result = dao.deleteFromAgree_mem(conn, memberId);
			return result;
		} catch (SQLException | NamingException e) {
			throw new RuntimeException(e);
		}
	}
	
	public static int deleteFromPartner(int memberId) {
		DeleteIDDAO dao = DeleteIDDAO.getInstance();
		try (Connection conn = ConnectionProvider.getConnection()) {			
			int result = dao.deleteFromPartner(conn, memberId);
			return result;
		} catch (SQLException | NamingException e) {
			throw new RuntimeException(e);
		}
	}
	

	
}
