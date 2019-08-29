package myRealTrip.partner.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import myRealTrip.command.CommandHandler;

public class Regist_PartnerHandler implements CommandHandler{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("--파트너소개페이지 띄우는 핸들러 호출됨");
		return "/partner/registpartner/new_partner_introduce";
	}

}
