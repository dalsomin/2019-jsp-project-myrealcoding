package myRealTrip.support.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import myRealTrip.command.CommandHandler;
import myRealTrip.support.model.AskCatDetailDTO;
import myRealTrip.support.service.SupportFoldersService;
import myRealTrip.support.service.SupportHomePage;

public class SupportSearchHandler implements CommandHandler{
	private SupportFoldersService foldersService = new SupportFoldersService();

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		

		String pageNoVal = request.getParameter("pageNo");
		System.out.println(pageNoVal);
		String sw = request.getParameter("searchword");
		
		
		System.out.println(sw);
		
		int pageNo = 1;
		if (pageNoVal != null) {
			pageNo = Integer.parseInt(pageNoVal);
		} 
		SupportHomePage articlePage = foldersService.getSearchResultPage(sw , pageNo);
		
	    
		request.setAttribute("articlePage", articlePage);
		
		request.setAttribute("sw", sw);
		System.out.println(sw);
	   
		return "/support/search";
		
	}

}
