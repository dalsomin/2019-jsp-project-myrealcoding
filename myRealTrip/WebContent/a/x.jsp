<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jsp/servlet class - k≡n¡k (2019. 6. 14.-오전 9:25:11)</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<link rel="stylesheet" type="text/css" href="">
<style>
* {
	box-sizing: border-box;
}

li {
	width: 200px;
	height: 200px;
	border: solid 1px gray;
}
div{
	width: 100px;
	height: 100px;
	border: solid 1px pink;
}
#a {
	width: 300px;
	/* height: 600px; */
}

.check {
	border: dotted 1px aqua;
}
</style>
<script>
   var  n = 0;
   $(document).ready(function (){
	   $("#btn").on("click", function() {
		   var clone = $("#b0").clone();
		   clone.attr("id","b"+(++n));
		   var delBtn = $("<button class='delete'>x</button>");
		   delBtn.on("click", function() {
				var r=$(this).parent();
				r.remove();
		   });
		   clone.append(delBtn);
		   
			//$("#a").append(clone);
			clone.insertBefore($("#btn"));
		});
   });
</script>
</head>
<body>
	<ul id="a">
		<li id="b0">
			<div id="c" class="check"></div>
		</li>		
	<div id="btn">버튼</div>
	</ul>
</body>
</html>










