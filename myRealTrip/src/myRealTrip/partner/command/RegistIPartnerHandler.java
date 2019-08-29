package myRealTrip.partner.command;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.EmptyStackException;
import java.util.HashMap;
import java.util.Map;

import javax.naming.NamingException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import myRealTrip.auth.model.Member;
import myRealTrip.command.CommandHandler;
import myRealTrip.partner.dto.GnP_MatchDTO;
import myRealTrip.partner.dto.International_pnumDTO;
import myRealTrip.partner.dto.Regist_I_partnerDTO;
import myRealTrip.partner.dto.Regist_partnerDTO;
import myRealTrip.partner.service.Regist_partnerservice;
import myRealTrip.regist_member.dto.RegistMemberDTO;



public class RegistIPartnerHandler implements CommandHandler{

	private static final String FROM_VIEW="/partner/registpartner/new_i_partner";
	private Regist_partnerservice registipartnerservice = new Regist_partnerservice();
	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		if (request.getMethod().equalsIgnoreCase("GET")) {
			System.out.println("ipartner핸들러 get호출");
			return ipartnerRegist(request, response);
		}else if (request.getMethod().equalsIgnoreCase("POST")) {
			System.out.println("ipartner핸들러 post호출");
			return ipartnerSubmit(request, response);	
		}else {
			response.setStatus(HttpServletResponse.SC_METHOD_NOT_ALLOWED);
			return null;
		}
	}

	private String ipartnerRegist(HttpServletRequest request, HttpServletResponse response) {

		ArrayList<International_pnumDTO> dto = registipartnerservice.selectpnumlist();
		//System.out.println("***** " + dto.size());
		request.setAttribute("ipnumdto", dto);
		//request.setAttribute("name","test");
		//System.out.println(  "XX " + dto.get(0).getCountry_name());
		return FROM_VIEW;
	}

	private String ipartnerSubmit(HttpServletRequest request, HttpServletResponse response) throws NamingException, SQLException {
		
		Regist_partnerDTO registPartnerdto = new Regist_partnerDTO();
		Regist_I_partnerDTO iPartnerdto = new Regist_I_partnerDTO();
		GnP_MatchDTO gnpdto = new GnP_MatchDTO();
		
		Member authUser = (Member)request.getSession().getAttribute("authUser");
		System.out.println(authUser.getMemberId());
		


		registPartnerdto.setMemberId(authUser.getMemberId());
		registPartnerdto.setMember_name(authUser.getMember_name());
		//registPartnerdto.setPartnerPicture(request.getParameter("partnerPicture"));
		registPartnerdto.setLocalPhoneNumber("+"+request.getParameter("pnum_local")+"  "+request.getParameter("local_num"));
		registPartnerdto.setEmergencyNumber("+"+request.getParameter("pnum_emer")+"  "+request.getParameter("emer_num"));
		registPartnerdto.setKakaoID(request.getParameter("kakaoID"));
		registPartnerdto.setKeyword1(request.getParameter("keyword1"));
		registPartnerdto.setKeyword2(request.getParameter("keyword2"));
		registPartnerdto.setIntroduce(request.getParameter("introduce"));
		registPartnerdto.setP_type("개인");
		gnpdto.setGm_type(request.getParameterValues("gm_type"));
		iPartnerdto.setIsVisa(request.getParameter("isVisa"));
		iPartnerdto.setPliveTerm(request.getParameter("pliveTerm"));
		iPartnerdto.setFliveTerm(request.getParameter("fliveTerm"));
		
		
		//User user = (User) request.getSession(false).getAttribute("authUser");
		//WriteRequest writeReq = createWriterequest(user, request);
		//writeReq.validate(errors);
/*		if (!errors.isEmpty()) {
			return FORM_VIEW;
		}*/
		
		//
		try {
			registipartnerservice.insert_i(registPartnerdto,iPartnerdto,gnpdto);
			response.sendRedirect("/myRealTrip/partner/dashboard.do");
			return null;
			
		} catch (Exception e) {
			System.out.println("handler에서 에러");
			e.printStackTrace();
			return FROM_VIEW;
		}
			
	}
	
	}


