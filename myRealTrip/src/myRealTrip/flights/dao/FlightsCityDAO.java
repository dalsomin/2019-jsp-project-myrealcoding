package myRealTrip.flights.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.util.JdbcUtil;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

public class FlightsCityDAO {

	private static FlightsCityDAO  dao = null;
	
	private FlightsCityDAO() {}
	public static FlightsCityDAO getInstance() {
		
		if(dao==null) {
			dao = new FlightsCityDAO();
		}
		return dao;
	}
	
	
	public JSONArray searchFlightsCityList(Connection conn, String searchCity){
		String sql = "select ap_code, c_name, ap_city, n_name  " + 
				" from airport a join city c on a.c_code=c.c_code " + 
				"   join nation n on n.n_code=c.n_code " + 
				" where c_name like '%" + searchCity + "%'";
		Statement stmt = null;
	    ResultSet rs = null;
	    
	    JSONArray jsonArray  = new JSONArray();
	    
	    try {
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				JSONObject jsonObject = new JSONObject();
				jsonObject.put("ap_code", rs.getString("ap_code"));
				jsonObject.put("ap_city", rs.getString("ap_city"));
				jsonObject.put("c_name", rs.getString("c_name"));
				jsonObject.put("n_name", rs.getString("n_name"));
				jsonArray.add(jsonObject);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JdbcUtil.close(rs);
			JdbcUtil.close(stmt);
		}
		
		return jsonArray;
	}
}
