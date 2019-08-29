package myRealTrip.accommodations.lodgings.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;

import com.util.JdbcUtil;

import myRealTrip.accommodations.lodgings.dto.ListDTO;


public class ListDAO {

	private static ListDAO dao = null;
	private ListDAO() {}
	public static ListDAO getInstance() {
		if(dao==null)
			dao= new ListDAO();
		return dao;
	}

	//지역선택
	public LinkedHashMap<String, ArrayList<String>> getCity(Connection conn){
		
		LinkedHashMap<String, ArrayList<String>> map = new LinkedHashMap<>();
		
		String sql ="	select n_name, min(n.n_code) m" + 
				"	from product p, city c, nation n" + 
				"	where p.city_code=c.C_CODE" + 
				"	and c.n_code= n.n_code" + 
				"	group by n.N_NAME" + 
				"	order by m	";
		
		PreparedStatement pstmt = null, pstmt2 = null;
	    ResultSet rs = null, rs2=null;
	      try {
	         pstmt = conn.prepareStatement(sql);
	         rs = pstmt.executeQuery();
	         String area = "";
	         ArrayList<String> list = null;
	         
	         while ( rs.next() ) {
	            area = rs.getString("n_name");
	            
	            sql = String.format("select c_name " + 
	            		"	from(" + 
	            		"	select n_name, c_name, min(n.n_code) m" + 
	            		"	from product p, city c, nation n" + 
	            		"	where p.city_code=c.C_CODE" + 
	            		"	and c.n_code= n.n_code" + 
	            		"	group by n.n_name, c.c_name" + 
	            		"	order by m" + 
	            		"	)" + 
	            		"	where n_name='%s' " , area);
	            list = new ArrayList<>();
	            
	            pstmt2 = conn.prepareStatement(sql);
	            rs2 = pstmt2.executeQuery();
	            
	            while ( rs2.next()) {
	               String city = rs2.getString("c_name");
	               list.add(city);
	            }
	            
	            map.put(area, list);
	         }
	         
	         
	      } catch (SQLException e) {
	         e.printStackTrace();
	      }finally {
	         try { pstmt.close(); pstmt2.close();} catch (SQLException e) {   e.printStackTrace();   }
	         try {rs.close();  rs2.close();   } catch (SQLException e) {   e.printStackTrace();}
	         try {conn.close();  } catch (SQLException e) {   e.printStackTrace();}
	      }
	      return map;
	
	}
	
	
	//민박리스트
	public List<ListDTO> selectList(Connection conn, int firstRow, int endRow, String order,String country, String city){


		String sql = "	select* from(	" + 
				"	select rownum no, s.*		" + 
				"	from(	" + 
				"	select  f.*	" + 
				"	,(select count(*) from review r where r.p_code = f.p_code ) count	" + 
				"	,nvl(( select round(avg(r_score),1) from review r where r.p_code = f.p_code),0)grade	" + 
				"	from(		" + 
				"	select p.p_code, p_pic, c_name, p_name, to_char(p.P_PRICE,'9,999,999') p_price, n_name	" + 
				"	from product p, bnb b, p_pic pic, city c, nation n		" + 
				"	where p.P_CODE= b.P_CODE		" + 
				"	and p.P_CODE=pic.P_CODE	" + 
				"	and p.CITY_CODE=c.C_CODE	" + 
				"	and c.N_CODE=n.N_CODE	" + 
				"	)f ";
		
		if(country=="" && city=="") {
			
		}else if(city != null && city!="") {
			sql += String.format("	where c_name='%s'", city);
		}else if(country !=null && country!="") {
			sql += String.format("	where n_name='%s'", country);
		}	
				
		if
		( order != null) {
			switch (order) {			
			case "인기순" : sql += "	order by grade desc	";break;	//수정
			case "후기순" : sql += "	order by count desc ";break;
			case "가격순" : sql += "	order by p_price ";break;
			case "신상품순" : sql += "	order by p_code desc	";break;
			}
		} 
		sql +=	"	)s	)"
				+ "	where no between ? and ? "; 
				
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ArrayList<ListDTO> list = new ArrayList<>();

		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, firstRow);
			pstmt.setInt(2, endRow);
			rs = pstmt.executeQuery();
			ListDTO dto = null;

			while (rs.next()) {
				dto = new ListDTO();
				dto.setP_code(rs.getString("p_code"));
				dto.setP_pic(rs.getString("p_pic"));
				dto.setC_name(rs.getString("c_name"));
				dto.setP_name(rs.getString("p_name"));
				dto.setP_price(rs.getString("p_price"));
				dto.setCount(rs.getInt("count"));
				dto.setGrade(rs.getDouble("grade"));
				dto.setN_name(rs.getString("n_name"));

				list.add(dto);
			}		
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try { pstmt.close();} catch (SQLException e) {	e.printStackTrace();	}
			try {rs.close();    } catch (SQLException e) {	e.printStackTrace();}
			try {conn.close();  } catch (SQLException e) {	e.printStackTrace();}
		}				

		return list;
	}


	
	
	//페이징처리를 위한 메시지 토탈 얻어오는 함수
	public int selectCount(Connection conn, String country, String city) throws SQLException {
		Statement stmt = null;
		ResultSet rs = null;

		try {
		
			String sql =
					"	select sum(cnt) from(" + 
					"	select count(*) cnt, n_name, c_name" + 
					"	from product p, bnb b, city c, nation n" + 
					"	where p.P_CODE= b.P_CODE		" + 
					"	and p.CITY_CODE=c.C_CODE	" + 
					"	and c.N_CODE=n.N_CODE	" + 
					"	group by n_name, c_name)	";
			if(country=="" && city=="") {
				sql = "	select count(*) from bnb	";					
			}else if( city != null && city !="") {
				sql += String.format("	where c_name='%s' 	", city);
			}else if( country != null && country !="") {
				sql += String.format("	where n_name='%s' 	", country);
			}else {		
				sql = "	select count(*) from bnb	";	
			}
				
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			rs.next();
			return rs.getInt(1);

		} finally {
			JdbcUtil.close(rs);
			JdbcUtil.close(stmt);
		}
		
	}





}
