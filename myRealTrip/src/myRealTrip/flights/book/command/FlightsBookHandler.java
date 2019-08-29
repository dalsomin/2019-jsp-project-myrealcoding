package myRealTrip.flights.book.command;

import java.io.IOException;
import java.sql.SQLException;

import javax.naming.NamingException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sun.corba.se.spi.orbutil.fsm.Guard.Result;

import myRealTrip.auth.model.Member;
import myRealTrip.command.CommandHandler;
import myRealTrip.flights.book.service.FlightBookService;
import myRealTrip.flights.notice.model.Notice;
import myRealTrip.flights.notice.service.WriteService;
import myRealTrip.flights.service.GetFlightTicketService;
import net.sf.json.JSONArray;

public class FlightsBookHandler implements CommandHandler{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println(request.getHeader("referer"));
		request.setCharacterEncoding("utf-8");
		if(request.getMethod().equalsIgnoreCase("GET")) {
			return processForm(request,response);
		}else if(request.getMethod().equalsIgnoreCase("POST")) {
			return processSubmit(request,response);
		}else {
			response.setStatus(HttpServletResponse.SC_METHOD_NOT_ALLOWED);
			return null;
		}
	}
	
	private String processForm(HttpServletRequest request, HttpServletResponse response) throws IOException {
		HttpSession httpsession = request.getSession();
		Member authUser = (Member)httpsession.getAttribute("authUser");
		String codes = request.getParameter("codes");
		String[] code = codes.split("/");
		// System.out.println("code:"+code[0]);
		int child = Integer.parseInt(request.getParameter("child").equals("")?"0":request.getParameter("child"));
		int infant = Integer.parseInt(request.getParameter("infant").equals("")?"0":request.getParameter("infant"));
		String seatLevel = request.getParameter("seatLevel");
		JSONArray list = new JSONArray();
		if(authUser == null) {
			String location = request.getContextPath()+"/login.do";
			response.sendRedirect(location);
			return null;
		}else {
			GetFlightTicketService flightTicketService = GetFlightTicketService.getInstance();
			for (int i = 0; i < code.length; i++) {
				int codeI = Integer.parseInt(code[i]);
				list.add(flightTicketService.getTicketInfo(codeI, child, infant, seatLevel));
			}
			// System.out.println("listsize : " + list.size());
			request.setAttribute("list", list);
			return "/flights/book/fligthbooking";
		}
	}
	
private String processSubmit(HttpServletRequest request, HttpServletResponse response) throws NamingException, SQLException, IOException, ServletException {
		String rsvusername = request.getParameter("rsvusername"); // 예약자 이름
		String rsvuseremail = request.getParameter("rsvuseremail1") + "@"+request.getParameter("rsvuseremail2"); // 예약자 이메일
		String rsvusermphone = request.getParameter("rsvusermphone1") +"-" + request.getParameter("rsvusermphone2") +"-" + request.getParameter("rsvusermphone3"); // 예약자 전화번호
		
		String[] inpaxlastname = request.getParameterValues("inpaxlastname"); // 탑승자 성
		String[] inpaxfirstname = request.getParameterValues("inpaxfirstname"); // 탑승자 이름
		String[] birthYear = request.getParameterValues("birthYear"); // 탑승자 생년
		String[] birthMonth = request.getParameterValues("birthMonth"); // 탑승자 생월
		String[] birthDay = request.getParameterValues("birthDay"); // 탑승자 생일
		
		String seatLevel = request.getParameter("seatLevel");
		
		Member authUser = (Member)request.getSession().getAttribute("authUser");
		String codes = request.getParameter("codes");
		String[] ft_pstype = request.getParameterValues("FT_PSTYPE");
		System.out.println(codes);
		System.out.println("**예약자 정보");
		System.out.println(rsvusername);
		System.out.println(rsvuseremail);
		System.out.println(rsvusermphone);
		System.out.println("**탑승자 정보");
		System.out.println(ft_pstype[0]);
		
		String[] gender = new String[birthDay.length];
		
		for (int i = 0; i < gender.length; i++) {
			gender[i] = request.getParameter("inpaxsex_NM"+(i+1)); // 성별 받아오기 M:남자/F:여자
		}
		// System.out.println(gender[1]);
		
		FlightBookService bookService = FlightBookService.getInstance();
		int bookingnum = bookService.insertBookInfo(codes, rsvusername, rsvuseremail, rsvusermphone, inpaxlastname, inpaxfirstname, birthYear, birthMonth, birthDay, ft_pstype, gender, authUser, seatLevel);
		request.setAttribute("bookingnum", bookingnum);
		
		response.sendRedirect(request.getContextPath()+"/flights/completeBooking.do?bookingnum=" + bookingnum);
		return null;
	}

}
