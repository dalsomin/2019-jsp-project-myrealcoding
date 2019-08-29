package myRealTrip.googleMap.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;


import myRealTrip.googleMap.dto.CityLatLngDto;

public class MapDAO {
	//싱글톤 
		private static MapDAO dao = null;
		private MapDAO() {}
		public static MapDAO getInstance() {
			if (dao == null) {
				dao = new MapDAO();
			}
			return dao;
		}
		
		public CityLatLngDto getCqListAllAjax(String searchW, Connection conn) {
			
			//String search = "오사카";
			
			 
			 String sql = "select c_lat, c_lng from city where c_name = ? ";
			 PreparedStatement pstmt = null;
			 ResultSet rs = null;
			System.out.println("DAO");
			 CityLatLngDto dto = null;
			 try {
				pstmt = conn.prepareStatement(sql);
				 pstmt.setString(1, searchW);
				 
				 rs =  pstmt.executeQuery();
				 System.out.println(searchW);
				 // jarr 
				 if(rs.next()){
					 System.out.println("출력 ");
					 dto = new CityLatLngDto();
					 // String name = rs.getString("h_engname");
					 dto.setLng(rs.getFloat("c_lng"));
					  dto.setLat(rs.getFloat("c_lat"));
					 
					System.out.println(rs.getFloat("c_lng"));
					System.out.println(rs.getFloat("c_lat"));
				 }
				 
				
			} catch (SQLException e) {
				e.printStackTrace();
			}finally {
				try { pstmt.close();} catch (SQLException e) {	e.printStackTrace();	}
				try { rs.close();    } catch (SQLException e) {	e.printStackTrace();}
			}
			
			
			return dto;
		}
}
