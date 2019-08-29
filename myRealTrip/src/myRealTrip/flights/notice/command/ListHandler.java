package myRealTrip.flights.notice.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import myRealTrip.command.CommandHandler;
import myRealTrip.flights.notice.service.ListService;
import myRealTrip.flights.notice.service.ListView;

public class ListHandler implements CommandHandler{

	private ListService service = new ListService();
	
	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		String pageNumberStr = request.getParameter("page");
		
		int pageNumber = 1;
		if (pageNumberStr != null) {
			pageNumber = Integer.parseInt(pageNumberStr);
		}
		
		try {
			ListView listView = service.getList(pageNumber);
			request.setAttribute("listView", listView);	
			//System.out.println(listView.getPageTotalCount());
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "/flights/notice/noticeList";
	}
	
}
