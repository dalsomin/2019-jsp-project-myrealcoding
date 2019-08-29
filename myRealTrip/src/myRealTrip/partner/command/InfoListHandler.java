package myRealTrip.partner.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import myRealTrip.command.CommandHandler;
import myRealTrip.partner.dto.InfoPageDTO;
import myRealTrip.partner.service.InfoService;

public class InfoListHandler implements CommandHandler{
	
	private InfoService infoservice = new InfoService();
	
	@Override
	public String process(HttpServletRequest request, HttpServletResponse response)
			throws Exception {
	
		System.out.println("infolist핸들러 호출~~~");
		String pageNoVal = request.getParameter("page");
		int pageNo=1;
		if (pageNoVal!=null) {
			pageNo = Integer.parseInt(pageNoVal);
		}
		
		InfoPageDTO infopagedto = infoservice.getInfoPage(pageNo);
		
		System.out.println("XXXX: " +  infopagedto.getContent().size());
		
		request.setAttribute("infodto", infopagedto);
		
		return "/partner/partner_info";
	}

}
