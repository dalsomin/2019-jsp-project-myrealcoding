package myRealTrip.flights.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import myRealTrip.command.CommandHandler;
import myRealTrip.flights.service.CalendarService;
import net.sf.json.JSONObject;

public class FlightsPrintCalendarHandler implements CommandHandler{
	private CalendarService calendarService = new CalendarService();
	
	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// System.out.println("핸들러 진입");
		int month = Integer.parseInt(request.getParameter("c_month")==null?"0":request.getParameter("c_month"));
		int year = Integer.parseInt(request.getParameter("c_year")==null?"0":request.getParameter("c_year"));
		// System.out.println(month + "/" + year);
		
		JSONObject jsonObject = calendarService.getCalendarInfo(month, year);
		
		request.setAttribute("obj", jsonObject);
		return "/flights/search/calendar_ajax";
	}

}
