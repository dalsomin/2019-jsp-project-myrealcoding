package myRealTrip.myrealtripMember.service;

import java.sql.Connection;
import java.sql.SQLException;

import javax.naming.NamingException;

import com.util.ConnectionProvider;

import myRealTrip.myrealtripMember.dao.ProfileManagementDAO;
import myRealTrip.myrealtripMember.dao.SaveAccountDAO;
import myRealTrip.myrealtripMember.model.ProfileManagementDTO;

public class SaveAccountService {

	public static int updateAccount(String ra_name, String ra_bank, Long ra_sno, int memberId) {
		SaveAccountDAO dao = SaveAccountDAO.getInstance();
		try (Connection conn = ConnectionProvider.getConnection()) {
			//conn.setAutoCommit(false);
			System.out.println("서비스");
			int result = dao.updateAccount(conn, ra_name, ra_bank, ra_sno, memberId);
			return result;
		} catch (SQLException | NamingException e) {
			throw new RuntimeException(e);
		}
	}
	
	
	public static int insertAccount(int memberId, String ra_name, String ra_bank, Long ra_sno ) {
		
		SaveAccountDAO dao = SaveAccountDAO.getInstance();
		try (Connection conn = ConnectionProvider.getConnection()) {
			//conn.setAutoCommit(false);
			System.out.println("서비스");
			int result = dao.insertAccount(conn, memberId, ra_name, ra_bank, ra_sno);
			//System.out.println(result);
			return result;
		} catch (SQLException | NamingException e) {
			throw new RuntimeException(e);
		}
	}
	
	
	public static ProfileManagementDTO selectRA(int memberId) {
		
		 
		
		ProfileManagementDAO dao = ProfileManagementDAO.getInstance();
		
		try (Connection conn = ConnectionProvider.getConnection()) {			
			
			ProfileManagementDTO dto = dao.selectRA(conn, memberId);
			
			return dto;
		} catch (SQLException | NamingException e) {
			//System.out.println(" selectPMList  catch~ ");
			throw new RuntimeException(e);
		}
	}
	
	
}
