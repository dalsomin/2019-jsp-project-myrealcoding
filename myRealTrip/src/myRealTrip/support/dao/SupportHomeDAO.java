package myRealTrip.support.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.sun.javafx.scene.control.ReadOnlyUnbackedObservableList;
import com.sun.xml.internal.bind.v2.model.util.ArrayInfoUtil;
import com.util.JdbcUtil;

import jdk.nashorn.internal.runtime.JSONListAdapter;
import myRealTrip.support.command.SupportSolutionHandler;
import myRealTrip.support.model.AskCatDetailDTO;
import myRealTrip.support.model.BFeedbackDTO;
import myRealTrip.support.model.CqContantDTO;
import myRealTrip.support.model.EcdCountDTO;
import myRealTrip.support.model.HelpFileDTO;
import myRealTrip.support.model.QCommentDTO;
import myRealTrip.support.model.QuestionDTO;
import myRealTrip.support.model.SupportHomeDTO;
import myRealTrip.support.model.qArticlesDTO;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;
import sun.dc.pr.PRException;

public class SupportHomeDAO {

	//싱글톤 
	private static SupportHomeDAO dao = null;
	private SupportHomeDAO() {}
	public static SupportHomeDAO getInstance() {
		if (dao == null) {
			dao = new SupportHomeDAO();
		}
		return dao;
	}
	//acd 개수 가져오기 
	public List<EcdCountDTO> getAcdCount(Connection conn){
		String sql = "select count(acd_code) count, acd_code from freq_ask  group by acd_code";
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ArrayList<EcdCountDTO> count = new ArrayList<>();
		 
		try {
			pstmt = conn.prepareStatement(sql);
			//pstmt.setInt(1, acd_code);
			rs = pstmt.executeQuery();
			EcdCountDTO countdto = null;
			while (rs.next()) {
				countdto = new EcdCountDTO();
				//System.out.println(rs.getInt("count"));
				countdto.setEcdN(rs.getInt("count"));
				countdto.setAcd_code(rs.getInt("acd_code"));
				
				count.add(countdto);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			try { pstmt.close();} catch (SQLException e) {	e.printStackTrace();}
			try {rs.close();    } catch (SQLException e) {	e.printStackTrace();}
			try {conn.close();  } catch (SQLException e) {	e.printStackTrace();}
		}
		
		return count;
		
	}
	//select 
	public List<SupportHomeDTO> selectHome(
			Connection conn){
//		WHERE r <= 5
		
		String sql =" SELECT fs_code, fs_title, ac_code, acd_code ,r  " + 
				"FROM " + 
				"(" + 
				"    SELECT fs_code, ac_code, acd_code, fs_title, fs_answer, fs_date, fs_feedback, RANK() OVER(PARTITION BY acd_code  order by  fs_code  asc) r "
				+
				"    FROM freq_ask" + 
				")" + 
				" WHERE r <= 5" + 
				" order by fs_code ";
		
	
		
		//System.out.println("쿼리 실행..?");
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ArrayList<SupportHomeDTO> list = new ArrayList<>();
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			SupportHomeDTO dto = null;
			while(rs.next()) {
				dto =  new SupportHomeDTO();
				// dto.setFs_answer(rs.getString("fs_answer")   );
				 dto.setFs_code(rs.getInt("fs_code"));
				 dto.setAcd_code(rs.getInt("acd_code"));
				 dto.setAc_code(rs.getInt("ac_code"));
				 dto.setFs_title(rs.getString("fs_title"));
				// dto.setR(rs.getInt("r"));
				 
				// dto.setNum(rs.getInt("c"));
				// System.out.println(rs.getInt("c"));
				 
				// dto.setFs_date(rs.getDate("fs_date"));
				// dto.setFs_feedback(rs.getString("fs_feedback"));

 					
		         list.add(dto);
			}
		} catch (SQLException e) { 
			e.printStackTrace();
		} finally {
			try { pstmt.close();} catch (SQLException e) {	e.printStackTrace();}
			try {rs.close();    } catch (SQLException e) {	e.printStackTrace();}
			try {conn.close();  } catch (SQLException e) {	e.printStackTrace();}
		}
		//System.out.println("SupportHomeDAO _selectList ");
		return list;		
	}
	// ac_name 가져오기 
	public String getAc_name(Connection conn, int ac_code) {
		System.out.println(">getAc_name  ac_code"+ac_code);
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String ac_name = "";
		String sql = "select ac_name from ask_cat where ac_code = ?";
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, ac_code);
			
