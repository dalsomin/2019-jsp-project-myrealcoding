package myRealTrip.flights.service;

import java.sql.Connection;
import java.sql.SQLException;

import javax.naming.NamingException;

import com.util.ConnectionProvider;
import com.util.JdbcUtil;

import myRealTrip.flights.dao.FlightsSerchDAO;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

public class GetFlightTicketService {
	static private GetFlightTicketService service = null;
	
	private GetFlightTicketService(){};
	static public GetFlightTicketService getInstance() {
		if(service == null) {
			service = new GetFlightTicketService();
		}
		return service;
	}
	public JSONObject getTicketInfo(int ft_code, int child, int infant, String seatLevel) {
		Connection conn = null;
		JSONObject dto = new JSONObject();
		try {
			conn = ConnectionProvider.getConnection();
			FlightsSerchDAO dao = new FlightsSerchDAO();
			dto = dao.getTicketInfo(conn, ft_code, child, infant, seatLevel);
		} catch (NamingException | SQLException e) {
			e.printStackTrace();
		}finally {
			JdbcUtil.close(conn);
		}
		
		return dto;
	}
}
