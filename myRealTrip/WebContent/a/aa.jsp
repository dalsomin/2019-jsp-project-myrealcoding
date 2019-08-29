<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jsp/servlet class - LJE (2019. 6. 14.-오전 6:13:43)</title>
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
	height: 600px;
}

.check {
	border: dotted 1px aqua;
}
</style>
<script>
var n =0;
	$(document).ready(function() {
		
/* 			clone = $("#b0").clone();
			clone.append('<button class="delete">x</button>');
			 */
		//복제
		$("#btn").on("click", function() {
			
			var clone = $('#b0').clone();
			clone.attr("id","b"+(++n));
			
			var delbtn = $('<button class="delete">x</button>');
			delbtn.on('click',function(){
				var removebox = $(this).parent();
				removebox.remove();
			});
			clone.append(delbtn);
			clone.insertBefore($('btn'));
		/* 	$("#b0").after(clone);

			$("#b0").attr("id", "b" + ($("#b0").index()+1)); */

			
			
		});
		$(".check").on("click", function() {
			$(this).attr('style', 'background-color:red');
		});
		
		//삭제 
		/* $(".delete").on("click", function() {
				var r=$(this).parent();
					r.remove();
			}); */

	});
/* 	$(document).on("click", ".delete", function(){
		var r=$(this).parent();
		r.remove();
	}); */
	 $(".delete").on("click", function() {
			var r=$(this).parent();
				r.remove();
		}); 
</script>
<!--    <script>
   $(document).ready(function (){
	 //  
   	$(".check").on("click",function(){
		  	id = $(this).attr("id");
	   	
		   console.log(id);
   				$('#'+id).attr('style','background-color:red;');
   	
	   	});
   	
   });
</script> -->
</head>
<body>
	
	<ul id="a">
		<li id="b0" >
			<div id="c" class="check"></div>
		</li>
		
		
		<div id="btn">버튼</div>
	</ul>


</body>
</html>