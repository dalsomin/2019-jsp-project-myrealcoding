package myRealTrip.order.command;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import myRealTrip.auth.model.Member;
import myRealTrip.command.CommandHandler;
import myRealTrip.order.service.PayService;

public class PayHandler implements CommandHandler{

	private PayService service = new PayService();
	
	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {

		String age = request.getParameter("age");
		String purpose =  request.getParameter("purpose");
		String ename = request.getParameter("ename");
		String kname = request.getParameter("kname");
		String p_code = request.getParameter("p_code");
		String options = request.getParameter("options");
		String cnt = request.getParameter("cnt");
		String gender = request.getParameter("gender");
		String birthday = request.getParameter("birthday");
		String p_number = request.getParameter("p_number");
		String p_nation = request.getParameter("p_nation");
		String payment = request.getParameter("payment");
		String message = request.getParameter("reservation[message]");
		String email = request.getParameter("e-mail");	
		String price = request.getParameter("price");
		price = price.substring(0, price.length()-1).replace(",", "");
		
		
		
		Member m= (Member) request.getSession().getAttribute("authUser");
		int m_id = m.getMemberId();
		
		service.insertOrder(p_code, m_id, age, purpose, p_number, message, p_nation, email, cnt, options, kname, ename, gender, birthday, payment, price);
	
		response.sendRedirect(request.getContextPath()+"/flights/completeBooking.do");
		return null;
	}

	
	
	
}
