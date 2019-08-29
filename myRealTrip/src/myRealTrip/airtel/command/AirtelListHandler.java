package myRealTrip.airtel.command;

import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import myRealTrip.airtel.dto.AirtelListDTO;
import myRealTrip.airtel.service.AirtelListService;
import myRealTrip.command.CommandHandler;

public class AirtelListHandler implements CommandHandler{

	private AirtelListService listService = new AirtelListService();
	
	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		int currentPage = Integer.parseInt(request.getParameter("currentPage") ==null? "1" : request.getParameter("currentPage"));
		String order = request.getParameter("order")==null ? "popular" : request.getParameter("order");
		String category = request.getParameter("category")==null ? "all" : request.getParameter("category");
		String area = request.getParameter("area")==null ? "" : request.getParameter("area");
		String nation = request.getParameter("nation")==null ? "" : request.getParameter("nation");
		
		
		ArrayList<AirtelListDTO> list = listService.getList(currentPage, order, category, area, nation);
		request.setAttribute("list", list);
		int [] pages = listService.getPage(currentPage, category, area, nation);
		request.setAttribute("pages", pages);
		LinkedHashMap<String, ArrayList<String>> map = listService.getCity();
		request.setAttribute("map", map);
		ArrayList<String> list2 = listService.getCategory(area, nation);
		request.setAttribute("listCategory", list2);
		
		return "/airtel/airtel";
	}
}
