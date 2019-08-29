package myRealTrip.flights.command;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import myRealTrip.command.CommandHandler;
import myRealTrip.flights.service.FlightsSearchService;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

public class FlightsSearchListHandler implements CommandHandler{
	
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		if (request.getMethod().equalsIgnoreCase("GET")) {
			request.getSession().setAttribute("referer", request.getHeader("referer"));
			return processForm(request, response);
		} else if (request.getMethod().equalsIgnoreCase("POST")) {
			// System.out.println("Post");
			return processSubmit(request, response);
		} else {
			response.setStatus(HttpServletResponse.SC_METHOD_NOT_ALLOWED);
			return null;
		}
	}
	public String processForm(HttpServletRequest request, HttpServletResponse response) throws Exception {
		return "/flights/search/flightsList";
	}
	

	public String processSubmit(HttpServletRequest request, HttpServletResponse response) throws Exception {
		FlightsSearchService flightsSearchService = FlightsSearchService.getInstance();
		// System.out.println("핸들러 진입");
		String initform = request.getParameter("initform");
		// System.out.println(initform);
		String startCity = request.getParameter("startCity");
		startCity = startCity.substring(0, startCity.indexOf("("));
		String endCity = request.getParameter("endCity");
		endCity = endCity.substring(0, endCity.indexOf("("));
		String seatLevel = request.getParameter("seatLevel");
		// System.out.println(seatLevel);
		
		String nonstop = request.getParameter("nonstop");
		String freebag = request.getParameter("freebag");
		String[]airlineAliances =  request.getParameter("airlineAliance").split(",");
		String[]aline_agences =  request.getParameter("aline_agence").equals("")?"A".split(","):request.getParameter("aline_agence").split(",");
		// System.out.println(request.getParameter("flightsTime"));
		String[]flightsTimes = request.getParameter("flightsTime").split(",");
		// System.out.println("aline_agences: "+(aline_agences[0]));
		
		int adult = Integer.parseInt(request.getParameter("adult").equals("")?"0":request.getParameter("adult"));
		int child = Integer.parseInt(request.getParameter("child").equals("")?"0":request.getParameter("child"));
		int infant = Integer.parseInt(request.getParameter("infant").equals("")?"0":request.getParameter("infant"));
		
		String order = request.getParameter("order");
	
		if(order.equals("")) {
			order = "ff.ff_sum";
		}
		// System.out.println("order"+order);
		
		if(initform.equals("OW")) {
			JSONArray list = new JSONArray();
			// System.out.println("편도");
			String startDate = request.getParameter("startDate");
			
			list = flightsSearchService.getOWFlightsList(startCity, endCity, startDate, nonstop, freebag, order, airlineAliances, aline_agences, flightsTimes, seatLevel, adult, child, infant);
		//  System.out.println(list.size());
			request.setAttribute("list", list);
		}else if(initform.equals("RT")) {
			JSONArray list = new JSONArray();
			String startDate = request.getParameter("startDate");
			String endDate = request.getParameter("endDate");

			list = flightsSearchService.getRTFlightsList(startCity, endCity, startDate, endDate, nonstop, freebag, order, airlineAliances, aline_agences, flightsTimes, seatLevel, adult, child, infant);
			// System.out.println("왕복 list : " + list.size());
			request.setAttribute("list", list);
		}else{
			System.out.println("다구간");
			String startCity2 = request.getParameter("startCity2");
			startCity2 = startCity2.substring(0, startCity2.indexOf("("));
			String endCity2 = request.getParameter("endCity2");
			endCity2 = endCity2.substring(0, endCity2.indexOf("("));
			String startCity3 = request.getParameter("startCity3");
			// System.out.println("startCity2 : " + startCity2 + "/" + endCity2);
			if(!startCity3.equals(""))
				startCity3 = startCity3.substring(0, startCity3.indexOf("("));
			String endCity3 = request.getParameter("endCity3");
			if(!endCity3.equals(""))
				endCity3 = endCity3.substring(0, endCity3.indexOf("("));
			String startCity4 = request.getParameter("startCity4");
			// System.out.println(startCity4);
			if(!startCity4.equals(""))
				startCity4 = startCity4.substring(0, startCity4.indexOf("("));
			String endCity4 = request.getParameter("endCity4");
			if(!endCity4.equals(""))
				endCity4 = endCity4.substring(0, endCity4.indexOf("("));
			
			String Date1 = request.getParameter("Date1");
			String Date2 = request.getParameter("Date2");
			String Date3 = request.getParameter("Date3");
			String Date4 = request.getParameter("Date4");
			
			JSONArray list = new JSONArray();
			if(startCity3.equals("")) {
				list = flightsSearchService.getMTFlightsList(startCity, endCity, startCity2, endCity2, Date1, Date2, nonstop, freebag, order, airlineAliances, aline_agences, flightsTimes, seatLevel, adult, child, infant);
			}else if(startCity4.equals("")) {
				list = flightsSearchService.getMTFlightsList(startCity, endCity, startCity2, endCity2, startCity3, endCity3, Date1, Date2, Date3, nonstop, freebag, order, airlineAliances, aline_agences, flightsTimes, seatLevel, adult, child, infant);
			}else {
				list = flightsSearchService.getMTFlightsList(startCity, endCity, startCity2, endCity2, startCity3, endCity3, startCity4, endCity4, Date1, Date2, Date3, Date4, nonstop, freebag, order, airlineAliances, aline_agences, flightsTimes, seatLevel, adult, child, infant);
			}
			
			
			// System.out.println(list.size());
			request.setAttribute("list", list);
		}
		
		// request.setAttribute("obj", json);
		// request.setAttribute("nonstop", nonstop);
		// request.setAttribute("freebag", freebag);
		// request.setAttribute("initform", initform);
		
		return "/flights/search/flightsList_ajax";
	}

}
