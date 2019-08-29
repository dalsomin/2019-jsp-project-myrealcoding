package myRealTrip.support.service;

import java.sql.Connection;

import com.util.ConnectionProvider;

import myRealTrip.support.dao.SupportHomeDAO;
import net.sf.json.JSONArray;

public class AjaxService {
	public JSONArray getSerachAjax(String sw){
		SupportHomeDAO dao = SupportHomeDAO.getInstance();
		JSONArray jsonArray = new JSONArray();
		try (Connection conn = ConnectionProvider.getConnection()){
			jsonArray = dao.SearchKeywordList(sw, conn);
			System.out.println("검색어자동완성 서비스..");
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return jsonArray;
		
	}
}
