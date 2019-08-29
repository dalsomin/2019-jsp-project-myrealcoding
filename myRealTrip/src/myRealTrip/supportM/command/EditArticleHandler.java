package myRealTrip.supportM.command;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.naming.NamingException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.util.ConnectionProvider;

import myRealTrip.command.CommandHandler;
import myRealTrip.support.dao.SupportHomeDAO;
import myRealTrip.support.model.SupportHomeDTO;
import myRealTrip.support.service.SupportArticlesService;

public class EditArticleHandler implements CommandHandler{

	private  SupportArticlesService articlesService = new SupportArticlesService();
	
	
	
	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
//		
//		int fs_code = Integer.parseInt(request.getParameter("fs_code"));
//		System.out.println("EditArticleHandler : "+fs_code);
//		
//		SupportHomeDTO dto = articlesService.selectOne(fs_code);
//		ArrayList<SupportHomeDTO> listR = articlesService.getRelationArticle(fs_code);
//		
//		
//		
//		//request.setAttribute("key", key);
//		request.setAttribute("listR", listR);
//		request.setAttribute("dto", dto);
//		
//		return "/support/editArticle";
//		
		if (request.getMethod().equalsIgnoreCase("GET")) {
			return processGet(request, response);
		}else if (request.getMethod().equalsIgnoreCase("POST")) {
			return processSubmit(request, response);
		}else {
			response.setStatus(HttpServletResponse.SC_METHOD_NOT_ALLOWED);
			return null;
		}
	}



	private String processSubmit(HttpServletRequest request, HttpServletResponse response) {
		// 수정하기 ... 
		int fs_code = Integer.parseInt(request.getParameter("fs_code"));
		String fs_title = request.getParameter("fs_title");
		String fs_answer = request.getParameter("fs_answer");
		
		SupportHomeDAO dao = SupportHomeDAO.getInstance();
		SupportArticlesService articlesService = new SupportArticlesService();
		Connection conn;
		try {
			conn = ConnectionProvider.getConnection();
			int updateCnt = dao.editArticle(fs_code, fs_title, fs_answer, conn);
			
			if (updateCnt == 1) {
				SupportHomeDTO dto = articlesService.selectOne(fs_code);
				request.setAttribute("dto", dto);
				return "/support/articles";
			}else {
				System.out.println("수정 실패..");
			}
			
		} catch (NamingException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	
		
		
		
		
		return "/support/articles";
	}



	private String processGet(HttpServletRequest request, HttpServletResponse response) {
		
		int fs_code = Integer.parseInt(request.getParameter("fs_code"));
		
		System.out.println("EditArticleHandler GET : "+fs_code);
		
		SupportHomeDTO dto = articlesService.selectOne(fs_code);
		ArrayList<SupportHomeDTO> listR = articlesService.getRelationArticle(fs_code);
		
		
		
		//request.setAttribute("key", key);
		request.setAttribute("listR", listR);
		request.setAttribute("dto", dto);
		
		return "/support/editArticle";
	}

}
