package myRealTrip.support.service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import javax.naming.NamingException;

import com.util.ConnectionProvider;


import myRealTrip.support.dao.SupportHomeDAO;
import myRealTrip.support.model.EcdCountDTO;
import myRealTrip.support.model.SupportHomeDTO;

public class SupportHomeService {
	
	//
	public List<SupportHomeDTO> select(){
	//	System.out.println("SupportHomeService_select()");
		SupportHomeDAO dao = SupportHomeDAO.getInstance();
		try (Connection conn = ConnectionProvider.getConnection()) {
			List<SupportHomeDTO> list = dao.selectHome(conn);
			
			return list;
		} catch (SQLException | NamingException e) {
			throw new RuntimeException(e);
		}
	
		
	}
	
	
	
	//
	public List<SupportHomeDTO> selectSolution(int ac_code){
		SupportHomeDAO dao = SupportHomeDAO.getInstance();
		try (Connection conn = ConnectionProvider.getConnection()) {
			List<SupportHomeDTO> list = dao.solutionSelect(ac_code,conn);
			
			return list;
		} catch (SQLException | NamingException e) {
			throw new RuntimeException(e);
		}

	}
	public List<EcdCountDTO> acdCount(){
		SupportHomeDAO dao = SupportHomeDAO.getInstance();
		try(Connection conn = ConnectionProvider.getConnection()) {
			List<EcdCountDTO> count = dao.getAcdCount(conn);
			
			return count;
			
		}  catch (SQLException | NamingException e) {
			throw new RuntimeException(e);
		}
		
	}
	


}
