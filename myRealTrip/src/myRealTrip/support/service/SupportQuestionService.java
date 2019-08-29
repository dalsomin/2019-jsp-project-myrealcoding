package myRealTrip.support.service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import javax.naming.NamingException;

import com.util.ConnectionProvider;

import myRealTrip.support.dao.SupportHomeDAO;
import myRealTrip.support.model.CqContantDTO;
import myRealTrip.support.model.QuestionDTO;
import net.sf.json.JSONArray;

public class SupportQuestionService {

	public List<CqContantDTO> getCqCont(){
		SupportHomeDAO dao = SupportHomeDAO.getInstance();
		try(Connection conn = ConnectionProvider.getConnection()) {
			List<CqContantDTO> cdto = dao.getCqContant(conn);
			
			return cdto;
			
		}  catch (SQLException | NamingException e) {
			throw new RuntimeException(e);
		}
		
	}
	public List<QuestionDTO> getQnaList(String cq_email){
		SupportHomeDAO dao = SupportHomeDAO.getInstance();
		List<QuestionDTO> list = null;
		try (Connection conn = ConnectionProvider.getConnection()){
			list = dao.getQnaList(conn, cq_email);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return list;
		
	}
	
	public JSONArray getQnaListAJ(String cq_email, int ql_s_code){
		SupportHomeDAO dao = SupportHomeDAO.getInstance();
		JSONArray jsonArray = new JSONArray();
		try (Connection conn = ConnectionProvider.getConnection()){
			jsonArray = dao.getQnaListAjax(conn, cq_email, ql_s_code);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return jsonArray;
		
	}
	public JSONArray getQnaListAJAll(String cq_email){
		SupportHomeDAO dao = SupportHomeDAO.getInstance();
		JSONArray jsonArray = new JSONArray();
		try (Connection conn = ConnectionProvider.getConnection()){
			jsonArray = dao.getQnaListAjaxAll(conn, cq_email);
			System.out.println("getQnaListAJAll");
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return jsonArray;
		
	}
	
//	public List<QuestionDTO> getQlStatus()s {
//		SupportHomeDAO dao = SupportHomeDAO.getInstance();
//		List<QuestionDTO> statusList = null;
//		try (Connection conn = ConnectionProvider.getConnection()){
//			statusList = dao.getQStatus(conn);
//			
//			
//		} catch (Exception e) {
//			e.printStackTrace();
//		}
//		return statusList;
//	}
}
