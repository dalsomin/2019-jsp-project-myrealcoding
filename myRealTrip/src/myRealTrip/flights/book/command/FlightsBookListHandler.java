package myRealTrip.flights.book.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import myRealTrip.auth.model.Member;
import myRealTrip.command.CommandHandler;

public class FlightsBookListHandler implements CommandHandler{
	private static final String FORM_VIEW = "/flights/book/flightbooklist";
	
	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		HttpSession httpsession = request.getSession();
		Member authUser = (Member)httpsession.getAttribute("authUser");
		if(authUser == null) {
			String location = request.getContextPath()+"/login.do";
			response.sendRedirect(location);
			return null;
		}else {
			
			return "/flights/book/flightbooklist";
		}
	}

}
