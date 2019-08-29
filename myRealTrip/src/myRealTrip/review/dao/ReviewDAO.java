package myRealTrip.review.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.util.JdbcUtil;

import myRealTrip.review.dto.ReviewCountDTO;
import myRealTrip.review.dto.ReviewDTO;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;


public class ReviewDAO {

	private static ReviewDAO dao = null;
	private ReviewDAO() {}
	public static ReviewDAO getInstance() {

		if(dao==null) {
			dao = new ReviewDAO();
		}
		return dao;
	}
	
	//ajax
	public JSONArray getMoreReview(Connection conn, String p_code, int r_code) {
		
		String sql = "   select * from( " + 
	            "   select s.* , RANK() OVER (ORDER BY no desc ) rank from(" + 
	            "   select rownum no, r_content, r_regdate, r_score, o_age, o_object, r_code  " + 
	            "   , substr((select member_name from member where o.MEMBERID = member.MEMBERID),1,1) name " + 
	            "   from review r, m_order o  " + 
	            "   where r.p_code = ? and r.O_CODE = o.O_CODE " + 
	            "   )s where r_code< ? " + 
	            "   )where rank between 1 and 3 ";
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;   
		
		JSONArray jsonArray = new JSONArray();
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, p_code);
			pstmt.setInt(2, r_code);
			rs = pstmt.executeQuery();
			
			while (rs.next()) {
				JSONObject jsonObject = new JSONObject();
				
				jsonObject.put("o_age", rs.getString("o_age"));
				jsonObject.put("r_content", rs.getString("r_content"));
				jsonObject.put("o_object", rs.getString("o_object"));
				jsonObject.put("r_regdate", rs.getString("r_regdate"));
				jsonObject.put("r_score", rs.getDouble("r_score"));
				jsonObject.put("name", rs.getString("name"));
				jsonObject.put("r_code", rs.getInt("r_code"));
				
				jsonArray.add(jsonObject);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
		}
		return jsonArray;
	}
	
		
	public ArrayList<ReviewDTO> getReview(Connection conn, String p_code){

		ArrayList<ReviewDTO> list = new ArrayList<>();
		ReviewDTO dto = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;   

		String sql =  " select * from( " + 
	            " select rownum no, s.* from(   " + 
	            " select r_content, r_regdate, r_score, o_age, o_object, r_code " + 
	            " , substr((select member_name from member where o.MEMBERID = member.MEMBERID),1,1) name " + 
	            " from review r, m_order o " + 
	            " where r.p_code = ? and r.O_CODE = o.O_CODE order by r_code desc" + 
	            " )s) " + 
	            " where no between 1 and 3 ";

		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, p_code);
			rs = pstmt.executeQuery();

			while (rs.next()) {
				dto = new ReviewDTO();
				dto.setAge(rs.getString("o_age"));
				dto.setContent(rs.getString("r_content"));
				dto.setObject(rs.getString("o_object"));
				dto.setRegdate(rs.getDate("r_regdate"));
				dto.setScore(rs.getDouble("r_score"));
				dto.setWriter(rs.getString("name"));
				dto.setR_code(rs.getInt("r_code"));

				list.add(dto);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
		}
		return list;

	}


	public ReviewCountDTO getReviewCount(Connection conn, String p_code ) {

		ReviewCountDTO dto = new ReviewCountDTO();
		PreparedStatement pstmt = null;
		ResultSet rs = null;   

		String sql = "select o_object , count(*) cnt from m_order " + 
				" where p_code = ? group by o_object order by cnt desc";

		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, p_code);
			rs = pstmt.executeQuery();
			rs.next();
			dto.setObject(rs.getString("o_object"));         
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
		}

		sql = " select o_age , count(*) cnt from m_order " + 
				" where p_code = ? group by o_age order by cnt desc";

		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, p_code);
			rs = pstmt.executeQuery();
			rs.next();
			dto.setAge(rs.getString("o_age"));         
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
		}

		sql = "  select * from( " + 
				" select r_score from review " + 
				" where p_code=?) " + 
				" pivot( count(r_score) " + 
				" for r_score in(5,4,3,2,1) )";

		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, p_code);
			rs = pstmt.executeQuery();
			rs.next();

			dto.setCnt5(rs.getInt("5"));
			dto.setCnt4(rs.getInt("4"));
			dto.setCnt3(rs.getInt("3"));
			dto.setCnt2(rs.getInt("2"));
			dto.setCnt1(rs.getInt("1"));

			int tot = rs.getInt("5") + rs.getInt("4") + rs.getInt("3") + rs.getInt("2") + rs.getInt("1");
			double avg = (rs.getInt("5")*5 + rs.getInt("4")*4 + rs.getInt("3")*3 + rs.getInt("2")*2 + rs.getInt("1"))/(double)tot;

			dto.setReviewCnt(tot);
			dto.setScore(Math.floor(avg*10)/10);         


		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
		}
		return dto;
	}


	   public ArrayList<String> getReviewPicture(Connection conn, String p_code){
	      
	      ArrayList<String> list = new ArrayList<>();
	      PreparedStatement pstmt = null;
	      ResultSet rs = null;   

	      String sql ="  select * " + 
	            " from review_pic " + 
	            " where r_code in (select r_code from review where p_code=? ) " + 
	            " order by r_p_code desc"; 
	      
	      try {
	         pstmt = conn.prepareStatement(sql);
	         pstmt.setString(1, p_code);
	         rs = pstmt.executeQuery();
	         
	         while (rs.next()) {
	            
	            list.add(rs.getString("r_p_pic"));
	            
	         }
	         
	      } catch (SQLException e) {
	         e.printStackTrace();
	      }finally {
	         JdbcUtil.close(rs);
	         JdbcUtil.close(pstmt);
	         JdbcUtil.close(conn);
	      }
	      
	      return list;
	   }
	
	   public ReviewDTO getRecentReview(Connection conn, String p_code) {
		      
		      ReviewDTO dto = null;
		      PreparedStatement pstmt = null;
		      ResultSet rs = null;   

		      String sql = " select* from( " + 
		               " select rownum no, s.* from(  " + 
		               " select r_content, r_regdate, r_score, o_age, o_object, r_code " + 
		               " , substr((select member_name from member where o.MEMBERID = member.MEMBERID),1,1) name " + 
		               " from review r, m_order o  " + 
		               " where r.p_code = ? and r.O_CODE = o.O_CODE order by r_code desc  " + 
		               " )s )"  + 
		               " where no =1 ";

		      try {
		         pstmt = conn.prepareStatement(sql);
		         pstmt.setString(1, p_code);
		         rs = pstmt.executeQuery();

		         while (rs.next()) {
		            dto = new ReviewDTO();
		            dto.setAge(rs.getString("o_age"));
		            dto.setContent(rs.getString("r_content"));
		            dto.setObject(rs.getString("o_object"));
		            dto.setRegdate(rs.getDate("r_regdate"));
		            dto.setScore(rs.getDouble("r_score"));
		            dto.setWriter(rs.getString("name"));
		            dto.setR_code(rs.getInt("r_code"));
		         }

		      } catch (SQLException e) {
		         e.printStackTrace();
		      }finally {
		         JdbcUtil.close(rs);
		         JdbcUtil.close(pstmt);
		      }
		      return dto;
		   }

	   
}
