package myRealTrip.accommodations.hotel.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.util.JdbcUtil;

import myRealTrip.accommodations.hotel.dto.HotelContentDTO;
import myRealTrip.accommodations.hotel.dto.HotelRoomInfoDTO;

public class HotelContentDAO {

	private static HotelContentDAO dao =null;
	private HotelContentDAO() {}
	public static HotelContentDAO getInstance() {
		if(dao==null) {
			dao=new HotelContentDAO();
		}
		return dao;	
	}
	
	public HotelContentDTO getMainContent(Connection conn, String h_code) {
		
		String sql = " select h_code, h_name, h_engname, h_location, h_checkin, h_checkout, h_introduction, H_LATITUDE, H_LONGITUDE, h_grade " + 
				" ,to_char(H_PRICE,'9,999,999') h_price " + 
				" ,(select count(*) from h_review r where h.h_code = r.h_code ) cnt " + 
				" , avgreview(h_code) ravg " + 
				" , fn_getGrade(avgreview(h_code)) grade " + 
				" from hotel h " + 
				" where h_code=? ";	
		
		PreparedStatement pstmt= null;
		ResultSet rs = null;
		HotelContentDTO dto = null;
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, h_code);
			rs = pstmt.executeQuery();		
			
			while(rs.next()) {
				
				dto = new HotelContentDTO();
				dto.setH_code(rs.getString("h_code"));
				dto.setH_name(rs.getString("h_name"));
				dto.setH_engname(rs.getString("h_engname"));
				dto.setH_location(rs.getString("h_location"));
				dto.setH_checkin(rs.getString("h_checkin"));
				dto.setH_checkout(rs.getString("h_checkout"));
				dto.setH_introduction(rs.getString("h_introduction"));
				dto.setH_latitude(rs.getInt("H_LATITUDE"));
				dto.setH_longitude(rs.getInt("H_LONGITUDE"));
				dto.setH_grade(rs.getInt("h_grade"));		
				dto.setH_price(rs.getString("h_price"));
				dto.setCnt(rs.getInt("cnt"));
				dto.setRavg(rs.getDouble("ravg"));
				dto.setGrade(rs.getString("grade"));
			
			}
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
			JdbcUtil.close(conn);
		}
		return dto;
	}
	
	
	public ArrayList<HotelRoomInfoDTO> getRoomInfo(Connection conn, String h_code) {
		
		String sql = " select h.h_code, hr_name, to_char(h_b_charge,'9,999,999') h_b_charge, h_b_sname,h_b_link, h_b_code " + 
				" from hotel h, h_room r, h_bridge b " + 
				" where h.h_code = r.h_code " + 
				" and r.hr_code = b.hr_code" + 
				" and h.h_code=? ";
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ArrayList<HotelRoomInfoDTO> list= new ArrayList<>();
		HotelRoomInfoDTO dto = null;
		
		try {	
			pstmt= conn.prepareStatement(sql);
			pstmt.setString(1, h_code);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				dto = new HotelRoomInfoDTO();
				dto.setH_code(rs.getString("h_code"));
				dto.setHr_name(rs.getString("hr_name"));
				dto.setH_b_charge(rs.getString("h_b_charge"));
				dto.setH_b_sname(rs.getString("h_b_sname"));
				dto.setH_b_link(rs.getString("h_b_link"));
				dto.setH_b_code(rs.getInt("h_b_code"));
				
				list.add(dto);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
			JdbcUtil.close(conn);
		}	
		return list;
	}
	
	public ArrayList<String> getHotelConfac(Connection conn, String h_code) {
		
		String sql = " select cf_name " + 
				" from hotel h, confac c, h_confac hc " + 
				" where h.h_code=hc.h_code " + 
				" and hc.cf_code=c.cf_code " + 
				" and h.h_code=? ";
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ArrayList<String> confaclist = new ArrayList<>();
		String confac = null;
				
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, h_code);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				confac = rs.getString("cf_name");
				//System.out.println(confac);
				
				confaclist.add(confac);
			}					
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
			JdbcUtil.close(conn);
		}	
		return confaclist;
	}
	
	
	public ArrayList<String> getHotelAddfac(Connection conn, String h_code){
		
		String sql =" select af_name " + 
				" from hotel h, addfac a, h_addfac ha " + 
				" where h.h_code=ha.h_code " + 
				" and ha.af_code=a.af_code " + 
				" and h.h_code=? ";
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ArrayList<String> addfaclist = new ArrayList<>();
		String addfac = null;
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, h_code);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				addfac = rs.getString("cf_name");
				addfaclist.add(addfac);
			}						
		}catch (Exception e) {
			e.printStackTrace();
		} finally {
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
			JdbcUtil.close(conn);
		}	
		return addfaclist;

	}
	
	
}
