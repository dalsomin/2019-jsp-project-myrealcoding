package myRealTrip.main.command;


import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import myRealTrip.command.CommandHandler;
import myRealTrip.flights.notice.model.Notice;
import myRealTrip.flights.notice.service.ListService;


public class FlightsMainHandler implements CommandHandler{
	
	private ListService service = new ListService();
	
	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		try {
			List<Notice> list = service.getTop(5);
			request.setAttribute("flightNoticeRankFive", list);


		} catch (Exception e) {
			e.printStackTrace();
		}

		return "/main/flightsMain";
	}

}
