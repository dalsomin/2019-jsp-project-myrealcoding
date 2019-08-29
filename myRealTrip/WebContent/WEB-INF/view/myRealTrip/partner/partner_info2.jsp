<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jsp/servlet class - LJE (2019. 5. 30.-오후 4:50:08)</title>
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
<table class='display table table-striped table-hover table-hover-pointer' id='hidden-table-info'>
<thead>

<tr>
<th class='hidden-xs'>No.</th>
<th>제목</th>
<th>작성일</th>
</tr>
</thead>

<tbody>
 

<c:foreEach var="infodto" items="${infodto.content}">
		<tr data-target='#notice_22' data-toggle='modal'>
	<td class='hidden-xs'>${infodto.pn_no}</td>
	<td>${infodto.pn_title}</td>
	<td>${infodto.pn_regdate}</td>
	<div aria-hidden='true' aria-labelledby='notice modal' class='modal fade' id='notice_22' role='dialog' tabindex='-1'>
	<div class='modal-dialog modal-center'>
	<div class='modal-content'>
	<div class='modal-header'>
	<button aria-label='Close' class='close' data-dismiss='modal' type='button'>
	<i class='icon wb-close-mini'></i>
	</button>
	<h4 class='modal-title'>${infodto.pn_title}</h4>
	<span class='modal-date'>${infodto.pn_regdate }</span>
	</div>
	<div class='modal-body'>
	${infodto.pn_detail}
	</div>
	</div>
	</div>
	</div>
	</tr>
</c:foreEach>


</tbody>
</table>
</div>


<div class='paging-list'>
<nav class='pull-right'>
<ul class='pagination'>
<li>
<a arial-label="Previous" href="/partner/notices"><span arial-hidden='true'>&laquo;</span>
</a>
</li>


<li>
<a href="/partner/notices?page=${infodto.currentPage}">${infodto.currentPage}</a>
</li>



</nav>
</div>

</body>
</html>