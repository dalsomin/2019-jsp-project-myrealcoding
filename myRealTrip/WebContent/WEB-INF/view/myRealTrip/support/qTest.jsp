<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%-- 
<form action="<%=request.getContextPath()%>/myRealTrip/support/solution/write.do" method="post">
<select name="cq_type" id="">
<option value="" >...</option>
<option value="여행자-일반(General)">여행자-일반(General)</option>
<option value="여행자-항공(Flight)">여행자-항공(Flight)</option>
</select>
성함 : <input type="text" name="cq_name" /><br><!--성함  -->
이메일 : <input type="email" name="cq_email" /><br><!-- 이메일 -->
제목 : <input type="text" name="cq_title"/><br><!-- 제목 -->
예약번호 : <input type="text" name="cq_bno" /><br><!-- 예약번호 -->
전화번호 : <input type="text" name="cq_tel" /><br><!-- 전화번호 -->
문의내용 :  <br>

<select name="cq_c_code" id="">  <!-- 문의내용 -->
<c:forEach items="${ list }" var="dto">
  <option  id="${ dto.cq_c_name}" value="${ dto.cq_c_code}"  >${ dto.cq_c_name}</option>
</c:forEach>
</select> 

<!-- 세부내용 -->
세부내용 <br>
<textarea rows="6" cols="40" name="cq_detail" >

</textarea><br>

<input type="submit"  name="insert" value="제출"/>

</form>
 --%>
 
 insert fail...

</body>
</html>