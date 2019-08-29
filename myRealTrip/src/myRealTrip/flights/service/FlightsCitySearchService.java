package myRealTrip.flights.service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import javax.naming.NamingException;

import com.util.ConnectionProvider;
import com.util.JdbcUtil;

import myRealTrip.flights.dao.FlightsCityDAO;
import net.sf.json.JSONArray;

public class FlightsCitySearchService {
	public JSONArray getSearchFlightsCityList(String searchCity){
		Connection conn = null;
		JSONArray jsonArray = null;
		
		try {
			conn = ConnectionProvider.getConnection();
			FlightsCityDAO dao = FlightsCityDAO.getInstance();
			
			jsonArray = dao.searchFlightsCityList(conn, searchCity);
		} catch (NamingException | SQLException e) {
			e.printStackTrace();
		}finally {
			JdbcUtil.close(conn);
		}
		return jsonArray;
	}
}
