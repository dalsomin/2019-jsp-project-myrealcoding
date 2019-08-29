<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset='UTF-8'>
<meta content='Content-type: text/html; charset=UTF-8' name='http-equiv'>
<meta content='IE=Edge,chrome=1' http-equiv='X-UA-Compatible'>
<meta content='width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
<meta content='yes' name='apple-mobile-web-app-capable'>
<meta content='black' name='apple-mobile-web-app-status-bar-style'>
<meta content='SyCtjRv6wVxDU6a7dWgpsvQNMP38wW6OpOyMFBUkhQ8' name='google-site-verification'>
<meta content='a0a215c577b4fc16a849b8867cd9b68051ed6377' name='naver-site-verification'>
<meta content='all, index, follow' name='robots'>
<meta content='ko' name='locale'>
<meta content='KRW' name='currency'>
<meta content='현지 투어, 여행 가이드, 투어 가이드, 현지 가이드, 가이드 투어, 마이리얼트립, 현지정보, 여행정보, 입장권, 교통패스, 액티비티, 여행사, 호텔예약, 해외호텔, 호텔할인, 바로사용, 한인민박, 민박, 와이파이, 유심, 여행자보험, 항공권, 항공권 검색, 최저가 항공권' name='keywords'>
<meta content='여행지에서 즐길 수 있는 가이드 투어, 명소 입장권, 교통패스, 액티비티는 물론 호텔 예약까지 전세계 현지 여행이 준비되어 있습니다.
' name='description'>
<meta name="csrf-param" content="authenticity_token" />
<meta name="csrf-token" content="tnd3KsmQOldkypIn98aSYeufCOzVRum0SgsmeRYOIlg4bZP54EUsrIqTXn6cMga0ZHrhuIkVmm8RWlKsZJ0D+g==" />
<meta content='113823448739791' property='fb:app_id'>
<meta content='122600525' property='fb:admins'>
<meta content='마이리얼트립' property='og:site_name'>
<meta content='https://www.myrealtrip.com/offers/hot-deal' property='og:url'>
<link href='https://www.myrealtrip.com/opensearch.xml' rel='search' title='마이리얼트립 검색' type='application/opensearchdescription+xml'>
<meta content='https://d2yoing0loi5gh.cloudfront.net/assets/og-image-35b4b66874396ae2fc8991b926c1f0c09f27f25f9c0a23f15e5e96c73c2c9992.png' property='og:image'>
<link href='https://d2yoing0loi5gh.cloudfront.net/assets/logo/ic-mobile-76-59c4321eae219afd9cebfb870646b877f48a5b63adab68a37604891800aed0da.png' rel='apple-touch-icon-precomposed'>
<link href='https://d2yoing0loi5gh.cloudfront.net/assets/logo/ic-mobile-76-59c4321eae219afd9cebfb870646b877f48a5b63adab68a37604891800aed0da.png' rel='apple-touch-icon'>
<link href='https://d2yoing0loi5gh.cloudfront.net/assets/logo/ic-mobile-76-59c4321eae219afd9cebfb870646b877f48a5b63adab68a37604891800aed0da.png' rel='apple-touch-icon' sizes='76x76'>
<link href='https://d2yoing0loi5gh.cloudfront.net/assets/logo/ic-mobile-120-0de06603ad3e4427cb29b5e4ef6833021cc52ea642ee76e843ed997209049bf5.png' rel='apple-touch-icon' sizes='120x120'>
<link href='https://d2yoing0loi5gh.cloudfront.net/assets/logo/ic-mobile-152-cc369a832b7a69d0c0b63c3914168b58e732a26729d72e976e7f729b923ee302.png' rel='apple-touch-icon' sizes='152x152'>
<title>마이리얼트립 :: 600개 도시 현지 친구와 진짜 여행을</title>
<link rel="shortcut icon" type="image/x-icon" href="https://d2yoing0loi5gh.cloudfront.net/assets/favicon-e7fc64f202376533d86106e6f712ed41eee1e843dbc5de3b2765938656f8eb93.ico" />
<script src="https://d2yoing0loi5gh.cloudfront.net/assets/kitty/ko-5d40c1382db94787ee09831dee889f833820560fe559c19347c2079165c71e0f.js"></script>
<link rel="stylesheet" media="all" href="/myRealTrip/stylesheet/airtelMain1.css" />
<link rel="stylesheet" media="all" href="/myRealTrip/stylesheet/airtelMain2.css" />
<script src="https://d2yoing0loi5gh.cloudfront.net/webpack/vendor.bc5e84b8b900be1fb96b.js"></script>
<script src="https://d2yoing0loi5gh.cloudfront.net/webpack/application.bc5e84b8b900be1fb96b.js"></script>
<script src="https://d2yoing0loi5gh.cloudfront.net/assets/kitty/application-8ca969f663e621ec2203dfd31702dd1848d1a0abee1d902e6b4164db402d8583.js"></script>
<script src="//maps.googleapis.com/maps/api/js?key=AIzaSyC84fbqS1JuAJ9t24SLY2LEWf2Ud8W8F1E&amp;libraries=places&amp;language=ko" async="async" defer="defer"></script>
<script src="//cdn.ravenjs.com/3.24.2/raven.min.js" async="async" defer="defer" onload="initRaven()"></script>
<script>
  function initRaven() {
    Raven.config('https://5bfa4c779b0a477cb4cdb9b8b659cb8b@sentry.io/146345').install();
  }
