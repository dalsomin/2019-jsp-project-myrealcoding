<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jsp/servlet class - jsy (2019. 5. 21.-오후 2:48:53)</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<link rel="stylesheet" type="text/css" href="">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:400,400italic,600,600italic,700,700italic,300,300italic"  type="text/css" />
<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" />
<link rel="stylesheet" href="//cdn.jsdelivr.net/jquery.magnific-popup/1.0.0/magnific-popup.css" />
<link href="https://assets9.freshdesk.com/assets/cdn/portal_print-ce4892062f25ebaf8abdcca87f6225b0.css" media="print" rel="stylesheet" type="text/css" />
	  		<link href="https://assets3.freshdesk.com/assets/cdn/falcon_portal_utils-fc010ba819d2d80256daa9858dbbc765.css" media="screen" rel="stylesheet" type="text/css" />	
	<link href="https://help.myrealtrip.com/support/theme.css?v=1557997475" media="screen" rel="stylesheet" type="text/css">

<style>
</style>
<script>
   $(document).ready(function (){	  
   });
</script>
</head>
<body>
<jsp:include page="/WEB-INF/layout/helpTop.jsp"></jsp:include>
<%-- 
 <c:if test="${ authUser ne null }"> 
        	<input class="span12 email required" name="member_email" placeholder="이메일" size="30" type="email" value="${ authUser.member_email  }" />
	 </c:if>
 --%>
 <c:if test="${ authUser ne null }">
   <c:set var="memberid" value="${ authUser.memberId}" />
 </c:if>
 <c:if test="${ authUser eq null }">
   <c:set var="memberid" value="0000" />
 </c:if>

  <div class="layout__content">
    
      
    
    
    <div class=" article-page container">
  <div class="container-inner clearfix">

    <div class="row clearfix">
      <div class="column column--sm-8">
        <ol class="breadcrumbs">
          <li title="자주 묻는 질문">
            <a href="/support/solutions">자주 묻는 질문</a>
          </li>
          <li title="자주 묻는 질문">
            <a href="/support/solutions/43000359207">자주 묻는 질문</a>
          </li>
          <li title="예약방법">
            <a href="/support/solutions/folders/43000546697">예약방법</a>
          </li>
        </ol>
      </div>
    </div>

    <div class="row clearfix">
      <div class="column column--sm-8">
        <div class="article-wrapper">
          <article class="article clearfix" itemscope itemtype="http://schema.org/Article">
            <header class="article-header">
              <h1 class="article__title" itemprop="name">
               ${ dto.fs_title }
              </h1>
            </header>
  
            <div class="article__body markdown" itemprop="articleBody">
             <!--  <p><span style="font-family: Tahoma,Geneva,sans-serif;"><strong>선택이 안 되는 날짜는 예약이 불가합니다.</strong>  -->
          
              <span style="font-family: Tahoma,Geneva,sans-serif;">${ dto.fs_answer }</span>
              <!-- <span style="font-family: Tahoma,Geneva,sans-serif;">파트너 혹은 업체 사정 상 이용이 불가능한 사유로 날짜 선택 가능여부가 조정됩니다.</span>
        
              <p>
              <span style="font-family: Tahoma,Geneva,sans-serif;">동일 상품에 대해서 다른 판매자가 판매하는 경우도 있으니 상품 검색을 통해 확인해보시기 바랍니다.</span>
              </p> -->
              <p>
              <br>
              </p>
            </div>
  
            
          </article>
  
          <footer class="article-footer clearfix">
          
          <c:if test="${ param.key eq null }">
          
          
          
            <p class="article-vote voting-container222" id="voting-container" 
											data-user-id="" 
											data-article-id="43000483223"
											data-language="ko">
										이 답변이 유용합니까?<span data-href="/support/solutions/articles/43000483223/thumbs_up" class="vote-up a-link" id="article_thumbs_up" 
									data-remote="true" data-method="put" data-update="#voting-container" 
									data-user-id=""
									data-article-id="43000483223"
									data-language="ko"
									data-update-with-message="도움이 될 수 있어서 기쁩니다. 피드백 감사합니다.">
								예</span>
								<span class="vote-down-container"><span data-href="/support/solutions/articles/43000483223/thumbs_down" class="vote-down a-link" id="article_thumbs_down" 
									data-remote="true" data-method="put" data-update="#vote-feedback-form" 
									data-user-id=""
									data-article-id="43000483223"
									data-language="ko"
									data-hide-dom="#voting-container" data-show-dom="#vote-feedback-container">
								아니오</span></span></p>
	<p class="article-vote voting-container111" id="voting-container" data-user-id="43034535561" data-article-id="43000483238" data-language="ko" style="display:none;">도움이 될 수 있어서 기쁩니다. 피드백 감사합니다.</p>
								
		<script>
		$("#article_thumbs_up").on("click",function(){
			alert("click");
			$(".voting-container222").css("display","none");
			$(".voting-container111").css("display","block");
		})
		
		</script>						
								
								<a class="hide a-link" id="vote-feedback-form-link" 
								data-hide-dom="#vote-feedback-form-link" data-show-dom="#vote-feedback-container">Send feedback</a><div id="vote-feedback-container"class="hide">	<div class="lead">도움을 드리지 못해 죄송합니다. 피드백을 주시면 이 문서의 품질을 높이겠습니다.</div>	
								<!--  -->
								<div id="vote-feedback-form">
								
								
								
								
								<!-- 피드백나쁨 폼 !!!! -->
		<form accept-charset="UTF-8" action="<%= request.getContextPath() %>/myRealTrip/support/solution/bFeedback.do?fs_code=${dto.fs_code}&memberid=${memberid}" data-remote="true" data-update="vote-feedback-container" method="post" rel="validate" novalidate="novalidate"><div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="✓"><input name="authenticity_token" type="hidden" value="VZZxr5o8kWpHJwCv/t6s1EPDl5lN4rRA6/jjetsvD+E="></div>
  	


  <div class="control-group">
  
  
  
  
    <label id="description-label" class="control-label muted required" aria-required="true">피드백</label>
    <div class="controls">
    
    
      <div class="align-feedback">
      
           <input class="pull-left" name="fs_select[]" type="checkbox" value="추가 정보 필요">
          <label class="sol-feedback-message checkbox" for="feedback_message_1">
            추가 정보 필요
          </label>
          <input class="pull-left" name="fs_select[]" type="checkbox" value="이해하기 어려움">
          <label class="sol-feedback-message checkbox" for="feedback_message_2">
            이해하기 어려움
          </label>
          <input class="pull-left" name="fs_select[]" type="checkbox" value="부정확한/무관한 내용">
          <label class="sol-feedback-message checkbox" for="feedback_message_3">
            부정확한/무관한 내용
          </label>
          <input class="pull-left" name="fs_select[]" type="checkbox" value="누락/깨진 링크">
          <label class="sol-feedback-message checkbox" for="feedback_message_4">
            누락/깨진 링크
          </label>
        <textarea class="span8 select_atleast_one" data-select-one="true" id="helpdesk_ticket_description" name="bf_content" placeholder="코멘트" rows="5" aria-invalid="false">
        </textarea> 
  <!--       <input type="checkbox"  class="pull-left" name="fs_select[]"  value="추가 정보 필요" />
        <input type="checkbox"  class="pull-left" name="fs_select[]"  value="이해하기" />
         -->
      </div> 
      
      
    </div>
    
    
    
    
  </div>

  <div class="form-actions">
    <input class="btn btn-primary btn-toggle" id="submit-feedback" name="commit" type="submit" value="피드백 보내기">    <a data-hide-dom="#vote-feedback-container" data-show-dom="#vote-feedback-form-link" class="btn">취소</a>
  </div>
  <!-- 
  <input id="meta_user_agent" name="meta[user_agent]" type="hidden" value="Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36">
  <input id="meta_referrer" name="meta[referrer]" type="hidden" value="https://help.myrealtrip.com/support/solutions/articles/43000483241-%EC%B2%9C%EC%9E%AC%EC%A7%80%EB%B3%80%EC%9C%BC%EB%A1%9C-%EC%9D%B8%ED%95%B4-%EC%B7%A8%EC%86%8C%ED%95%B4%EC%95%BC-%EB%90%98%EB%8A%94%EB%8D%B0-%ED%99%98%EB%B6%88-%EB%B0%9B%EC%9D%84-%EC%88%98-%EC%9E%88%EB%82%98%EC%9A%94-">
 -->
