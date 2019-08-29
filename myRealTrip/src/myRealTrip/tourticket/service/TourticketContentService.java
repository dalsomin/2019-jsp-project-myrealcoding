package myRealTrip.tourticket.service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.LinkedHashMap;

import javax.naming.NamingException;

import com.util.ConnectionProvider;

import myRealTrip.airtel.dao.AirtelContentDAO;
import myRealTrip.tourticket.dao.TourticketContentDAO;
import myRealTrip.tourticket.dto.TourticketContentDTO;
import myRealTrip.tourticket.dto.TourticketCourseDTO;
import myRealTrip.tourticket.dto.TourticketDTO;

public class TourticketContentService {

	private TourticketContentDAO dao = TourticketContentDAO.getInstance();
	private AirtelContentDAO dao2 = AirtelContentDAO.getInstance();

	public TourticketContentDTO getContent(String p_code	) {

		TourticketContentDTO dto = new TourticketContentDTO();
		try(Connection conn = ConnectionProvider.getConnection()){
			dto = dao.getContent(conn, p_code);
		} catch (SQLException | NamingException e) {
			e.printStackTrace();
		}

		return dto;

	}
	
	public ArrayList<String> getContentPic(String p_code){
		
		ArrayList<String>list = new ArrayList<>();
		try(Connection conn = ConnectionProvider.getConnection()){
			list = dao2.getContentPic(conn, p_code);
		} catch (SQLException | NamingException e) {
			e.printStackTrace();
		}

		return list;
	}
	
	
	public TourticketDTO getProductInfo(String p_code) {
		
		TourticketDTO dto = new TourticketDTO();
		try(Connection conn = ConnectionProvider.getConnection()){
			dto = dao.getProductInfo(conn, p_code);
		} catch (SQLException | NamingException e) {
			e.printStackTrace();
		}
		return dto;
		
	}

	public ArrayList<TourticketCourseDTO> getCourseInfo(String p_code){
		
		ArrayList<TourticketCourseDTO>list = new ArrayList<>();
		try(Connection conn = ConnectionProvider.getConnection()){
			list = dao.getCourseInfo(conn, p_code);
		} catch (SQLException | NamingException e) {
			e.printStackTrace();
		}

		return list;
	}
	
	
	public LinkedHashMap<Integer, String> getPrice(String p_code) {
		
		LinkedHashMap<Integer, String>map = new LinkedHashMap<>();
		try(Connection conn = ConnectionProvider.getConnection()){
			map = dao.getPrice(conn, p_code);
		} catch (SQLException | NamingException e) {
			e.printStackTrace();
		}
		
		return map;
	}


}
