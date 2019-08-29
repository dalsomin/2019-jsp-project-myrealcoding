<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="csrf-param" content="authenticity_token" />
<meta name="csrf-token" content="jT0Kl6CpDJa0ggReOxiIIwBYBjvI5SHJAb1yOblVG9s2bNAi3zPDJyrNAXhrCqrlLxVyPq5ncN6LewVJlcU9sg==" />
<meta content='113823448739791' property='fb:app_id'>
<meta content='122600525' property='fb:admins'>
<meta content='마이리얼트립' property='og:site_name'>
<meta content='https://www.myrealtrip.com/accommodations/lodgings' property='og:url'>
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
<link rel="stylesheet" media="screen" href="https://d2yoing0loi5gh.cloudfront.net/webpack/0.51b5991811c479a8a7cd.css" />
<link rel="stylesheet" media="all" href="https://d2yoing0loi5gh.cloudfront.net/assets/kitty/application_template-5da62e3a802820a73815ac9769d004d04db514aa47276f57320c206cc043d2ac.css" />
<link rel="stylesheet" media="all" href="https://d2yoing0loi5gh.cloudfront.net/assets/kitty/application-f64e7c8c130c9339719ca1d38262813d576b752bb3a46eede48c7b2aa87efc8b.css" /> 
<link rel="stylesheet" media="screen" href="https://d2yoing0loi5gh.cloudfront.net/webpack/application.51b5991811c479a8a7cd.css" />
<script src="https://d2yoing0loi5gh.cloudfront.net/webpack/vendor.51b5991811c479a8a7cd.js"></script>
<script src="https://d2yoing0loi5gh.cloudfront.net/webpack/application.51b5991811c479a8a7cd.js"></script>
<!--[if lte ie 9]>
<link rel="stylesheet" media="all" href="https://d2yoing0loi5gh.cloudfront.net/assets/kitty/ie-03f2550f99664f41f36c69b1e87ad5ab86b0a89362bfefe3c4ec453c29634926.css" />
<![endif]-->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
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

