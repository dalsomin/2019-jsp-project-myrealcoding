package myRealTrip.myrealtripMember.service;

import java.sql.Connection;
import java.sql.SQLException;

import javax.naming.NamingException;

import com.util.ConnectionProvider;

import myRealTrip.myrealtripMember.dao.DeleteRefAccDAO;

public class DeleteRefAccService {

	public static int deleteRefAcc(int memberId) {
		DeleteRefAccDAO dao = DeleteRefAccDAO.getInstance();
		try (Connection conn = ConnectionProvider.getConnection()) {			
			int result = dao.deleteRefAcc(conn, memberId);
			return result;
		} catch (SQLException | NamingException e) {
			throw new RuntimeException(e);
		}
	}
	
}
