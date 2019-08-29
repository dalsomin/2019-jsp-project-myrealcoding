<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jsp/servlet class - LJE (2019. 6. 12.-오전 10:45:29)</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<link rel="stylesheet" type="text/css" href="">
<style>
div{
width: 100px;
height:100px;
}
.a{
background-color: red;
border: solid 1px black;
}
</style>
</head>
<body>
<div id="addCourse"  style='border:solid 1px aqua;'>복제하자</div>
<div id="coursebox" class="a">

</div>
<br>
<div style='border:solid 1px blue;'></div>
<script>
   $(document).ready(function (){
	   $("#addCourse").on("click",function(){
			var clone=$("#coursebox").clone();
			$("#coursebox").after(clone); 
		    
	});
	
	var i=1;
	for (var i =0; i < length; i++) {
		    var newId="coursebox_"+ i+1;
		
		$(".a:eq(" + i + ")").attr("id",newId);
	}
   });
</script>
</body>
</html>