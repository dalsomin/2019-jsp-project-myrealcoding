package myRealTrip.myrealtripMember.command;


import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import myRealTrip.auth.model.Member;
import myRealTrip.command.CommandHandler;
import myRealTrip.myrealtripMember.service.ChangePWService;

public class ChangePWHandler implements CommandHandler{
	
	private static final String FORM_VIEW = "/member/changePW";
	
	private ChangePWService changePWService = new ChangePWService();

	
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
		Member authUser = (Member)session.getAttribute("authUser"); //  authUser 세션 : 인증(로그인 계정.권한)
		int memberId = authUser.getMemberId();
		// System.out.println(memberId);
		String member_pwd = request.getParameter("user[password]");
		String confirm_pwd = request.getParameter("user[password_confirmation]");
		System.out.println(member_pwd);
		System.out.println(confirm_pwd);
		
		
		HashMap<String, Boolean> success = new HashMap<>();
		request.setAttribute("success", success);
		

		if (member_pwd.equals(confirm_pwd)) {
			System.out.println("같음");
			success.put("chpw", Boolean.TRUE);
			int up = ChangePWService.updatePassword(member_pwd, memberId);
			authUser.setMember_pwd(member_pwd);
			// request.setAttribute("up", up);
			 // System.out.println(authUser.getMember_name());
			// session.setAttribute("authUser", authUser);
			response.sendRedirect(request.getContextPath() + "/logout.do");
			return null;
		} else {
			return FORM_VIEW;
		}
		
		
		
		
	}
}
