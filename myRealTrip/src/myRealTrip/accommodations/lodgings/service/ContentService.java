package myRealTrip.accommodations.lodgings.service;

import java.sql.Connection;
import java.util.ArrayList;

import com.util.ConnectionProvider;

import myRealTrip.accommodations.lodgings.dao.ContentDAO;
import myRealTrip.accommodations.lodgings.dto.ContentDTO;

public class ContentService {
	
	
	public ContentDTO getLodgingsContent(String p_code) {
		ContentDTO dto =null;
		ContentDAO dao = ContentDAO.getInstance();
		
		Connection conn = null;
		try {
			conn = ConnectionProvider.getConnection();
			dto = dao.getLodgingsContent(conn, p_code);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return dto;
	}
	
	public ArrayList<ContentDTO> getPics(String p_code){
		
		ContentDAO dao  =ContentDAO.getInstance();
		ArrayList<ContentDTO> list = null;
		
		try (Connection conn = ConnectionProvider.getConnection()){
			list = dao.getPictures(conn, p_code);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	
	
}