<script type="text/javascript">

  +function(a,p,P,b,y){appboy={};appboyQueue=[];for(var s="initialize destroy getDeviceId toggleAppboyLogging setLogger openSession changeUser requestImmediateDataFlush requestFeedRefresh subscribeToFeedUpdates requestContentCardsRefresh subscribeToContentCardsUpdates logCardImpressions logCardClick logCardDismissal logFeedDisplayed logContentCardsDisplayed logInAppMessageImpression logInAppMessageClick logInAppMessageButtonClick logInAppMessageHtmlClick subscribeToNewInAppMessages removeSubscription removeAllSubscriptions logCustomEvent logPurchase isPushSupported isPushBlocked isPushGranted isPushPermissionGranted registerAppboyPushMessages unregisterAppboyPushMessages submitFeedback trackLocation stopWebTracking resumeWebTracking wipeData ab ab.DeviceProperties ab.User ab.User.Genders ab.User.NotificationSubscriptionTypes ab.User.prototype.getUserId ab.User.prototype.setFirstName ab.User.prototype.setLastName ab.User.prototype.setEmail ab.User.prototype.setGender ab.User.prototype.setDateOfBirth ab.User.prototype.setCountry ab.User.prototype.setHomeCity ab.User.prototype.setLanguage ab.User.prototype.setEmailNotificationSubscriptionType ab.User.prototype.setPushNotificationSubscriptionType ab.User.prototype.setPhoneNumber ab.User.prototype.setAvatarImageUrl ab.User.prototype.setLastKnownLocation ab.User.prototype.setUserAttribute ab.User.prototype.setCustomUserAttribute ab.User.prototype.addToCustomAttributeArray ab.User.prototype.removeFromCustomAttributeArray ab.User.prototype.incrementCustomUserAttribute ab.User.prototype.addAlias ab.User.prototype.setCustomLocationAttribute ab.InAppMessage ab.InAppMessage.SlideFrom ab.InAppMessage.ClickAction ab.InAppMessage.DismissType ab.InAppMessage.OpenTarget ab.InAppMessage.ImageStyle ab.InAppMessage.TextAlignment ab.InAppMessage.Orientation ab.InAppMessage.CropType ab.InAppMessage.prototype.subscribeToClickedEvent ab.InAppMessage.prototype.subscribeToDismissedEvent ab.InAppMessage.prototype.removeSubscription ab.InAppMessage.prototype.removeAllSubscriptions ab.InAppMessage.Button ab.InAppMessage.Button.prototype.subscribeToClickedEvent ab.InAppMessage.Button.prototype.removeSubscription ab.InAppMessage.Button.prototype.removeAllSubscriptions ab.SlideUpMessage ab.ModalMessage ab.FullScreenMessage ab.HtmlMessage ab.ControlMessage ab.Feed ab.Feed.prototype.getUnreadCardCount ab.ContentCards ab.ContentCards.prototype.getUnviewedCardCount ab.Card ab.ClassicCard ab.CaptionedImage ab.Banner ab.ControlCard ab.WindowUtils display display.automaticallyShowNewInAppMessages display.showInAppMessage display.showFeed display.destroyFeed display.toggleFeed display.showContentCards display.hideContentCards display.toggleContentCards sharedLib".split(" "),i=0;i<s.length;i++){for(var m=s[i],k=appboy,l=m.split("."),j=0;j<l.length-1;j++)k=k[l[j]];k[l[j]]=(new Function("return function "+m.replace(/\./g,"_")+"(){appboyQueue.push(arguments); return true}"))()}appboy.getUser=function(){return new appboy.ab.User};appboy.getCachedFeed=function(){return new appboy.ab.Feed};appboy.getCachedContentCards=function(){return new appboy.ab.ContentCards};(y=p.createElement(P)).type='text/javascript';y.src='https://js.appboycdn.com/web-sdk/2.2/appboy.min.js';y.async=1;(b=p.getElementsByTagName(P)[0]).parentNode.insertBefore(y,b)}(window,document,'script');
  appboy.initialize('87176a41-8b09-4adb-bec0-d4ccc6ce8bfb',{baseUrl: 'https://customer.iad-03.braze.com/api/v3'});
  appboy.initialize('87176a41-8b09-4adb-bec0-d4ccc6ce8bfb', {baseUrl: 'https://customer.fra-01.braze.eu/api/v3'})
  appboy.display.automaticallyShowNewInAppMessages();

  /*
   * If you have a unique identifier for this user (e.g. they are logged into your site) it's a good idea to call
   * changeUser here.
   * See https://js.appboycdn.com/web-sdk/latest/doc/module-appboy.html#.changeUser for more information.
   */
  window.appboy = appboy;
  appboy.openSession();

  // braze signup check
</script>

<script>
  window.App = App || {};
</script>
</head>
<body class='body' data-action='index' data-controller-path='kitty/accommodations/lodgings/main' data-controller='main'>
<!-- Google Tag Manager (noscript) -->
<noscript><iframe src="//www.googletagmanager.com/ns.html?id=GTM-NCVRS4"
height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
<!-- End Google Tag Manager (noscript) -->

<div class='global-alert-box'>
</div>

