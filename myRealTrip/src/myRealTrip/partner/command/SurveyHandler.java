package myRealTrip.partner.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import myRealTrip.auth.model.Member;
import myRealTrip.command.CommandHandler;
import myRealTrip.partner.dto.SurveyDTO;
import myRealTrip.partner.service.SurveyService;

public class SurveyHandler implements CommandHandler{

	private static final String FORM_VIEW = "/partner/partner_survey";
	private SurveyService serveyservice = new SurveyService();
	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		if (request.getMethod().equalsIgnoreCase("GET")) {
			return FORM_VIEW;
		}else if(request.getMethod().equalsIgnoreCase("POST")) {

			return saveSurveyForm(request, response);
		} else {
			response.setStatus(HttpServletResponse.SC_METHOD_NOT_ALLOWED);
			return null;		
		}
	}
	private String saveSurveyForm(HttpServletRequest request, HttpServletResponse response) {
		SurveyDTO sdto = new SurveyDTO();
		
		Member authUser = (Member) request.getSession().getAttribute("authUser");
		
		int memberId =authUser.getMemberId();
		sdto.setMemberId(authUser.getMemberId());
		sdto.setKnow_path(request.getParameter("know_path"));
		sdto.setMncareer(request.getParameter("mncareer"));
		sdto.setOther_ch(request.getParameter("other_ch"));
		sdto.setInt_time(request.getParameter("int_time"));
		sdto.setOther_q(request.getParameter("other_q"));
		
		try {
			serveyservice.insertSurveyResult(sdto);
		
			response.sendRedirect("/myRealTrip/partner/dashboard.do");
		} catch (Exception e) {
			// TODO: handle exception
		}
		return null;
	}

}
