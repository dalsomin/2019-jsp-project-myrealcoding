package myRealTrip.accommodations.service;

import java.sql.Connection;

import com.util.ConnectionProvider;

import myRealTrip.accommodations.dao.AccommodationsListDAO;
import net.sf.json.JSONArray;

public class AccommodationsListService {

	AccommodationsListDAO dao = AccommodationsListDAO.getInstance();
	
	public JSONArray getLodgingsCard(String city) {
		
		JSONArray jsonArray = null;
		try(Connection conn = ConnectionProvider.getConnection()) {
			jsonArray = dao.getLodgingsCard(conn, city);
			System.out.println(jsonArray.size());
		} catch (Exception e) {
			e.printStackTrace();
		}
		return jsonArray;
	}
	
}