<div id='mrt-header'></div>
<script type="application/json" id="js-react-on-rails-context">{"railsEnv":"production","inMailer":false,"i18nLocale":"ko","i18nDefaultLocale":"ko","rorVersion":"11.0.9","rorPro":false,"href":"https://www.myrealtrip.com/accommodations/lodgings","location":"/accommodations/lodgings","scheme":"https","host":"www.myrealtrip.com","port":null,"pathname":"/accommodations/lodgings","search":null,"httpAcceptLanguage":"ko-KR,ko;q=0.9,en-US;q=0.8,en;q=0.7","serverSide":false}</script>
<jsp:include page="/WEB-INF/layout/top2.jsp"></jsp:include>
	<script type="application/json" class="js-react-on-rails-component" data-component-name="Header" data-dom-id="Header-react-component-b1e7e2d7-3055-46d6-bdff-6f8fec7b3b06">{"user":null,"transparent":false,"isRoma":false,"popularCities":[{"rank_name":"basis_rank","pure_rank":1,"city_id":19,"location_name":"오사카","city_key_name":"Osaka","country_key_name":"Japan","total_count":297,"confirm_count":287,"cancel_count":10,"reference_rank":1,"weighted_rank":0.003424657534246575,"ranking":1},{"rank_name":"basis_rank","pure_rank":4,"city_id":59,"location_name":"싱가포르","city_key_name":"Singapore","country_key_name":"Singapore","total_count":48,"confirm_count":48,"cancel_count":0,"reference_rank":8,"weighted_rank":0.010416666666666666,"ranking":2},{"rank_name":"basis_rank","pure_rank":2,"city_id":13,"location_name":"파리","city_key_name":"Paris","country_key_name":"France","total_count":119,"confirm_count":102,"cancel_count":17,"reference_rank":2,"weighted_rank":0.01809954751131222,"ranking":3},{"rank_name":"basis_rank","pure_rank":3,"city_id":9,"location_name":"도쿄","city_key_name":"Tokyo","country_key_name":"Japan","total_count":76,"confirm_count":74,"cancel_count":2,"reference_rank":3,"weighted_rank":0.04,"ranking":4},{"rank_name":"basis_rank","pure_rank":18,"city_id":23,"location_name":"방콕","city_key_name":"Bangkok","country_key_name":"Thailand","total_count":11,"confirm_count":11,"cancel_count":0,"reference_rank":31,"weighted_rank":0.06293706293706294,"ranking":5},{"rank_name":"basis_rank","pure_rank":5,"city_id":32,"location_name":"로마","city_key_name":"Roma","country_key_name":"Italy","total_count":47,"confirm_count":34,"cancel_count":13,"reference_rank":4,"weighted_rank":0.12345679012345678,"ranking":6},{"rank_name":"basis_rank","pure_rank":6,"city_id":55,"location_name":"바르셀로나","city_key_name":"Barcelona","country_key_name":"Spain","total_count":46,"confirm_count":39,"cancel_count":7,"reference_rank":5,"weighted_rank":0.1411764705882353,"ranking":7},{"rank_name":"basis_rank","pure_rank":7,"city_id":40,"location_name":"홍콩","city_key_name":"Hong Kong","country_key_name":"Hong Kong","total_count":44,"confirm_count":44,"cancel_count":0,"reference_rank":7,"weighted_rank":0.1590909090909091,"ranking":8},{"rank_name":"basis_rank","pure_rank":8,"city_id":7,"location_name":"런던","city_key_name":"London","country_key_name":"United Kingdom","total_count":42,"confirm_count":37,"cancel_count":5,"reference_rank":6,"weighted_rank":0.20253164556962025,"ranking":9},{"rank_name":"basis_rank","pure_rank":9,"city_id":295,"location_name":"교토","city_key_name":"Kyoto","country_key_name":"Japan","total_count":38,"confirm_count":35,"cancel_count":3,"reference_rank":9,"weighted_rank":0.2465753424657534,"ranking":10},{"rank_name":"basis_rank","pure_rank":19,"city_id":158,"location_name":"오키나와","city_key_name":"okinawa","country_key_name":"Japan","total_count":10,"confirm_count":9,"cancel_count":1,"reference_rank":23,"weighted_rank":0.25,"ranking":11},{"rank_name":"basis_rank","pure_rank":24,"city_id":309,"location_name":"리스본","city_key_name":"lisbon","country_key_name":"Portugal","total_count":9,"confirm_count":7,"cancel_count":2,"reference_rank":30,"weighted_rank":0.25,"ranking":12},{"rank_name":"basis_rank","pure_rank":28,"city_id":57,"location_name":"보라카이","city_key_name":"Boracay","country_key_name":"Philippines","total_count":8,"confirm_count":7,"cancel_count":1,"reference_rank":34,"weighted_rank":0.3111111111111111,"ranking":13},{"rank_name":"basis_rank","pure_rank":10,"city_id":120,"location_name":"삿포로","city_key_name":"Sapporo","country_key_name":"Japan","total_count":29,"confirm_count":27,"cancel_count":2,"reference_rank":10,"weighted_rank":0.3571428571428571,"ranking":14},{"rank_name":"basis_rank","pure_rank":39,"city_id":50,"location_name":"제주도","city_key_name":"Jeju","country_key_name":"Korea, Republic of","total_count":5,"confirm_count":4,"cancel_count":1,"reference_rank":48,"weighted_rank":0.4814814814814814,"ranking":15}],"b2b":{"status":false,"logo":null}}</script>

