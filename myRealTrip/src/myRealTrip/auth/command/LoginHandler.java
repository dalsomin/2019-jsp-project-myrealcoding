package myRealTrip.auth.command;

import java.util.HashMap;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import myRealTrip.auth.model.Member;
import myRealTrip.auth.service.LoginFailException;
import myRealTrip.auth.service.LoginService;
import myRealTrip.command.CommandHandler;


public class LoginHandler implements CommandHandler{

	private static final String FORM_VIEW = "/login/loginForm";
	private LoginService loginService = new LoginService();
	
	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		if (request.getMethod().equalsIgnoreCase("GET")) {
			request.getSession().setAttribute("referer", request.getHeader("referer"));
			return processForm(request, response);
		} else if (request.getMethod().equalsIgnoreCase("POST")) { 
			return processSubmit(request, response);
		} else {
			response.setStatus(HttpServletResponse.SC_METHOD_NOT_ALLOWED);
			return null;
		}
	}


	private String processForm(HttpServletRequest request, HttpServletResponse response) {
		return FORM_VIEW; //로그인 화면으로 가기
	}
	
	
	private String processSubmit(HttpServletRequest request, HttpServletResponse response) throws Exception{
		String member_email = trim(request.getParameter("user[email]"));
		String member_pwd = trim(request.getParameter("user[password]"));
		
		HashMap<String, Boolean> errors = new HashMap<>();
		request.setAttribute("errors", errors);
		
		if (member_email == null || member_email.isEmpty()) {
			errors.put("member_email", Boolean.TRUE);
		}
		if (member_pwd == null || member_pwd.isEmpty()) {
			errors.put("member_pwd", Boolean.TRUE);
		}

		if (!errors.isEmpty()) {
			return FORM_VIEW;
		}
		try {
			Member member = loginService.login(member_email, member_pwd);
			request.getSession().setAttribute("authUser", member);
			// System.out.println(member.getMemberId());
			//System.out.println(">authUser");
			response.sendRedirect(request.getContextPath() + "/myRealTrip.do");
			return null;

		} catch (LoginFailException e) {
			errors.put("idOrPwNotMatch", Boolean.TRUE);
			return FORM_VIEW;
		}
	}


	private String trim(String str) {
		return str == null ? null : str.trim();
	}
}
