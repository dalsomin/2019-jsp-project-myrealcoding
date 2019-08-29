package myRealTrip.tourticket.command;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import myRealTrip.command.CommandHandler;
import myRealTrip.tourticket.dto.TourticketDTO;
import myRealTrip.tourticket.service.TourticketService;

public class TourticketHandler implements CommandHandler {

	private TourticketService aservice = new TourticketService();
	
	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {

		String nation = request.getParameter("nation");
		String city = request.getParameter("city");
		
		
		ArrayList<String> list =  aservice.getCities(nation);
		request.setAttribute("cities", list);
		
		ArrayList<TourticketDTO> list2 = aservice.select(nation, city, "recent");
		ArrayList<TourticketDTO> list3 = aservice.select(nation, city, "");
		request.setAttribute("recentlist", list2);
		request.setAttribute("list", list3);
		
		ArrayList<String>list4 = aservice.getCategory(city, nation);
		request.setAttribute("category", list4);
		
		
		return "/tourticket/tourticket";
	}

	
	
}
