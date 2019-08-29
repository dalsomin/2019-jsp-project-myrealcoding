package myRealTrip.support.command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import myRealTrip.command.CommandHandler;
import myRealTrip.support.model.SupportHomeDTO;
import myRealTrip.support.service.SupportHomeService;

public class SupportSolutionHandler implements CommandHandler{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		int ac_code =  Integer.parseInt(request.getParameter("ac_code")   );
		try {
			SupportHomeService service = new SupportHomeService();
			List<SupportHomeDTO> list = service.selectSolution(ac_code);
			request.setAttribute("list", list);
		} catch (Exception e) {
			e.printStackTrace();
		}
		System.out.println("SupportHomeHandler 리턴 직전에서오류!");
		request.setAttribute("ac_code", ac_code);
		
		return "/support/solution_"+ac_code;
	}
		

}
