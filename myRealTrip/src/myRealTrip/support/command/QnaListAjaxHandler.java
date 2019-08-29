package myRealTrip.support.command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import myRealTrip.command.CommandHandler;
import myRealTrip.support.model.QuestionDTO;
import myRealTrip.support.service.SupportQuestionService;
import net.sf.json.JSONArray;

public class QnaListAjaxHandler implements CommandHandler{
	

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		try {
			System.out.println("XXX");
			
			String cq_email = request.getParameter("cq_email");
			System.out.println(cq_email);
			//int ql_s_code = Integer.parseInt(request.getParameter("ql_s_code"));
			 int ql_s_code = request.getParameter("ql_s_code") == null ? 1 : 
				   Integer.parseInt(request.getParameter("ql_s_code"));
			   System.out.println(ql_s_code);
			SupportQuestionService service = new SupportQuestionService();
			JSONArray jsonArray = null;
			if (ql_s_code == 1) {
				jsonArray = service.getQnaListAJAll(cq_email);
						
			}else {
			jsonArray = service.getQnaListAJ(cq_email,ql_s_code);
			}
			
			request.setAttribute("jsonArray", jsonArray);
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		if (request.getParameter("key") != null) {
			return "/support/qnaListAjax";
		}
		 return "/support/qnaListAjax";
		
	}

	
}
