package myRealTrip.accommodations.command;

import java.util.ArrayList;
import java.util.LinkedHashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import myRealTrip.accommodations.lodgings.service.ListService;
import myRealTrip.command.CommandHandler;

public class AccommodationsListHandler implements CommandHandler{
	
	private ListService service = new ListService();

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		  LinkedHashMap<String, ArrayList<String>> map = service.getCity();
		   request.setAttribute("map", map);
		return	"/accommodations/accommodations";
	}

}