</script>
<!-- Google Tag Manager -->
<script>
  dataLayer = [];
  (function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
  new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
  j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
  '//www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
  })(window,document,'script','dataLayer','GTM-NCVRS4');
</script>
<!-- End Google Tag Manager -->

<script src="//wcs.naver.net/wcslog.js"></script>
<script type="text/javascript" charset="UTF-8" src="//t1.daumcdn.net/adfit/static/kp.js"></script>
<script type="text/javascript">
      kakaoPixel('5174958686083042808').pageView();
</script>
<script>
  window.App = App || {};
</script>
<style>
.Header-module__header--1QMJB{
	background-color: #2b96ed;
}
.LnbLocalNavItem-module__item--3ZodT.LnbLocalNavItem-module__active--3-BID {
    opacity: 1!important;
}
.hot-deal-category[name=aa]{
	display: none;
}
.top-item:hover{
	background: white;
}
</style>
<script>
   $(document).ready(	   
         function() {
            $(".LnbLocalNavItem-module__item--3ZodT").removeClass(
                  "LnbLocalNavItem-module__active--3-BID");
            $("#topIcon04").addClass(
                  "LnbLocalNavItem-module__active--3-BID");
            
    		$('option[value='+"${ empty param.order ? 'popular' : param.order }"+']').prop("selected","selected");
    		$('.paging-list a[id='+"${ param.currentPage==null ? 1 : param.currentPage }"+']').addClass("active");
    		
    		$('.hot-deal-category[id=' + "${ param.category==null || empty param.category ? 'all' : param.category }"+']').css("color","#2b96ed");
    		$('.hot-deal-category[id=' + "${ param.category==null || empty param.category ? 'all' : param.category }"+']').css("font-weight","600");
            
         });
</script>


</head>
<body class='body' data-action='hot_deal' data-controller-path='kitty/offers' data-controller='offers' data-sign-in>
<!-- Google Tag Manager (noscript) -->
<div class='global-alert-box'>
</div>
<jsp:include page="/WEB-INF/layout/top1.jsp"></jsp:include>
<main class='hot-deal-container'>
<div class='hot-deal-header-container'>
<a class='header-title' href='<%=request.getContextPath() %>/airtellist.do?'>에어텔</a>
<div class='header-subtitle-container'>
<div class='link-container'><a class='header-subtitle' href='<%=request.getContextPath() %>/airtellist.do'>에어텔 홈</a>

