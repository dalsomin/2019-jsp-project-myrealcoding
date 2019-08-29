package myRealTrip.myrealtripMember.command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import myRealTrip.auth.model.Member;
import myRealTrip.command.CommandHandler;
import myRealTrip.myrealtripMember.model.ProfileManagementDTO;
import myRealTrip.myrealtripMember.service.ProfileManagementService;

public class ProfileManagementHandler implements CommandHandler{
	
	private static final String FORM_VIEW = "/member/profileManagement";
	private ProfileManagementService profileManagementService = new ProfileManagementService();

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		//System.out.println("XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX");
		
		HttpSession session = request.getSession();
		Member authUser = (Member)session.getAttribute("authUser"); //  authUser 세션 : 인증(로그인 계정.권한)
		// System.out.println(authUser == null);
		int memberId = authUser.getMemberId(); // 이지은 id  1111   select from member where id = 1111;
		String facebook = authUser.getFacebook();
		String naver = authUser.getNaver();
	 
		// setAttribute             로그인 계정 Member
		// setAttribute            id 계좌테이블 select      계좌 정보   
		
		ProfileManagementDTO pmd = new ProfileManagementDTO();
		//String mar_type = pmd.getMar_type();
		
		
		List<Member> member = profileManagementService.selectMemberList();
		request.setAttribute("member", member);
		
		
		ProfileManagementDTO ra = profileManagementService.selectRA(memberId);
		request.setAttribute("ra", ra);
		// System.out.println(ra.getRa_bank() +" / " + ra.getRa_sno() );
		
		// System.out.println(pmList.size());
		// System.out.println(pmList.getRa_name());
		
		
		List<ProfileManagementDTO> noc = profileManagementService.selectNOC(memberId);
		request.setAttribute("noc", noc);
		//System.out.println(noc.size());
		
		
		List<String> mar_types  = profileManagementService.selectAgreeAdList(memberId);
		//System.out.println("XXXXX " +  AgreeAd.size() ); 
		//System.out.println(  mar_types.toString() );
		
		request.setAttribute("mar_types", mar_types);
		
		/*
		int sns = profileManagementService.updateSns(facebook, naver, memberId);
		request.setAttribute("sns", sns);
		*/
		
		return FORM_VIEW;
	}
	
	

	
	
}