			rs = pstmt.executeQuery();
			if (rs.next()) {
				System.out.println(rs.getString("ac_name"));
				ac_name = rs.getString("ac_name");
				//return ac_name;
			}
			
		} catch (Exception e) {
			// TODO: handle exception
		} finally {
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
		}
		return ac_name;
		
	}
	//
	public int selectCount(int acd_code,Connection conn) throws SQLException {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			String sql ="select count(*) cnt from freq_ask where acd_code = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, acd_code);
			rs = pstmt.executeQuery();
			if (rs.next() ) {
				System.out.println(rs.getInt("cnt"));
				return rs.getInt("cnt");
			}
			return 0;
		} finally {
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
		}
	}
	public int selectCount(String sw,Connection conn) throws SQLException {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			String sql ="select count(*) from freq_ask where fs_title like ? or fs_answer like ? ";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, "%"+sw+"%");
			pstmt.setString(2, "%"+sw+"%");
			rs = pstmt.executeQuery();
			if (rs.next()) {
				return rs.getInt(1);
			}
			return 0;
		} finally {
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
		}
	}
	//
	int acd_code;
	
	public List<SupportHomeDTO> select(int acd_code, Connection conn, int startRow, int size) throws SQLException {
		//this.acd_code = acd_code;
		System.out.println("SupportHomeDAO acd_code="+acd_code);
		System.out.println("SupportHomeDAO startRow="+startRow);
		System.out.println("SupportHomeDAO size="+size);
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			String sql = " select *                                                     ";
			sql+=     " from (                                                       ";
			sql+=   "     select rownum no, t.*                                    ";
			sql+=   "     from (                                                   ";
			sql+=   "        select  *                                              ";
			sql+=   "        from  freq_ask  where acd_code = ?                        ";
			sql+=   "         order by fs_code asc                                    ";
			sql+=   "     ) t                                                      ";
			sql+=   " ) b                                                          ";
			sql+=   " where b.no between ? and ?                  ";	
			
			pstmt = conn.prepareStatement(sql);
		    pstmt.setInt(1, acd_code);
			pstmt.setInt(2, startRow);
			pstmt.setInt(3, startRow + size - 1);
			rs = pstmt.executeQuery();
			List<SupportHomeDTO> result = new ArrayList<>();
			System.out.println("쿼리 실행함?");
			while (rs.next()) {
				result.add(convertArticle2(rs));
			}
			
			System.out.println( result.size() );
			return result;
		} finally {
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
		}
	}
	public List<SupportHomeDTO> select(String sw, Connection conn, int startRow, int size) throws SQLException {
		//this.acd_code = acd_code;
		//System.out.println("SupportHomeDAO acd_code="+acd_code);
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			String sql = " select *                                                     ";
			sql+=     " from (                                                       ";
			sql+=   "     select rownum no, t.*                                    ";
			sql+=   "     from (                                                   ";
			sql+=   "        select  fs_code, f.ac_code ac_code , f.acd_code acd_code , fs_title, fs_answer, fs_date, fs_feedback , acd_name ";
			sql+=   "        from   freq_ask f LEFT OUTER JOIN  ask_cat_detail a  on f.acd_code = a.acd_code where   fs_title like ? or fs_answer like  ?           ";
			sql+=   "         order by fs_code asc                                    ";
			sql+=   "     ) t                                                      ";
			sql+=   " ) b                                                          ";
			sql+=   " where b.no between ? and ?                  ";	
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, "%"+sw+"%");
			pstmt.setString(2, "%"+sw+"%");
			pstmt.setInt(3, startRow);
			pstmt.setInt(4, startRow + size - 1);
			rs = pstmt.executeQuery();
			List<SupportHomeDTO> result = new ArrayList<>();
			//	System.out.println("쿼리 실행함?");
			while (rs.next()) {
				result.add(convertArticle(rs));
			}
			System.out.println("DAO 등판 !!!!!!! ");
			//System.out.println(result.size() );
			return result;
		} finally {
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
		}
	}
	//select 1
	private SupportHomeDTO convertArticle2(ResultSet rs) throws SQLException {
		System.out.println("convertArticle 호출");
		return new SupportHomeDTO(
				rs.getString("fs_answer")  
				,rs.getInt("fs_code")
				,rs.getInt("acd_code")
				,rs.getInt("ac_code")
				,rs.getString("fs_title")
				,rs.getDate("fs_date")
				,rs.getString("fs_feedback") 
				
		       
				 );
	}
