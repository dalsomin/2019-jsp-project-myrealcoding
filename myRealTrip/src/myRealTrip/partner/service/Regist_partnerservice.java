	package myRealTrip.partner.service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.naming.NamingException;

import com.util.ConnectionProvider;
import com.util.JdbcUtil;


import myRealTrip.partner.dao.Regist_partnerDAO;
import myRealTrip.partner.dto.Bp_telDTO;
import myRealTrip.partner.dto.GnP_MatchDTO;
import myRealTrip.partner.dto.International_pnumDTO;
import myRealTrip.partner.dto.Regist_B_partnerDTO;
import myRealTrip.partner.dto.Regist_I_partnerDTO;
import myRealTrip.partner.dto.Regist_partnerDTO;
import myRealTrip.partner.dto.TaxbillDTO;






public class Regist_partnerservice {
	

	//private static RegistIPartnerDAO registipartnerdao = new RegistIPartnerDAO();

	public ArrayList<International_pnumDTO> selectpnumlist() {
	
		Regist_partnerDAO registpartnerdao = Regist_partnerDAO.getInstance();		
		Connection conn = null ; 
		try{	
			conn = ConnectionProvider.getConnection();
				ArrayList<International_pnumDTO> pnumlist= registpartnerdao.getPnumList(conn);
				return pnumlist;
		} catch (SQLException | NamingException e) {
			JdbcUtil.rollback(conn);
			throw new RuntimeException(e);
		} 
		
		
		
	}
	
	
	
	
	public static void insert_i(Regist_partnerDTO partnerDTO, Regist_I_partnerDTO iPartnerdto, GnP_MatchDTO gnpdto)
			throws NamingException, SQLException {
		
		Regist_partnerDAO registpartnerdao = Regist_partnerDAO.getInstance();		
		Connection conn = null;
		conn=ConnectionProvider.getConnection();
		//String pnum=registipartnerdao.selectPnum(conn, country_name);
		
		try {
			conn.setAutoCommit(false);
			registpartnerdao.insertPartner(conn,partnerDTO);
			registpartnerdao.insertIpartner(conn,partnerDTO, iPartnerdto);
			registpartnerdao.insertGnP(conn,partnerDTO,gnpdto);
			registpartnerdao.updatemem_partneryn(conn, partnerDTO);
			conn.commit();

		}catch (Exception e) {
			JdbcUtil.rollback(conn);
			throw new RuntimeException(e);
		}finally {
			//finall구문은 예외가 발생하든안하든 close한다.
			
			JdbcUtil.close(conn);
			
		}
	}




