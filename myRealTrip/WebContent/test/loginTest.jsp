<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jsp/servlet class - LJE (2019. 5. 20.-오후 2:05:08)</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<link rel="stylesheet" type="text/css" href="">
<style>
</style>
<script>
   $(document).ready(function (){
   });
</script>
</head>
<body>
<%
	session.setAttribute("member", "admin");
%>
<a href="<%= request.getContextPath() %>/main/tourMain.jsp">tourMain.jsp</a><br>
<a href="top2Test.jsp">top2Test.jsp</a><br>
</body>
</html>