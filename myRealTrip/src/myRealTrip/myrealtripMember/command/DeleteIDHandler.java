package myRealTrip.myrealtripMember.command;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import myRealTrip.auth.model.Member;
import myRealTrip.command.CommandHandler;
import myRealTrip.myrealtripMember.service.DeleteIDService;

public class DeleteIDHandler implements CommandHandler{
	
	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		if (request.getMethod().equalsIgnoreCase("GET")) {
			return processForm(request, response);
		} else if (request.getMethod().equalsIgnoreCase("POST")) { 
			return processSubmit(request, response);
		} else {
			response.setStatus(HttpServletResponse.SC_METHOD_NOT_ALLOWED);
			return null;
		}
	}


	private String processForm(HttpServletRequest request, HttpServletResponse response) {
		return null; 
	}
	
	
	private String processSubmit(HttpServletRequest request, HttpServletResponse response) throws Exception{
		
		HttpSession session = request.getSession();
		Member authUser = (Member)session.getAttribute("authUser");

		int memberId = authUser.getMemberId();
		
		//제약조건 비활성화
		DeleteIDService.DisabledConstraint();
		
		//계정 삭제
		int did = DeleteIDService.deleteID(memberId);
		System.out.println(did);
		int dfa = DeleteIDService.deleteFromAgree_mem(memberId);
		int dfp = DeleteIDService.deleteFromPartner(memberId);

		//제약조건 활성화
		DeleteIDService.EnabledConstraint();
		

		
		if (did == 1) {
			response.sendRedirect(request.getContextPath() + "/logout.do");
		}

		return null;
		
		
		
		
	}
	
	
	
	
	
	
	
	

}
