<%@page import="com.util.ConnectionProvider"%>
<%@page import="oracle.sql.CLOB"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="net.sf.json.JSONArray"%>
<%@page import="net.sf.json.JSONObject"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.util.Calendar"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="com.util.DBConn"%>
<%@page import="java.sql.Connection"%>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
System.out.println("띠용");
/* 
"SWlng":SWlongitude,
    			         "SWlat":SWlatitude,
    			         "NElng":NElongitude,
    			         "NElat":NElatitude};
*/
  Connection conn = ConnectionProvider.getConnection();
  float NElat = Float.parseFloat(request.getParameter("NElat"));
  float NElng = Float.parseFloat(request.getParameter("NElng"));
  float SWlat = Float.parseFloat(request.getParameter("SWlat"));
  float SWlng = Float.parseFloat(request.getParameter("SWlng"));
  ResultSet rs =null;
  PreparedStatement pstmt = null;
  int max=0;
  int min=0 ;
  int max2=0;
  int min2=0 ;
  //해당 지역 안에서 최저가 최고가 가져오기 
 
 
	  max =  Integer.parseInt(request.getParameter("max")) ;
	  min =  Integer.parseInt(request.getParameter("min")) ;
	  


   System.out.println("들어옴?");
   String sql2 = "select max(h_price) maxprice, min(h_price)  minprice from hotel  where h_latitude  between ? and ?   and h_longitude between ? and ? ";
   pstmt = conn.prepareStatement(sql2);



pstmt.setFloat(1, SWlat);
pstmt.setFloat(2, NElat);
pstmt.setFloat(3, SWlat);
pstmt.setFloat(4, NElng);
rs =  pstmt.executeQuery();

if(rs.next()){
	  
max2 = rs.getInt("maxprice") ;
min2 = rs.getInt("minprice") ;

	  
}
// System.out.println(max);
// System.out.println(min);

pstmt.close();
rs.close();
  
  

 String sql = "select h_latitude,h_longitude,h_name,h_engname,h_pic ,h_grade,h_price from hotel "
		    +"   where h_latitude between ? and ?   and   h_longitude between  ? and ? " 
		    +" and h_price between ? and ?   ";
 //쿼리는 문제 없음 
 
 
 pstmt = conn.prepareStatement(sql);
 
 pstmt.setFloat(1, SWlat);
 pstmt.setFloat(2, NElat);
 pstmt.setFloat(3, SWlat);
 pstmt.setFloat(4, NElng);
 pstmt.setFloat(5, min);
 pstmt.setFloat(6, max);
 
  rs =  pstmt.executeQuery();
  
   JSONObject jobj = new JSONObject();
  JSONArray  jarr2 = new JSONArray();
 // JSONArray  bigjarr = new JSONArray();
  
 
  // jarr 
  
  while( rs.next() ){
	
	  System.out.println("앙??"); 

	   double lat = rs.getDouble("h_latitude");
	  double lng = rs.getDouble("h_longitude");
	  String h_name = rs.getString("h_name"); 
	 // String h_pic = rs.getString("h_pic");
	  String h_grade = rs.getString("h_grade");
	  String h_price = rs.getString("h_price");
	  String h_engname = rs.getString("h_engname");
	
	  
	  JSONObject jobj2 = new JSONObject();
	  
	 
	 /*  jobj2.put("lat", lat);
	  jobj2.put("lng", lng);
	  jobj2.put("h_name", h_name); */
	  jobj2.put("h_name", h_name);
	   jobj2.put("lat", lat);
	  jobj2.put("lng", lng); 
	  jobj2.put("max", max); 
	  jobj2.put("min", min); 
	  jobj2.put("max2", max2); 
	  jobj2.put("min2", min2); 
	  jobj2.put("h_pic", rs.getString("h_pic")); 
	  jobj2.put("h_grade", h_grade); 
	  jobj2.put("h_price", h_price); 
	  jobj2.put("h_engname", h_engname); 
	 jarr2.add(jobj2);
	 //
	  
  }
  
  // jobj.put("location",jarr); 
  //bigjarr.add(jarr);
  DBConn.close();
  pstmt.close();
  ///

  
%>
<%= jarr2 %>