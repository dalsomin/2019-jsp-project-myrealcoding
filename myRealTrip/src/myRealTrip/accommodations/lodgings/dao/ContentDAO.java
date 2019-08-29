package myRealTrip.accommodations.lodgings.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import myRealTrip.accommodations.lodgings.dto.ContentDTO;


public class ContentDAO {

	private static ContentDAO dao =null;
	private ContentDAO() {}
	public static ContentDAO getInstance() {
		if(dao==null) {
			dao=new ContentDAO();
		}
		return dao;	
	}

	public ContentDTO getLodgingsContent(Connection conn, String p_code) {
		
		String sql = "	select  f.*	" + 
				"	,( select round(avg(r_score),1) from review r where r.p_code = f.p_code)grade	" + 
				"	,(select count(*) from review r where r.p_code = f.p_code ) count	" + 
				"	from(" + 
				"	select p.p_code, p_name, c_name, n_name, to_char(p.P_PRICE,'9,999,999') p_price	" + 
				" ,B_PINCLUSION, B_TBURDEN, B_EGUIDE "+
				" ,part.MEMBER_NAME, part.INTRODUCE " +
				"	from product p, city c, nation n, bnb b, partner part " + 
				"	where p.CITY_CODE=c.C_CODE		" + 
				"	and c.N_CODE=n.N_CODE	" +
				" and p.p_code=b.P_CODE "+
				" and p.MEMBERID = part.MEMBERID "+ //수정
				"	)f " + 
				"	where p_code=?	";
				
		PreparedStatement pstmt= null;
		ResultSet rs = null;
		ContentDTO dto = null;
		
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, p_code);
			rs = pstmt.executeQuery();
			
			while (rs.next()) {
				dto =  new ContentDTO();
				dto.setP_code(rs.getString("p_code"));
				dto.setP_name(rs.getString("p_name"));
				dto.setC_name(rs.getString("c_name"));
				dto.setN_name(rs.getString("n_name"));
				dto.setP_price(rs.getString("p_price"));
				dto.setGrade(rs.getDouble("grade"));
				dto.setCount(rs.getInt("count"));
				dto.setB_pinclusion(rs.getString("b_pinclusion"));
				dto.setB_tburden(rs.getString("b_tburden"));
				dto.setB_eguide(rs.getString("b_eguide"));
				dto.setMember_name(rs.getString("member_name"));
				dto.setIntroduce(rs.getString("introduce"));
			}
				
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			try { pstmt.close();} catch (SQLException e) {	e.printStackTrace();	}
			try {rs.close();    } catch (SQLException e) {	e.printStackTrace();}
		}
		return dto;
	}
	
	//
	public ArrayList<ContentDTO> getPictures(Connection conn, String p_code){
				
		String sql ="	select b_d_picture pic from BNB_DPIC where p_code=?		";
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ArrayList<ContentDTO> list = new ArrayList<>();
		ContentDTO dto =null;
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, p_code);
			rs = pstmt.executeQuery();
			
			while (rs.next()) {
				dto = new ContentDTO();
				dto.setPic(rs.getString("pic"));
						
				list.add(dto);	
			}		
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			try { pstmt.close();} catch (SQLException e) {	e.printStackTrace();	}
			try {rs.close();    } catch (SQLException e) {	e.printStackTrace();}
		}	
		return list;
	}
		
}
