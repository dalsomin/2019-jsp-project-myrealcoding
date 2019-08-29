package myRealTrip.support.command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import myRealTrip.command.CommandHandler;
import myRealTrip.support.model.EcdCountDTO;
import myRealTrip.support.model.SupportHomeDTO;
import myRealTrip.support.service.SupportHomeService;

public class SupportHomeHandler implements CommandHandler{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		//System.out.println("SupportHomeHandler");
		//String acd_code = request.getParameter("acd_code");
		
		try {
			SupportHomeService service = new SupportHomeService();
			List<SupportHomeDTO> list = service.select();
			List<EcdCountDTO> count = service.acdCount();
			request.setAttribute("list", list);
			request.setAttribute("count", count);
		} catch (Exception e) {
			e.printStackTrace();
		}
		//System.out.println("SupportHomeHandler 리턴 직전에서오류!");
		
		if (request.getParameter("key") != null) {
			return "/support/solution_10";
		}
		 return "/support/home";
	}

}
