package myRealTrip.myrealtripMember.service;

import java.sql.Clob;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import javax.naming.NamingException;

import com.util.ConnectionProvider;

import myRealTrip.auth.model.Member;
import myRealTrip.myrealtripMember.dao.EditPMDAO;

public class EditPMService {
	

	public int updateMember(String member_name, String facebook, String naver, String member_pic, int memberId) {
		EditPMDAO dao = EditPMDAO.getInstance();
		try (Connection conn = ConnectionProvider.getConnection()) {			
			int result = dao.updateMember(conn, member_name, facebook, naver, member_pic, memberId);
			return result;
		} catch (SQLException | NamingException e) {
			throw new RuntimeException(e);
		}
	}
	
	
	public int insertAgreeMem(int memberId, String mar_type) {
		EditPMDAO dao = EditPMDAO.getInstance();
		try (Connection conn = ConnectionProvider.getConnection()) {			
			int result = dao.insertAgreeMem(conn, memberId, mar_type);
			return result;
		} catch (SQLException | NamingException e) {
			throw new RuntimeException(e);
		}
	}
	
	
	public int deleteAgreeMem(int memberId) {
		EditPMDAO dao = EditPMDAO.getInstance();
		try (Connection conn = ConnectionProvider.getConnection()) {			
			int result = dao.deleteAgreeMem(conn, memberId);
			return result;
		} catch (SQLException | NamingException e) {
			throw new RuntimeException(e);
		}
	}
	
	
	public List<String> selectMarType(int memberId){
		EditPMDAO dao = EditPMDAO.getInstance();
		try (Connection conn = ConnectionProvider.getConnection()) {			
			List<String> list = dao.selectMarType(conn, memberId);
			return list;
		} catch (SQLException | NamingException e) {
			throw new RuntimeException(e);
		}
	}
	
	
	/*
	public List<Member> selectModDate(int memberId){
		EditPMDAO dao = EditPMDAO.getInstance();
		try (Connection conn = ConnectionProvider.getConnection()) {			
			List<Member> list = dao.selectModDate(conn, memberId);
			//System.out.println(list);
			return list;
		} catch (SQLException | NamingException e) {
			throw new RuntimeException(e);
		}
	}

	*/

	
	
}
