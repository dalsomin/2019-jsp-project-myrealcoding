package myRealTrip.supportM.command;

import java.sql.Connection;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.util.ConnectionProvider;

import myRealTrip.command.CommandHandler;
import myRealTrip.support.dao.SupportHomeDAO;
import myRealTrip.support.model.SupportHomeDTO;

public class InsertFreqlHandler implements CommandHandler{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		String fs_title = request.getParameter("fs_title");
		String fs_answer = request.getParameter("fs_answer");
		int ac_code = Integer.parseInt(request.getParameter("ac_code"));
		int acd_code = Integer.parseInt(request.getParameter("acd_code"));
		
		SupportHomeDTO dto = new SupportHomeDTO();
		dto.setAc_code(ac_code);
		dto.setAcd_code(acd_code);
		dto.setFs_answer(fs_answer);
		dto.setFs_title(fs_title);
		
		SupportHomeDAO dao =SupportHomeDAO.getInstance();
		Connection conn = ConnectionProvider.getConnection();
		int insertCnt = dao.insertFreqAsk(dto, conn);
		
		
		if (insertCnt == 1) {
			int fs_code = dao.getFreqAskR(conn);
			
			System.out.println(fs_code);
		       response.sendRedirect("/myRealTrip/myrealtrip/support/solution/articles.do?fs_code="+fs_code);
		}
		
		return null;
	}

}
