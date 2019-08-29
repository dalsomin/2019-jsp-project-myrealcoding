<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jsp/servlet class - LJE (2019. 6. 5.-오전 9:29:46)</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<link rel="stylesheet" type="text/css" href="">
<style>
img {
	border-radius: 50%;
}
</style>
<script>
	$(document).ready(function() {

		var filename = $("#fileidcard").val();
		$.ajax({
			url : "/myRealTrip/partner/file/ajaxupload.do",//
			method : "GET",
			dataType : "JSON",
			data : {
				filename : filename
			},
			success : function(data) {//response의 정체는? 
				alert(filepath);
				alert(filelist);
				$("#parent").append(filelist);
				$("#img").attr("src", filepath);
			}
		});
	});
</script>
</head>
<body>
	<form action="<%=request.getContextPath()%>/partner/file/upload.do">
		<img id="img" src="" alt="" /> 
		<input id="fileidcard" type="file"
			name="idcard" /> <input type="submit" />
	</form>
	<div id="parent"></div>
</body>
</html>