<c:if test="${ not empty param.nation }">
<img class="next-item" src="https://d2yoing0loi5gh.cloudfront.net/assets/kitty/button/ic-rightarrow-xsmall-lightgray-65d5bdb56e50a27c18d224ecd8b568f5ecdb460418ecd13a38f015acb7aaef8f.svg" width="16"> 
<a class="header-subtitle" href="<%=request.getContextPath() %>/airtellist.do?nation=${param.nation }">${param.nation }</a>
</c:if>
<c:if test="${ not empty param.area }">
<img class="next-item" src="https://d2yoing0loi5gh.cloudfront.net/assets/kitty/button/ic-rightarrow-xsmall-lightgray-65d5bdb56e50a27c18d224ecd8b568f5ecdb460418ecd13a38f015acb7aaef8f.svg" width="16"> 
<a class="header-subtitle" href="<%=request.getContextPath() %>/airtellist.do?nation=${param.nation }&area=${param.area }">${param.area }</a>
</c:if>



</div><a class='dropdown-btn' id='areasDropdownOpen'>
지역 선택
<img class='dropdown-img' height='16' src='https://d2yoing0loi5gh.cloudfront.net/assets/kitty/button/ic-rightarrow-small-gray-300-a90117c530d901fb4b3a7be42dd7bb56f6d66eca29daf6839ba26ca8a742c45f.svg' width='16'>
</a><div class='header__locations-dropdown header-dropdown' id='areasDropdown'>
<div class='header-dropdown-container hide-on-mobile'>
<div class='header-dropdown-header'>
<div class='title'>방문할 도시 또는 나라를 선택하세요.</div>
<img class='areas-dropdown-close' data-box-close src='https://d2yoing0loi5gh.cloudfront.net/assets/kitty/accommodations/ic-close-darkgray-b2a78c549cbd189ea0a1f61b85d446e089438104a7d20125fe83a149254a1e2d.svg' width='24'>
</div>

<div class='header-dropdown-wrapper'>
<c:forEach items="${ map }" var="entry">
<div class='header-dropdown-item'>
<a class='top-item' href='<%=request.getContextPath() %>/airtellist.do?nation=${ entry.key }'>${ entry.key }</a>
<c:forEach items="${ entry.value }" var="value">
<a class='sub-item' href='<%=request.getContextPath() %>/airtellist.do?area=${ value }&nation=${ entry.key }' id="${ value }" >${ value }</a>
</c:forEach>
</div>
</c:forEach>
</div>
</div>

</div>



</div>
</div>
<div class='banner-container'>
<div class='carousel slide' data-ride='carousel' id='image-carousel'>
<ol class='carousel-indicators'>
<li class='active' data-slide-to='0' data-target='#image-carousel'></li>
<li data-slide-to='1' data-target='#image-carousel'></li>
<li data-slide-to='2' data-target='#image-carousel'></li>
<li data-slide-to='3' data-target='#image-carousel'></li>
<li data-slide-to='4' data-target='#image-carousel'></li>
<li data-slide-to='5' data-target='#image-carousel'></li>
<li data-slide-to='6' data-target='#image-carousel'></li>
<li data-slide-to='7' data-target='#image-carousel'></li>
</ol>

