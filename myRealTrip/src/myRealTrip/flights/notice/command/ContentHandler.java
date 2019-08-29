package myRealTrip.flights.notice.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import myRealTrip.command.CommandHandler;
import myRealTrip.flights.notice.model.Notice;
import myRealTrip.flights.notice.service.ContentService;

public class ContentHandler implements CommandHandler{

	private ContentService service = new ContentService();
	
	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {

		int num = Integer.parseInt(request.getParameter("num"));
		
		Notice notice = this.service.read(num);
		request.setAttribute("dto", notice);
		return "/flights/notice/notice";
	}
	
}
