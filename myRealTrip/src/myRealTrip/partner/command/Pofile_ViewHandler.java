package myRealTrip.partner.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import myRealTrip.auth.model.Member;
import myRealTrip.command.CommandHandler;
import myRealTrip.partner.dto.ProfileDTO;
import myRealTrip.partner.service.ProfileService;

public class Pofile_ViewHandler implements CommandHandler{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		Member member = (Member) request.getSession().getAttribute("authUser");
		int memberId = member.getMemberId();
		ProfileService pservice = new ProfileService();
		ProfileDTO pdto = new ProfileDTO();
		pservice.selectprofile(memberId);
		request.setAttribute("pdto", pdto);
		return "/partner/partner_profile_view";
	}

}
