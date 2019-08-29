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
/*  
String search = request.getParameter("search");
  Connection conn = DBConn.getConnection(); */
  Connection conn = DBConn.getConnection(); 
//String search = "오사카";
 String search = request.getParameter("searchW");
  System.out.println(search);
 String sql = "select c_lat, c_lng from city where c_name = ? ";
 
 PreparedStatement pstmt = conn.prepareStatement(sql);
  pstmt.setString(1, search);
  
  ResultSet rs =  pstmt.executeQuery();
  
  JSONObject jobj = new JSONObject();
  JSONArray  jarr = new JSONArray();
  
  
  // jarr 
  while(rs.next()){
	 
	// String name = rs.getString("h_engname");
	  float lat = rs.getFloat("c_lat");
	  float lng = rs.getFloat("c_lng");
	  System.out.println(lat);
	  System.out.println(lng);
	 
	  
	  JSONObject jobj2 = new JSONObject();
	  
	 // jobj2.put("name", name);
	  jobj2.put("lat", lat);
	  jobj2.put("lng", lng);
	  
	  
	 //어레이에 안담는다면..?
	 jarr.add(jobj2);
	  
  }
  
  DBConn.close();
  rs.close();
  pstmt.close();
  
%>
<%= jarr %>