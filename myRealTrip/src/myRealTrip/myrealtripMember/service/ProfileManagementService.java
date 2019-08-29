package myRealTrip.myrealtripMember.service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.naming.NamingException;

import com.util.ConnectionProvider;

import myRealTrip.auth.model.Member;
import myRealTrip.myrealtripMember.dao.ProfileManagementDAO;
import myRealTrip.myrealtripMember.model.ProfileManagementDTO;

public class ProfileManagementService {
	
	public List<Member> selectMemberList() {
		ProfileManagementDAO dao = ProfileManagementDAO.getInstance();
		try (Connection conn = ConnectionProvider.getConnection()) {			
			List<Member> list = dao.selectMemberList(conn);
			return list;
		} catch (SQLException | NamingException e) {
			//System.out.println(" selectMemberList catch~ ");
			throw new RuntimeException(e);
		}
	}

	public ProfileManagementDTO selectRA(int memberId) {
		ProfileManagementDAO dao = ProfileManagementDAO.getInstance();
		try (Connection conn = ConnectionProvider.getConnection()) {			
			ProfileManagementDTO dto = dao.selectRA(conn, memberId);
			return dto;
		} catch (SQLException | NamingException e) {
			//System.out.println(" selectPMList  catch~ ");
			throw new RuntimeException(e);
		}
	}
	
	public List<ProfileManagementDTO> selectNOC(int memberId) {
		ProfileManagementDAO dao = ProfileManagementDAO.getInstance();
		try (Connection conn = ConnectionProvider.getConnection()) {			
			List<ProfileManagementDTO> list = dao.selectNOC(conn, memberId);
			//System.out.println(list);
			return list;
		} catch (SQLException | NamingException e) {
			//System.out.println(" selectNOC  catch~ ");
			throw new RuntimeException(e);
		}
	}
	
	
	public List<String> selectAgreeAdList(int memberId) {
		ProfileManagementDAO dao = ProfileManagementDAO.getInstance();
		try (Connection conn = ConnectionProvider.getConnection()) {			
			List<String> list = dao.selectAgreeAdList(conn, memberId);
			return list;
		} catch (SQLException | NamingException e) {
			throw new RuntimeException(e);
		}
	}
	

	
}
