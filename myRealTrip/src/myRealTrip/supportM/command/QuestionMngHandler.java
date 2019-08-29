package myRealTrip.supportM.command;

import java.sql.Connection;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.util.ConnectionProvider;

import myRealTrip.command.CommandHandler;
import myRealTrip.support.dao.SupportHomeDAO;
import net.sf.json.JSONArray;

public class QuestionMngHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		int year = Integer.parseInt(request.getParameter("year"));
		int month = Integer.parseInt(request.getParameter("month"));
		int day = Integer.parseInt(request.getParameter("day"));
		int ql_s_code = Integer.parseInt(request.getParameter("ql_s_code"));
		
		
		
		
		
		String cq_type = request.getParameter("cq_type");
		String cq_date = getCqDate(year,month,day);
		
		Connection conn = ConnectionProvider.getConnection();
		SupportHomeDAO dao = SupportHomeDAO.getInstance();
		JSONArray jsonArray = new JSONArray();
		
		if (ql_s_code == 1) {
			// 모든 게시글 
			jsonArray = dao.getCqListAllAjax( cq_date,cq_type,conn);
			System.out.println("모든게시글");
		}else {
			jsonArray = dao.getCQListAjax(cq_date, cq_type, ql_s_code,conn);
			System.out.println(ql_s_code+"번 게시글 ");
		}
		
	request.setAttribute("jsonArray", jsonArray);
		
		return "/support/mQnaListAjax";
	
	}

	private String getCqDate(int year, int month, int day) {
		String mon="";
		String day2 ="";
		if (Integer.toString(month).length() == 1 ) {
			 mon = "0"+Integer.toString(month);
		}
		if (Integer.toString(day).length() == 1) {
			day2 = "0"+Integer.toString(day);
		}
		String cq_date = Integer.toString(year).substring(2,4)+"/"+mon+"/"+day2;
		System.out.println(cq_date);
		return cq_date;
	}

	

}
