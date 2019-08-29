package myRealTrip.regist_member.command;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.net.URLEncoder;
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


public class RegistMemberHandler1 implements CommandHandler{

	private static final String FROM_VIEW ="/registmem/regist_mem";

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		if(request.getMethod().equalsIgnoreCase("GET")) {
			return FROM_VIEW;
		}else if (request.getMethod().equalsIgnoreCase("POST")) {
			registMemberSubmit(request, response);
				return "/registmem/regist_mem4";
		}else {
			response.setStatus(HttpServletResponse.SC_METHOD_NOT_ALLOWED);
			return FROM_VIEW;
		}
		
	}

	private void registMemberSubmit(HttpServletRequest request, HttpServletResponse response) throws UnsupportedEncodingException {
		
	String name = request.getParameter("member_name");
	String pwd=request.getParameter("member_pwd");
	String email=request.getParameter("member_email");
	String [] mar_type = request.getParameterValues("mar_type");
	
	

	Regist_partnerservice registpservice = new Regist_partnerservice();
	
	//dto
	ArrayList<International_pnumDTO> dto = registpservice.selectpnumlist();
	RegistMemberDTO registmdto = new RegistMemberDTO();
	agreememDTO agrdto = new agreememDTO();
	
	registmdto.setMember_name(name);
	registmdto.setMember_pwd(pwd);
	registmdto.setMember_email(email);
	agrdto.setMar_type(mar_type);
	
	request.setAttribute("dto", dto);
	request.setAttribute("agrdto", agrdto);
	request.setAttribute("registmdto", registmdto);
	
/*	
System.out.println(name);
		Cookie cname =  new Cookie("name",URLEncoder.encode(name, "UTF-8"));
		Cookie cpwd =  new Cookie("pwd", URLEncoder.encode(pwd, "UTF-8"));
		Cookie cemail =  new Cookie("email", URLEncoder.encode(email, "UTF-8"));
		
		Cookies c = new Cookies(request);
		c.createCookie("cname", request.getParameter("member_name"));
		c.createCookie("cpwd", request.getParameter("member_pwd"));
		c.createCookie("cemail", request.getParameter("member_email"));
		
		response.addCookie(c.createCookie("cname", request.getParameter("member_name"),"/",60));
		response.addCookie(c.createCookie("cpwd", request.getParameter("member_pwd"),"/",60));
		response.addCookie(c.createCookie("cemail", request.getParameter("member_email"),"/",60));
		response.addCookie(c.createCookie("cname", request.get("agr_type"),"/",60));
*/
				
				
			
		
 

		
		
	
	
	}

	

}