<div class='carousel-inner' role='listbox'>
<div class='active carousel-item item'>
<a data-gtm-action='롤링배너' data-gtm-category='에어텔_홈' data-gtm-label='default-1' href='https://www.myrealtrip.com/campaigns/airtelswisscoupon'>
<img class='carousel-img hide-on-mobile' src='https://d2ur7st6jjikze.cloudfront.net/cms/191_original_1556525172.jpg?1556525172'>
</a>
</div>
<div class='item carousel-item'>
<a data-gtm-action='롤링배너' data-gtm-category='에어텔_홈' data-gtm-label='default-2' href='https://www.myrealtrip.com/offers/59072'>
<img class='carousel-img hide-on-mobile' src='https://d2ur7st6jjikze.cloudfront.net/cms/203_original_1558588774.jpg?1558588774'>
</a>
</div>
<div class='item carousel-item'>
<a data-gtm-action='롤링배너' data-gtm-category='에어텔_홈' data-gtm-label='default-3' href='https://www.myrealtrip.com/offers/59050'>
<img class='carousel-img hide-on-mobile' src='https://d2ur7st6jjikze.cloudfront.net/cms/679_original_1558600290.jpg?1558600290'>
</a>
</div>
<div class='item carousel-item'>
<a data-gtm-action='롤링배너' data-gtm-category='에어텔_홈' data-gtm-label='default-4' href='https://www.myrealtrip.com/offers/58761'>
<img class='carousel-img hide-on-mobile' src='https://d2ur7st6jjikze.cloudfront.net/cms/570_original_1558422971.jpg?1558422971'>
</a>
</div>
<div class='item carousel-item'>
<a data-gtm-action='롤링배너' data-gtm-category='에어텔_홈' data-gtm-label='default-5' href='https://www.myrealtrip.com/offers/58950'>
<img class='carousel-img hide-on-mobile' src='https://d2ur7st6jjikze.cloudfront.net/cms/759_original_1558600294.jpg?1558600294'>
</a>
</div>
<div class='item carousel-item'>
<a data-gtm-action='롤링배너' data-gtm-category='에어텔_홈' data-gtm-label='default-6' href='https://www.myrealtrip.com/offers/55273'>
<img class='carousel-img hide-on-mobile' src='https://d2ur7st6jjikze.cloudfront.net/cms/572_original_1557807242.jpg?1557807242'>
</a>
</div>
<div class='item carousel-item'>
<a data-gtm-action='롤링배너' data-gtm-category='에어텔_홈' data-gtm-label='default-7' href='https://www.myrealtrip.com/offers/57227'>
<img class='carousel-img hide-on-mobile' src='https://d2ur7st6jjikze.cloudfront.net/cms/564_original_1558422741.jpg?1558422741'>
</a>
</div>
<div class='item carousel-item'>
<a data-gtm-action='롤링배너' data-gtm-category='에어텔_홈' data-gtm-label='default-8' href='https://www.myrealtrip.com/offers/55450'>
<img class='carousel-img hide-on-mobile' src='https://d2ur7st6jjikze.cloudfront.net/cms/677_original_1558424348.jpg?1558424348'>
</a>
</div>
</div>
<a class='left-release carousel-control' data-slide='prev' href='#image-carousel' role='button'></a>
<a class='right-release carousel-control' data-slide='next' href='#image-carousel' role='button'></a>
</div>

<div class='fixed-banner'>
<a class='hide-on-tablet gtm-hot-deal-fixed' data-gtm-action='고정배너' data-gtm-category='에어텔_홈' href='https://www.myrealtrip.com/campaigns/airtelswisscoupon'>
<img src='https://d2ur7st6jjikze.cloudfront.net/cms/68_original_1532314757.jpg?1532314757'>
</a>
<a class='show-on-tablet gtm-hot-deal-fixed' data-gtm-action='고정배너' data-gtm-category='에어텔_홈' href='https://www.myrealtrip.com/campaigns/airtelswisscoupon'>
<img src='https://d2ur7st6jjikze.cloudfront.net/cms/69_original_1532314757.jpg?1532314757'>
</a>
</div>

</div>
<div class='hot-deal-content'>
<div>
<c:forEach items="${ listCategory }" var="list">
<script>
  $(document).ready(	   
         function() {
		$('.hot-deal-category[data='+"\"${list }\""+']').css("display","inline-block");
         });
</script>
</c:forEach>

