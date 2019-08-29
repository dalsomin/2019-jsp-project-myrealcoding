package myRealTrip.myrealtripMember.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import myRealTrip.auth.model.Member;
import myRealTrip.command.CommandHandler;
import myRealTrip.myrealtripMember.model.ProfileManagementDTO;
import myRealTrip.myrealtripMember.service.SaveAccountService;

public class SaveAccountHandler implements CommandHandler{

	private static final String FORM_VIEW = "/member/profileManagement";

	private SaveAccountService saveAccountService = new SaveAccountService();

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		//?accountOwner=이지은&bank=기업은행&accountNumber=110497645369
		System.out.println("saveAccount handler process loaded");
		HttpSession session = request.getSession();
		Member authUser = (Member)session.getAttribute("authUser"); //  authUser 세션 : 인증(로그인 계정.권한)
		int memberId = authUser.getMemberId();
		System.out.println(memberId);
		String ra_name = request.getParameter("accountOwner");
		String ra_bank = request.getParameter("bank");
		long ra_sno = Long.parseLong(request.getParameter("accountNumber"));  // 110,497,645,369

		System.out.println(ra_name);
		System.out.println(ra_bank);
		System.out.println(ra_sno);
		
		// 1. memberId  로 계좌 있는 지 유무 확인 후
		//    ㄱ. 있다면(유)   update
		//    ㄴ. 없다면         insert
		
		
		ProfileManagementDTO ra = SaveAccountService.selectRA(memberId);
		
		
		//javax.el.PropertyNotFoundException: Property [ra_bank] not found on type [java.lang.Integer]
		ProfileManagementDTO dto = null;
		try {
			if (ra == null) {
				
				dto = new ProfileManagementDTO();
				dto.setRa_name(ra_name);
				dto.setRa_bank(ra_bank);
				dto.setRa_sno(ra_sno);
				
				int ia = saveAccountService.insertAccount(memberId, ra_name, ra_bank, ra_sno);
				//System.out.println( ia );
				request.setAttribute("ia", ia);
			} else {
				dto = new ProfileManagementDTO();
				dto.setRa_name(ra_name);
				dto.setRa_bank(ra_bank);
				dto.setRa_sno(ra_sno);
				
				int ua = SaveAccountService.updateAccount(ra_name, ra_bank, ra_sno, memberId);
				request.setAttribute("ua", ua);
			}
			
			request.setAttribute("ra", dto);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		

		return FORM_VIEW;
	}

}
