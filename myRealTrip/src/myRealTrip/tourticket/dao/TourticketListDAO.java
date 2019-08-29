package myRealTrip.tourticket.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.util.JdbcUtil;

import myRealTrip.tourticket.dto.TourticketDTO;

public class TourticketListDAO {

	private static TourticketListDAO dao = null;
	private TourticketListDAO() {}
	public static TourticketListDAO getInstance() {

		if(dao==null) {
			dao = new TourticketListDAO();
		}
		return dao;
	}
	
	private int pagePerContent = 4;
	
	public int getTotalPage(Connection conn, String nation, String city, String category) {
		
		int totalpage = 0;
		PreparedStatement pstmt= null;
		ResultSet rs = null;
		
		String sql = " select count(*) cnt  from product p, tourticket t, p_pic pic  " + 
				" where p.p_code=t.p_code and pic.P_CODE=p.p_code ";

		if(city!=null && city!="")
			sql += " and city_code in (select c_code from city where  c_name='"+city+"') " ;
		else if( nation!=null && nation!="" ) {	
			sql += " and city_code in (select c_code from nation, city where  n_name='"+nation+"' and nation.N_CODE = city.N_CODE) ";
		}
		
		switch (category) {
		case "가이드투어":			sql+= " and t_category='가이드투어'   "	;	break;
		case "레스토랑":		sql+= " and t_category='레스토랑'   "	;	break;
		case "스냅촬영":		sql+= " and t_category='스냅촬영'   "	;	break;
		case "액티비티":		sql+= " and t_category='액티비티'  "	;	break;
		case "여행편의": 	sql+= " and t_category='여행편의'   "	;	break;
		case "즐길거리": 	sql+= " and t_category='즐길거리'   "	;	break;
		case "티켓,교통패스": 	sql+= " and t_category='티켓,교통패스'   "	;	break;
		default	:	break;
		}

		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			rs.next();
			totalpage = rs.getInt("cnt")/pagePerContent;
			if(rs.getInt("cnt")%pagePerContent!=0) totalpage++;
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
			JdbcUtil.close(conn);
		}
		return totalpage;
	}
	
	public ArrayList<TourticketDTO> selectList(Connection conn, String nation, String city, 
			String type, String category, int currentPage){

		ArrayList<TourticketDTO>list = new ArrayList<>();
		TourticketDTO dto = null;
		PreparedStatement pstmt= null;
		ResultSet rs = null;

		String sql = " select * from ( " + 
				" select rownum no, t.* " + 
				" from( " + 
				" select p.p_code, p_name , t_category, p_pic , t.T_PROMPTLY, t_tag1, t_tag2, t_timer  " + 
				" , to_char(p_price,'9,999,999') p_price " + 
				" , (select c_name from city where city.C_CODE=city_code )city_code " + 
				" , (select count(*) from review r where r.P_CODE=p.p_code )cnt " + 
				" , nvl((select avg(r_score) from review r where r.P_CODE=p.p_code ),0) score " + 
				" from product p, tourticket t, p_pic pic  " + 
				" where p.p_code=t.p_code and pic.P_CODE=p.p_code ";

		if(city!=null && city!="")
			sql += " and city_code in (select c_code from city where  c_name='"+city+"') " ;
		else if( nation!=null && nation!="" ) {	
			sql += " and city_code in (select c_code from nation, city where  n_name='"+nation+"' and nation.N_CODE = city.N_CODE) ";
		}
		
		switch (category) {
		case "가이드투어":			sql+= " and t_category='가이드투어'   "	;	break;
		case "레스토랑":		sql+= " and t_category='레스토랑'   "	;	break;
		case "스냅촬영":		sql+= " and t_category='스냅촬영'   "	;	break;
		case "액티비티":		sql+= " and t_category='액티비티'  "	;	break;
		case "여행편의": 	sql+= " and t_category='여행편의'   "	;	break;
		case "즐길거리": 	sql+= " and t_category='즐길거리'   "	;	break;
		case "티켓,교통패스": 	sql+= " and t_category='티켓,교통패스'   "	;	break;
		default	:	break;
		}
		
		switch (type) {
		case "review":	sql += " order by cnt desc   " ;		break;
		case "price":		sql += " order by p_price asc " ; 		break;
		case "recent":		sql += " order by p.p_code asc   " ;		break;
		default :			sql += " order by score desc    " ; 		/*인기순 수정해야함!!!!!!!!!!!!*/		break;
		}

		sql +=	" )t   ) where no between ? and ?";
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, 1+(currentPage-1) * pagePerContent);
			pstmt.setInt(2, currentPage*pagePerContent);
			rs = pstmt.executeQuery();

			while (rs.next()) {
				dto = new TourticketDTO();
				dto.setCity_code(rs.getString("city_code"));
				dto.setCnt(rs.getInt("cnt"));
				dto.setP_code(rs.getString("p_code"));
				dto.setP_name(rs.getString("p_name"));
				dto.setP_pic(rs.getString("p_pic"));
				dto.setP_price(rs.getString("p_price"));
				dto.setScore(rs.getDouble("score"));
				dto.setT_category(rs.getString("t_category"));
				dto.setT_promptly(rs.getString("T_PROMPTLY"));
				dto.setT_tag1(rs.getString("t_tag1"));
				dto.setT_tag2(rs.getString("t_tag2"));
				dto.setT_timer(rs.getString("t_timer"));
				list.add(dto);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
			JdbcUtil.close(conn);
		}

		return list;

	}
}
