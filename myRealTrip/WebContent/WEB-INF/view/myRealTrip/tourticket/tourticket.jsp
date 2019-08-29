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
<link rel="stylesheet" media="all" href="/myRealTrip/stylesheet/tourticket1.css" />
<link rel="stylesheet" media="all" href="/myRealTrip/stylesheet/tourticket2.css" />
<link rel="stylesheet" media="screen" href="https://d2yoing0loi5gh.cloudfront.net/webpack/0.a1b13696e6e40d99ce61.css">
<link rel="stylesheet" media="screen" href="https://d2yoing0loi5gh.cloudfront.net/webpack/application.a1b13696e6e40d99ce61.css">
<link rel="stylesheet" media="all" href="https://d2yoing0loi5gh.cloudfront.net/assets/kitty/application_template-5da62e3a802820a73815ac9769d004d04db514aa47276f57320c206cc043d2ac.css">
<link rel="stylesheet" media="all" href="https://d2yoing0loi5gh.cloudfront.net/assets/kitty/application-528570dd3e09ef23a61d6632bb99ce541f5d7126b025ea8a59f3e9a53c394359.css">
<link rel="stylesheet" href="https://use.fontawesome.com/7f85a56ba4.css">
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
.Header-module__blue--2H5LD{
	background: transparent!important;
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
.Header-module__lnb--2J09H{
	border-bottom: solid 1px gray;
}
.Grid-module__row--2dOgi {
    margin: 0 auto;
    position: relative;
}
.Grid-module__container--2YY6K {
    position: relative;
    width: 100%;
}
.TransparentHeader-module__body--37q3t {
    height: 100%;
    position: relative;
    width: 100%;
    z-index: 1;
}
.CityHeader-module__nav--3_Mgk {
    left: 0;
    position: absolute;
    z-index: 10;
}
.CityHeader-module__nav--3_Mgk {
    top: 24px;
}
.Grid-module__row--2dOgi {
    width: 1060px;
}
.LocationHeader-module__head--Y7gSB {
    height: 266px;
    padding-top: 88px;
}
.TransparentHeader-module__cover--1Ji6w {
    background-color: rgba(0,0,0,.4);
    height: 100%;
    left: 0;
    position: absolute;
    top: 0;
    width: 100%;
}
.TransparentHeader-module__container--1bMaK {
    background-position: 50%;
    background-repeat: no-repeat;
    background-size: cover;
    width: 100%;
    z-index: 10;
}
.LocationHeader-module__container--26vDy {
    height: 388px;
    margin-bottom: 40px;
    position: relative;
    padding-top: 122px;
    text-align: center;
    width: 100%;
}
.LocationHeader-module__nameKr--1vw84 {
    color: #fff;
    font-size: 54px;
    font-weight: 700;
}
.LocationHeader-module__title--3r_e7 {
    color: #fff;
    line-height: 1;
    text-shadow: 0 3px 8px rgba(0,0,0,.5);
}
.LocationHeader-module__nameEn--1oASj {
    font-family: Hoefler Text,Times New Roman,Times,serif;
    font-size: 24px;
    margin-top: 4px;
}
.CitySelectorOnCity-module__button--2GZmJ {
    background-color: rgba(0,0,0,0);
    border: 0;
    padding: 0;
}
.CitySelectorOnCity-module__cover--uiqT3 .CitySelectorOnCity-module__label--3zb7r {
    color: #fff;
    font-size: 14px;
    margin-right: 2px;
}
.CitySelectorOnCity-module__arrow--1ZRHc {
    height: 16px;
    width: 16px;
    transition: background-color .2s;
}
.DynamicPopup-module__visible--3YOSb {
    visibility: visible;
    opacity: 1;
    -ms-transform: scale(1);
    transform: scale(1);
}
.CityHeader-module__nav--3_Mgk {
    top: 24px;
}
.CityHeader-module__nav--3_Mgk {
    left: 0;
    position: absolute;
    z-index: 10;
}
.CitySelectorOnCity-module__container--174bE {
    display: inline-block;
    position: relative;
}
.CityHeader-module__country--3-oOA {
    color: #fff;
    font-size: 14px;
    font-weight: 700;
    margin-right: 2px;
    vertical-align: middle;
}
.CitySelectorOnCity-module__label--3zb7r {
    font-weight: 700;
    vertical-align: middle;
}

/* section style */
.LocationCategories-module__container--3ysBO {
    margin-bottom: 32px;
}
.Grid-module__container--2YY6K {
    position: relative;
    width: 100%;
}
.Grid-module__row--2dOgi {
    margin: 0 auto;
    position: relative;
}
.LocationCategories-module__header--LCFNs {
    color: #848c94;
    font-size: 18px;
    font-weight: 600;
    margin-bottom: 16px;
}
.LocationCategories-module__categories--1t8SV {
    display: -ms-grid;
    display: grid;
    margin-bottom: 8px;
    -ms-grid-columns: 1fr 20px 1fr 20px 1fr 20px 1fr;
    grid-template-columns: repeat(4,1fr);
    -ms-grid-rows: (auto)[2];
    grid-template-rows: repeat(2,auto);
    grid-column-gap: 20px;
}
.LocationCategoryLink-module__link--2utZ6 {
    background-color: #fff;
    box-shadow: 0 0 1px 0 rgba(0,0,0,.5), 0 1px 4px 0 rgba(0,0,0,.15);
    border-radius: 2px;
    display: inline-block;
    height: 56px;
    margin-bottom: 16px;
    padding: 16px 0 16px 16px;
    transition: background-color .2s ease;
    width: 100%;
}

.LocationVertical-module__container--1cIL3 {
    display: -ms-grid;
    display: grid;
    -ms-grid-columns: 1fr 20px 1fr 20px 1fr 20px 1fr;
    grid-template-columns: repeat(4,1fr);
    -ms-grid-rows: (1fr)[1];
    grid-template-rows: repeat(1,1fr);
    grid-column-gap: 20px;
}
.LocationCategoryLink-module__label--3uyYU {
    color: #343a40;
    font-size: 16px;
    font-weight: 700;
    margin-left: 12px;
    vertical-align: middle;
}
.LocationVertical-module__label--26zWi {
    color: #495056;
    font-size: 16px;
    font-weight: 600;
    margin-left: 12px;
    vertical-align: middle;
}
.LocationVertical-module__vertical--3vO26 {
    background-color: #f5f6f7;
    border-radius: 4px;
    display: inline-block;
    height: 64px;
    margin-bottom: 16px;
    padding: 20px 0;
    text-align: center;
    transition: background-color .2s ease;
    width: 100%;
}

/* content*/
.experience__common__row {
    margin: 0 auto;
    padding-left: 0;
    width: 1060px;
}
.experience__common__row .main-content {
    margin-top: 0;
    position: relative;
}
.CardSwiper-module__container--2Arkv.CardSwiper-module__common--2YDls {
    height: 313px;
    left: -10px;
    position: relative;
    width: 1080px;
}
.Carousel-module__container--2M8cu {
    height: 100%;
    position: relative;
    width: 100%;
}
.swiper-container {
    width: 100%;
}
.swiper-container {
    margin-left: auto;
    margin-right: auto;
    position: relative;
    overflow: hidden;
    z-index: 1;
}
.swiper-container {
    margin: 0 auto;
    list-style: none;
    padding: 0;
}
.CardSwiper-module__container--2Arkv.CardSwiper-module__common--2YDls .swiper-wrapper {
    padding-bottom: 8px;
    padding-top: 2px;
}
.swiper-wrapper {
    -webkit-box-sizing: border-box;
    -moz-box-sizing: border-box;
    box-sizing: border-box;
    overflow: hidden;
}
.CardContainer-module__container--3a07C.CardContainer-module__offer--2g6s1 {
    height: 311px;
}
.CardContainer-module__container--3a07C.swiper-slide {
    left: 10px;
    margin-right: 20px;
}
.OfferVerticalCard-module__thumbnail--FcFPm {
    position: relative;
}
.CardThumbnail-module__container--3rn7n.CardThumbnail-module__vertical--rjnRL {
    height: 166px;
    width: 100%;
}
.CardThumbnail-module__container--3rn7n {
    border-radius: 4px;
    display: inline-block;
    position: relative;
}
.LazyImageLoader-module__container--1M96K {
    width: 100%;
    height: 100%;
    position: relative;
}
.CardThumbnail-module__vertical--rjnRL .CardThumbnail-module__image--20BZV {
    border-top-left-radius: 4px;
    border-top-right-radius: 4px;
}
.CardThumbnail-module__image--20BZV {
    height: 100%;
    width: 100%;
}
.CardThumbnail-module__vertical--rjnRL .CardThumbnail-module__image--20BZV {
    border-top-left-radius: 4px;
    border-top-right-radius: 4px;
}
.DynamicPopup-module__bottom-left--184nU {
    left: -0%;
  }
  .LazyImageLoader-module__image--1Gy7M{
  	opacity: 1!important;
  }
  .starRating .icon {
    background: url("//d2yoing0loi5gh.cloudfront.net/assets/kitty/offer/ic_star_list_set@2x-ec085f511f22c87de2b43c38a897cf854271b927e80d01ca9532daf644fb1506.png") no-repeat;
    background-position: 0 -22px;
    background-size: 12px 33px;
    display: block;
    float: left;
    height: 11px;
    margin: 0 .5px;
    padding: 0;
    width: 12px;
}
.starRating .active {
    background-position: 0 0;
}
.starRating .half {
    background-position: 0 -11px;
}
</style>
<script>
   $(document).ready(	   
         function() {
            $(".LnbLocalNavItem-module__item--3ZodT").removeClass(
                  "LnbLocalNavItem-module__active--3-BID");
            $("#topIcon01").addClass(
                  "LnbLocalNavItem-module__active--3-BID");
            
    		$('option[value='+"${ empty param.order ? 'popular' : param.order }"+']').prop("selected","selected");
    		$('.paging-list a[id='+"${ param.currentPage==null ? 1 : param.currentPage }"+']').addClass("active");
    		
    		$('.hot-deal-category[id=' + "${ param.category==null || empty param.category ? 'all' : param.category }"+']').css("color","#2b96ed");
    		$('.hot-deal-category[id=' + "${ param.category==null || empty param.category ? 'all' : param.category }"+']').css("font-weight","600");
            
         });
</script>
</head>
<body on class='body' data-action='hot_deal' data-controller-path='kitty/offers' data-controller='offers' data-sign-in>
<!-- Google Tag Manager (noscript) -->
<div class='global-alert-box'>
</div>
<jsp:include page="/WEB-INF/layout/top1.jsp"></jsp:include>
<div class='main__header main__header--accommodations'>
<div class='main__header__container'>
<header class="TransparentHeader-module__container--1bMaK LocationHeader-module__container--26vDy" style="background-image: url(&quot;https://d2ur7st6jjikze.cloudfront.net/landscapes/4650_large_1535618926.jpg?1535618926&quot;);">
<div class="TransparentHeader-module__cover--1Ji6w"></div>
<div class="TransparentHeader-module__body--37q3t"><div class="Grid-module__container--2YY6K">
<div class="Grid-module__row--2dOgi LocationHeader-module__head--Y7gSB">
<div class="CityHeader-module__nav--3_Mgk">


<c:if test="${ not empty param.city }">
<a href="<%=request.getContextPath() %>/tourticket.do?nation=${param.nation }">
<span class="CityHeader-module__country--3-oOA">${param.nation }</span></a>
<img class="CityHeader-module__arrow--1GCIp" src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdp
ZHRoPSIxNiIgaGVpZ2h0PSIxNiIgdmlld0JveD0iMCAwIDE2IDE2Ij4KICAgIDxwYXRoIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCIgc3Ryb2tlPSIjQ0
VENERBIiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiIHN0cm9rZS13aWR0aD0iMS4yNSIgZD0iTTUgMi41TDExIDhsLTYgNS
41Ii8+Cjwvc3ZnPgo=" alt="arrow-right">
<div class="CitySelectorOnCity-module__container--174bE CitySelectorOnCity-module__cover--uiqT3">
<button type="button" class="CitySelectorOnCity-module__button--2GZmJ" 
onclick="$('.DynamicPopup-module__container--20ppw').css('visibility', 'visible'); $('.DynamicPopup-module__container--20ppw').css('opacity', '1');">
<span class="CitySelectorOnCity-module__label--3zb7r">${param.city }</span>
<img class="CitySelectorOnCity-module__arrow--1ZRHc" src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC
9zdmciIHdpZHRoPSIxNiIgaGVpZ2h0PSIxNiIgdmlld0JveD0iMCAwIDE2IDE2Ij4KICAgIDxwYXRoIGZpbGw9IiNGRkYiIGZpbGwtcnVsZT0iZXZlbm9kZCIgc3R
yb2tlPSIjRkZGIiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiIGQ9Ik00IDZsNCA0IDQtNHoiLz4KPC9zdmc+Cg==" alt="arrow-down"></button>
<div class="DynamicPopup-module__container--20ppw DynamicPopup-module__bottom-left--184nU">
<ul class="LocationCityList-module__container--1y3N-">
<!--  forEach 돌려야함 -->
<c:forEach items="${ cities }" var="city">
<li class="LocationCityList-module__row--3uuI2">
<a href="<%=request.getContextPath() %>/tourticket.do?nation=${param.nation }&city=${city}" class="LocationCityList-module__link--3TDfO">${city}</a></li>
</c:forEach>
</ul>
</div></div>
</c:if>

</div>
<div class="LocationHeader-module__city--vxNML">
<h1 class="LocationHeader-module__title--3r_e7 LocationHeader-module__nameKr--1vw84">${param.city==null ? param.nation : param.city}</h1>
<h2 class="LocationHeader-module__title--3r_e7 LocationHeader-module__nameEn--1oASj">${param.city==null ? "" : param.nation }</h2>
</div></div></div></div></header>


</div>
</div>
<main class='hot-deal-container'>

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
<br><br>
<section class="LocationCategories-module__container--3ysBO">
<div class="Grid-module__container--2YY6K"><div class="Grid-module__row--2dOgi">
<h2 class="LocationCategories-module__header--LCFNs">${param.city==null ? param.nation : param.city}에서 어떤 상품을 찾으세요?</h2>

<div class="LocationCategories-module__categories--1t8SV">
<c:forEach items="${category }" var="dto">
<a class="LocationCategoryLink-module__link--2utZ6" href="<%=request.getContextPath()%>/tourticketlist.do?nation=${param.nation }&city=${param.city }&category=${dto }">
<img class="LocationCategoryLink-module__icon--uyk3B" src="/myRealTrip/imgages/${dto }.svg" alt="${dto }">
<span class="LocationCategoryLink-module__label--3uyYU">${dto }</span></a>
</c:forEach>
<a class="LocationCategoryLink-module__link--2utZ6" href="<%=request.getContextPath()%>/tourticketlist.do?nation=${param.nation }&city=${param.city }">
<img class="LocationCategoryLink-module__icon--uyk3B" src="/myRealTrip/imgages/전체.svg" alt="전체">
<span class="LocationCategoryLink-module__label--3uyYU">전체</span></a>
</div>

<div class="LocationVertical-module__container--1cIL3"><a href="<%=request.getContextPath() %>/flights.do" class="LocationVertical-module__vertical--3vO26">
<img class="LocationVertical-module__icon--NkI9M" src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIH
dpZHRoPSIyNCIgaGVpZ2h0PSIyNCIgdmlld0JveD0iMCAwIDI0IDI0Ij4KICAgIDxnIGZpbGw9IiNBREI1QkQiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICAgICAgPHBhd
GggZD0iTTIwLjUgOUg1LjUzNUwzLjgzMiA2LjQ0NUExLjAwMSAxLjAwMSAwIDAgMCAzIDZIMWEuOTk4Ljk5OCAwIDAgMC0uOTcgMS4yNDNsMiA4QTEgMSAwIDAgMC
AzIDE2aDguMTMybC0yLjk2NCA0LjQ0NUExIDEgMCAwIDAgOSAyMmg0Yy4zMzQgMCAuNjQ2LS4xNjcuODMyLS40NDVMMTcuNTM1IDE2SDIwLjVjMS45MyAwIDMuN
S0xLjU3IDMuNS0zLjVTMjIuNDMgOSAyMC41IDl6TTEwLjI3MiA3aDYuMzQ1bC0yLjc2NC00LjUyMUEuOTk3Ljk5NyAwIDAgMCAxMyAySDlhMSAxIDAgMCAwLS44NTMg
MS41MjJMMTAuMjcyIDd6Ii8+CiAgICA8L2c+Cjwvc3ZnPgo=" alt="flights">
<span class="LocationVertical-module__label--26zWi">항공권</span></a>
<a href="/accommodations/hotels?number_of_rooms=1&amp;number_of_adults=2&amp;number_of_children=&amp;age_of_children=&amp;checkin=2
019-07-13&amp;checkout=2019-07-14&amp;place[longitude]=7.8632049&amp;place[latitude]=46.6863481&amp;place[city_name]=%EC%9D%B8%ED%
84%B0%EB%9D%BC%EC%BC%84&amp;place[country_code]=CH" class="LocationVertical-module__vertical--3vO26" target="_blank" rel="noopener noreferrer">
<img class="LocationVertical-module__icon--NkI9M" src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmci
IHdpZHRoPSIyNCIgaGVpZ2h0PSIyNCIgdmlld0JveD0iMCAwIDI0IDI0Ij4KICAgIDxnIGZpbGw9IiNBREI1QkQiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICAgIC
AgPHBhdGggZD0iTTIyIDRjMC0uNi0uNC0xLTEtMXMtMSAuNC0xIDF2MWgtN3Y1aDlWNHpNMCAxMnY5YzAgLjYuNCAxIDEgMXMxLS40IDEtMXYtM2gyMHYzYzA
gLjYuNCAxIDEgMXMxLS40IDEtMXYtOUgwek0xMSA1SDRWNGMwLS42LS40LTEtMS0xcy0xIC40LTEgMXY2aDlWNXoiLz4KICAgIDwvZz4KPC9zdmc+Cg==" alt="hotels">
<span class="LocationVertical-module__label--26zWi">호텔</span></a>
<a href="<%=request.getContextPath() %>/myRealTrip/accommodations/lodgings/list.do?country=스위스&city=인터라켄" class="LocationVertical-module__vertical--3vO26">
<img class="LocationVertical-module__icon--NkI9M" src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC
9zdmciIHdpZHRoPSIyNCIgaGVpZ2h0PSIyNCIgdmlld0JveD0iMCAwIDI0IDI0Ij4KICAgIDxwYXRoIGZpbGw9IiNBREI1QkQiIGZpbGwtcnVsZT0ibm9uemVy
byIgZD0iTTEyLjU5NSAxLjIxNmEuOTYxLjk2MSAwIDAgMC0xLjIxMyAwTDUuMjggNi4xODhWMy44NjRIMy4zNjR2My44ODVMLjg0IDkuODA3YS45NTIuOTUyIDA
gMCAwLS4xMjMgMS4zMzMuOTYuOTYgMCAwIDAgMS4zMzcuMTQ0bDEuMzEtMS4wNjd2MTAuODI4YzAgLjUyOC40MjkuOTU1Ljk1OC45NTVIMTB2LTVoNC4wM
DR2NWg1LjY1MWMuNTMgMCAuOTU5LS40MjcuOTU5LS45NTVWMTAuMjE3bDEuMzEgMS4wNjdhLjk2MS45NjEgMCAwIDAgMS41NjQtLjU4Ljk1My45NTMgMCAwIDA
tLjM1MS0uODk3TDEyLjU5NSAxLjIxNnpNMTQgMTRoLTR2LTRoNHY0eiIvPgo8L3N2Zz4K" alt="lodgings">
<span class="LocationVertical-module__label--26zWi">한인민박</span></a>
<a href="<%=request.getContextPath() %>/airtellist.do" class="LocationVertical-module__vertical--3vO26">
<img class="LocationVertical-module__icon--NkI9M" src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHd
pZHRoPSIyNCIgaGVpZ2h0PSIyNCIgdmlld0JveD0iMCAwIDI0IDI0Ij4KICAgIDxnIGZpbGw9IiNBREI1QkQiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICAgICAgPHBh
dGggZD0iTTIwIDI0aDFjLjYgMCAxLS40IDEtMXYtOWMwLS42LS40LTEtMS0xaC0xdjExek00IDIzVjEzSDNjLS42IDAtMSAuNC0xIDF2OWMwIC42LjQgMSAxIDFoMXYt
MXpNNyA3Yy0uNiAwLTEgLjQtMSAxdjE1YzAgLjYuNCAxIDEgMWg0di0yaDJ2Mmg0Yy42IDAgMS0uNCAxLTFWOGMwLS42LS40LTEtMS0xSDd6bTIgMTNoMnYtMkg5d
jJ6bTQgMGgydi0yaC0ydjJ6bS00LTRoMnYtMkg5djJ6bTAtNGgydi0ySDl2MnptNCA0aDJ2LTJoLTJ2MnptMC00aDJ2LTJoLTJ2MnpNMTQuMDE5IDMuMjA1TDExLjY3NC4
2NTVjLS4zODEtLjQxNi0uOTY3LS42NTctMS41ODYtLjY1NUw4LjY1NC4wMDVsMi4xNDQgMy4yMS0yLjkzNS4wMS0uNzczLS44MWExLjE0NiAxLjE0NiAwIDAgMC0uOD
I4LS4zMzNMNSAyLjA4N2wuOTY1IDIuMDE4LjQ1Mi45MzFjLjE0NC4yOTguNDg0LjQ5Mi44NjMuNDkxbDMuMjY1LS4wMTEgMy4yNy0uMDExIDMuMjY2LS4wMTFjLjYx
Mi0uMDA4IDEuMjMyLS41MDcgMS4yMzItMS4xNTQuMDAxLS42NDYtLjYyNS0xLjE1LTEuMjI4LTEuMTQ1bC0zLjA2Ni4wMXoiLz4KICAgIDwvZz4KPC9zdmc+Cg==" alt="hotdeals">
<span class="LocationVertical-module__label--26zWi">에어텔</span></a></div></div></div></section>

<div class="main-common__row" id="newproduct">
<div class="experience__common__row">
<div class="main-content">
<div class="main-content__title-container">
<h3 class="main-content__title">신규 상품</h3>
</div>
</div>
</div>
<div class="experience__common__row experience__common__row-whole">
<div class="main-content">
<div id="OfferCardSwiper-react-component-3f92d5b6-542e-4bbe-8678-ad19b733061e">
<div class="CardSwiper-module__container--2Arkv CardSwiper-module__common--2YDls">
<div class="Carousel-module__container--2M8cu"><div class="swiper-container swiper-container-horizontal">
<div class="swiper-wrapper">

<!--  상품 뿌리는 부분@@@ -->
<c:forEach items="${recentlist }" var="dto" varStatus="i">
<a href="<%=request.getContextPath() %>/tourticketcontent.do?p_code=${dto.p_code}" class="Recentpic CardContainer-module__container--3a07C CardShare-module__container--uuVZJ CardContainer-module__offer--2g6s1 
swiper-slide swiper-slide-active" style="width: 270px;" id="${ i.count }">
<div class="OfferVerticalCard-module__thumbnail--FcFPm">
<div class="CardThumbnail-module__container--3rn7n CardThumbnail-module__vertical--rjnRL">
<div class="LazyImageLoader-module__container--1M96K">
<img style="opacity: 1!important" class="LazyImageLoader-module__image--1Gy7M CardThumbnail-module__image--20BZV" data-src="${dto.p_pic }" src="${dto.p_pic }">
</div></div></div>
<div class="OfferVerticalCard-module__body--1hvx6 CardShare-module__body--2D5-V">
<div class="CardCategory-module__container--3wxYm">${dto.t_category } ・ ${dto.city_code }</div>
<h3 class="CardTitle-module__container--H-vGv CardTitle-module__vertical--1rfZJ">
<div style="overflow: hidden; text-overflow: ellipsis; -webkit-box-orient: vertical; display: -webkit-box; -webkit-line-clamp: 2;">${dto.p_name }</div></h3>
<div class="OfferVerticalCard-module__info--td7Qq">
<div class="OfferVerticalCard-module__review--1teax"><div class="CardRating-module__container--2dIqW">
<c:if test="${dto.cnt eq 0}">
<img alt="review" class="icon" src="https://d2yoing0loi5gh.cloudfront.net/assets/kitty/offer/ic_reviewevent@2x-e0cd14bb5a469b7f06ef7a64136d6565713702aa206716d6c8bbacd00e71ef09.png" width="14">
<div class="text font-blue" style="display: inline-block;">후기 이벤트</div>
</c:if>
<c:if test="${dto.cnt ne 0}">
<div class="starRating starRating--m starRating--blue starRating--">
<c:forEach begin="1" end="${dto.score }"><span class="icon active"></span></c:forEach>
<c:if test="${ 0 < (dto.score % 1) && (dto.score % 1) <= 0.5}"><span class="icon half"></span></c:if>
<c:if test="${ 0.5 < (dto.score % 1) }"><span class="icon active"></span></c:if>
<c:if test="${ 0 eq dto.score % 1 &&  dto.score ne 5 }"><span class="icon"></span></c:if>
<c:forEach begin="${dto.score+1 }" end="4"><span class="icon"></span></c:forEach>
<span class="CardRating-module__review--2T3uT">${dto.cnt }</span>
</div>
</c:if>
</div>
</div>
<div class="CardPriceForVertical-module__container--1oDH7">
<span class="CardPriceForVertical-module__main--2ncFP">${dto.p_price }<span class="CardPriceForVertical-module__unit--MZVBh">원</span></span>
<span class="CardPriceForVertical-module__standard--396M6"> / 1인</span></div></div></div>
<div class="OfferVerticalCard-module__wishlist--OPVd4">
<img src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyNCIgaGVpZ2h0PSIyNCIgdmlld0JveD0iMCAwIDI0ID
I0Ij4KICAgIDxwYXRoIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCIgc3Ryb2tlPSIjRkZGIiBzdHJva2Utd2lkdGg9IjEuNSIgZD0iTTEyLjEwNSAxOS41ODZsNy4wMTItNy4
wMTJhNC41ODMgNC41ODMgMCAxIDAtNi40ODItNi40ODJsLS41My41My0uNTMtLjUzYTQuNTgzIDQuNTgzIDAgMCAwLTYuNDgzIDYuNDgybDcuMDEzIDcuMDEyeiIvPgo8L3N2
Zz4K" alt="wishlist" role="button" tabindex="-1"></div></a>
</c:forEach>
<!--  여기까지@@@ -->
</div>

<span class="swiper-notification" aria-live="assertive" aria-atomic="true"></span></div>
<button type="button" class="Recentpicprev offer-19 Carousel-module__button--1lnZS Carousel-module__prev--3DnR6" tabindex="0" 
role="button" aria-label="Previous slide" aria-disabled="false" style="left: -10px;">
<img src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyNCIgaGVpZ2h0PSIyNCIgdmlld0JveD0iMC
AwIDI0IDI0Ij4KICAgIDxwYXRoIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCIgc3Ryb2tlPSIjNDk1MDU2IiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS
13aWR0aD0iMiIgZD0iTTE0IDZsLTYgNi4wMDNMMTMuOTkzIDE4Ii8+Cjwvc3ZnPgo=" alt="prev"></button>
<button type="button" class="Recentpicnext offer-19 Carousel-module__button--1lnZS Carousel-module__next--LE_L-" tabindex="0" role="button" aria-label="Next slide" 
aria-disabled="false" style="right: -10px;"><img src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPS
IyNCIgaGVpZ2h0PSIyNCIgdmlld0JveD0iMCAwIDI0IDI0Ij4KICAgIDxwYXRoIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCIgc3Ryb2tlPSIjNDk1MDU2IiBzdHJva
2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS13aWR0aD0iMiIgZD0iTTEwIDZsNiA2LjAwM0wxMC4wMDcgMTgiLz4KPC9zdmc+Cg==" alt="next"></button>
</div></div></div>
</div>
</div>
</div>

<div class="main-common__row" id="newproduct">
<div class="experience__common__row">
<div class="main-content">
<div class="main-content__title-container">
<h3 class="main-content__title">추천 상품</h3>
</div>
</div>
</div>
<div class="experience__common__row experience__common__row-whole">
<div class="main-content">
<div id="OfferCardSwiper-react-component-3f92d5b6-542e-4bbe-8678-ad19b733061e">
<div class="CardSwiper-module__container--2Arkv CardSwiper-module__common--2YDls">
<div class="Carousel-module__container--2M8cu"><div class="swiper-container swiper-container-horizontal">
<div class="swiper-wrapper">

<!--  상품 뿌리는 부분@@@ -->
<c:forEach items="${list }" var="dto" varStatus="i">
<a href="<%=request.getContextPath() %>/tourticketcontent.do?p_code=${dto.p_code}" class="tourpic CardContainer-module__container--3a07C CardShare-module__container--uuVZJ CardContainer-module__offer--2g6s1 
swiper-slide swiper-slide-active" style="width: 270px;" id="${i.count }">
<div class="OfferVerticalCard-module__thumbnail--FcFPm">
<div class="CardThumbnail-module__container--3rn7n CardThumbnail-module__vertical--rjnRL">
<div class="LazyImageLoader-module__container--1M96K">
<img style="opacity: 1!important" class="LazyImageLoader-module__image--1Gy7M CardThumbnail-module__image--20BZV" data-src="${dto.p_pic }" src="${dto.p_pic }">
</div></div></div>
<div class="OfferVerticalCard-module__body--1hvx6 CardShare-module__body--2D5-V">
<div class="CardCategory-module__container--3wxYm">${dto.t_category } ・ ${dto.city_code }</div>
<h3 class="CardTitle-module__container--H-vGv CardTitle-module__vertical--1rfZJ">
<div style="overflow: hidden; text-overflow: ellipsis; -webkit-box-orient: vertical; display: -webkit-box; -webkit-line-clamp: 2;">${dto.p_name }</div></h3>
<div class="OfferVerticalCard-module__info--td7Qq">
<div class="OfferVerticalCard-module__review--1teax"><div class="CardRating-module__container--2dIqW">
<c:if test="${dto.cnt eq 0}">
<img alt="review" class="icon" src="https://d2yoing0loi5gh.cloudfront.net/assets/kitty/offer/ic_reviewevent@2x-e0cd14bb5a469b7f06ef7a64136d6565713702aa206716d6c8bbacd00e71ef09.png" width="14">
<div class="text font-blue" style="display: inline-block;">후기 이벤트</div>
</c:if>
<c:if test="${dto.cnt ne 0}">
<div class="starRating starRating--m starRating--blue starRating--">
<c:forEach begin="1" end="${dto.score }"><span class="icon active"></span></c:forEach>
<c:if test="${ 0 < (dto.score % 1) && (dto.score % 1) <= 0.5}"><span class="icon half"></span></c:if>
<c:if test="${ 0.5 < (dto.score % 1) }"><span class="icon active"></span></c:if>
<c:if test="${ 0 eq dto.score % 1 &&  dto.score ne 5 }"><span class="icon"></span></c:if>
<c:forEach begin="${dto.score+1 }" end="4"><span class="icon"></span></c:forEach>
<span class="CardRating-module__review--2T3uT">${dto.cnt }</span>
</div>
</c:if>
</div></div>
<div class="CardPriceForVertical-module__container--1oDH7">
<span class="CardPriceForVertical-module__main--2ncFP">${dto.p_price }<span class="CardPriceForVertical-module__unit--MZVBh">원</span></span>
<span class="CardPriceForVertical-module__standard--396M6"> / 1인</span></div>
</div></div>
<div class="OfferVerticalCard-module__wishlist--OPVd4">
<img src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyNCIgaGVpZ2h0PSIyNCIgdmlld0JveD0iMCAwIDI0ID
I0Ij4KICAgIDxwYXRoIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCIgc3Ryb2tlPSIjRkZGIiBzdHJva2Utd2lkdGg9IjEuNSIgZD0iTTEyLjEwNSAxOS41ODZsNy4wMTItNy4
wMTJhNC41ODMgNC41ODMgMCAxIDAtNi40ODItNi40ODJsLS41My41My0uNTMtLjUzYTQuNTgzIDQuNTgzIDAgMCAwLTYuNDgzIDYuNDgybDcuMDEzIDcuMDEyeiIvPgo8L3N2
Zz4K" alt="wishlist" role="button" tabindex="-1"></div></a>
</c:forEach>
<!--  여기까지@@@ -->

</div>
<span class="swiper-notification" aria-live="assertive" aria-atomic="true"></span></div>
<button type="button" class="picprev offer-19 Carousel-module__button--1lnZS Carousel-module__prev--3DnR6" tabindex="0" 
role="button" aria-label="Previous slide" aria-disabled="false" style="left: -10px;">
<img src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyNCIgaGVpZ2h0PSIyNCIgdmlld0JveD0iMC
AwIDI0IDI0Ij4KICAgIDxwYXRoIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCIgc3Ryb2tlPSIjNDk1MDU2IiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS
13aWR0aD0iMiIgZD0iTTE0IDZsLTYgNi4wMDNMMTMuOTkzIDE4Ii8+Cjwvc3ZnPgo=" alt="prev"></button>
<button type="button" class="picnext offer-19 Carousel-module__button--1lnZS Carousel-module__next--LE_L-" tabindex="0" role="button" aria-label="Next slide" 
aria-disabled="false" style="right: -10px;"><img src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPS
IyNCIgaGVpZ2h0PSIyNCIgdmlld0JveD0iMCAwIDI0IDI0Ij4KICAgIDxwYXRoIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCIgc3Ryb2tlPSIjNDk1MDU2IiBzdHJva
2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS13aWR0aD0iMiIgZD0iTTEwIDZsNiA2LjAwM0wxMC4wMDcgMTgiLz4KPC9zdmc+Cg==" alt="next"></button>
</div></div></div>
</div>
</div>


<!--한인민박 -->
<div class='main-common__row' name='card-tab-container'>
<div class='experience__common__row'>
<div class='main-content'>
<div class='main-content__title-container'>
<h3 class='main-content__title'>한인민박</h3>
<a class='main-content__link-container' id="morebtn" data-gtm-action='한인민박 더 보기' data-gtm-category='숙소_홈' href='#'>
한인민박 더 보기
<img class='link__icon' height='10' src='https://d2yoing0loi5gh.cloudfront.net/assets/kitty/experience/ic-arrow-medium-gray-178443080844877351238a772eeff0683cc75960477cf90cf7129f10a71d73c7.svg' width='7'>
</a>
</div></div></div>

<div class="CardSwiper-module__container--2Arkv CardSwiper-module__common--2YDls">
<div class="Carousel-module__container--2M8cu">
<div class="swiper-container swiper-container-horizontal">
<div class="swiper-wrapper" id="lodgings_ajax_wrapper" style="width: 3240px; transform: translate3d(0px, 0px, 0px);"></div>
<span class="swiper-notification" aria-live="assertive" aria-atomic="true"></span>
</div>
<button type="button" class="Bnbpicprev offer-19 Carousel-module__button--1lnZS Carousel-module__prev--3DnR6" tabindex="0" 
role="button" aria-label="Previous slide" aria-disabled="false" style="left: -10px;">
<img src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyNCIgaGVpZ2h0PSIyNCIgdmlld0JveD0iMC
AwIDI0IDI0Ij4KICAgIDxwYXRoIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCIgc3Ryb2tlPSIjNDk1MDU2IiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS
13aWR0aD0iMiIgZD0iTTE0IDZsLTYgNi4wMDNMMTMuOTkzIDE4Ii8+Cjwvc3ZnPgo=" alt="prev"></button>
<button type="button" class="Bnbpicnext offer-19 Carousel-module__button--1lnZS Carousel-module__next--LE_L-" tabindex="0" role="button" aria-label="Next slide" 
aria-disabled="false" style="right: -10px;"><img src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPS
IyNCIgaGVpZ2h0PSIyNCIgdmlld0JveD0iMCAwIDI0IDI0Ij4KICAgIDxwYXRoIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCIgc3Ryb2tlPSIjNDk1MDU2IiBzdHJva
2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS13aWR0aD0iMiIgZD0iTTEwIDZsNiA2LjAwM0wxMC4wMDcgMTgiLz4KPC9zdmc+Cg==" alt="next"></button>
</div></div></div>
</div></div></div>
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
<script>
   var slideIndex = 1;   
   function showSlides(n, m) {
	   
	   switch (m) {
	case 1:   var slides = $(".Bnbpic");	break;
	case 2:	  var slides = $(".Recentpic"); break;
	case 3:	  var slides = $(".tourpic");     break;
	}
	   
        if (n > slides.length) {slideIndex = 1}
        else if(n==-3) {slideIndex = slides.length-3}
        else if (n < 1) {slideIndex = 1}
        else {	if(n>slides.length-3) { slideIndex =slides.length-3;}
					else {slideIndex=n;}		}
        slides.css("display","none");
        
	for(var i= slideIndex ; i<=slideIndex+3 ; i++){
		switch (m) {
		case 1: 	$(".Bnbpic[id='"+i+"']").css("display","block"); 		break;
		case 2:	$(".Recentpic[id='"+i+"']").css("display","block");		break;
		case 3:	$(".tourpic[id='"+i+"']").css("display","block");   		break;
		}
     	
	}
   
 }
   
$(document).ready(   function() {
   function plusSlides(n,m) {
     showSlides(slideIndex += n,m);
   }

   $(".Bnbpicprev").on("click",function(){
      plusSlides(-4,1); 
   });
   $(".Bnbpicnext").on("click",function(){
      plusSlides(4,1); 
   });
   $(".Recentpicprev").on("click",function(){
      plusSlides(-4,2); 
   });
   $(".Recentpicnext").on("click",function(){
      plusSlides(4,2); 
   });
   $(".picprev").on("click",function(){
      plusSlides(-4,3); 
   });
   $(".picnext").on("click",function(){
      plusSlides(4,3); 
   });
 });
</script>
<script>

	$(document).ready(function (){
 
	var city = "<%=request.getParameter("city")%>";
	
	$.ajax({
		url: "<%=request.getContextPath()%>/lodgings.do"
		,dataType:"json"
		,type:"get"
		,data: {
			city:city 
		}
		,cache:false // 항상 새로 읽어오겠다.
		,success:function(data){
			 $("#lodgings_ajax_wrapper").empty();
							var num = 0;
			 
			 $(data).each(
						function( index, e ) {
							
							num += 1;
							var p_code = e.p_code;
							var p_pic = e.p_pic;
							var c_name = e.c_name;
							var n_name = e.n_name;
							var p_name = e.p_name;
							var p_price = e.p_price;
							var count = e.count;
							var grade = e.grade;
							
							var active = $("<span />").addClass("icon active");
							var half = $("<span />").addClass("icon half");
						    var icon = $("<span />").addClass("icon");

							
							 	var a = $("<a />").addClass("Bnbpic CardContainer-module__container--3a07C CardShare-module__container--uuVZJ CardContainer-module__offer--2g6s1 swiper-slide");
									 var div3 = $("<div />").addClass("OfferVerticalCard-module__thumbnail--FcFPm");
							 			var div4 = $("<div />").addClass("CardThumbnail-module__container--3rn7n CardThumbnail-module__vertical--rjnRL");
							 				var div5 = $("<div />").addClass("LazyImageLoader-module__container--1M96K")//IMG, 최저가 보장제
							 					var img = $("<img />").attr("src","#").addClass("LazyImageLoader-module__image--1Gy7M MRT-LazyImageLoader__indicator CardThumbnail-module__image--20BZV CardThumbnail");
									 var div6 = $("<div />").addClass("OfferVerticalCard-module__body--1hvx6 CardShare-module__body--2D5-V");
										 var div7 = $("<div />").addClass("CardCategory-module__container--3wxYm");
										 var h3 = $("<h3 />").addClass("CardTitle-module__container--H-vGv CardTitle-module__vertical--1rfZJ");
											 var div8 = $("<div />");//스타일
									 var wish =$("<div />").addClass("OfferVerticalCard-module__wishlist--OPVd4"); 
				                     var heart= $("<img />").attr("src","data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyNCIgaGVpZ2h0PSIyNCIgdmlld0JveD0iMCAwIDI0IDI0Ij4KICAgIDxwYXRoIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCIgc3Ryb2tlPSIjRkZGIiBzdHJva2Utd2lkdGg9IjEuNSIgZD0iTTEyLjEwNSAxOS41ODZsNy4wMTItNy4wMTJhNC41ODMgNC41ODMgMCAxIDAtNi40ODItNi40ODJsLS41My41My0uNTMtLjUzYTQuNTgzIDQuNTgzIDAgMCAwLTYuNDgzIDYuNDgybDcuMDEzIDcuMDEyeiIvPgo8L3N2Zz4K");
				    
										 	
							 			var div9 = $("<div />").addClass("OfferVerticalCard-module__info--td7Qq");
							 				var div10 = $("<div />").addClass("OfferVerticalCard-module__review--1teax");	
							 					var div11 = $("<div />").addClass("CardRating-module__container--2dIqW");	
								 					var div12 = $("<div />").addClass("starRating starRating--m starRating--blue starRating--");	
								 					var span = $("<span/>").addClass("CardRating-module__review--2T3uT");
							 				var div13 = $("<div />").addClass("CardPriceForVertical-module__container--1oDH7");	
								 				var span2 = $("<span/>").addClass("CardPriceForVertical-module__main--2ncFP");
								 					var span3 = $("<span/>").addClass("CardPriceForVertical-module__unit--MZVBh");								 					
								 				var span4 = $("<span/>").addClass("CardPriceForVertical-module__standard--396M6");								 					

							
							a.append(div3, div6, wish, div9);
							a.attr("href","<%= request.getContextPath()%>/myRealTrip/accommodations/lodgings/content.do?p_code="+p_code);
							div3.append(div4);
							div4.append(div5);
							div5.append(img);
							div6.append(div7);
							div6.append(h3);
							h3.append(div8);
							wish.append(heart);
							div9.append(div10, div13);
							div10.append(div11);
							div11.append(div12, span);
							
							for (var i = 1; i <= grade; i++) {
								active.clone().appendTo(div12);
							}
							if(0<(grade%1) && (grade%1)<=0.5){
								half.clone().appendTo(div12);
							}else if(0.5<(grade%1)){
								active.clone().appendTo(div12);
							}else if(0==(grade%1)&&grade!=5){
								icon.clone().appendTo(div12);								
							}
							for (var i = grade+1; i <= 5; i++) {
								icon.clone().appendTo(div12);
							}
							
							div13.append(span2, span4);
							span2.append(span3);

							img.attr("src",p_pic);
							div7.text("한인민박 ・ "+c_name);
							div8.text(p_name);
							span.text(count);
							span2.text(p_price);
							span3.text("원");
							span4.text(" / 1박");
							
							a.attr("id",num);
						 	$("#lodgings_ajax_wrapper").append(a); 
						 	$("#morebtn").attr("href","<%= request.getContextPath()%>/myRealTrip/accommodations/lodgings/list.do?country="+n_name+"&city="+c_name);
						 	
				}); // each
			
		}
		,error:function(){
	       	alert("에러~~~~")
	       } 
	})

})
</script>
<script>
	$(".DynamicPopup-module__container--20ppw").css("transform", "scale(1)");
</script>
</body>
</html>