</div>
<div class="hot-deal-category-container hide-on-mobile"><a class="hot-deal-category" id="all" href="<%=request.getContextPath() %>/airtellist.do?city=${param.city }&nation=${param.nation }&category=all&order=${param.order }&area=${param.area}">
전체
</a><a class="hot-deal-category" name="aa" data="패키지" id="package" href="<%=request.getContextPath() %>/airtellist.do?city=${param.city }&nation=${param.nation }&category=package&order=${param.order }&area=${param.area}">
패키지 
</a><a class="hot-deal-category" name="aa" data="에어텔" id="airtel" href="<%=request.getContextPath() %>/airtellist.do?city=${param.city }&nation=${param.nation }&category=airtel&order=${param.order }&area=${param.area}">
에어텔
</a><a class="hot-deal-category" name="aa" data="항공권/승선권" id="transport" href="<%=request.getContextPath() %>/airtellist.do?city=${param.city }&nation=${param.nation }&category=transport&order=${param.order }&area=${param.area}">
항공권/승선권
</a><a class="hot-deal-category" name="aa" data="렌터카" id="rentacar" href="<%=request.getContextPath() %>/airtellist.do?city=${param.city }&nation=${param.nation }&category=rentacar&order=${param.order }&area=${param.area}">
렌터카
</a><a class="hot-deal-category" name="aa" data="숙박특가" id="accommodation" href="<%=request.getContextPath() %>/airtellist.do?city=${param.city }&nation=${param.nation }&category=accommodation&order=${param.order }&area=${param.area}">
숙박특가
</a></div>

<div class="hot-deal-select">
<select class="select-wrapper" name="select-type" style="-webkit-appearance:menulist"
onchange="location.href = '<%=request.getContextPath() %>/airtellist.do?city=${param.city }&nation=${param.nation }&category=${param.category }&order=' + $('.select-wrapper').val()+'&area=${param.area}'" >
<option selected="selected" value="popular">인기순</option>
<option value="reviews">후기순</option>
<option value="price">가격순</option>
<option value="recent">신상품순</option>
</select>
</div>
<div class='offer-container card-type card-hot-deal'>
<ul class='item-container offer-item-container'>

<c:forEach  items="${list}" var="dto">
<li class="item card-type-a" >
	<a class="wish" href="/wishlists/35776.js"><div class="icon"></div>
	</a><div class="card-cover">
	<a class="offer-link" href="<%=request.getContextPath() %>/airtelcontent.do?p_code=${dto.p_code }">
		<div class="img-container">
			<div class="expiry-date">사용 기간: ${dto.a_period_start } ~ ${dto.a_period_end }</div>
			<div class="img-placeholder">
				<img class="MRT-LazyImageLoader__indicator--kitty visible" data-src="${dto.pic }">
			</div>
		</div>
		<div class="content-box">
			<div class="city-name">${ dto.typename} • ${dto.city_code }</div>
			<div class="name">${dto.p_name }</div>
			<div class="inner-container">
				<div class="review">
				 	<c:if test="${dto.count eq 0}">
					<img alt="review" class="icon" src="https://d2yoing0loi5gh.cloudfront.net/assets/kitty/offer/ic_reviewevent@2x-e0cd14bb5a469b7f06ef7a64136d6565713702aa206716d6c8bbacd00e71ef09.png" width="14">
					<div class="text font-blue">후기 이벤트</div>
				 	</c:if>
				 	<c:if test="${dto.count ne 0}">
					<div class="rating-box">
					<c:forEach begin="1" end="${dto.score }"><span class="icon active"></span></c:forEach>
					<c:if test="${ 0 < (dto.score % 1) && (dto.score % 1) <= 0.5}"><span class="icon half"></span></c:if>
					<c:if test="${ 0.5 < (dto.score % 1) }"><span class="icon active"></span></c:if>
					<c:if test="${ 0 eq dto.score % 1 &&  dto.score ne 5 }"><span class="icon"></span></c:if>
					<c:forEach begin="${dto.score+1 }" end="4"><span class="icon"></span></c:forEach>
					</div>
					<div class="text">후기 ${dto.count }개</div>
					</c:if>
				</div>
				<div class="price" >
					<span>${ dto.p_price }원</span>
					<span class="unit">/ 1인</span>
				</div>
			</div>
		</div>
	</a>
	</div>
