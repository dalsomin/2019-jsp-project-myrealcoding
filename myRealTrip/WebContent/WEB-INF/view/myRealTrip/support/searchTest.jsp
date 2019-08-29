<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
          <ul class="articles articles--folder">
          <c:forEach items="${ articlePage.content }" var="dto">
          <a class="articles__link" href="<%= request.getContextPath() %>/myrealtrip/support/solution/articles.do?fs_code=${ dto.fs_code }">
                <h2 >${ dto.fs_title }</h2>
                
                <div >
	                <c:choose>
				        <c:when test="${fn:length(dto.fs_answer) gt 70}">
				        <c:out value='${fn:substring(dto.fs_answer, 0, 70) += "..."}'>
				        </c:out></c:when>
				        <c:otherwise>
				        <c:out value="${dto.fs_answer}">
				        </c:out></c:otherwise>
	                </c:choose>
              
                </div>
              </a>
           </c:forEach>
           
            
          </ul>
          
          
           <div class="pagination">
           <c:if test="${articlePage.hasArticles()}">
                  <ul>
								<li class="prev">
                         <c:if test="${articlePage.startPage > 5}">
								<a href="folders.do?pageNo=${articlePage.startPage - 5}"> « 이전 </a>
						</c:if> 
								</li>
						
								<li>
						<c:forEach var="pNo" 
						   begin="${articlePage.startPage}" 
						   end="${articlePage.endPage}">
								   <a href="folders.do?acd_code=${param.acd_code }&title=${param.title }&pageNo=${pNo}&ac_code=${param.ac_code}">${pNo}</a>
						</c:forEach>	
								</li>
						
								<li class="next">
						<c:if test="${articlePage.endPage < articlePage.totalPages}">
								<a href="folders.do?pageNo=${articlePage.startPage +5}"> 다음 » </a>
						</c:if>
								</li>
								
					</ul>
                  </c:if>
           </div>
</body>
</html>