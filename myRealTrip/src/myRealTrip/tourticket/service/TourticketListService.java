package myRealTrip.tourticket.service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.naming.NamingException;

import com.util.ConnectionProvider;

import myRealTrip.tourticket.dao.TourticketListDAO;
import myRealTrip.tourticket.dto.TourticketDTO;

public class TourticketListService {
	
	TourticketListDAO dao = TourticketListDAO.getInstance();
	
	public ArrayList<TourticketDTO> selectList(String nation, String city, 
			String type, String category, int currentPage){
		
		ArrayList<TourticketDTO>list = new ArrayList<>();
		try(Connection conn = ConnectionProvider.getConnection()){
			 list = dao.selectList(conn, nation, city, type, category, currentPage);
		} catch (SQLException | NamingException e) {
			e.printStackTrace();
		}
		
		
		return list;
	}
	
	public int [] getPaging(String nation, String city, String category, int currentpage) {
		
		int [] pages = {0,0};
		try(Connection conn = ConnectionProvider.getConnection()){
			int totalpage = dao.getTotalPage(conn, nation, city, category);
			int startpage = (currentpage-1)/5*5+1;
			int endpage = ((currentpage-1)/5+1)*5>totalpage ? totalpage : ((currentpage-1)/5+1)*5 ;
			// 5 >> 페이징처리수 1~5, 6~10
			pages[0] = startpage;
			pages[1] = endpage;
			
			
		} catch (SQLException | NamingException e) {
			e.printStackTrace();
		}
		return pages;
	}
	
}