<main class='hot-deal-container'>
<div class='hot-deal-header-container'>
<a class='header-title' href='<%=request.getContextPath() %>/myRealTrip/accommodations/lodgings/list.do'>한인민박</a>
<div class='header-subtitle-container'>
<div class='link-container'>
<a class='header-subtitle' href='<%=request.getContextPath() %>/hotel.do'>숙소 홈</a>
<img class='next-item' src='https://d2yoing0loi5gh.cloudfront.net/assets/kitty/button/ic-rightarrow-xsmall-lightgray-65d5bdb56e50a27c18d224ecd8b568f5ecdb460418ecd13a38f015acb7aaef8f.svg' width='16'>
<a class='header-subtitle' href='<%=request.getContextPath() %>/myRealTrip/accommodations/lodgings/list.do'>한인민박</a>
<c:if test="${not empty param.country }">
<img class='next-item' src='https://d2yoing0loi5gh.cloudfront.net/assets/kitty/button/ic-rightarrow-xsmall-lightgray-65d5bdb56e50a27c18d224ecd8b568f5ecdb460418ecd13a38f015acb7aaef8f.svg' width='16'>
<a class='header-subtitle' href='<%=request.getContextPath() %>/myRealTrip/accommodations/lodgings/list.do?country=${param.country}'>${param.country }</a>
</c:if>
<c:if test="${not empty param.city }">
<img class='next-item' src='https://d2yoing0loi5gh.cloudfront.net/assets/kitty/button/ic-rightarrow-xsmall-lightgray-65d5bdb56e50a27c18d224ecd8b568f5ecdb460418ecd13a38f015acb7aaef8f.svg' width='16'>
<a class='header-subtitle' href='<%=request.getContextPath() %>/myRealTrip/accommodations/lodgings/list.do?country=${param.country }&city=${param.city}'>${param.city }</a>
</c:if>
</div>
<a class='dropdown-btn' id='areasDropdownOpen'>
지역 선택
<img class='dropdown-img' height='16' src='https://d2yoing0loi5gh.cloudfront.net/assets/kitty/button/ic-rightarrow-small-gray-300-a90117c530d901fb4b3a7be42dd7bb56f6d66eca29daf6839ba26ca8a742c45f.svg' width='16'>
</a>
<div class='header__locations-dropdown header-dropdown' id='areasDropdown'>
<div class='header-dropdown-container hide-on-mobile'>
<div class='header-dropdown-header'>
<div class='title'>방문할 도시 또는 나라를 선택하세요.</div>
<img class='areas-dropdown-close' data-box-close src='https://d2yoing0loi5gh.cloudfront.net/assets/kitty/accommodations/ic-close-darkgray-b2a78c549cbd189ea0a1f61b85d446e089438104a7d20125fe83a149254a1e2d.svg' width='24'>
</div>
<div class='header-dropdown-wrapper'>
<c:forEach items="${ map }" var="entry">
<div class='header-dropdown-item'>
<a class='top-item' href='<%=request.getContextPath() %>/myRealTrip/accommodations/lodgings/list.do?country=${ entry.key }'>${ entry.key }</a>
<c:forEach items="${ entry.value }" var="value">
<a class='sub-item' href='<%=request.getContextPath() %>/myRealTrip/accommodations/lodgings/list.do?country=${ entry.key }&city=${ value }' id="${ value }" >${ value }</a>
</c:forEach>
</div>
</c:forEach>
</div>
</div>

