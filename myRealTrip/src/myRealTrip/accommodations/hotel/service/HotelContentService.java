package myRealTrip.accommodations.hotel.service;

import java.sql.Connection;
import java.util.ArrayList;

import com.util.ConnectionProvider;

import myRealTrip.accommodations.hotel.dao.HotelContentDAO;
import myRealTrip.accommodations.hotel.dto.HotelContentDTO;
import myRealTrip.accommodations.hotel.dto.HotelRoomInfoDTO;

public class HotelContentService {

	HotelContentDAO dao = HotelContentDAO.getInstance();
	
	public HotelContentDTO getMainContent(String h_code) {
		
		HotelContentDTO dto = null;
		
		try(Connection conn = ConnectionProvider.getConnection()) {
			dto = dao.getMainContent(conn, h_code);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return dto;
	}
	
	public ArrayList<HotelRoomInfoDTO> getRoomInfo(String h_code){
		
		ArrayList<HotelRoomInfoDTO> list = null;
		
		try(Connection conn = ConnectionProvider.getConnection()) {
			list = dao.getRoomInfo(conn, h_code);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;		
	}
	
	public ArrayList<String> getHotelConfac(String h_code){
		
		ArrayList<String> confaclist= null;
		
		try(Connection conn = ConnectionProvider.getConnection()) {
			confaclist= dao.getHotelConfac(conn, h_code);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return confaclist;		
	}
	
	public ArrayList<String> getHotelAddfac(String h_code){
		
		ArrayList<String> addfaclist= null;
		
		try(Connection conn = ConnectionProvider.getConnection()) {
			addfaclist= dao.getHotelConfac(conn, h_code);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return addfaclist;		
	}
	
	
	
}
