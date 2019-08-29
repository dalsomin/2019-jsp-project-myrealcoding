package myRealTrip.support.command;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import myRealTrip.command.CommandHandler;
import myRealTrip.support.model.SupportHomeDTO;
import myRealTrip.support.service.SupportArticlesService;
import net.sf.json.JSONObject;



public class SupportArticlesHandler implements CommandHandler {

	private static final String FORM_VIEW = "/support/articles";

	private  SupportArticlesService articlesService = new SupportArticlesService();

	@Override
	public String process(HttpServletRequest request
			, HttpServletResponse response ) throws Exception {
		System.out.println("SupportArticlesHandler!!!!");
		
		//String key = request.getParameter("key");
		//System.out.println(key);
		
		int fs_code = Integer.parseInt(request.getParameter("fs_code"));
		System.out.println(fs_code);
		
		SupportHomeDTO dto = articlesService.selectOne(fs_code);
		ArrayList<SupportHomeDTO> listR = articlesService.getRelationArticle(fs_code);
		
		//request.setAttribute("key", key);
		request.setAttribute("listR", listR);
		request.setAttribute("dto", dto);
		//System.out.println(dto.getFs_code());
		System.out.println("리턴직전에 으으으으으ㅡ으으으으응......");
		return FORM_VIEW;
		
		
	
	}

}