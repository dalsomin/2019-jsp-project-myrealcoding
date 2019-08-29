package myRealTrip.myrealtripMember.command;

import java.sql.Clob;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import myRealTrip.auth.model.Member;
import myRealTrip.command.CommandHandler;
import myRealTrip.myrealtripMember.model.AgreeAdDTO;
import myRealTrip.myrealtripMember.service.EditPMService;

public class EditPMHandler implements CommandHandler{

	private static final String FORM_VIEW = "/member/profileManagement";
	private EditPMService editPMService = new EditPMService();

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		HttpSession session = request.getSession();
		Member authUser = (Member)session.getAttribute("authUser");

		int memberId = authUser.getMemberId();
 
		String member_name = request.getParameter("user[username]");
		String facebook = request.getParameter("facebook_y_n"); 
		String naver = request.getParameter("naver_y_n"); 
		String member_pic = authUser.getMember_pic(); 

 

		String marTypeE = request.getParameter("user[subscription_settings][email]");
		String marTypeS = request.getParameter("user[subscription_settings][sms]");
		String marTypeA = request.getParameter("user[subscription_settings][push]");
		
		 
	 
		int dam = editPMService.deleteAgreeMem(memberId);

		if( marTypeE.equals("true") )  editPMService.insertAgreeMem(memberId, "email");
		if( marTypeS.equals("true") )  editPMService.insertAgreeMem(memberId, "sms");
		if( marTypeA.equals("true") )  editPMService.insertAgreeMem(memberId, "push"); 
	 
        

		int um = editPMService.updateMember(member_name, facebook, naver, member_pic, memberId);
		authUser.setMember_name(member_name);
		authUser.setFacebook(facebook);
		authUser.setNaver(naver);
		authUser.setMember_pic(member_pic);
		//authUser.setModdate(sysdate);
		request.setAttribute("um", um);

		 

		if(um == 1) {
			// authUser 업데이트필요
			request.getSession().setAttribute("authUser", authUser);
		} 

       


		response.sendRedirect(request.getContextPath() + "/member/profileManagement.do");

		return null;
		 
	}




}