</li>
</c:forEach>

</ul>
</div>
<script>
   $(document).ready(	   
         function() {
            
        	 if(${param.currentPage==null?1:param.currentPage}==1){
        		 $('.paging-list a.first, a.prev').addClass('inactive');
        		 $('.paging-list a.first, a.prev').prop("href","javascript:void(0)");
        	 }else{
        		 $('.paging-list a.first, a.prev').addClass('active');
        	 }
        	 if(${param.currentPage==null?1:param.currentPage}==${pages[2]}){
        		 $('.paging-list a.next, a.last').addClass('inactive');
        		 $('.paging-list a.next, a.last').prop("href","javascript:void(0)");
        	 }else{
        		 $('.paging-list a.next, a.last').addClass('active');
        	 }
     ///////// 선택한 지역 active 처리   	
        	 if( ${not empty param.area } ){ 
        		 $('.banner-container').css("display","none") 
        		 $('.sub-item[id='+"\"${param.area}\""+']').addClass('active');
        		 }
         });
</script>
<c:if test="${ pages[2] ge 2}">
<div class="paging-list">
<a class="first" href="<%=request.getContextPath() %>/airtellist.do?area=${ param.area }&nation=${param.nation }&category=${ param.category }&order=${ param.order }&currentPage=1">
<span>처음</span>
</a>
<a class="prev" href="<%=request.getContextPath() %>/airtellist.do?area=${ param.area }&nation=${param.nation }&category=${ param.category }&order=${ param.order }&currentPage=${param.currentPage-1 }">
<span>이전</span>
</a>

<c:forEach begin="${ pages[0] }" end="${ pages[1] }" varStatus="i">
<a class="page" style="display:table-cell; " id="${ i.index }" href="<%=request.getContextPath() %>/airtellist.do?area=${ param.area }&nation=${param.nation }&category=${param.category }&order=${param.order }&currentPage=${i.count+pages[0]-1 }">${i.count+pages[0]-1 }</a>
</c:forEach>
<a class="next" href="<%=request.getContextPath() %>/airtellist.do?area=${ param.area }&nation=${ param.nation }&category=${param.category }&order=${param.order }&currentPage=${(param.currentPage==null? 1 : param.currentPage) +1 }"><span>다음</span>
</a>
<a class="last" href="<%=request.getContextPath() %>/airtellist.do?area=${ param.area }&nation=${ param.nation }&category=${param.category }&order=${param.order }&currentPage=${pages[2] }"><span>마지막</span>
</a>
</div>
</c:if>
</div>
</main>
<jsp:include page="/WEB-INF/layout/bottom.jsp"></jsp:include>    

<div id='popup-mask'></div>
<div id='gnb-popup-mask'></div>
<script>
  if (typeof OfferWish !== 'undefined') {
    OfferWish.check([]);
  }
</script>
<script type="text/javascript">
  var google_tag_params = {
  ecomm_prodid: 'REPLACE_WITH_VALUE',
  ecomm_pagetype: 'REPLACE_WITH_VALUE',
  ecomm_totalvalue: 'REPLACE_WITH_VALUE',
  travel_destid: 'REPLACE_WITH_VALUE',
  travel_originid: 'REPLACE_WITH_VALUE',
  travel_startdate: 'REPLACE_WITH_VALUE',
  travel_enddate: 'REPLACE_WITH_VALUE',
  travel_pagetype: 'REPLACE_WITH_VALUE',
  travel_totalvalue: 'REPLACE_WITH_VALUE',
  };
</script>
<script type="text/javascript">
  /* <![CDATA[ */
  var google_conversion_id = 1004447359;
  var google_custom_params = window.google_tag_params;
  var google_remarketing_only = true;
  /* ]]> */
