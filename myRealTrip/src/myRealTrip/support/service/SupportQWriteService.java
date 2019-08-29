package myRealTrip.support.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.naming.NamingException;

import com.util.ConnectionProvider;
import com.util.JdbcUtil;

import myRealTrip.support.dao.SupportHomeDAO;
import myRealTrip.support.model.AskCatDetailDTO;
import myRealTrip.support.model.HelpFileDTO;
import myRealTrip.support.model.QCommentDTO;
import myRealTrip.support.model.QuestionDTO;
import myRealTrip.support.model.qArticlesDTO;

public class SupportQWriteService {

	private SupportHomeDAO dao = SupportHomeDAO.getInstance();
	
	
	public int qwrite(QuestionDTO dto, String file_name){
		Connection conn = null;
		int insertQlistCount = 0;
		AskCatDetailDTO asdDTO = new AskCatDetailDTO();
		try {
			   conn = ConnectionProvider.getConnection();	
			   int insertCount = dao.insertQ(conn, dto,file_name);
			   int cq_code = dao.getCq_code(conn);
			    //System.out.println(cq_code);
		   	if (insertCount == 0) { // 0 이면 insert 실패 
				throw new RuntimeException("fail to insert cq_qna ! ");
			}else {
				
				String member_email = dto.getCq_email();
				
				int memberid = dao.getMemberid(conn, member_email);
				System.out.println(memberid);
				insertQlistCount = dao.insertQList(conn, memberid,cq_code);
			}
			
			if (insertQlistCount == 0) {
				throw new RuntimeException("fail to insert qna_list ! ");
			}
			
			
			
			return insertCount;
		} catch (SQLException | NamingException e) {
			JdbcUtil.rollback(conn);
			throw new RuntimeException();
		} catch (RuntimeException e) {
			JdbcUtil.rollback(conn);
			throw e;
		}finally {
			JdbcUtil.close(conn);
		}
		
		
	}

//방금insert 한 게시글 가져오기 
	public qArticlesDTO selectArticle() {
		Connection conn = null;
		qArticlesDTO qdto = null;
		try {
			conn = ConnectionProvider.getConnection();
			int cq_code = dao.getCq_code(conn);
			qdto = dao.getQArticle(cq_code,conn);
		} catch (NamingException e) {
			
			e.printStackTrace();
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		return qdto;
	}
	
// 선택한 q게시글 가져오기 	
	public qArticlesDTO selectClickedArticle(int cq_code) {
		Connection conn = null;
		qArticlesDTO qdto = null;
		try {
			System.out.println("qArticlesDTO service !!");
			conn = ConnectionProvider.getConnection();
			qdto = dao.getQArticle(cq_code,conn);
		} catch (NamingException e) {
			
			e.printStackTrace();
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		return qdto;
	}
// qArticles insert 하기 
	 public int inertQA(String qa_content, int cq_code, String filesystemname,String username) {
		 Connection conn = null;
		 int result = 0;
			try {
				
				conn = ConnectionProvider.getConnection();
				result = dao.insertQA(conn, qa_content, cq_code,filesystemname,username);
			}catch (SQLException | NamingException e) {
				JdbcUtil.rollback(conn);
				throw new RuntimeException();
			} catch (RuntimeException e) {
				JdbcUtil.rollback(conn);
				throw e;
			}finally {
				JdbcUtil.close(conn);
			}
			
			
		return result;
		 
	 }

	 // 댓글 가져오기 
	public ArrayList<QCommentDTO> getComment(int cq_code) {
		Connection conn = null;
		QCommentDTO cdto = null;
		ArrayList<QCommentDTO> listQ = null;
		try {
			System.out.println("댓글 가져오기 service !!");
			conn = ConnectionProvider.getConnection();
			listQ = dao.getQComment(cq_code,conn);
		} catch (NamingException e) {
			
			e.printStackTrace();
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		return listQ;
	}
	 
	 // file insert 하기 
	public int insertHelpFile (HelpFileDTO fileDTO) {
		Connection conn = null;
		int result =0;
		
		try {
			conn = ConnectionProvider.getConnection();
			result = dao.insertHelpFile(fileDTO, conn);
			
		} catch (SQLException | NamingException e) {
			JdbcUtil.rollback(conn);
			throw new RuntimeException();
		} catch (RuntimeException e) {
			JdbcUtil.rollback(conn);
			throw e;
		}finally {
			JdbcUtil.close(conn);
		}
		
		return result;
		
		
	}

	

	public String getFileName() {
		Connection conn = null;
		String file_name = "";
		
		try {
			conn = ConnectionProvider.getConnection();
			file_name = dao.getFielName(conn);
			System.out.println("service file_name"+file_name);
		} catch (NamingException e) {
			
			e.printStackTrace();
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		return file_name;
		
	}
	
}
