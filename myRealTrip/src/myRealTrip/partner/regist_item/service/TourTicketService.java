package myRealTrip.partner.regist_item.service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.naming.NamingException;

import com.util.ConnectionProvider;
import com.util.JdbcUtil;

import myRealTrip.partner.regist_item.dao.Minbak_RegistDAO;
import myRealTrip.partner.regist_item.dao.TourTicket_RegistDAO;
import myRealTrip.partner.regist_item.dto.CitycodeDTO;
import myRealTrip.partner.regist_item.dto.TourTicketDTO;
import myRealTrip.tourticket.dto.TourticketDTO;
import myRealTrip.uploadfile.model.TempfileDTO;
import net.sf.json.JSONArray;

public class TourTicketService {

	public  ArrayList<CitycodeDTO> selectcitylist() throws SQLException{
		Connection conn=null;
		Minbak_RegistDAO mdao = Minbak_RegistDAO.getInstance();
		try {
			conn = ConnectionProvider.getConnection();
			ArrayList<CitycodeDTO> citylist = mdao.getcitylist(conn);
			return citylist;
		} catch (NamingException e) {
			e.printStackTrace();
			JdbcUtil.rollback(conn);
			// TODO Auto-generated catch block
			throw new RuntimeException(e);
		}
		
		
				
	}

	public  ArrayList<CitycodeDTO> selectnationlist() throws SQLException{
		Connection conn=null;
		Minbak_RegistDAO mdao = Minbak_RegistDAO.getInstance();
		try {
			conn = ConnectionProvider.getConnection();
			ArrayList<CitycodeDTO> nationlist = mdao.getnationlist(conn);
			return nationlist;
		} catch (NamingException e) {
			e.printStackTrace();
			JdbcUtil.rollback(conn);
			// TODO Auto-generated catch block
			throw new RuntimeException(e);
		}
		
		
		
	}
	public void registTour1(int memberId, TourTicketDTO tdto) throws NamingException, SQLException {
		TourTicket_RegistDAO tdao =TourTicket_RegistDAO.getInstance();
		Connection conn=null;
		conn= ConnectionProvider.getConnection();
	try {	
		conn.setAutoCommit(false);
		tdao.insertProduct(conn, tdto);
		//tdao.insertP_pic(conn, tdto);
		//tdao.insertP_addpic(conn, tdto);
		tdao.insertTourTicket(conn, tdto);

		conn.commit();
	}catch (Exception e) {
		e.printStackTrace();
			JdbcUtil.rollback(conn);
			throw new RuntimeException(e);
		
	}finally {
			//finall구문은 예외가 발생하든안하든 close한다.
			
			JdbcUtil.close(conn);
			
		}
		
	}

	public void registTour2_hour( TourTicketDTO tdto) throws NamingException, SQLException {
		TourTicket_RegistDAO tdao =TourTicket_RegistDAO.getInstance();
		Connection conn=null;
	try {	
		
		conn= ConnectionProvider.getConnection();
	 	tdao.insertTourTicket2_hour(conn, tdto);
	 	tdao.insertTourCourse(conn, tdto);
	 
		conn.commit();
	}catch (Exception e) {
		e.printStackTrace();
			JdbcUtil.rollback(conn);
			throw new RuntimeException(e);
		
	}finally {
			//finall구문은 예외가 발생하든안하든 close한다.
			
			JdbcUtil.close(conn);
			
		}
		
		
	}

