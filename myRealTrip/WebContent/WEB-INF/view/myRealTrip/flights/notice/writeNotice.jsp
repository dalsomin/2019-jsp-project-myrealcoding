<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항 작성</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<link rel="stylesheet" type="text/css" href="">
<style>
 a{
     text-decoration: none;
     color:black;
   }
   table,  tr, td {
    border-radius: 3px;
   }
   h2{
   	text-align: center;
   }
</style>
<script>
   $(document).ready(function (){	  
   });
</script>
</head>
<body>
<jsp:include page="/WEB-INF/layout/top2.jsp"></jsp:include>
<h3>공지사항</h3>
<form action="" method="post">
 <table width="600px" style="margin:50px auto" border="1">
   
   <tr>
     <td width="70" align="center">제목</td>
     <td width="330">
       <input type="text" name="subject" size="50" >
       <input type="checkbox" value="hot" name="hot"/>hot
     </td>
   </tr>
   <tr>
     <td width="70" align="center">내용</td>
     <td width="330">
       <textarea rows="13" cols="50" name="content"></textarea>
     </td>
   </tr>
   <tr>
     <td colspan="2" align="center">
       <input type="submit" value="작성 완료">
       <input type="reset" value="다시 작성">
       <input type="button" value="글목록" onclick="location.href='list.do'">
     </td>
   </tr>
 </table>
 
</form>
<jsp:include page="/WEB-INF/layout/bottom.jsp"></jsp:include>
</body>
</html>