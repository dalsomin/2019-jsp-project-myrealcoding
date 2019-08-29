package myRealTrip.airtel.service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.naming.NamingException;

import com.util.ConnectionProvider;

import myRealTrip.airtel.dao.AirtelContentDAO;
import myRealTrip.airtel.dto.AirtelContentDTO;
import myRealTrip.airtel.dto.AirtelOptionDTO;
import myRealTrip.review.dto.ReviewCountDTO;
import myRealTrip.review.dto.ReviewDTO;
import net.sf.json.JSONArray;

public class AirtelContentService {

	private AirtelContentDAO airtelContentDAO = AirtelContentDAO.getInstance();
	
	
	public ArrayList<AirtelOptionDTO> getOptions(String p_code) {
		
		ArrayList<AirtelOptionDTO> list = new ArrayList<>();
		
		try(Connection conn = ConnectionProvider.getConnection()){
			 list = airtelContentDAO.getOptions(conn, p_code);
		} catch (SQLException | NamingException e) {
			e.printStackTrace();
		}
		
		return list;
	}
	
	
	public ArrayList<String> getContentPic(String p_code){
		
		ArrayList<String> list = new ArrayList<>();
	
		try(Connection conn = ConnectionProvider.getConnection()){
			 list = airtelContentDAO.getContentPic(conn, p_code);
		} catch (SQLException | NamingException e) {
			e.printStackTrace();
		}
		return list;
		
	}
	
	public AirtelContentDTO getContent(String p_code) {
		
		AirtelContentDTO dto = new AirtelContentDTO();
		
		try(Connection conn = ConnectionProvider.getConnection()){
			 dto = airtelContentDAO.getContent(conn, p_code);
		} catch (SQLException | NamingException e) {
			e.printStackTrace();
		}
		return dto;
	}
	
	public String[] getPartnerInfo(String p_code) {
		
		String [] infos = null;
		
		try(Connection conn = ConnectionProvider.getConnection()){
			  infos = airtelContentDAO.getPartnerInfo(conn, p_code);
		} catch (SQLException | NamingException e) {
			e.printStackTrace();
		}
		return infos;
	}
	
}
