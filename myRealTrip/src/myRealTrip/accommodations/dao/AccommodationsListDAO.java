package myRealTrip.accommodations.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.util.JdbcUtil;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

public class AccommodationsListDAO {

	private static AccommodationsListDAO dao = null;
	private AccommodationsListDAO() {}
	public static AccommodationsListDAO getInstance() {
		if(dao==null)
			dao= new AccommodationsListDAO();
		return dao;
	}
	
	//민박 ajax처리
	public JSONArray getLodgingsCard(Connection conn, String city){
		
		String sql="select * from( " + 
				" select rownum no, s2.* from( " + 
				" select s.* from(		" + 
				" select p.p_code, p_pic, c_name, n_name , p_name, to_char(p.P_PRICE,'9,999,999') p_price " + 
				" ,(select count(*) from review r where r.p_code = p.p_code ) count	" + 
				" ,nvl(( select round(avg(r_score),1) from review r where r.p_code = p.p_code),0)grade " + 
				" from product p, bnb b, p_pic pic, city c, nation n	" + 
				" where p.P_CODE= b.P_CODE	" + 
				" and p.P_CODE=pic.P_CODE	" + 
				" and p.CITY_CODE=c.C_CODE	 " + 
				" and c.N_CODE=n.N_CODE	 " + 
				" )s " + 
				" where c_name=? " + 
				" ORDER BY grade desc " + 
				" )s2 " + 
				" )where no <=12 ";
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		JSONArray jsonArray = new JSONArray();
		
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, city);
			rs = pstmt.executeQuery();

			while (rs.next()) {
				
				JSONObject jsonObject = new JSONObject();
				jsonObject.put("p_code", rs.getString("p_code"));
				jsonObject.put("p_pic", rs.getString("p_pic"));				
				jsonObject.put("c_name", rs.getString("c_name"));
				jsonObject.put("n_name", rs.getString("n_name"));
				jsonObject.put("p_name", rs.getString("p_name"));
				jsonObject.put("p_price", rs.getString("p_price"));
				jsonObject.put("count", rs.getInt("count"));
				jsonObject.put("grade", rs.getDouble("grade"));
				
				jsonArray.add(jsonObject);
			}		
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
		}				
		return jsonArray;
	}
	
}
