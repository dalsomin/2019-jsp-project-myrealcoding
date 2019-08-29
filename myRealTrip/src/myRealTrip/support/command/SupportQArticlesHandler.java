package myRealTrip.support.command;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import myRealTrip.command.CommandHandler;
import myRealTrip.support.model.QCommentDTO;
import myRealTrip.support.model.SupportHomeDTO;
import myRealTrip.support.model.qArticlesDTO;
import myRealTrip.support.service.SupportHomeService;
import myRealTrip.support.service.SupportQWriteService;

public class SupportQArticlesHandler implements CommandHandler{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		   
		try {
			//System.out.println(cq_code);
			String qq = request.getParameter("qq");
     		SupportQWriteService qwservice = new SupportQWriteService();
     		
			qArticlesDTO qdto = null ;
		    ArrayList< QCommentDTO> listQ = new ArrayList<>();
			
			
			
			 if (qq != null) {
				 int cq_code = Integer.parseInt(request.getParameter("cq_code"));
				
						System.out.println(">> qqqqqqqqqqqq");
						
						//String qa_content = request.getParameter("qa_content");
						System.out.println(cq_code);
			     		//SupportQWriteService qwservice = new SupportQWriteService();
			     		
						// 게시글 가져오기  
						qdto = qwservice.selectClickedArticle(cq_code);
						System.out.println(  qdto.getCq_title() );
						request.setAttribute("qdto", qdto);
						
						//댓글 가져오기 
						listQ = qwservice.getComment(cq_code);
						request.setAttribute("listQ", listQ);
						
						return "/support/qContent"; 
						
					} else if(qq == null){
						
						qdto = qwservice.selectArticle();
						request.setAttribute("qdto", qdto); // 게시글 내용 정보
						return "/support/qContent";           
				
					}
				
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	
		
	}

}
