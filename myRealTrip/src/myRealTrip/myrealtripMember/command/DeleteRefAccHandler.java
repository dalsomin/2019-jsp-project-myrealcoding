package myRealTrip.myrealtripMember.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import myRealTrip.auth.model.Member;
import myRealTrip.command.CommandHandler;
import myRealTrip.myrealtripMember.service.DeleteRefAccService;

public class DeleteRefAccHandler implements CommandHandler{
	
	private static final String FORM_VIEW = "/member/profileManagement";

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		HttpSession session = request.getSession();
		Member authUser = (Member)session.getAttribute("authUser");

		int memberId = authUser.getMemberId();
		
		int dam = DeleteRefAccService.deleteRefAcc(memberId);
		
		return FORM_VIEW;
	}

}
