package myRealTrip.partner.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import myRealTrip.auth.model.Member;
import myRealTrip.command.CommandHandler;
import myRealTrip.partner.service.Regist_partnerservice;

public class QuizHandler implements CommandHandler {

	
	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		Member member = (Member) request.getSession().getAttribute("authUser");
		int memberId = member.getMemberId();
		if (request.getMethod().equalsIgnoreCase("GET")) {
			return "/partner/parnter_quiz";
		}else if (request.getMethod().equalsIgnoreCase("POST")) {
			Regist_partnerservice rpservice = new Regist_partnerservice();
			rpservice.insert_quizyn(memberId);
			request.setAttribute("quiz_ok", "y");
			return "/partner/dashboard.do";
		}else {
			response.setStatus(HttpServletResponse.SC_METHOD_NOT_ALLOWED);
			return null;
		}
	}

}
