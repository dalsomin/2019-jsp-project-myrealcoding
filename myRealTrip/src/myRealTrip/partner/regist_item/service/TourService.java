package myRealTrip.partner.regist_item.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.naming.NamingException;

import com.util.ConnectionProvider;
import com.util.JdbcUtil;

import myRealTrip.partner.dto.B_addinfoDTO;
import myRealTrip.partner.regist_item.dao.Minbak_RegistDAO;
import myRealTrip.partner.regist_item.dao.Tour_RegistDAO;
import myRealTrip.partner.regist_item.dto.CitycodeDTO;
import myRealTrip.partner.regist_item.dto.MinbakDTO;
import net.sf.json.JSONArray;

public class TourService {

	public ArrayList<B_addinfoDTO> getaddinfolist() throws SQLException{
		Connection conn=null;
		Minbak_RegistDAO mdao = Minbak_RegistDAO.getInstance();
		try {
			conn = ConnectionProvider.getConnection();
			ArrayList<B_addinfoDTO> addinfolist = mdao.getaddinfo(conn);
			return addinfolist;
		} catch (NamingException e) {
			e.printStackTrace();
			JdbcUtil.rollback(conn);
			// TODO Auto-generated catch block
			throw new RuntimeException(e);
		}
		
		
	

	}
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
	
	public static void insert_minbakform(MinbakDTO mdto) throws NamingException, SQLException {
		
		Minbak_RegistDAO mdao =Minbak_RegistDAO.getInstance();
		Connection conn=null;
		conn= ConnectionProvider.getConnection();
	try {	
		conn.setAutoCommit(false);
		mdao.updateProduct(conn, mdto);
		mdao.insertBnb(conn, mdto);
		//mdao.insertB_add(conn, mdto);
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
	public JSONArray selectCityListAjax(int nationcode) {
		JSONArray citylist = new JSONArray();
		Minbak_RegistDAO mdao =Minbak_RegistDAO.getInstance();
		Connection conn=null;
	try {	
		conn= ConnectionProvider.getConnection();
		conn.setAutoCommit(false);
		citylist=mdao.selectcitylist_Ajax(conn, nationcode);

	}catch (Exception e) {
		e.printStackTrace();
			JdbcUtil.rollback(conn);
			throw new RuntimeException(e);
		
	}finally {
			//finall구문은 예외가 발생하든안하든 close한다.
			
			JdbcUtil.close(conn);
			
		}
	return citylist;
	}
	public String productiInsertAjax(int memberId, String filesystemname,int c_code) {
		Connection conn=null;
		String p_code=null;
		Tour_RegistDAO tdao = Tour_RegistDAO.getInstance();
		JSONArray pic = new JSONArray();
		try {
			conn = ConnectionProvider.getConnection();
			tdao.productinsertAJAX(conn,memberId, c_code);
			p_code=tdao.selectpcode(conn);
			System.out.println("service에서 p_code받아옴"+p_code);
			conn.commit();
		} catch (NamingException | SQLException e) {
			e.printStackTrace();
			JdbcUtil.rollback(conn);
			// TODO Auto-generated catch block
			throw new RuntimeException(e);
		}finally {
			//finall구문은 예외가 발생하든안하든 close한다.
			
			JdbcUtil.close(conn);
			
		}
		return p_code;
	}
	public JSONArray insertp_pic(int memberId, String filesystemname,int c_code, String p_code) {
		Connection conn=null;
		
		Minbak_RegistDAO mdao = Minbak_RegistDAO.getInstance();
		JSONArray pic = new JSONArray();
		try {
			conn = ConnectionProvider.getConnection();
			System.out.println("service에서 p_code받아옴"+p_code);
			//int result=mdao.isPcode_p_pic(conn,p_code);
			//System.out.println("pcode가 있는지??--"+result);
			mdao.insertp_pic(conn, p_code, filesystemname);
			System.out.println("insertdao성공하고 도라옴");
			conn.commit();
			pic = mdao.selectpic(conn,p_code);
			System.out.println("파일리스트가져옴");
			conn.commit();
		} catch (NamingException | SQLException e) {
			e.printStackTrace();
			JdbcUtil.rollback(conn);
			// TODO Auto-generated catch block
			throw new RuntimeException(e);
		}finally {
			//finall구문은 예외가 발생하든안하든 close한다.
			
			JdbcUtil.close(conn);
			
		}
		return pic;
	}
	public JSONArray updatep_pic(String p_code, String filesystemname, int c_code) {
		Connection conn=null;
		
		Minbak_RegistDAO mdao = Minbak_RegistDAO.getInstance();
		JSONArray pic = new JSONArray();
		try {
			conn = ConnectionProvider.getConnection();
		//	int result=mdao.isPcode_p_pic(conn,p_code);
				 mdao.updatefilp_pic(conn,p_code,filesystemname);
			conn.commit();
			pic = mdao.selectpic(conn,p_code);
			conn.commit();
		} catch (NamingException | SQLException e) {
			e.printStackTrace();
			JdbcUtil.rollback(conn);
			// TODO Auto-generated catch block
			throw new RuntimeException(e);
		}finally {
			//finall구문은 예외가 발생하든안하든 close한다.
			
			JdbcUtil.close(conn);
			
		}
		return pic;
	}
	public JSONArray insert_bnb_dpic(String p_code, String filesystemname, int c_code) {
		Connection conn=null;
		
		Minbak_RegistDAO mdao = Minbak_RegistDAO.getInstance();
		JSONArray pic = new JSONArray();
		try {
			conn = ConnectionProvider.getConnection();
			System.out.println("service에서 p_code받아옴"+p_code);
			//int result=mdao.isPcode_p_pic(conn,p_code);
			//System.out.println("pcode가 있는지??--"+result);
			mdao.insertbnb_dpic(conn, p_code, filesystemname);
			System.out.println("inser_tbnb_dao성공하고 도라옴");
			conn.commit();
			pic = mdao.selectbnbpic(conn,p_code);
			System.out.println("파일리스트가져옴");
			conn.commit();
		} catch (NamingException | SQLException e) {
			e.printStackTrace();
			JdbcUtil.rollback(conn);
			// TODO Auto-generated catch block
			throw new RuntimeException(e);
		}finally {
			//finall구문은 예외가 발생하든안하든 close한다.
			
			JdbcUtil.close(conn);
			
		}
		return pic;
	}
	
	
}
