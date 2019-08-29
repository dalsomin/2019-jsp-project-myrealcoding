<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jsp/servlet class - LJE (2019. 6. 7.-오후 9:33:47)</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<link rel="stylesheet" type="text/css" href="">
<style>
</style>
<script>

jQuery(document).ready(function (){
	jQuery("#offerCountryInfo").on("change",function(){

	jQuery.ajax({
	var nationcode=jQuery("#offerCountryInfo").val();
	alert(nationcode);
					url: "<%=request.getContextPath()%>/partner/citycodeajax.do",
					type : "POST",
					dataType : "json",
					data : nationcode,
					success : function(citylist) {
						
						alert("ajax콜백함수안으로 들어옴")
				    jQuery(citylist).each(function (index, e){
					
						var c_code = e.c_code;
						var c_name = e.c_name;
						
				        var option = 
				        	jQuery( "<option name="+c_code+" value="+c_code+">"
						         +c_name+"</option>");
						//$('#cityoption').after(option);
				   		jQuery('#offerCityInfoID').append(option);											         
				         
			
				
					
					});
						}
				});
				 event.preventDefault();
	});
});
</script>

</head>
<body>
<form action="<%=request.getContextPath() %>/partner/regist_tour1.do">
					<select class='form-control' id='offerCountryInfo'
													name="n_code">
													<option disabled selected>나라 선택</option>
													<c:forEach items="${nationlist}" var="nationlist">
														<option value="${nationlist.n_code }">${nationlist.n_name}
														</option>
													</c:forEach>
												</select>
<select name="" id="offerCityInfoID">
</select>
</form>
</body>
</html>