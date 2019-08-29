package myRealTrip.support.service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import javax.naming.NamingException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.util.ConnectionProvider;

import myRealTrip.support.dao.SupportHomeDAO;
import myRealTrip.support.model.AskCatDetailDTO;
import myRealTrip.support.model.SupportHomeDTO;

public class SupportFoldersService {


	 SupportHomeDAO supportDao = SupportHomeDAO.getInstance();
	 private int size = 10; // 한 페이지에 뿌릴 레코드 개수 
	// int acd_code;
	
	
	public SupportHomePage getArticlePage(int acd_code, int pageNum) throws NamingException {
		//this.acd_code = acd_code;
		//System.out.println("SupportFoldersService acd_code="+acd_code);
		System.out.println(acd_code);
		try(Connection conn = ConnectionProvider.getConnection()) {
			int total = supportDao.selectCount(acd_code, conn);
			System.out.println("폴더서비스 total: "+total);
			List<SupportHomeDTO> content = supportDao.select(acd_code ,conn, (pageNum -1)*size, size);
			//ac_name 가져오기 
			
			
			System.out.println("getArticlePage 서비스호출");
			return new SupportHomePage(total, pageNum, size, content);
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
		
	}
	// 검색 결과 가져오기 
	public SupportHomePage getSearchResultPage(String sw, int pageNum) throws NamingException {
		//this.acd_code = acd_code;
		//System.out.println("SupportFoldersService acd_code="+acd_code);
		try(Connection conn = ConnectionProvider.getConnection()) {
			int total = supportDao.selectCount(sw, conn);
			List<SupportHomeDTO> content = supportDao.select(sw ,conn, (pageNum -1)*size, size);
			//ac_name 가져오기 
			
			
		   System.out.println("검색어 가져오는 서비스 !");
			return new SupportHomePage(total, pageNum, size, content);
			
		} catch (SQLException e) {
			throw new RuntimeException();
		}
		
	}
	//acd_name
   public AskCatDetailDTO getAcdName(int acd_code){
	 //  System.out.println(acd_code);
	   
	      try (Connection conn = ConnectionProvider.getConnection()) {
			AskCatDetailDTO acdName = supportDao.getAcd_Name(acd_code, conn);
			return acdName;
		} catch (Exception e) {
			throw new RuntimeException(e);
		}
	     
	   
   }
   //ac_name 
   public String getAcName(int ac_code) {
	   // System.out.println(ac_code);
	   try(Connection conn = ConnectionProvider.getConnection()) {
		  String ac_name =  supportDao.getAc_name(conn, ac_code);
		   return ac_name;
		} catch (Exception e) {
			throw new RuntimeException();
		}

   }
	
//
//   public List<SupportHomeDTO> select(){
//		//	System.out.println("SupportHomeService_select()");
//			SupportHomeDAO dao = SupportHomeDAO.getInstance();
//			try (Connection conn = ConnectionProvider.getConnection()) {
//				List<SupportHomeDTO> list = dao.selectHome(conn);
//				
//				return list;
//			} catch (SQLException | NamingException e) {
//				throw new RuntimeException(e);
//			}
//		
//			
//		}
//		
   
}
