package myRealTrip.myrealtripMember.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import myRealTrip.auth.model.Member;
import myRealTrip.command.CommandHandler;
import myRealTrip.myrealtripMember.service.ChangePWService;

public class InputNewPWHandler implements CommandHandler{
	
	private static final String FORM_VIEW = "/member/changePW";

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
				
		return FORM_VIEW;
		
	}

}
