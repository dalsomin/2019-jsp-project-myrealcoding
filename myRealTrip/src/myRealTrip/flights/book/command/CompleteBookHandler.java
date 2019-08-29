package myRealTrip.flights.book.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import myRealTrip.command.CommandHandler;

public class CompleteBookHandler implements CommandHandler{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("예약번호: " +  request.getParameter("bookingnum"));
		String bookingnum = request.getParameter("bookingnum");		
		request.setAttribute("bookingnum", bookingnum);
		if(bookingnum == null)
			return "/order/paycomplete";
		return "/flights/book/completeBook";
	}
	
}
