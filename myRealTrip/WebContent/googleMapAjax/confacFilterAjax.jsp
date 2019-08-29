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

  Connection conn = DBConn.getConnection();
  //
   float NElat = Float.parseFloat(request.getParameter("NElat"));
  float NElng = Float.parseFloat(request.getParameter("NElng"));
  float SWlat = Float.parseFloat(request.getParameter("SWlat"));
  float SWlng = Float.parseFloat(request.getParameter("SWlng"));
  ResultSet rs =null;
  PreparedStatement pstmt = null;
  int max=0;
  int min=0 ;

  //해당 지역 안에서 최저가 최고가 가져오기 
  
	  max =  Integer.parseInt(request.getParameter("max")) ;
	  min =  Integer.parseInt(request.getParameter("min")) ;
  
  
  
  
  
  
  
  
  //confacs
  String confacs [] = request.getParameterValues("confacs[]");
 // String confacs2 [] = request.getParameterValues("confacs2[]");
		    	 // System.out.println("confacsDao : " + confacs.toString());
  //star
  int star = Integer.parseInt(request.getParameter("star"));
  //int h_price = Integer.parseInt(request.getParameter("h_price"));
  //price 2개 받아와서 
  int minS = Integer.parseInt(request.getParameter("min"));
  int maxS = Integer.parseInt(request.getParameter("max"));
  //
 // System.out.println(h_price);
  
// 넘어오는 배열 요소 수만큼 ?  넣기 
 String sql = " select distinct h_name, h_engname,  h.h_code, h_latitude, h_longitude ,h_grade,h_price,to_char(h_pic) h_pic "
		       + " from  hotel h join h_confac hc on h.h_code = hc.h_code "
		       + " where  h_latitude between ? and ?   and   h_longitude between  ? and ?  "//해당지역 	   
		       +"and  h_grade <= ? ";// 호텔 등급 
		       if(confacs != null ){// 넘어온 confacs 가 있으면 
		     sql+= "and  cf_code in ( ";
				      for(int i=0; i < confacs.length; i++ ){
				    	  if(confacs.length-1 != i){
				    	    sql += "?,";
				    	  }else{
				    		  sql += "?";
				    	  }
				      }	   
		    sql += 	"   ) " ; 
		            }
		       if( !( minS == 0 & maxS == 0 ) ){
		    	   
		       sql += " and h_price between ? and ?  ";
		    	  
		    	   
		       }
		    

	pstmt = conn.prepareStatement(sql);
  
  
  
  pstmt.setFloat(1, SWlat);
  pstmt.setFloat(2, NElat);
  pstmt.setFloat(3, SWlat);
  pstmt.setFloat(4, NElng);
  pstmt.setInt(5, star);
/*   pstmt.setInt(6, min);
  pstmt.setInt(7, max);
   */
  int pNum = 6;
  for(int i=0; i < confacs.length; i++ ){
	  pstmt.setInt(i+6, Integer.parseInt( confacs[i] ));
	  System.out.println("pstmt-"+confacs[i]);
	  pNum += 1;
  }
 
  if( !( minS == 0 & maxS == 0 ) ){
	  pstmt.setInt(pNum, minS);
	  pstmt.setInt(pNum+1, maxS);
  }
  
  rs =  pstmt.executeQuery();
  
  
   JSONObject jobj = new JSONObject();
  JSONArray  jarr2 = new JSONArray();
 // JSONArray  bigjarr = new JSONArray();

  
  while( rs.next() ){
	  
	   double lat = rs.getDouble("h_latitude");
	  double lng = rs.getDouble("h_longitude");
	  String h_name = rs.getString("h_name"); 
	//  String h_pic = rs.getString("h_pic");
	  String h_grade = rs.getString("h_grade");
	  String h_price = rs.getString("h_price");
	  
	  System.out.println("h_name? "+h_name);
	  JSONObject jobj2 = new JSONObject();
	  
	 
	  jobj2.put("h_name", h_name);
	   jobj2.put("lat", lat);
	  jobj2.put("lng", lng); 
	  jobj2.put("max", max); 
	  jobj2.put("min", min); 
	  jobj2.put("h_pic", rs.getString("h_pic")); 
	  jobj2.put("h_grade", h_grade); 
	  jobj2.put("h_price", h_price); 
	  
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