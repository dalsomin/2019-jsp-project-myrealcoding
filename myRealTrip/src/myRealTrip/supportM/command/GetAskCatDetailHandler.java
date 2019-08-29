package myRealTrip.supportM.command;

import java.sql.Connection;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.util.ConnectionProvider;

import myRealTrip.command.CommandHandler;
import myRealTrip.support.dao.SupportHomeDAO;
import net.sf.json.JSONArray;

public class GetAskCatDetailHandler implements CommandHandler{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		int ac_code = Integer.parseInt(request.getParameter("ac_code"));
		System.out.println("hadler: "+ac_code);
		Connection conn = ConnectionProvider.getConnection();
		
		SupportHomeDAO dao = SupportHomeDAO.getInstance();
		
		JSONArray jsonArray = new JSONArray();
		
		jsonArray = dao.getAskCatDetail(ac_code, conn);
		
		request.setAttribute("jsonArray", jsonArray);
		
		return "/support/askCatDetailAjax";
	}

}
