package myRealTrip.flights.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import myRealTrip.command.CommandHandler;
import myRealTrip.flights.service.GetFlightTicketService;
import net.sf.json.JSONArray;

public class FlightsGetTicketHandler implements CommandHandler{
	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// System.out.println("티켓 정보 가져오기 핸들러");
		String ft_codes = request.getParameter("ft_codes");
		int child = Integer.parseInt(request.getParameter("child").equals("")?"0":request.getParameter("child"));
		int infant = Integer.parseInt(request.getParameter("infant").equals("")?"0":request.getParameter("infant"));
		String[] ft_code = ft_codes.split("/");
		String seatLevel = request.getParameter("seatLevel");
		// System.out.println(ft_code[0]);
		JSONArray list = new JSONArray();
		GetFlightTicketService getFlightTicketService = GetFlightTicketService.getInstance();
		for (int i = 0; i < ft_code.length; i++) {
			int code = Integer.parseInt(ft_code[i]);
			list.add(getFlightTicketService.getTicketInfo(code, child, infant, seatLevel));
		}
		// System.out.println("ft_deptime "+list.getJSONObject(0).get("ft_deptime"));
		// System.out.println(list.size());
		request.setAttribute("list", list);
		return "/flights/search/flightTicket_ajax";
	}

}
