package myRealTrip.airtel.service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;

import javax.naming.NamingException;

import com.util.ConnectionProvider;

import myRealTrip.airtel.dao.AirtelListDAO;
import myRealTrip.airtel.dto.AirtelListDTO;

public class AirtelListService {
	
	private AirtelListDAO airtelListDAO = AirtelListDAO.getInstance();
	
	public ArrayList<AirtelListDTO> getList(int currentPage, String order, String category, String area, String nation){
	
		try(Connection conn = ConnectionProvider.getConnection()){
			ArrayList<AirtelListDTO> list = airtelListDAO.select(conn, currentPage, order, category, area, nation);
			return list;
		} catch (SQLException | NamingException e) {
			e.printStackTrace();
		}
		return null;
	}
	
	
	public int []  getPage(int currentPage, String category, String area, String nation ) {
		
		int [] pages = {1,1,0} ;
		
		try(Connection conn = ConnectionProvider.getConnection()){
			int totalPage = airtelListDAO.getTotalPage(conn, category, area, nation);
			pages[2] = totalPage;
			
			if(1<totalPage && totalPage<5) {
				pages[1] = totalPage;
			}else if(totalPage>=5){
				if(totalPage >= currentPage+2) {
					pages[0] = ( (currentPage-2)<1 ? 1 : currentPage-2);
					pages[1] =  ((currentPage+2)<5 ? 5 : currentPage+2);
				}else {
					pages[0] = totalPage-4;
					pages[1] = totalPage;
				}
			}
		} catch (SQLException | NamingException e) {
			e.printStackTrace();
		}
		
		return pages;
	}
	
	public LinkedHashMap<String, ArrayList<String>> getCity(){
		
		LinkedHashMap<String, ArrayList<String>> map = null;
		
		try(Connection conn = ConnectionProvider.getConnection()){
			map = airtelListDAO.getCity(conn);
		} catch (SQLException | NamingException e) {
			e.printStackTrace();
		}
		return map;
	}
	
	public ArrayList<String> getCategory(String area, String nation){
		
		ArrayList<String> list = new ArrayList<>();
		
		try(Connection conn = ConnectionProvider.getConnection()){
			list = airtelListDAO.getCategory(conn, area, nation);
		} catch (SQLException | NamingException e) {
			e.printStackTrace();
		}
		return list;
	}
}
