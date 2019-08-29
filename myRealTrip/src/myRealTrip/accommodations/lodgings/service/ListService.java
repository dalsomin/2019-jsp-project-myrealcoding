package myRealTrip.accommodations.lodgings.service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.List;

import javax.naming.NamingException;

import com.util.ConnectionProvider;
import com.util.JdbcUtil;

import myRealTrip.accommodations.lodgings.dao.ListDAO;
import myRealTrip.accommodations.lodgings.dto.ListDTO;


public class ListService {

	private static final int MESSAGE_COUNT_PER_PAGE = 3;

	public ListView getList(int pageNumber, String order, String country, String city) {
		Connection conn = null;
		int currentPageNumber = pageNumber;

		try {
			conn = ConnectionProvider.getConnection();
			ListDAO dao = ListDAO.getInstance();

			int msgTotalCount = dao.selectCount(conn, country,city);

			List<ListDTO> list = null;
			int firstRow = 0;
			int endRow = 0;
			if (msgTotalCount > 0) {

				firstRow = (pageNumber - 1) * MESSAGE_COUNT_PER_PAGE + 1 ;
				endRow = firstRow + MESSAGE_COUNT_PER_PAGE - 1;
				list = dao.selectList(conn, firstRow, endRow, order, country, city);

			} else {	
				currentPageNumber = 0;
				list = Collections.emptyList();
			}
			return new ListView(MESSAGE_COUNT_PER_PAGE, currentPageNumber, msgTotalCount, firstRow, endRow, list);
		} catch (SQLException | NamingException e) {
			throw new RuntimeException(e);
		} finally {
			JdbcUtil.close(conn);
		}
	}

	//지역 선택
	public LinkedHashMap<String, ArrayList<String>> getCity(){

		ListDAO dao = ListDAO.getInstance();
		LinkedHashMap<String, ArrayList<String>> map = null;

		try(Connection conn = ConnectionProvider.getConnection()){
			map =  dao.getCity(conn);
		} catch (SQLException | NamingException e) {
			e.printStackTrace();
		}

		return map;
	}	



}
