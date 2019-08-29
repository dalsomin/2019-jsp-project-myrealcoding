<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jsp/servlet class - jsy (2019. 5. 17.-오후 4:45:53)</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<link rel="stylesheet" type="text/css" href="">
<style>
*, *:before, *:after {
    box-sizing: border-box;
}
.container-inner {
    margin: 0 auto;
    max-width: 872px;
}
div {
    display: block;
}
body {
    font-family: -apple-system, BlinkMacSystemFont, Malgun Gothic, "맑은고딕", Roboto, Helvetica, Arial, sans-serif;
    font-size: 16px;
    line-height: 1.5;
    color: #343a40;
/*     background-color: #fff;
    background-image: none; */
    -webkit-font-smoothing: antialiased;
    letter-spacing: -.2px;
}
.category-tree{
  float:left;
  /* display: block; */
  margin-bottom: 40px;
}
.category-tree-item{
   /* font-size: 18px; */
   display: block;
  /*  width: 50%; */
   
}
.category-tree-item_folders{
  /*   float: left; */
    display:  block;
    margin-bottom : 32px;
    margin-left: 15px;
    margin-right: 15px; 
    margin-top: 0px;
      width: 100%;    
    padding-left: 0px;    
    padding-right : 15px;  
    position: relative;    
    
    
}

.colmn-md-6 {
     float: left; 
     width: 50%; 
    position: relative;
    min-height: 1px;
    padding-left: 15px;
    padding-right: 15px;
    height: 260px;
}
li{
  list-style: none;
}
ul{
  padding-left: 0px;
  padding-top: 0px;
 
}
.category-tree-item_title{
font-size: 24px;
line-height: 24.4px;
margin-bottom: 24px;

}
.fs_title{
color: #2b96ed;
    text-decoration: none !important;
}
.text-center {
    text-align: center;
}
.supportlist{
    margin-bottom: 8px;
}
.category-tree-btn{
   display : inline-block;
   width: 100%;
   height: 50px;
}
.btn{
    color: #2b96ed !important;
    background-color: #e7f4fd !important;
    border-color: #e7f4fd !important;
    mar
}
.button{
  text-align: center;
  
}
</style>


<script>
	$(document).ready(function() {
	});
</script>

</head>
<body>
<jsp:include page="/WEB-INF/view/myRealTrip/support/helpMain.jsp"></jsp:include>
<!-- 
<div class="layout_header">
	<br>
	<div class="solutionhome" id="10">자주 묻는 질문</div>
	<br>
	<div class="solution" id="20">예약/변경/취소</div>
	<br>
	<div class="solution" id="30">가입/변경/탈퇴</div>
	<br>
	<div class="solution" id="40">이용/후기/혜택</div>
	<br>
	<div class="solution" id="50">실시간 항공</div>
	<br>
	<div class="solution" id="60">파트</div>
	<br>
</div>
 -->
	<script>
		$(".solution")
				.on(
						"click",
						function() {

							location.href = "/jspPRO/myrealtrip/support/solution.do?ac_code="
									+ this.id;
						})
	</script>