<div class='mobile-list-area show-on-mobile'>
<div class='mobile-list-heading'>
<img class='areas-dropdown-close' data-box-close src='https://d2yoing0loi5gh.cloudfront.net/assets/kitty/accommodations/ic-close-darkgray-b2a78c549cbd189ea0a1f61b85d446e089438104a7d20125fe83a149254a1e2d.svg' width='24'>
지역 선택
</div>
<div class='mobile-list-body'>
<c:forEach items="${ map }" var="entry">
<div class='list-item'>
<a class='subtitle' href='<%=request.getContextPath() %>/myRealTrip/accommodations/lodgings/list.do?country=${ entry.key }'>${ entry.key }</a>
<ul class='list'>
<c:forEach items="${ entry.value }" var="value">
<li class='country-item'>
<a class='country-link'  href='<%=request.getContextPath() %>/myRealTrip/accommodations/lodgings/list.do?country=${ entry.key }&city=${ value }' id="${ value }" >${ value }</a>
</li>
</c:forEach>
</ul>
</div>
</c:forEach>
</div>
</div>
</div>


</div>
</div>
</div>




<!-- content -->
<div class='hot-deal-content'>
<div class='hot-deal-select'>
<div class='select-wrapper'>${ order eq null? "인기순": order }
<img class='arrow-img' src='https://d2yoing0loi5gh.cloudfront.net/assets/kitty/offer/hot_deal/ic_lightgrey_dropdown@2x-5d85be4b94fdd7ebefca9950a4978066c0a5fdf4dd923b0d9da6630b7316a162.png' width='8px'>
</div>
<div class='select-list'>
<a class='select-item' data-gtm-action='필터 선택' data-gtm-category='한인민박_홈' data-gtm-label='인기순' data-order='popular'>인기순</a>
<a class='select-item' data-gtm-action='필터 선택' data-gtm-category='한인민박_홈' data-gtm-label='후기순' data-order='reviews' >후기순</a>
<a class='select-item' data-gtm-action='필터 선택' data-gtm-category='한인민박_홈' data-gtm-label='가격순' data-order='price' >가격순</a>
<a class='select-item' data-gtm-action='필터 선택' data-gtm-category='한인민박_홈' data-gtm-label='신상품순' data-order='recent' >신상품순</a>
</div>
</div>

<!-- 민박 카드 리스트 -->
<div class='card-hot-deal card-type offer-container padding-top-without-filter'>
<ul class='item-container offer-item-container'>
<c:forEach items="${view.lodgingsList }" var="dto">
<li class='item card-type-a' data-gtm-action='상품 리스트' data-gtm-category='한인민박_홈'  data-offer-id='${dto.p_code }' data-offer-type='Lodging'>
<a class="wish" data-offer-id="${dto.p_code }" data-remote="true" rel="nofollow" data-method="put" href="/wishlists/${dto.p_code }.js"><div class='icon'></div>
</a>
<div class='card-cover'>
<!-- 얘를 클릭할 때... 상세로 -->
<a class='offer-link' href="content.do?p_code=${dto.p_code }" >
	<div class='img-container'>
	<div class='img-placeholder'>
	<img class='MRT-LazyImageLoader__indicator--kitty' data-src='${dto.p_pic }'/>
	</div>
	</div>
<div class='content-box'>
<div class='city-name'>한인민박 • ${ dto.c_name}</div>
<div class='name'>${dto.p_name}</div>
<div class='inner-container'>
<div class='review'>
<c:if test="${dto.count eq 0 }">
	<img alt="review" class="icon" src="https://d2yoing0loi5gh.cloudfront.net/assets/kitty/offer/ic_reviewevent@2x-e0cd14bb5a469b7f06ef7a64136d6565713702aa206716d6c8bbacd00e71ef09.png" width="14" />
	<div class="text font-blue">후기 이벤트</div>
</c:if>
<c:if test="${dto.count ne 0 }">
	<div class="rating-box" id="${ dto.p_code}">
		<span class="icon"></span>
		<span class="icon"></span>
		<span class="icon"></span>
		<span class="icon"></span>
		<span class="icon"></span>
	</div>
	<div class='text'>후기 ${dto.count }개</div>
