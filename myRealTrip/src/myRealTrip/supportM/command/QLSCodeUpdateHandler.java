package myRealTrip.supportM.command;

import java.sql.Connection;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.util.ConnectionProvider;

import myRealTrip.command.CommandHandler;
import myRealTrip.support.dao.SupportHomeDAO;

public class QLSCodeUpdateHandler implements CommandHandler  {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		int cq_code = Integer.parseInt(request.getParameter("cq_code"));
		int ql_s_code = Integer.parseInt(request.getParameter("ql_s_code"));
		
		System.out.println("QLSCodeUpdateHandler"+cq_code);
		
		SupportHomeDAO dao = SupportHomeDAO.getInstance();
		Connection conn = ConnectionProvider.getConnection();
		
		int updateCnt = dao.updateQLSCode(cq_code, ql_s_code, conn);
		
		if (updateCnt==1) {
			response.sendRedirect(request.getContextPath() + "/myRealTrip/support/solution/qArticles.do?qq=qq&cq_code="+cq_code);
		}
		
		
		
		return null;
	}

}
