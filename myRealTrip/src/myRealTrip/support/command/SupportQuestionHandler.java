package myRealTrip.support.command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import myRealTrip.command.CommandHandler;
import myRealTrip.support.model.CqContantDTO;
import myRealTrip.support.model.EcdCountDTO;
import myRealTrip.support.model.SupportHomeDTO;
import myRealTrip.support.service.SupportHomeService;
import myRealTrip.support.service.SupportQuestionService;

public class SupportQuestionHandler implements CommandHandler{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		
		HttpSession  session = request.getSession();
		SupportQuestionService service = new SupportQuestionService();

		try {
			//support service = new SupportHomeService();
			List<CqContantDTO> list = service.getCqCont();
			
			request.setAttribute("list", list);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		if ( session != null && session.getAttribute("authUser") != null ) { //세션 존재하면 회원 이메일 또는 회원 식별 코드 가져와야 한다. 
		
			return"/support/qForm";
		}else  {
			return "/support/qForm";
		}
	
	}

}