</form>


</div>
								<div id="vote-feedback-form">		<div class="sloading loading-small loading-block"></div>	</div></div>
</c:if>
<c:if test="${ param.key ne null }">
<p class="article-vote" id="voting-container" data-user-id="43034535561" data-article-id="43000483238" data-language="ko">피드백을 주셔서 감사합니다. 이 항목을 개선시키겠습니다.</p>

</c:if>								
								
								
								
								
								
								
								
								
          </footer>
<script>
$("#article_thumbs_down").on("click",function(){
	//alert("asdfa")
	$("#vote-feedback-container").css("display","inline-block");
})
</script>								
        </div>
      </div>
      <div class="column column--sm-4">
        <div class="article-sidebar">
          
          <div class="related-articles">
            <div id="related_articles"><div class="cs-g-c"><section class="article-list"><h3 class="list-lead">관련 글(기사)</h3>
            <ul rel="remote" 
			data-remote-url="/support/search/articles/43000483223/related_articles?container=related_articles&limit=10" 
			id="related-article-list">
			<c:forEach items="${ listR }" var="listR">
			<li>
			<div class="ellipsis">
			<a href="<%= request.getContextPath() %>/myrealtrip/support/solution/articles.do?fs_code=${ listR.fs_code }">
			${ listR.fs_title } 
			</a>
			</div>
			</li>
			
			</c:forEach>
			</ul>
			</section></div></div>
          </div>
          
        </div>
      </div>
    </div>
  </div>
</div>
</div>
<script>
  BTCategory = 43000359207;
</script>







<jsp:include page="/WEB-INF/layout/bottom.jsp"></jsp:include>
</body>
</html>