</c:if>
</div>
<div class='price' data-offer-price='${dto.p_price}원' itemprop='offers' itemscope='true' itemtype='http://schema.org/Offer'>
<span>${dto.p_price}원</span>
<span class='unit'>/ 1박</span>
</div>
</div><!--  inner - container-->
</div><!-- content-box -->
</a>
</div><!-- card-cover -->

</li>
<script>
/* 별표시 */
$(document).ready(function (){
	
	var n= Math.floor(${dto.grade});	
	for (var i = 1; i <= n; i++) {
		$('#${ dto.p_code} .icon:nth-child('+i+')').addClass('active');		
	}

	var x = n+1;
	var r = (${dto.grade}*10-n*10)/10;
	
	if(0<r  && r<=0.5){
		$('#${ dto.p_code} .icon:nth-child('+x+')').addClass('half');
	}else if(0.5<r && r<=1){
		$('#${ dto.p_code} .icon:nth-child('+x+')').addClass('active');						
	}

});
</script>
</c:forEach>
</ul>
</div><!-- card-hot-deal card-type offer-container padding-top-without-filter -->


<!-- 페이징 처리  -->
<c:if test="${view.pageBlockEnd ne 1 }">
<div class='paging-list'>
<a class='first' href="list.do?country=${param.country }&city=${param.city }&page=1&order=${param.order}" ><span>처음</span></a>
<a class='prev' href="list.do?country=${param.country }&city=${param.city }&page=${param.page-1 }&order=${param.order eq null? 'popular': param.order}"><span>이전</span></a>
<c:forEach var="pageNum" begin="${view.pageBlockStart }" end="${view.pageBlockEnd }" >
<a name="page" class="page" id="${pageNum }" href="list.do?country=${param.country }&city=${param.city }&page=${pageNum }&order=${param.order eq null? 'popular': param.order}">${pageNum }</a>
</c:forEach>  
<a rel="next" class="next" href="list.do?country=${param.country }&city=${param.city }&page=${param.page eq null ? 2 : param.page+1 }&order=${param.order eq null? 'popular': param.order}"><span>다음</span></a>
<a rel="last" class="last" href="list.do?country=${param.country }&city=${param.city }&page=${view.pageTotalCount}&order=${param.order eq null? 'popular': param.order}"><span>마지막</span></a>
</div>
</c:if>
</div><!-- hot-deal-content -->
</main>

<jsp:include page="/WEB-INF/layout/bottom.jsp"></jsp:include>
      <script type="application/json" class="js-react-on-rails-component" data-component-name="Footer" data-dom-id="Footer-react-component-9bbe7f50-4495-4d0a-b83a-f801f9f52c8f">{"b2b":{"status":false,"b2bCompany":null}}</script>
<div id='popup-mask'></div>
<div id='gnb-popup-mask'></div>

<script>
<!-- 정렬 방식  -->
$(document).ready(function (){
	$(".hot-deal-select a.select-item[data-order="+'${param.order ==null? 'popular' : param.order }'+"]").addClass("active");
});
</script>

<!-- 페이징처리 추가 스크립트 -->
<script>
$(document).ready(function (){
	// 이전, 다음페이지 처리
    if(${param.page==null?1:param.page}==1){
        $('.paging-list a.first, a.prev').addClass('inactive');
        $('.paging-list a.first, a.prev').prop("href","javascript:void(0)");
     }else{
        $('.paging-list a.first, a.prev').addClass('active');
     }
     if(${param.page==null?1:param.page}==${view.pageTotalCount}){
        $('.paging-list a.next, a.last').addClass('inactive');
        $('.paging-list a.next, a.last').prop("href","javascript:void(0)");
     }else{
        $('.paging-list a.next, a.last').addClass('active');
     }
	//현재 페이지 스타일 적용
	$('.paging-list a[id='+"${ param.page==null ? 1 : param.page }"+']').addClass("active");
	
});
</script>


<!-- ------------------------------------------------------------ -->
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

    var user = '0'


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
