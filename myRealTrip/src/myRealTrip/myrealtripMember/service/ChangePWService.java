package myRealTrip.myrealtripMember.service;

import java.sql.Connection;
import java.sql.SQLException;

import javax.naming.NamingException;

import com.util.ConnectionProvider;

import myRealTrip.myrealtripMember.dao.ChangePWDAO;

public class ChangePWService {

	public static int updatePassword(String member_pwd, int memberId) {
		ChangePWDAO dao = ChangePWDAO.getInstance();
		try (Connection conn = ConnectionProvider.getConnection()) {
			// System.out.println("서비스");
			int result = dao.updatePassword(conn, member_pwd, memberId);
			return result;
		} catch (SQLException | NamingException e) {
			throw new RuntimeException(e);
		}
	}
	
}