</script>
<script type="text/javascript" src="//www.googleadservices.com/pagead/conversion_async.js">
</script>
<noscript>
  <div style="display:inline;">
    <img height="1" width="1" style="border-style:none;" alt="" src="//googleads.g.doubleclick.net/pagead/viewthroughconversion/1004447359/?guid=ON&amp;script=0"/>
  </div>
</noscript>

<!--  공통 스크립트 -->
<script src="https://d2yoing0loi5gh.cloudfront.net/assets/adiz_sv120-38fea29758c151518c764b4bc1a0bdd8e78c105c31e114ef16a4fd0b8be47a31.js"></script>
<script type="text/javascript">
  window.criteo_q = window.criteo_q || [];
  window.userEmail = "";
  window.userAgent = "d";

    window.userEmail = "f9657f3a4dd081c8f29661b422c701d1";

  if(navigator.userAgent.match(/Android|Mobile|iP(hone|od|ad)|BlackBerry|IEMobile|Kindle|NetFront|Silk-Accelerated|(hpw|web)OS|Fennec|Minimo|Opera M(obi|ini)|Blazer|Dolfin|Dolphin|Skyfire|Zune/)){
    //모바일(스마트폰+태블릿)일 때
    window.userAgent = "t";
    if(navigator.userAgent.match(/Mobile|iP(hone|od)|BlackBerry|IEMobile|Kindle|NetFront|Silk-Accelerated|(hpw|web)OS|Fennec|Minimo|Opera M(obi|ini)|Blazer|Dolfin|Dolphin|Skyfire|Zune/)){
      //스마트폰일 때
      window.userAgent = "m";
    }
  }
</script>
<script>
    var user = 1972914
  dataLayer.push( {
    'userID': user
  });
  /**** fire remarketingTag ******/
  dataLayer.push({
    'event': 'fireRemarketingTag',
    'google_tag_params': {
      'ecomm_prodid': '',
      'ecomm_pagetype': 'other',
      'ecomm_totalvalue': ''
    }
  });
  /****** fire remarketingTag ******/

  if (window.jQuery) {
    $(document).ready(function() {
      $('.offer-item-container li.item').click(function(event){
        var $offer_item = $(this);

        var offer_id = $offer_item.attr('data-offer-id');
        var offer_name = $offer_item.find('.name').text();
        var offer_price = $offer_item.find('.price[data-offer-price]').attr('data-offer-price');
        var offer_category = $offer_item.attr('data-offer-type');

        var offer_url = $offer_item.find('a.offer-link').attr('href');

        dataLayer.push({
          'event': 'productClick',
          'ecommerce': {
            'click': {
              'actionField': {'list': offer_category},      // Optional list property.
              'products': [{
                'name': offer_name,                      // Name or ID is required.
                'id': offer_id,
                'price': offer_price,
                'category': offer_category
               }]
             }
           }
        });
      });

      $(document).on('wishChecked', function(e) {
        dataLayer.push({
          'event': 'addToWishlist',
          'offer_id': e.detail.offerId
        });
      });
    });
  }
</script>

<!-- Global site tag (gtag.js) - Google Ads: 1004447359 -->
<script async src="https://www.googletagmanager.com/gtag/js?id=AW-1004447359"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'AW-1004447359');
</script>
<script>
  // 호텔메타 객실 선택 전환 수집용 함수
  function gtag_report_conversion(url) {
    var callback = function () {
      if (typeof(url) != 'undefined') {
        window.location = url;
      }
    };
    gtag('event', 'conversion', {
        'send_to': 'AW-1004447359/Lz1wCK2VlJUBEP_M-t4D',
        'transaction_id': '',
        'event_callback': callback
    });
    return false;
  }
</script>
<script>
  if (!wcs_add) var wcs_add={};

  wcs_add["wa"] = "s_2652984f26f1";

  if (!_nao) var _nao={};

    wcs.inflow();
    wcs_do(_nao);

</script>

</body>
</html>
