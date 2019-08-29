package myRealTrip.flights.command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import myRealTrip.command.CommandHandler;
import myRealTrip.flights.service.FlightsCitySearchService;
import net.sf.json.JSONArray;

public class FlightsCitySearchHandler implements CommandHandler{
	private FlightsCitySearchService citysearchservice = new FlightsCitySearchService();
	
	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String searchCity = request.getParameter("searchCity");
		JSONArray jsonArray = citysearchservice.getSearchFlightsCityList(searchCity);
		request.setAttribute("jsonArray", jsonArray);
		// System.out.println(jsonArray.size());
		// System.out.println(jsonArray.getJSONObject(0).get("c_name"));
		return "/flights/search/flightsSearchCity_ajax";
	}

} 