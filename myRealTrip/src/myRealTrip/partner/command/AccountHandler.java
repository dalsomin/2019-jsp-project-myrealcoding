package myRealTrip.partner.command;

import java.sql.SQLException;

import javax.naming.NamingException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import myRealTrip.auth.model.Member;
import myRealTrip.command.CommandHandler;
import myRealTrip.partner.dto.AccountDTO;
import myRealTrip.partner.service.AccountService;


public class AccountHandler implements CommandHandler{

	private static final String FORM_VIEW="/partner/partner_account";
	private AccountService accountService = new AccountService();
	
	
	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		if (request.getMethod().equalsIgnoreCase("GET")) {
			return FORM_VIEW;
		}else if(request.getMethod().equalsIgnoreCase("POST")) {
			return saveForm(request, response);
		} else {
			response.setStatus(HttpServletResponse.SC_METHOD_NOT_ALLOWED);
			return null;		
		}

	}


	private String saveForm(HttpServletRequest request, HttpServletResponse response) {
		
		AccountDTO adto  = new AccountDTO();
		/*adto.setMemberId((String) request.getAttribute("memberId"));*/
		Member authUser = (Member) request.getSession().getAttribute("authUser");
		adto.setMemberId(authUser.getMemberId());
		adto.setCa_name(request.getParameter("ca_name"));
		adto.setCa_bank(request.getParameter("ca_bank"));
		adto.setCa_sno(request.getParameter("ca_sno"));
		adto.setCa_branch(request.getParameter("ca_branch"));
		adto.setCa_rn(request.getParameter("ca_rn"));
		
		System.out.println("**핸들러 멤버아이디 가져왔니?"+adto.getMemberId());
		try {
			accountService.insertaccount(adto);
			return "/partner/partner_dashboard";
		} catch (NamingException e) {
			System.out.println("account핸들러에서 에러");
			e.printStackTrace();
		} catch (SQLException e) {
			System.out.println("account핸들러에서 에러");
			e.printStackTrace();
		}
		return null;
		

	}

}
