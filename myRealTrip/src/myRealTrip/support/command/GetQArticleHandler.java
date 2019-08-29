package myRealTrip.support.command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import myRealTrip.command.CommandHandler;
import myRealTrip.support.model.EcdCountDTO;
import myRealTrip.support.model.SupportHomeDTO;
import myRealTrip.support.model.qArticlesDTO;
import myRealTrip.support.service.SupportHomeService;
import myRealTrip.support.service.SupportQWriteService;

public class GetQArticleHandler implements CommandHandler{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		   
			try {
				System.out.println(">> GetQArticleHandler ");
				int cq_code = Integer.parseInt(request.getParameter("cq_code"));
				String qa_content = request.getParameter("qa_content");
				System.out.println(cq_code);
	     		SupportQWriteService qwservice = new SupportQWriteService();
	     		
				qArticlesDTO qdto = qwservice.selectClickedArticle(cq_code);
				
				request.setAttribute("qdto", qdto);
				request.setAttribute("qa_content", qa_content);
				
			} catch (Exception e) {
				e.printStackTrace();
			}
		
			return "/support/qContent";           
			
		}
	
		
	}


