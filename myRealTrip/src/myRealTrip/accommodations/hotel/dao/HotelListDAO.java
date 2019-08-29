package myRealTrip.accommodations.hotel.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.util.ConnectionProvider;
import com.util.JdbcUtil;

import myRealTrip.accommodations.hotel.dto.HotelListDTO;

public class HotelListDAO {

	private static HotelListDAO dao = null;
	private HotelListDAO() {}
	public static HotelListDAO getInstance() {
		if(dao==null)
			dao= new HotelListDAO();
		return dao;
	}

	private static final int MESSAGE_PER_PAGE = 8;


	public ArrayList<HotelListDTO> getHotelList(Connection conn, String city, String order, int currentPage){

		String sql=" select* from( " + 
				" select rownum no, t.* from( "+
				" select h.h_code, h.h_pic, h.h_name, h.h_grade ,to_char(H_PRICE,'9,999,999') h_price, c_name " + 
				" ,(select count(*) from h_review r where h.h_code = r.h_code ) cnt " + 
				" , avgreview(h_code) ravg " + 
				" , fn_getGrade(avgreview(h_code)) grade " + 
				" from hotel h , city c " + 
				" where h.C_CODE=c.c_code and c_name=? " ;
	
		if( order != null) {
			switch (order) {				
			case "추천순" : sql += " order by h_code ";break;				//나중에 수정	
			case "가격낮은순" : sql += " order by h_price ";break;	
			case "가격높은순" : sql += " order by	h_price desc ";break;
			case "평점순" : sql += " order by ravg desc ";break;
			case "등급순" : sql += " order by h_grade desc	";break;
			}
		} 
		sql+=" )t)where no between ? and ? ";


		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ArrayList<HotelListDTO> list = new ArrayList<>();

		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, city);
			pstmt.setInt(2, 1+(currentPage-1) * MESSAGE_PER_PAGE);
	        pstmt.setInt(3, currentPage*MESSAGE_PER_PAGE);

			rs = pstmt.executeQuery();

			HotelListDTO dto = null;

			while (rs.next()) {

				dto = new HotelListDTO();
				dto.setH_code(rs.getString("h_code"));
				dto.setH_pic(rs.getString("h_pic"));
				dto.setH_name(rs.getString("h_name"));
				dto.setH_grade(rs.getString("h_grade"));
				dto.setH_price(rs.getString("h_price"));
				//dto.setH_b_sname(rs.getString("h_b_sname"));
				dto.setCnt(rs.getInt("cnt"));
				dto.setRavg(rs.getDouble("ravg"));
				dto.setGrade(rs.getString("grade"));

				list.add(dto);							
			}					
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JdbcUtil.close(pstmt);
			JdbcUtil.close(rs); 	
			JdbcUtil.close(conn);
		}
		return list;
	}


	public int getSearchCount(Connection conn,String city) {

		String sql = "select count(h_code) " + 
				" from hotel h, city c " + 
				" where h.C_CODE=c.c_code and c_name=? ";

		PreparedStatement pstmt = null;
		ResultSet rs = null;
		int result = 0;

		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, city);
			rs = pstmt.executeQuery();

			if(rs.next()) {
				result = rs.getInt(1);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JdbcUtil.close(pstmt);
			JdbcUtil.close(rs); 	
			JdbcUtil.close(conn);
		}
		return result;
	}


	public int getTotalPage(String city, int currentpage) {

		int totalpage = 0;

		try(Connection conn = ConnectionProvider.getConnection()){
			int msgTotalCount = dao.getSearchCount(conn, city);      
			totalpage = msgTotalCount / MESSAGE_PER_PAGE;
			if (msgTotalCount % MESSAGE_PER_PAGE > 0) { 
				totalpage++;
			}	
		} catch (Exception e) {
			e.printStackTrace();
		}
		return totalpage;
	}



}
