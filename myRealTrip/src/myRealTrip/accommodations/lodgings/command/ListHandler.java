package myRealTrip.accommodations.lodgings.command;

import java.util.ArrayList;
import java.util.LinkedHashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import myRealTrip.accommodations.lodgings.service.ListService;
import myRealTrip.accommodations.lodgings.service.ListView;
import myRealTrip.command.CommandHandler;


public class ListHandler implements CommandHandler{

	private ListService service = new ListService();
	
	
	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {

		LinkedHashMap<String, ArrayList<String>> map = null;
		
		String country = request.getParameter("country");
		String city = request.getParameter("city");
		
		String order= request.getParameter("order");		
		if(order==null) {
			order="인기순";
		}else if(order.equals("popular")) {
			order="인기순";
		}else if(order.equals("reviews")) {
			order = "후기순";
		}else if(order.equals("price")) {
			order = "가격순";
		}else if(order.equals("recent")) {
			order = "신상품순";
		}
		
		String pageNumberStr = request.getParameter("page");					
		int pageNumber = 1;
		if (pageNumberStr != null) {
			pageNumber = Integer.parseInt(pageNumberStr);
		}
			
		try {
			map = service.getCity();
			ListView view = service.getList(pageNumber, order, country, city); 
			
			request.setAttribute("map", map);
			request.setAttribute("view", view);
			request.setAttribute("order", order); 
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "/accommodations/lodgings/lodgingsList";
	}
	
}
