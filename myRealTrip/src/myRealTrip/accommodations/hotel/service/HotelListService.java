package myRealTrip.accommodations.hotel.service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.naming.NamingException;

import com.util.ConnectionProvider;

import myRealTrip.accommodations.hotel.dao.HotelListDAO;
import myRealTrip.accommodations.hotel.dto.HotelListDTO;

public class HotelListService {

	HotelListDAO dao = HotelListDAO.getInstance();

	public ArrayList<HotelListDTO> getHotelList(String city, String order, int currentPage){

		ArrayList<HotelListDTO> list = null;

		try(Connection conn = ConnectionProvider.getConnection()){
			list = dao.getHotelList(conn, city, order, currentPage);
		} catch (SQLException | NamingException e) {
			e.printStackTrace();
		}
		return list;		
	}

	public int getSeachCount(String city) {

		int searchCnt = 0;

		try(Connection conn = ConnectionProvider.getConnection()) {
			searchCnt = dao.getSearchCount(conn, city);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return searchCnt;
	}
	
	public int [] getPaging(String city, int currentpage) {

		int [] pages = {0,0};
		try(Connection conn = ConnectionProvider.getConnection()){

			int totalpage = dao.getTotalPage(city, currentpage);	

			int startpage = (currentpage-1)/5*5+1;
			int endpage = ((currentpage-1)/5+1)*5>totalpage ? totalpage : ((currentpage-1)/5+1)*5 ;
			// 5 >> 페이징처리수 1~5, 6~10
			pages[0] = startpage;
			pages[1] = endpage;

		} catch (Exception e) {
			e.printStackTrace();
		}
		return pages;
	}


}
