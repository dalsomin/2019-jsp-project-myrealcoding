package myRealTrip.review.service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.naming.NamingException;

import com.util.ConnectionProvider;
import com.util.JdbcUtil;

import myRealTrip.review.dao.ReviewDAO;
import myRealTrip.review.dto.ReviewCountDTO;
import myRealTrip.review.dto.ReviewDTO;
import net.sf.json.JSONArray;

public class ReviewService {

	private ReviewDAO reviewDAO = ReviewDAO.getInstance();

	public ArrayList<ReviewDTO> getReview(String p_code){

		ArrayList<ReviewDTO> list = new ArrayList<>();

		try(Connection conn = ConnectionProvider.getConnection()){
			list = reviewDAO.getReview(conn, p_code);
		} catch (SQLException | NamingException e) {
			e.printStackTrace();
		}
		return list;
	}

	//ajax
	public JSONArray getMoreReview(String p_code, int r_code) {

		JSONArray jsonArray = null;
		try(Connection conn = ConnectionProvider.getConnection()) {
			ReviewDAO dao  =ReviewDAO.getInstance();
			jsonArray = dao.getMoreReview(conn, p_code,r_code);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return jsonArray;
	}


	public ReviewCountDTO getReviewCount(String p_code ) {

		ReviewCountDTO dto = new ReviewCountDTO();

		try(Connection conn = ConnectionProvider.getConnection()){
			dto = reviewDAO.getReviewCount(conn, p_code);
		} catch (SQLException | NamingException e) {
			e.printStackTrace();
		}

		return dto;
	}


	public ArrayList<String> getReviewPicture(String p_code){

		ArrayList<String>list = new ArrayList<>();

		try(Connection conn = ConnectionProvider.getConnection()){
			list = reviewDAO.getReviewPicture(conn, p_code);
		} catch (SQLException | NamingException e) {
			e.printStackTrace();
		}

		return list;
	}

	public ReviewDTO getRecentReview(String p_code) {
	      
	      ReviewDTO dto = new ReviewDTO();
	      try (Connection conn = ConnectionProvider.getConnection()){
	         dto =reviewDAO.getRecentReview(conn, p_code);
	      } catch (SQLException | NamingException e) {
	         e.printStackTrace();
	      }
	      return dto;
	   }

}
