package myRealTrip.flights.notice.command;

import java.io.IOException;
import java.sql.SQLException;

import javax.naming.NamingException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import myRealTrip.command.CommandHandler;
import myRealTrip.flights.notice.model.Notice;
import myRealTrip.flights.notice.service.WriteService;

public class WriteNoticeHandler  implements CommandHandler {

	private static final String FORM_VIEW="/flights/notice/writeNotice";
	
	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("utf-8");
		if(request.getMethod().equalsIgnoreCase("GET")) {
			return processForm(request,response);
		}else if(request.getMethod().equalsIgnoreCase("POST")) {
			return processSubmit(request,response);
		}else {
			response.setStatus(HttpServletResponse.SC_METHOD_NOT_ALLOWED);
			return null;
		}
	}
	
	private String processForm(HttpServletRequest request, HttpServletResponse response) {
		return FORM_VIEW;
	}
	
private String processSubmit(HttpServletRequest request, HttpServletResponse response) throws NamingException, SQLException, IOException {
		
		Notice notice = new Notice();
		notice.setSubject(request.getParameter("subject"));
		notice.setContent(request.getParameter("content"));
		notice.setHot(request.getParameter("hot"));
		
		try {
			WriteService service = new WriteService();
			int result = service.wirte(notice);
			//System.out.println("hot :" +notice.getHot());
			if(result==1) {
				response.sendRedirect( request.getContextPath()+"/myRealTrip/flights/notice/list.do");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}	
		return null;	
	}
	

}
