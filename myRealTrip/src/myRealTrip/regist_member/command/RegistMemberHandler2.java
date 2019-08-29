package myRealTrip.regist_member.command;

import java.io.UnsupportedEncodingException;
import java.util.ArrayList;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.util.Cookies;

import myRealTrip.command.CommandHandler;
import myRealTrip.partner.dto.International_pnumDTO;
import myRealTrip.partner.service.Regist_partnerservice;
import myRealTrip.regist_member.dto.RegistMemberDTO;
import myRealTrip.regist_member.dto.agreememDTO;
import myRealTrip.regist_member.service.RegistMemberService;


public class RegistMemberHandler2 implements CommandHandler{

	private static final String FROM_VIEW ="/partner/regist_mem4";
	private RegistMemberService registmservice = new RegistMemberService();
	private Regist_partnerservice registpservice = new Regist_partnerservice();


	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		if(request.getMethod().equalsIgnoreCase("GET")) {
			return processForm(request, response);
		}else if (request.getMethod().equalsIgnoreCase("POST")) {
			// System.out.println("member2handler******post");
			return processSubmit(request, response);
		}else {
			response.setStatus(HttpServletResponse.SC_METHOD_NOT_ALLOWED);
			return null;
		}

	}


	private String processForm(HttpServletRequest request, HttpServletResponse response) {

		//request.setAttribute("cookie", cookie);
		return FROM_VIEW;
	}


	private String processSubmit(HttpServletRequest request, HttpServletResponse response) {

		/*		RegistMemberDTO registmdto = (RegistMemberDTO) request.getAttribute("registmdto");
		agreememDTO agrdto = (agreememDTO) request.getAttribute("agrdto");*/

		RegistMemberDTO registmdto= new RegistMemberDTO();
		agreememDTO agrdto = new agreememDTO();


		/*
		Cookies c = new Cookies(request);
		try {
			registmdto.setMember_name(c.getValue("name"));
			registmdto.setMember_pwd(c.getValue("pwd"));
			registmdto.setMember_pwd(c.getValue("email"));
		} catch (UnsupportedEncodingException e1) {
			e1.printStackTrace();
			System.out.println("쿠키가져오는데에서 에러");
		}
		 */
		System.out.println("핸드폰===="+request.getParameter("auth_way_phonenum"));
		System.out.println("email===="+request.getParameter("auth_way_email"));
		
		System.out.println("length---"+request.getParameterValues("mar_type").length);
		
	
		
		
		
		
		if (request.getParameter("auth_way_phonenum")!=null) {
			
			registmdto.setMember_name(request.getParameter("member_name"));
			registmdto.setMember_email(request.getParameter("member_email"));
			registmdto.setMember_pwd(request.getParameter("member_pwd"));
			agrdto.setMar_type(request.getParameterValues("mar_type"));
			registmdto.setMember_tel("+"+request.getParameter("pnum")+"  "+request.getParameter("phone_num"));
			registmdto.setAuth_p(request.getParameter("auth_way_phonenum"));
		}

		if(request.getParameter("auth_way_email")!=null) {
			registmdto.setMember_name(request.getParameter("member_name"));
			registmdto.setMember_email(request.getParameter("member_email"));
			registmdto.setMember_pwd(request.getParameter("member_pwd"));
			agrdto.setMar_type(request.getParameterValues("mar_type"));
			registmdto.setAuth_e(request.getParameter("auth_way_email"));
		}
		
		try {
			System.out.println("handler:"+registmdto.getMember_name());
			registmservice.registm(registmdto,agrdto);
			
			return "/main/tourMain";

		} catch (Exception e) {
			System.out.println("handler에서 에러");
			e.printStackTrace();
			return FROM_VIEW;
		}

	}

}
