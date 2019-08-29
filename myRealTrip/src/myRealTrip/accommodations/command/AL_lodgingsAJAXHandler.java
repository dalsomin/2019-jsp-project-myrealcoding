package myRealTrip.accommodations.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import myRealTrip.accommodations.service.AccommodationsListService;
import myRealTrip.command.CommandHandler;
import net.sf.json.JSONArray;

public class AL_lodgingsAJAXHandler implements CommandHandler{
	
	AccommodationsListService service = new AccommodationsListService();

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		//System.out.println("인기 민박 핸들러");
		
		String city = request.getParameter("city");
		JSONArray jsonArray = service.getLodgingsCard(city);
		request.setAttribute("jsonArray", jsonArray);
		//System.out.println(jsonArray.size());

		return "/accommodations/lodgings_ajax";
	}
	
	

}
