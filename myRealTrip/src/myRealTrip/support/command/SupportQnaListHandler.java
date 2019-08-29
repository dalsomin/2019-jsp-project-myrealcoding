package myRealTrip.support.command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import myRealTrip.command.CommandHandler;
import myRealTrip.support.model.QuestionDTO;
import myRealTrip.support.service.SupportQuestionService;

public class SupportQnaListHandler implements CommandHandler{
	

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		try {
			System.out.println("SupportQnaListHandler");
			String cq_email = request.getParameter("cq_email");
			System.out.println(cq_email);
			//int ql_s_code = Integer.parseInt(request.getParameter("ql_s_code"));
			SupportQuestionService service = new SupportQuestionService();
			List<QuestionDTO> list = service.getQnaList(cq_email);
			
				
			
			
			request.setAttribute("list", list);
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		if (request.getParameter("key") != null) {
			return "/support/qnaList";
		}
		 return "/support/qnaList";
		
	}

	
}
