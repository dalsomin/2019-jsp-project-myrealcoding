package myRealTrip.support.service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.naming.NamingException;

import com.util.ConnectionProvider;
import com.util.JdbcUtil;

import myRealTrip.support.dao.SupportHomeDAO;
import myRealTrip.support.model.BFeedbackDTO;
import myRealTrip.support.model.SupportHomeDTO;


public class SupportArticlesService {

	public SupportHomeDTO selectOne(int fs_code) {
		SupportHomeDTO dto = null;
		SupportHomeDAO dao = SupportHomeDAO.getInstance();		
		Connection conn = null ; 
		
		try{	
			conn = ConnectionProvider.getConnection();
			//conn.setAutoCommit(false);
				//dao.updateReadcount(conn, num);
				dto = dao.selectOne(conn, fs_code);
				
			//conn.commit();
		} catch (SQLException | NamingException e) {
			JdbcUtil.rollback(conn);
			throw new RuntimeException(e);
		} 
		return dto;
		
	}
	
	public ArrayList<SupportHomeDTO> getRelationArticle(int fs_code){
		SupportHomeDAO dao = SupportHomeDAO.getInstance();		
		Connection conn = null ; 
		ArrayList<SupportHomeDTO> listR = null;
		
		try {
			conn = ConnectionProvider.getConnection();
			listR = dao.getRelationA(fs_code, conn);
		} catch (NamingException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return listR;
	}
	

	public int insertBF(int memberid, int fs_code,BFeedbackDTO dto) {
		SupportHomeDAO dao = SupportHomeDAO.getInstance();		
		Connection conn = null ; 
		//BFeedbackDTO dto = null;
		int result = 0;
		try {
			conn = ConnectionProvider.getConnection();
			System.out.println(dto.getBf_select().length+"//////");
			result = dao.insertBFeedback(memberid,fs_code,dto,conn);
			
		} catch (NamingException e) {
			
			e.printStackTrace();
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		return result;
		
	}

}