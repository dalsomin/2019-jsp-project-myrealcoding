package myRealTrip.supportM.command;

import java.sql.Connection;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.util.ConnectionProvider;

import myRealTrip.command.CommandHandler;
import myRealTrip.support.dao.SupportHomeDAO;

public class DeleteArticleHandler implements CommandHandler{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		int fs_code = Integer.parseInt(request.getParameter("fs_code"));
		
		SupportHomeDAO dao = SupportHomeDAO.getInstance();
		
		Connection conn = ConnectionProvider.getConnection();
		
		int result = dao.deleteArticle(fs_code, conn);
		
		if (result == 1) {
			
			response.sendRedirect("/myRealTrip/myrealtrip/support/home.do");
			
			
		}else {
			System.out.println("delete fail ");
		}
		
		
		return null;
	}

}