	public void registTour2_rcm(TourTicketDTO tdto) {
		TourTicket_RegistDAO tdao =TourTicket_RegistDAO.getInstance();
		Connection conn=null;
	try {	
		conn= ConnectionProvider.getConnection();
		
	 	tdao.insertTourTicket2_rcm(conn, tdto);
	 	tdao.insertTourCourse(conn, tdto);
	 
		conn.commit();
	}catch (Exception e) {
		e.printStackTrace();
			JdbcUtil.rollback(conn);
			throw new RuntimeException(e);
		
	}finally {
			//finall구문은 예외가 발생하든안하든 close한다.
			
			JdbcUtil.close(conn);
			
		}
	}
	public String selectP_code(int memberId) {
		TourTicket_RegistDAO tdao =TourTicket_RegistDAO.getInstance();
		String pcode=null;
		Connection conn=null;
	try {	
		conn= ConnectionProvider.getConnection();
		conn.setAutoCommit(false);
	 	pcode=tdao.selectpcode(conn,memberId);

		conn.commit();
	}catch (Exception e) {
		e.printStackTrace();
			JdbcUtil.rollback(conn);
			throw new RuntimeException(e);
		
	}finally {
			//finall구문은 예외가 발생하든안하든 close한다.
			
			JdbcUtil.close(conn);
			
		}
		return pcode;
	}

		
		
	
////////////////////////////////////////////////////////////////////////////////////////
	public JSONArray tempfileInsertnSelect(TourTicketDTO tdto) {
		Connection conn = null;
		TourTicket_RegistDAO tdao =TourTicket_RegistDAO.getInstance();
		JSONArray file = new JSONArray();
	try {	
		conn= ConnectionProvider.getConnection();
		conn.setAutoCommit(false);
		tdao.ms_picInsert(conn,tdto);
		file=tdao.selectmspic_pcode(conn,tdto);
		
		conn.commit();
	}catch (Exception e) {
		e.printStackTrace();
			JdbcUtil.rollback(conn);
			throw new RuntimeException(e);
		
	}finally {
			//finall구문은 예외가 발생하든안하든 close한다.
			
			JdbcUtil.close(conn);
			
		}
	return file;
		
		
		
		
	}

	public JSONArray tempfileUpdatenSelect(TourTicketDTO tdto) {
		Connection conn = null;
		TourTicket_RegistDAO tdao =TourTicket_RegistDAO.getInstance();
		JSONArray file = new JSONArray();
	try {	
		conn= ConnectionProvider.getConnection();
		conn.setAutoCommit(false);
		tdao.ms_picUpdate(conn,tdto);
		file=tdao.selectmspic_pcode(conn,tdto);
		conn.commit();
	}catch (Exception e) {
		e.printStackTrace();
			JdbcUtil.rollback(conn);
			throw new RuntimeException(e);
		
	}finally {
			//finall구문은 예외가 발생하든안하든 close한다.
			
			JdbcUtil.close(conn);
			
		}
	return file;
		
		
	}

	public void registTour3_singleprice(TourTicketDTO tdto) {
		TourTicket_RegistDAO tdao =TourTicket_RegistDAO.getInstance();
		Connection conn=null;
	try {	
		conn= ConnectionProvider.getConnection();
		conn.setAutoCommit(false);
		tdao.insertSinglePrice(conn, tdto);
		

		conn.commit();
	}catch (Exception e) {
		e.printStackTrace();
			JdbcUtil.rollback(conn);
			throw new RuntimeException(e);
		
	}finally {
			//finall구문은 예외가 발생하든안하든 close한다.
			
			JdbcUtil.close(conn);
			
		}
		
		
	}
	public void registTour3_multiprice(TourTicketDTO tdto) {
		TourTicket_RegistDAO tdao =TourTicket_RegistDAO.getInstance();
		Connection conn=null;
		try {	
			conn= ConnectionProvider.getConnection();
			conn.setAutoCommit(false);
			
			tdao.insertMultiPrice(conn, tdto);
			
	
			conn.commit();
		}catch (Exception e) {
			e.printStackTrace();
			JdbcUtil.rollback(conn);
			throw new RuntimeException(e);
			
		}finally {
			//finall구문은 예외가 발생하든안하든 close한다.
			
			JdbcUtil.close(conn);
			
		}
		
		
	}

	public void insertTourTicket3(TourTicketDTO tdto) {
		TourTicket_RegistDAO tdao =TourTicket_RegistDAO.getInstance();
		Connection conn=null;
		try {	
			conn= ConnectionProvider.getConnection();
			conn.setAutoCommit(false);
			tdao.insertTourTicket_3(conn, tdto);
			
			conn.commit();
		}catch (Exception e) {
			e.printStackTrace();
			JdbcUtil.rollback(conn);
			throw new RuntimeException(e);
			
		}finally {
			//finall구문은 예외가 발생하든안하든 close한다.
			
			JdbcUtil.close(conn);
			
		}
		
	}



}
