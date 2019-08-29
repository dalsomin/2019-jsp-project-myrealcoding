package myRealTrip.accommodations.hotel.command;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import myRealTrip.accommodations.hotel.dto.HotelListDTO;
import myRealTrip.accommodations.hotel.service.HotelListService;
import myRealTrip.command.CommandHandler;

public class HotelListHandler implements CommandHandler {

	HotelListService hlservice = new HotelListService();
	
	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {

		int searchCnt = 0;
		ArrayList<HotelListDTO> list = null;
		int [] pages = null;
		
		String city = request.getParameter("city");
		String order= request.getParameter("order")==null? "추천순" :request.getParameter("order") ;
		int currentpage = Integer.parseInt(request.getParameter("page")==null ? "1" : request.getParameter("page") );
		
		try {
			searchCnt = hlservice.getSeachCount(city);
			list = hlservice.getHotelList(city,order,currentpage);
			pages = hlservice.getPaging(city, currentpage);
			
			request.setAttribute("searchCnt", searchCnt);
			request.setAttribute("list", list);
			request.setAttribute("pages", pages);
		}catch(Exception e){
			e.printStackTrace();
		}	
		return "/accommodations/hotel/hotellist";
	}

	
}
