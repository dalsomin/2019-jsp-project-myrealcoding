package myRealTrip.support.command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import myRealTrip.command.CommandHandler;
import myRealTrip.support.dao.SupportHomeDAO;
import myRealTrip.support.model.AskCatDetailDTO;
import myRealTrip.support.service.SupportFoldersService;
import myRealTrip.support.service.SupportHomePage;

public class SupportFoldersHandler implements CommandHandler{
	
	private SupportFoldersService foldersService = new SupportFoldersService();

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		String pageNoVal = request.getParameter("pageNo");
		int acd_code = Integer.parseInt(request.getParameter("acd_code"));
		
		int ac_code = Integer.parseInt(request.getParameter("ac_code"));
		String title = request.getParameter("title");
		System.out.println(acd_code);
		System.out.println(ac_code);
		System.out.println(title);
		
		//SupportHomeDAO dao = SupportHomeDAO.getInstance();
		//System.out.println(ac_code);
		int pageNo = 1;
		if (pageNoVal != null) {
			pageNo = Integer.parseInt(pageNoVal);
		} 
		SupportHomePage articlePage = foldersService.getArticlePage(acd_code , pageNo);
		AskCatDetailDTO acdName = foldersService.getAcdName(acd_code);
		String acName = foldersService.getAcName(ac_code);
	    System.out.println(acName);
	    
		request.setAttribute("articlePage", articlePage);
		request.setAttribute("acd_code", acd_code);
		request.setAttribute("title", title);
		request.setAttribute("acdName", acdName);
		request.setAttribute("acName", acName);
		request.setAttribute("ac_code", ac_code);
		
	//	dao.getAc_name(conn, ac_code);
		
		String path = request.getContextPath();
	    // String location = "folder.jsp?acd_code="+acd_code+"&title="+title;
	    //String location = "/WEB-INF/view/myRealTrip/support/folder.jsp?acd_code="+acd_code+"&title="+title;
		//response.sendRedirect(path+"/test/NewFile.jsp");
		
		
		return "/support/folder";
		
	}

}
