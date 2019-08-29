package myRealTrip.tourticket.command;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import myRealTrip.command.CommandHandler;
import myRealTrip.tourticket.dto.TourticketDTO;
import myRealTrip.tourticket.service.TourticketListService;
import myRealTrip.tourticket.service.TourticketService;

public class TourticketListHandler implements CommandHandler{

	private TourticketListService service = new TourticketListService();
	private TourticketService tservice = new TourticketService();
	
	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {

		int currentPage = Integer.parseInt(request.getParameter("currentPage") ==null? "1" : request.getParameter("currentPage"));
		String type = request.getParameter("type")==null ? "popular" : request.getParameter("type");
		String category = request.getParameter("category")==null ? "all" : request.getParameter("category");
		String city = request.getParameter("city")==null ? "" : request.getParameter("city");
		String nation = request.getParameter("nation")==null ? "" : request.getParameter("nation");
		
		ArrayList<TourticketDTO>list = service.selectList(nation, city, type, category, currentPage);
		request.setAttribute("list", list);
		ArrayList<String>list2 =  tservice.getCategory(city, nation);
		request.setAttribute("category", list2);
		int [] pages = service.getPaging(nation, city, category, currentPage);
		request.setAttribute("pages", pages);
		
		return "/tourticket/tourticketList";
	}

}
