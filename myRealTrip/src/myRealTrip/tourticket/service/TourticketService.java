package myRealTrip.tourticket.service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.naming.NamingException;

import com.util.ConnectionProvider;

import myRealTrip.tourticket.dao.TourticketDAO;
import myRealTrip.tourticket.dto.TourticketDTO;

public class TourticketService {
	
	private TourticketDAO dao = TourticketDAO.getInstance();
	
	public ArrayList<String> getCities(String nation) {
		
		ArrayList<String>list= new ArrayList<>();
		
		 try(Connection conn = ConnectionProvider.getConnection()){
			 list = dao.getCities(conn, nation);
		} catch (SQLException | NamingException e) {
			e.printStackTrace();
		}
		 
		 return list;
		
	}
	
	
	public ArrayList<TourticketDTO> select( String nation, String city, String type ){
		
		ArrayList<TourticketDTO>list = new ArrayList<>();
		
		 try(Connection conn = ConnectionProvider.getConnection()){
			 list = dao.select(conn, nation, city, type);
		} catch (SQLException | NamingException e) {
			e.printStackTrace();
		}
		 
		 return list;
		 
		
	}
	
	
	public ArrayList<String> getCategory( String city, String nation){
		
		ArrayList<String>list = new ArrayList<>();
		
		 try(Connection conn = ConnectionProvider.getConnection()){
			 list = dao.getCategory(conn, city, nation);
		} catch (SQLException | NamingException e) {
			e.printStackTrace();
		}
		 
		
		return list;
	}
}