//select 2
	private SupportHomeDTO convertArticle(ResultSet rs) throws SQLException {
		System.out.println("convertArticle 호출");
		return new SupportHomeDTO(
				rs.getString("fs_answer")  
				,rs.getInt("fs_code")
				,rs.getInt("acd_code")
				,rs.getInt("ac_code")
				,rs.getString("fs_title")
				,rs.getDate("fs_date")
				,rs.getString("fs_feedback") 
				,rs.getString("acd_name")
		       
		       
				 );
	}
	
	
	//solution
	
	public List<SupportHomeDTO> solutionSelect(
			int ac_code,Connection conn){
//		WHERE r <= 5
		
		String sql =" SELECT fs_code, fs_title , ac_code, acd_code " + 
				"FROM " + 
				"(" + 
				"     SELECT fs_code, ac_code, acd_code, fs_title, fs_answer, fs_date, fs_feedback, RANK() OVER(PARTITION BY acd_code  order by  fs_code  asc) r " + 
				"    FROM freq_ask  where ac_code = ?" + 
				")" + 
				" WHERE r <= 5" + 
				" order by fs_code ";
		
		
		//System.out.println("쿼리 실행..?");
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ArrayList<SupportHomeDTO> list = new ArrayList<>();
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, ac_code);
			rs = pstmt.executeQuery();
			SupportHomeDTO dto = null;
			while(rs.next()) {
				dto =  new SupportHomeDTO();
				// dto.setFs_answer(rs.getString("fs_answer")   );
				 dto.setFs_code(rs.getInt("fs_code"));
				 dto.setAcd_code(rs.getInt("acd_code"));
				 dto.setAc_code(rs.getInt("ac_code"));
				 dto.setFs_title(rs.getString("fs_title"));
				// dto.setAc_name(rs.getString("ac_name"));
				// dto.setR(rs.getInt("r"));
				// dto.setFs_date(rs.getDate("fs_date"));
				// dto.setFs_feedback(rs.getString("fs_feedback"));

 					
		         list.add(dto);
			}
		} catch (SQLException e) { 
			e.printStackTrace();
		} finally {
			try { pstmt.close();} catch (SQLException e) {	e.printStackTrace();	}
			try {rs.close();    } catch (SQLException e) {	e.printStackTrace();}
			try {conn.close();  } catch (SQLException e) {	e.printStackTrace();}
		}
		//System.out.println("SupportHomeDAO _selectList ");
		return list;		
	}
	// 관련 게시글 얻어오기 
	
	public ArrayList<SupportHomeDTO> getRelationA (int fs_code, Connection conn) {
		
		String sql = "select * from "
				+ "( select rownum r,  fs_code, fs_title from freq_ask where acd_code =(select acd_code from freq_ask  where fs_code = ?) "
				+ "and fs_code != ?  ) f where r between 1 and 10";
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		SupportHomeDTO dto = null;
		ArrayList<SupportHomeDTO> listR = new ArrayList<>();
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, fs_code);
			pstmt.setInt(2, fs_code);
			rs = pstmt.executeQuery();
			
			while (rs.next()) {
				dto = new SupportHomeDTO();
				dto.setFs_code(rs.getInt("fs_code"));
				dto.setFs_title(rs.getString("fs_title"));
				
				listR.add(dto);
			}
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			try { pstmt.close();} catch (SQLException e) {	e.printStackTrace();	}
			try {rs.close();    } catch (SQLException e) {	e.printStackTrace();}
			try {conn.close();  } catch (SQLException e) {	e.printStackTrace();}
		}
		
		
		return listR;
		
		
	}
	
	// 게시글 얻어오기 
	public SupportHomeDTO selectOne(Connection conn, int fs_code) {
		String sql = " select fs_code, fs_feedback, fs_title, f.acd_code, fs_answer , acd_name, ac_name,f.ac_code  from freq_ask f join ask_cat a on f.ac_code = a.ac_code "
				+"   join ask_cat_detail ac on f.acd_code = ac.acd_code    where fs_code = ?";
		PreparedStatement pstmt = null;
		ResultSet rs = null;		
		SupportHomeDTO dto = null;
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, fs_code);
			rs = pstmt.executeQuery();

			if(rs.next()) {
				dto =  new SupportHomeDTO();
				
				dto.setFs_code(fs_code);
				dto.setFs_feedback(rs.getString("fs_feedback"));
				dto.setFs_title(rs.getString("fs_title"));
				dto.setAcd_code(rs.getInt("acd_code"));
				dto.setFs_answer(rs.getString("fs_answer"));
				dto.setAcd_name(rs.getString("acd_name"));
				dto.setAc_name(rs.getString("ac_name"));
				dto.setAc_code(rs.getInt("ac_code"));
			}
			
			
			
			
		} catch (SQLException e) { 
			e.printStackTrace();
		} finally {
			try { pstmt.close();} catch (SQLException e) {	e.printStackTrace();	}
			try {rs.close();    } catch (SQLException e) {	e.printStackTrace();}
			//try {conn.close();  } catch (SQLException e) {	e.printStackTrace();}
		}
		return dto;
	}

	//ask_cat_detail
	public AskCatDetailDTO getAcd_Name(int acd_code,Connection conn) {
		String sql = "select ac_code, acd_code, acd_name from ask_cat_detail where acd_code = ?";
		System.out.println(acd_code);
		 
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		AskCatDetailDTO dto = null;
	   
		
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, acd_code);
			rs = pstmt.executeQuery();
			
			while (rs.next()) {
				dto = new AskCatDetailDTO();
				
				dto.setAc_code(rs.getInt("ac_code"));
				dto.setAcd_code(rs.getInt("acd_code"));
				dto.setAcd_name(rs.getString("acd_name"));
				
				
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try { pstmt.close();} catch (SQLException e) {	e.printStackTrace();	}
		
			try { rs.close();    } catch (SQLException e) {	e.printStackTrace();}
			//try {conn.close();  } catch (SQLException e) {	e.printStackTrace();}
		}
		return dto;
		}
	//
	
	
	
	public ArrayList<CqContantDTO> getCqContant(Connection conn) {
		
	    PreparedStatement pstmt = null;
	    ResultSet rs = null;
	    CqContantDTO dto = null;
	    ArrayList<CqContantDTO> list = new ArrayList<>();
	        
	    String sql = " select cq_c_code, cq_c_name from cq_content";
	    
	    try {
			pstmt = conn.prepareStatement(sql);
		    rs = pstmt.executeQuery();
		    //System.out.println("getCqContant");
		    
		    while (rs.next()) {
		    	dto = new CqContantDTO();
		    	//System.out.println(rs.getInt("cq_c_code"));
		    	
		    	
			    dto.setCq_c_code(rs.getInt("cq_c_code"));
			    dto.setCq_c_name(rs.getString("cq_c_name"));
			    
			    list.add(dto);
			}
		    
		    
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			try { pstmt.close();} catch (SQLException e) {	e.printStackTrace();	}
			try { rs.close();    } catch (SQLException e) {	e.printStackTrace();}
		}
		
		return list;
	}
	
	
	//문의내역 insert 
	public int insertQ(Connection conn, QuestionDTO dto, String file_name) {
		//문의하FORM insert 
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		int result=0;
		
		String sql = "insert into c_qna  "
				+ "(cq_code, cq_type, cq_c_code, cq_name, cq_email, cq_title, cq_bno, cq_tel, cq_detail, cq_date, ql_s_code, file_name) "
				+ " values(c_qna_seq.nextval, ?, ?, ?, ?, ?, ?, ?, ? ,sysdate,2,?)" ;
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			System.out.println("c_qna DAO :"+file_name);
			
			pstmt.setString(1, dto.getCq_type());
			pstmt.setInt(2, dto.getCq_c_code());
			pstmt.setString(3, dto.getCq_name());
			pstmt.setString(4, dto.getCq_email());
			pstmt.setString(5, dto.getCq_title());
			pstmt.setInt(6, dto.getCq_bno());
			pstmt.setString(7, dto.getCq_tel());
			pstmt.setString(8, dto.getCq_detail());
			pstmt.setString(9,file_name );
			
			result = pstmt.executeUpdate();
			
			
			
		
			
		} catch (SQLException e) {
		
			e.printStackTrace();
		}finally {
            try { pstmt.close();} catch (SQLException e) {   e.printStackTrace();   }
           // try {conn.close();  } catch (SQLException e) {   e.printStackTrace();}
         }
		
		return result;
	}
	
	//memberid get
	public int getMemberid(Connection conn, String member_email) {

		PreparedStatement pstmt = null;
		ResultSet rs = null;
		//int result = 0;
		int memberid = 0;
		
		String sql = " select memberid " + 
                "from member where member_email = ? ";
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1,member_email);
			rs = pstmt.executeQuery();			

			while (rs.next()) {
				
			
		memberid = rs.getInt("memberid");
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
            try { pstmt.close();} catch (SQLException e) {   e.printStackTrace();   }
           // try {conn.close();  } catch (SQLException e) {   e.printStackTrace();}
         }
		
		return memberid;
	}
	
	//qna_list insert 
	public int insertQList (Connection conn,int memberid,int cq_code) {
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		int result = 0;
		
		String sql = "insert into qna_list (ql_code, cq_code, ql_s_code, memberid) values(q_list_seq.nextval ,? , 2, ?)";
		
		try {
			
			//
			pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1, cq_code);
				pstmt.setInt(2, memberid);
			 
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			
			e.printStackTrace();
		}finally {
            try { pstmt.close();} catch (SQLException e) {   e.printStackTrace();   }
            try {conn.close();  } catch (SQLException e) {   e.printStackTrace();}
         }
		
		
		
		return result;
	}
	// cq_code 최신 가져오기 
	public int getCq_code(Connection conn) {


		PreparedStatement pstmt = null;
		ResultSet rs = null;
		int cq_code=0;
		
		String sql = "   select max(cq_code) cq_code from c_qna ";
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			//System.out.println(rs.getInt("cq_code"));
			
			if (rs.next()) {
				cq_code = rs.getInt("cq_code");
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return cq_code;
		

//		
		
	}
	public qArticlesDTO getQArticle(int cq_code, Connection conn) {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		qArticlesDTO dto  = null;
		System.out.println("Clickes cq_code"+cq_code);
		
		String sql ="select  substr(cq_name,0,1) cq_name , cq_title, cq_detail, "
				+ "to_char( to_timestamp(cq_date,'HH24:MI:SS') ) cq_date , ql_s_code , cq_code,file_name "
				+ "from c_qna  where  cq_code = ? " ;
			
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, cq_code);
			rs = pstmt.executeQuery();
			
			while (rs.next()) {
				dto = new qArticlesDTO();
				dto.setCq_code(cq_code);
				dto.setCq_title(rs.getString("cq_title"));
				
				dto.setCq_detail(rs.getString("cq_detail"));
				dto.setCq_date(rs.getString("cq_date"));
				dto.setQl_s_code(rs.getInt("ql_s_code"));
				dto.setCq_name(rs.getString("cq_name"));
				dto.setFile_name(rs.getString("file_name"));
				
				
				System.out.println("게시글 다 담았다 !");
			}
			System.out.println(dto.getCq_title());
			
		} catch (SQLException e) {
			
			e.printStackTrace();
		}finally {
            try { pstmt.close();} catch (SQLException e) {   e.printStackTrace();   }
           // try {conn.close();  } catch (SQLException e) {   e.printStackTrace();}
         }
		return dto;
	}
	// 나쁨피드백 insert
	public int insertBFeedback(int memberid, int fs_code, BFeedbackDTO dto,Connection conn) {
		
		
	//	ResultSet rs = null;
		int result = 0;
		
		String sql = "insert into b_feedback(bf_code, bf_content, bf_date, fs_code, memberid,bf_select) values( b_feedback_seq.nextval, ?, sysdate , ? , ? ,?) ";
		
		try {
			
			String [] bf_select = dto.getBf_select();
			
			for (int i = 0; i < bf_select.length; i++) {
				PreparedStatement pstmt = null;
				
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, dto.getBf_content());
				pstmt.setInt(2, fs_code);
				pstmt.setInt(3, memberid);
				pstmt.setString(4, bf_select[i]);
				
				result += pstmt.executeUpdate();
				
				pstmt.close();
			}
			
			
		} catch (SQLException e) {
			
			e.printStackTrace();
		}finally {
           // try { pstmt.close();} catch (SQLException e) {   e.printStackTrace();   }
            try {conn.close();  } catch (SQLException e) {   e.printStackTrace();}
         }
		
		
		return result;
	}
	public List<QuestionDTO> getQnaList(Connection conn, String cq_email) {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ArrayList<QuestionDTO> list = new ArrayList<>();
		QuestionDTO dto = null;
		String sql = "select cq_code, cq_name, "
				+ "       cq_email, cq_title, cq_bno,"
				+ "        cq_detail, to_char( cq_date, 'yyyy/MM/dd HH24:mm:ss') cq_date , "
				+ "      c.ql_s_code , ql_s_detail from  c_qna c, ql_status q  where c.ql_s_code = q.ql_s_code and   cq_email = ? ";
	
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, cq_email);
			rs = pstmt.executeQuery();
			
			while ( rs.next() ) {
			   dto = new QuestionDTO();
			  dto.setCq_code(rs.getInt("cq_code"));
			  dto.setCq_name(rs.getString("cq_name"));
			  dto.setCq_email(rs.getString("cq_email"));
			  dto.setCq_detail(rs.getString("cq_detail"));
			  dto.setCq_title(rs.getString("cq_title"));
			  dto.setCq_bno(rs.getInt("cq_bno"));
			  dto.setCq_date(rs.getString("cq_date"));
			  dto.setQl_s_code(rs.getInt("ql_s_code"));
			  dto.setQl_s_detail(rs.getString("ql_s_detail"));
		//	  System.out.println(rs.getInt("ql_s_code"));

			   list.add(dto);
			}
			
		} catch (SQLException e) {
			
			e.printStackTrace();
		}finally {
            try { pstmt.close();} catch (SQLException e) {   e.printStackTrace();   }
           // try {conn.close();  } catch (SQLException e) {   e.printStackTrace();}
         //   try {rs.close();  } catch (SQLException e) {   e.printStackTrace();}
         }
		
		return list;
	}

	
	public JSONArray getQnaListAjax(Connection conn, String cq_email, int ql_s_code) {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		JSONArray jsonArray = null;
		//QuestionDTO dto = null;
		String sql = "select cq_code, cq_name, cq_email, cq_title, cq_bno, cq_detail, to_char( cq_date, 'yyyy/MM/dd HH24:mm:ss') cq_date , c.ql_s_code , ql_s_detail "
				+ " from  c_qna c, ql_status q   "
				+ "  where c.ql_s_code = q.ql_s_code and   cq_email = ?  and c.ql_s_code = ? ";
	
		jsonArray = new JSONArray();
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, cq_email);
			pstmt.setInt(2, ql_s_code);
			
			rs = pstmt.executeQuery();
			
			while ( rs.next() ) {
				
				JSONObject jsonObject = new JSONObject();
			   
				jsonObject.put("cq_code",rs.getInt("cq_code"));
				jsonObject.put("cq_name",rs.getString("cq_name"));
				jsonObject.put("cq_email",rs.getString("cq_email"));
				jsonObject.put("cq_detail",rs.getString("cq_detail"));
				jsonObject.put("cq_title",rs.getString("cq_title"));
				jsonObject.put("cq_bno",rs.getInt("cq_bno"));
				jsonObject.put("cq_date",rs.getString("cq_date"));
				jsonObject.put("ql_s_code",rs.getInt("ql_s_code"));
				jsonObject.put("ql_s_detail",rs.getString("ql_s_detail"));
	

				jsonArray.add(jsonObject);
			}
			
		} catch (SQLException e) {
			
			e.printStackTrace();
		}finally {
            try { pstmt.close();} catch (SQLException e) {   e.printStackTrace();   }
            try {conn.close();  } catch (SQLException e) {   e.printStackTrace();}
         }
		
		
		return jsonArray;
	}
	
	
	public JSONArray getQnaListAjaxAll(Connection conn, String cq_email) {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		JSONArray jsonArray = null;
	//	QuestionDTO dto = null;
		String sql = "select cq_code, cq_name, cq_email, cq_title, cq_bno, cq_detail, "
				+ "to_char( cq_date, 'yyyy/MM/dd HH24:mm:ss') cq_date , c.ql_s_code , ql_s_detail "
				+ " from  c_qna c, ql_status q    "
				+ "where c.ql_s_code = q.ql_s_code and cq_email = ? ";

		
		jsonArray = new JSONArray();
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, cq_email);
			//pstmt.setInt(2, ql_s_code);
			
			rs = pstmt.executeQuery();
			
			while ( rs.next() ) {
				
				JSONObject jsonObject = new JSONObject();
				
				jsonObject.put("cq_code",rs.getInt("cq_code"));
				jsonObject.put("cq_name",rs.getString("cq_name"));
				jsonObject.put("cq_email",rs.getString("cq_email"));
				jsonObject.put("cq_detail",rs.getString("cq_detail"));
				jsonObject.put("cq_title",rs.getString("cq_title"));
				jsonObject.put("cq_bno",rs.getInt("cq_bno"));
				jsonObject.put("cq_date",rs.getString("cq_date"));
				jsonObject.put("ql_s_code",rs.getInt("ql_s_code"));
				jsonObject.put("ql_s_detail",rs.getString("ql_s_detail"));
			
				System.out.println(rs.getInt("cq_code"));
				
			
				jsonArray.add(jsonObject);
			}
			
		} catch (SQLException e) {
			
			e.printStackTrace();
		}finally {
			try { pstmt.close();} catch (SQLException e) {   e.printStackTrace();   }
			try {conn.close();  } catch (SQLException e) {   e.printStackTrace();}
		}
		
		
		return jsonArray;
	}
	
	// qArticles 답장하기 insert 
	public int insertQA(Connection conn,String qa_content, int cq_code, String filesystemname,String username){
		PreparedStatement pstmt = null;
		int result = 0;
		System.out.println(qa_content);
		String sql ="insert into qarticles values(qa_seq.nextval , ? , ?,sysdate,?,?) ";
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, cq_code);
			pstmt.setString(2, qa_content);
			pstmt.setString(3, username );
			pstmt.setString(4, filesystemname);
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			
			e.printStackTrace();
		}finally {
            try { pstmt.close();} catch (SQLException e) {   e.printStackTrace();   }
            try {conn.close();  } catch (SQLException e) {   e.printStackTrace();}
         }
		
		
		return result;
	}
	
	// 댓글 가져오기 
	public ArrayList<QCommentDTO> getQComment(int cq_code, Connection conn) {
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "select qa_code, cq_code, qa_content, to_char( qa_date, 'yyyy/MM/dd HH24:mm:ss') "
				+ " qa_date, qa_writer , file_name "
				+ " from qArticles where cq_code = ? ";
		ArrayList<QCommentDTO> listQ = new ArrayList<>();
		QCommentDTO cdto = null;
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, cq_code);
			rs = pstmt.executeQuery();
			
			while (rs.next()) {
				cdto = new QCommentDTO();
				
				cdto.setCq_code(rs.getInt("cq_code"));
				cdto.setQa_content(rs.getString("qa_content"));
				cdto.setQa_date(rs.getString("qa_date"));
				cdto.setQa_writer(rs.getString("qa_writer"));
				cdto.setFile_name(rs.getString("file_name"));
			
				
		    	listQ.add(cdto);
			}System.out.println();
					
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
            try { pstmt.close();} catch (SQLException e) {   e.printStackTrace();   }
            try {conn.close();  } catch (SQLException e) {   e.printStackTrace();}
         }
		
		
		return listQ;
	}
	
	
	
	// 검색어 자동완성 ajax
	public JSONArray SearchKeywordList(String sw,Connection conn) {
		
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	JSONArray jsonArray = new JSONArray();
	String sql = "select fs_code, acd_code, fs_title from freq_ask where fs_title like ? ";
	
	try {
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, "%"+sw+"%");
	
		rs = pstmt.executeQuery();
		
		while (rs.next()) {
			JSONObject jsonObject = new JSONObject();
			
			jsonObject.put("fs_code", rs.getInt("fs_code"));
			jsonObject.put("acd_code", rs.getInt("acd_code"));
			jsonObject.put("fs_title", rs.getString("fs_title"));
			
			jsonArray.add(jsonObject);
			
		}
	} catch (SQLException e) {
		e.printStackTrace();
	}finally {
        try { pstmt.close();} catch (SQLException e) {   e.printStackTrace();   }
        try {conn.close();  } catch (SQLException e) {   e.printStackTrace();}
     }
		return jsonArray;
	}
	
	
	// help_file 테이블에 insert 
	public int insertHelpFile (HelpFileDTO fileDTO, Connection conn ) {
		PreparedStatement pstmt = null;
		int result = 0;
		String sql ="insert into help_file(file_num,filesystemname,originalfilename, filelength) "
				+ "  values(help_file_seq.nextval,?,?, ?) ";
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, fileDTO.getFilesystemname());
			pstmt.setString(2, fileDTO.getOriginalfilename());
			pstmt.setLong(3, fileDTO.getFilelength());
			
			 result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return result;
		
	}
	//방금 inesert 한 파일 이름 가져오기 
	public String getFielName(Connection conn) {
		PreparedStatement pstmt = null;
		String file_name = "";
		ResultSet rs = null;
		// 가장 큰 번호 get 
		String sql = "  select filesystemname from help_file where file_num = (select max(file_num) from help_file )";
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			if (rs.next()) {
				file_name = rs.getString("filesystemname");
			}
		  System.out.println("DAO:"+file_name);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
            try { pstmt.close();} catch (SQLException e) {   e.printStackTrace();   }
            try {conn.close();  } catch (SQLException e) {   e.printStackTrace();}
         }
		
		
		return file_name;
	}
	
	/////////////////관리자//////////////
	//articles 수정하기 
	public int editArticle(int fs_code,String fs_title, String fs_answer, Connection conn) {
		System.out.println("DAO fs_code, fs_title : "+fs_code+"/"+ fs_title+"/"+ fs_answer);
		 PreparedStatement pstmt = null;
		 int result = 0;
		 
		 String sql = " update freq_ask set fs_title =? , fs_answer = ? where fs_code = ? ";
		 
		 try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, fs_title);
			pstmt.setString(2, fs_answer);
			pstmt.setInt(3, fs_code);
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			
			e.printStackTrace();
		}finally {
            try { pstmt.close();} catch (SQLException e) {   e.printStackTrace();   }
            try {conn.close();  } catch (SQLException e) {   e.printStackTrace();}
         }
		 
		return result;
		
	}
	// 게시글 삭제하기 
	public int deleteArticle(int fs_code , Connection conn) {
		
		PreparedStatement pstmt = null;
		int result =0;
		
		String sql = " delete from freq_ask where fs_code = ? ";
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, fs_code);
			
			result = pstmt.executeUpdate();
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
            try { pstmt.close();} catch (SQLException e) {   e.printStackTrace();   }
            try {conn.close();  } catch (SQLException e) {   e.printStackTrace();}
         }
		
		
		return result;
		
	}
	// acd_detail , acd_code 가져오기 
	public JSONArray getAskCatDetail(int ac_code, Connection conn){
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		JSONArray list = new JSONArray();
		
		String sql = " select * from ask_cat_detail where ac_code = ? " ;
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, ac_code);
			
			rs = pstmt.executeQuery();
			while (rs.next()) {
				JSONObject jsonObject = new JSONObject();
//				
//				
				jsonObject.put("ac_code", ac_code);
				jsonObject.put("acd_code", rs.getInt("acd_code"));
				jsonObject.put("acd_name", rs.getString("acd_name"));
				System.out.println(jsonObject);
				System.out.println("DAO :  "+ac_code+"/"+rs.getInt("acd_code")+"/"+rs.getString("acd_name"));
				list.add(jsonObject);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
            try { pstmt.close();} catch (SQLException e) {   e.printStackTrace();   }
            try {conn.close();  } catch (SQLException e) {   e.printStackTrace();}
         }
		
		return list;
		
	}
	//insert freq_ask
	public int insertFreqAsk(SupportHomeDTO dto , Connection conn ) {
		
		PreparedStatement pstmt = null;
		int result = 0;
		
		
		String sql ="insert into freq_ask values(freq_ask_seq.nextval,?,?,? ,?,sysdate,'n' ) ";
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, dto.getAc_code());
			pstmt.setInt(2, dto.getAcd_code());
			pstmt.setString(3, dto.getFs_title());
			pstmt.setString(4, dto.getFs_answer());
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
            try { pstmt.close();} catch (SQLException e) {   e.printStackTrace();   }
           // try {conn.close();  } catch (SQLException e) {   e.printStackTrace();}
         }
		return result;
	}
	//fs_code
	public int getFreqAskR (Connection conn) {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		int fs_code =0;
		
		String sql="select max(fs_code) fs_code from freq_ask ";
		
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			if (rs.next()) {
				fs_code = rs.getInt("fs_code");
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			try { pstmt.close();} catch (SQLException e) {	e.printStackTrace();	}
			try { rs.close();    } catch (SQLException e) {	e.printStackTrace();}
		}
		
		
		return fs_code;
		
	}
	// 날짜별로 c_qna 가져오기 
	public JSONArray getCQListAjax(String cq_date,String cq_type, int ql_s_code, Connection conn) {
		System.out.println(cq_date);
		System.out.println(cq_type);
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		JSONArray jsonArray = new JSONArray();
		
		String sql = "select cq_code, cq_name, cq_email, cq_title, cq_bno, cq_detail, "
				+ "to_char( cq_date, 'yyyy/MM/dd HH24:mm:ss') cq_date , c.ql_s_code , ql_s_detail , file_name "
				+ "from  c_qna c, ql_status q"
				+ " where c.ql_s_code = q.ql_s_code  and to_char(to_date(cq_date,'YY/mm/DD')) = ? and cq_type = ?  and c.ql_s_code =? ";
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, cq_date);
			pstmt.setString(2, cq_type);
			pstmt.setInt(3, ql_s_code);
			rs = pstmt.executeQuery();
			System.out.println("dao while 돌기 전 ");
			
			while (rs.next()) {
//				
				JSONObject jsonObject = new JSONObject();
//				
				jsonObject.put("cq_code", rs.getInt("cq_code"));
			      //	System.out.println("cq_code"+ rs.getInt("cq_code"));
			//	jsonObject.put("cq_c_code", rs.getInt("cq_c_code"));
				jsonObject.put("cq_name", rs.getString("cq_name"));
				jsonObject.put("cq_title", rs.getString("cq_title"));
				jsonObject.put("cq_bno", rs.getInt("cq_bno"));
				//jsonObject.put("cq_tel", rs.getString("cq_tel"));
				jsonObject.put("cq_detail", rs.getString("cq_detail"));
				jsonObject.put("cq_date", rs.getString("cq_date"));
				jsonObject.put("ql_s_code", rs.getInt("ql_s_code"));
				jsonObject.put("ql_s_detail", rs.getString("ql_s_detail"));
				jsonObject.put("file_name", rs.getString("file_name"));
				
				
				jsonArray.add(jsonObject);
				
				System.out.println("dao 호출 ???");
			}
			
			
		} catch (SQLException e) {
		
			e.printStackTrace();
		}finally {
			try { pstmt.close();} catch (SQLException e) {	e.printStackTrace();	}
			try { rs.close();    } catch (SQLException e) {	e.printStackTrace();}
		}
		
		
		return jsonArray;
		
	}
	public JSONArray getCqListAllAjax(String cq_date, String cq_type, Connection conn) {
		System.out.println("모든 게시글 dao");
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		JSONArray jsonArray = new JSONArray();
		
		String sql = "select cq_code, cq_name, cq_email, cq_title, cq_bno, cq_detail, "
				+ "to_char( cq_date, 'yyyy/MM/dd HH24:mm:ss') cq_date , c.ql_s_code , ql_s_detail , file_name "
				+ "from  c_qna c, ql_status q"
				+ " where c.ql_s_code = q.ql_s_code   and  to_char(to_date(cq_date,'YY/mm/DD')) = ? ";
//		String sql = "select cq_code, cq_name, cq_email, cq_title, cq_bno, cq_detail, "
//				+ "to_char( cq_date, 'yyyy/MM/dd HH24:mm:ss') cq_date , c.ql_s_code , ql_s_detail , file_name "
//				+ "from  c_qna c, ql_status q"
//				+ " where c.ql_s_code = q.ql_s_code  and to_char(to_date(cq_date,'YY/mm/DD')) = ? and cq_type = ? ";
		
		
		try {
			pstmt = conn.prepareStatement(sql);
		    pstmt.setString(1, cq_date);
			//pstmt.setString(2, cq_date);
			 rs = pstmt.executeQuery();
			 System.out.println(cq_date);
			 System.out.println(cq_type);
			 
			 while (rs.next()) {
				JSONObject jsonObject = new JSONObject();
				
				jsonObject.put("cq_code", rs.getInt("cq_code"));
			      
				jsonObject.put("cq_name", rs.getString("cq_name"));
				jsonObject.put("cq_title", rs.getString("cq_title"));
				jsonObject.put("cq_bno", rs.getInt("cq_bno"));
				
				jsonObject.put("cq_detail", rs.getString("cq_detail"));
				jsonObject.put("cq_date", rs.getString("cq_date"));
				jsonObject.put("ql_s_code", rs.getInt("ql_s_code"));
				jsonObject.put("ql_s_detail", rs.getString("ql_s_detail"));
				jsonObject.put("file_name", rs.getString("file_name"));
				
				jsonArray.add(jsonObject);
				
				System.out.println("모든 게시글 dao 호출 ? ");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			try { pstmt.close();} catch (SQLException e) {	e.printStackTrace();	}
			try { rs.close();    } catch (SQLException e) {	e.printStackTrace();}
		}
		
		return jsonArray;
	}
	public int updateQLSCode(int cq_code, int ql_s_code, Connection conn) {
		
		PreparedStatement pstmt = null;
		int result =0;
		
		String sql = "update c_qna set ql_s_code = ? where cq_code = ?  ";
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, ql_s_code);
			pstmt.setInt(2, cq_code);
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			try { pstmt.close();} catch (SQLException e) {	e.printStackTrace();	}
			try { conn.close();    } catch (SQLException e) {	e.printStackTrace();}
		}
		
		return result;
	}
	
}

	

	
	