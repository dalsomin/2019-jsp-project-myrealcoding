package myRealTrip.support.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import myRealTrip.command.CommandHandler;
import myRealTrip.support.service.AjaxService;
import myRealTrip.support.service.SupportQuestionService;
import net.sf.json.JSONArray;

public class SearchAjaxHandler implements CommandHandler{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		try {
			System.out.println("aJax 호출~");
			String sw = request.getParameter("searchWord");
			System.out.println("searchword :"+sw);
			
			AjaxService ajaxService = new AjaxService();
			JSONArray jsonArray  = ajaxService.getSerachAjax(sw);
			
			request.setAttribute("jsonArray", jsonArray);

		} catch (Exception e) {
			// TODO: handle exception
		}if (request.getParameter("key") != null) {
			return "/support/searchAjax";
		}
		 return "/support/searchAjax";
	}

}