<div class="container-inner">
<div class="category-tree" >
  <div class="category-tree-item">
      <h2 class="category-tree-item_title">자주 묻는 질문</h2>
      
      
     <div class="category-tree-item_folders row clearfix">
     
     
         <div class="colmn-md-6 folder">
            <ul>
            <li><h3 class="category-tree-3">예약방법</h3></li>
            <c:forEach items="${list }" var="dto" varStatus="status">
								<c:if test="${ dto.acd_code eq 1 }">
									<li class="supportlist">
								     <a href="<%= request.getContextPath() %>/myrealtrip/support/solution/articles.do?fs_code=${ dto.fs_code }" class="articles__link">
									${ dto.fs_title }
									</a>
									</li>
								</c:if>
			</c:forEach>
				<li id="예약방법" class="fs_title" value="1">자주 묻는 질문 21개 더 보기 ></li>
            </ul>
         </div>
     
         <div class="colmn-md-6 folder">
            <ul>
            <li><h3 class="category-tree-3">최소환불</h3></li>
            <c:forEach items="${list }" var="dto" varStatus="status">
								<c:if test="${ dto.acd_code eq 3 }">
									<li class="supportlist">
									 <a href="<%= request.getContextPath() %>/myrealtrip/support/solution/articles.do?fs_code=${ dto.fs_code }" class="articles__link">
									${ dto.fs_title }
									</a>
									</li>
								</c:if>
			</c:forEach>
				<li id="취소환불" class="fs_title" value="3">자주 묻는 질문 7개 더 보기 ></li>
            </ul>
         </div>
     
     
         <div class="colmn-md-6 folder">
            <ul>
            <li><h3 class="category-tree-3">혜택</h3></li>
            <c:forEach items="${list }" var="dto" varStatus="status">
								<c:if test="${ dto.acd_code eq 9 }">
									<li class="supportlist">
									 <a href="<%= request.getContextPath() %>/myrealtrip/support/solution/articles.do?fs_code=${ dto.fs_code }" class="articles__link">
									${ dto.fs_title }
									</a>
									</li>
								</c:if>
			</c:forEach>
				<li id="혜택" class="fs_title" value="9">자주 묻는 질문 12개 더 보기 ></li>
            </ul>
         </div>
     
         <div class="colmn-md-6 folder">
            <ul>
            <li><h3 class="category-tree-3">프로필</h3></li>
            <c:forEach items="${list }" var="dto" varStatus="status">
								<c:if test="${ dto.acd_code eq 5 }">
									<li class="supportlist">
									 <a href="<%= request.getContextPath() %>/myrealtrip/support/solution/articles.do?fs_code=${ dto.fs_code }" class="articles__link">
									${ dto.fs_title }
									</a>
									</li>
								</c:if>
			</c:forEach>
            </ul>
         </div>
         
         <div class="colmn-md-6 folder">
            <ul>
            <li><h3 class="category-tree-3">항공관련</h3></li>
            <c:forEach items="${list }" var="dto" varStatus="status">
								<c:if test="${ dto.acd_code eq 12 }">
									<li class="supportlist">
									 <a href="<%= request.getContextPath() %>/myrealtrip/support/solution/articles.do?fs_code=${ dto.fs_code }" class="articles__link">
									${ dto.fs_title }
									</a>
									</li>
								</c:if>
			</c:forEach>
			<li id="항공관련" class="fs_title" name="acd_code" value="12">자주 묻는 질문 10개 더 보기 ></li>
            </ul>
         </div>
         
         
     
     </div><!-- category-tree-item_folders -->
 
  </div><!-- category-tree-item  -->
  
  
</div><!-- category-tree -->
        <div class="category-tree-btn text-center">
          <div class="button">
			<a href="" class="btn btn-secondary">자주 묻는 질문 모두 보기</a>
		  </div>
		</div>  
</div><!-- container-inner -->





	<script>
		$(".fs_title")
				.on(
						"click",
						function() {

							location.href = "/jspPRO/myrealtrip/support/folders.do?acd_code="
									+ this.value + "&title=" + this.id;

						})
	</script>

	<script>
		$(".topbar-categories__item")
				.on(
						"click",
						function() {
							location.replace = "/jspPRO/myrealtrip/support/solution.do?ac_code="
									+ this.id;
						})
		$(".solutionmore")
				.on(
						"click",
						function() {
							location.href = "/jspPRO/myrealtrip/support/folders.do?acd_code="
									+ this.value + "&title=" + this.id;
						})
		$(".solutionhome").on("click", function() {
			location.href = "/jspPRO/myrealtrip/support/home.do?key=solution";
		})
	</script>



<jsp:include page="/WEB-INF/layout/bottom.jsp"></jsp:include>
</body>

</html>











