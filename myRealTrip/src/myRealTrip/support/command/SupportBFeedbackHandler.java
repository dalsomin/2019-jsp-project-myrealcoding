package myRealTrip.support.command;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import myRealTrip.command.CommandHandler;
import myRealTrip.support.model.BFeedbackDTO;
import myRealTrip.support.service.SupportArticlesService;
import myRealTrip.support.service.SupportQWriteService;

public class SupportBFeedbackHandler implements CommandHandler{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		if (request.getMethod().equalsIgnoreCase("POST")) {
			return processSubmit(request, response);
		}else {
			response.setStatus(HttpServletResponse.SC_METHOD_NOT_ALLOWED);
			return null;
		}
		
	}

	private String processSubmit(HttpServletRequest request, HttpServletResponse response) {
		
		 
		BFeedbackDTO dto = new BFeedbackDTO();
		
		
		int memberid = Integer.parseInt(request.getParameter("memberid"));
		int fs_code = Integer.parseInt(request.getParameter("fs_code"));
		///System.out.println(fs_code);
		///System.out.println(memberid);
		

		
		String [] bf_select = request.getParameterValues("fs_select[]");
		
		System.out.println(bf_select.length);
		for (int i = 0; i < bf_select.length; i++) {
			
			System.out.println(bf_select[i]);
		}
		
		
		dto.setBf_content(request.getParameter("bf_content"));
		dto.setBf_select(bf_select);
		
		SupportArticlesService service = new SupportArticlesService();
		
		int result = service.insertBF(memberid, fs_code, dto);
		
		
//			return "/support/qTest2";
			
				try {
					if (result >= 1) {
						
					response.sendRedirect(    request.getContextPath() + "/myrealtrip/support/solution/articles.do?fs_code="+fs_code+"&key=done"   );
					
					}
				} catch (IOException e) {
					
					e.printStackTrace();
				}
			return null;
		
		
		
	}

}