	public void insert_b(Regist_partnerDTO partnerDTO, Regist_B_partnerDTO bPartnerdto, GnP_MatchDTO gnpdto
			,TaxbillDTO taxdto,Bp_telDTO bpteldto) throws NamingException, SQLException {
		Regist_partnerDAO registpartnerdao = Regist_partnerDAO.getInstance();		
		Connection conn = null;
		conn=ConnectionProvider.getConnection();
		//String pnum=registipartnerdao.selectPnum(conn, country_name);
		
		try {
			conn.setAutoCommit(false);
			registpartnerdao.insertPartner(conn,partnerDTO);
			registpartnerdao.insertGnP(conn,partnerDTO,gnpdto);			
			registpartnerdao.insertBpartner(conn,partnerDTO,bPartnerdto,taxdto,bpteldto);
			registpartnerdao.updatemem_partneryn(conn, partnerDTO);
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
	
	public void insert_btax(TaxbillDTO taxdto,String yn) throws NamingException, SQLException {
		Regist_partnerDAO registpartnerdao = Regist_partnerDAO.getInstance();		
		Connection conn = null;
	conn=ConnectionProvider.getConnection();
		//String pnum=registipartnerdao.selectPnum(conn, country_name);
		
		try {
			conn.setAutoCommit(false);
			if (yn.equals("y")) {
				
				registpartnerdao.insertTax_Y(conn,taxdto);			
				
			}else {
			registpartnerdao.insertTax_N(conn,taxdto);		
			}	
			conn.commit();
			
		}catch (Exception e) {
			JdbcUtil.rollback(conn);
			throw new RuntimeException(e);
		}finally {
			//finall구문은 예외가 발생하든안하든 close한다.
			
			JdbcUtil.close(conn);
			
		}
		
	}




	public void insert_btel(Bp_telDTO bteldto,Regist_partnerDTO rpdto) throws NamingException, SQLException {
		Regist_partnerDAO registpartnerdao = Regist_partnerDAO.getInstance();		
		Connection conn = null;
		conn=ConnectionProvider.getConnection();
		//String pnum=registipartnerdao.selectPnum(conn, country_name);
		
		try {
			registpartnerdao.insertBtel(conn,bteldto,rpdto);			
			conn.commit();
			
		}catch (Exception e) {
			JdbcUtil.rollback(conn);
			throw new RuntimeException(e);
		}finally {
			//finall구문은 예외가 발생하든안하든 close한다.
			
			JdbcUtil.close(conn);
			
		}
		
	}




	public void insert_quizyn(int memberId) throws NamingException, SQLException {
		Regist_partnerDAO rpdao = Regist_partnerDAO.getInstance();		
		Connection conn = null;
		conn=ConnectionProvider.getConnection();
		//String pnum=registipartnerdao.selectPnum(conn, country_name);
		
		try {
			rpdao.insert_quizyn(conn,memberId);			
			conn.commit();
			
		}catch (Exception e) {
			JdbcUtil.rollback(conn);
			throw new RuntimeException(e);
		}finally {
			//finall구문은 예외가 발생하든안하든 close한다.
			
			JdbcUtil.close(conn);
			
		}
		
	}




	public Regist_partnerDTO select_ynlist(int memberId) throws NamingException, SQLException {
		Regist_partnerDTO rpdto = new Regist_partnerDTO();
		Regist_partnerDAO rpdao = Regist_partnerDAO.getInstance();		
		Connection conn = null;
		conn=ConnectionProvider.getConnection();
		//String pnum=registipartnerdao.selectPnum(conn, country_name);
		
		try {
		rpdto=rpdao.select_quizynlist(conn,memberId);			
			conn.commit();
			return rpdto;
			
		}catch (Exception e) {
			JdbcUtil.rollback(conn);
			throw new RuntimeException(e);
		}finally {
			//finall구문은 예외가 발생하든안하든 close한다.
			
			JdbcUtil.close(conn);
			
		}
		
		
	}




	public int selectsurvey_yn(int memberId) {
		Connection conn = null;
		int surveyyn=0;
		//String pnum=registipartnerdao.selectPnum(conn, country_name);
		Regist_partnerDAO rpdao = Regist_partnerDAO.getInstance();		
		try {
			conn=ConnectionProvider.getConnection();
			surveyyn=rpdao.select_survey_yn(conn,memberId);			
			conn.commit();
			
		}catch (Exception e) {
			JdbcUtil.rollback(conn);
			throw new RuntimeException(e);
		}finally {
			//finall구문은 예외가 발생하든안하든 close한다.
			
			JdbcUtil.close(conn);
			
		}
		
		return surveyyn;
	}




	public String selectType(int memberId) {
		Connection conn = null;
		String type =null;
		//String pnum=registipartnerdao.selectPnum(conn, country_name);
		Regist_partnerDAO rpdao = Regist_partnerDAO.getInstance();		
		try {
			conn=ConnectionProvider.getConnection();
			type=rpdao.selectType(conn,memberId);			
			conn.commit();
			
		}catch (Exception e) {
			JdbcUtil.rollback(conn);
			throw new RuntimeException(e);
		}finally {
			//finall구문은 예외가 발생하든안하든 close한다.
			
			JdbcUtil.close(conn);
			
		}
		return type;
	}

}
