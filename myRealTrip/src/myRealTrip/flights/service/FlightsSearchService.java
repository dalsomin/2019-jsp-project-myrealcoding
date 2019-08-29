package myRealTrip.flights.service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import javax.naming.NamingException;

import com.util.ConnectionProvider;
import com.util.JdbcUtil;

import myRealTrip.flights.dao.FlightsSerchDAO;
import myRealTrip.flights.model.FlightsTicketDTO;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

public class FlightsSearchService {
	static private FlightsSearchService service = null;

	private FlightsSearchService() {}
	static public FlightsSearchService getInstance() {
		if(service == null) {
			service = new FlightsSearchService();
		}
		return service;
	}
	
	public JSONArray getOWFlightsList(String startCity, String endCity, String startDate, String nonstop, String freebag, String order, String[] airlineAliances, String[] aline_agences, String[] flightsTimes, String seatLevel, int adult, int child, int infant){
		FlightsSerchDAO dao = new FlightsSerchDAO();
		Connection conn = null;
		JSONArray list = null;
		try {
			conn = ConnectionProvider.getConnection();
			list = dao.getOWFlightsList(conn, startCity, endCity, startDate, nonstop, freebag, order, airlineAliances, aline_agences, flightsTimes, seatLevel, adult, child, infant);

		} catch (NamingException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			JdbcUtil.close(conn);
		}
		return list;
	}
	
	public JSONArray getRTFlightsList(String startCity, String endCity, String startDate, String endDate, String nonstop, String freebag, String order, String[] airlineAliances, String[] aline_agences, String[] flightsTimes, String seatLevel, int adult, int child, int infant){
		FlightsSerchDAO dao = new FlightsSerchDAO();
		Connection conn = null;
		JSONArray list = null;
		try {
			conn = ConnectionProvider.getConnection();
			list = dao.getRTFlightsList(conn, startCity, endCity, startDate, endDate, nonstop, freebag, order, airlineAliances, aline_agences, flightsTimes, seatLevel, adult, child, infant);

		} catch (NamingException | SQLException e) {
			e.printStackTrace();
		}finally {
			JdbcUtil.close(conn);
		}
		System.out.println("왕복 서비스 끝");
		return list;
	}
	public JSONArray getMTFlightsList(String startCity, String endCity, String startCity2,
			String endCity2, String date1, String date2, String nonstop,
			String freebag, String order, String[] airlineAliances, String[] aline_agences, String[] flightsTimes, String seatLevel, int adult, int child, int infant) {
		FlightsSerchDAO dao = new FlightsSerchDAO();
		Connection conn = null;
		JSONArray list = null;
		try {
			conn = ConnectionProvider.getConnection();
			list = dao.getMTFlightsList(conn, startCity, endCity, startCity2, endCity2, date1, date2, nonstop, freebag, order, airlineAliances, aline_agences, flightsTimes, seatLevel, adult, child, infant);

		} catch (NamingException | SQLException e) {
			e.printStackTrace();
		}finally {
			JdbcUtil.close(conn);
		}
		return list;
	}
	public JSONArray getMTFlightsList(String startCity, String endCity, String startCity2,
			String endCity2, String startCity3, String endCity3, String date1, String date2, String date3, String nonstop, String freebag, String order, String[] airlineAliances, String[] aline_agences, String[] flightsTimes, String seatLevel, int adult, int child, int infant) {
		FlightsSerchDAO dao = new FlightsSerchDAO();
		Connection conn = null;
		JSONArray list = null;
		try {
			conn = ConnectionProvider.getConnection();
			list = dao.getMTFlightsList(conn, startCity, endCity, startCity2, endCity2, startCity3, endCity3, date1, date2, date3, nonstop, freebag, order, airlineAliances, aline_agences, flightsTimes, seatLevel, adult, child, infant);

		} catch (NamingException | SQLException e) {
			e.printStackTrace();
		}finally {
			JdbcUtil.close(conn);
		}
		return list;
	}
	public JSONArray getMTFlightsList(String startCity, String endCity, String startCity2,
			String endCity2, String startCity3, String endCity3, String startCity4, String endCity4, String date1,
			String date2, String date3, String date4, String nonstop,
			String freebag, String order, String[] airlineAliances, String[] aline_agences, String[] flightsTimes, String seatLevel, int adult, int child, int infant) {
		FlightsSerchDAO dao = new FlightsSerchDAO();
		Connection conn = null;
		JSONArray list = null;
		try {
			conn = ConnectionProvider.getConnection();
			list = dao.getMTFlightsList(conn, startCity, endCity, startCity2, endCity2, startCity3, endCity3, startCity4, endCity4, date1, date2, date3, date4, nonstop, freebag, order, airlineAliances, aline_agences, flightsTimes, seatLevel, adult, child, infant);

		} catch (NamingException | SQLException e) {
			e.printStackTrace();
		}finally {
			JdbcUtil.close(conn);
		}
		return list;
	}
}
