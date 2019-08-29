package myRealTrip.myrealtripMember.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import myRealTrip.command.CommandHandler;

public class NewAccountHandler implements CommandHandler{

	private static final String FORM_VIEW = "/member/saveAccount";
	
	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		return FORM_VIEW;
		
	}

	
}
