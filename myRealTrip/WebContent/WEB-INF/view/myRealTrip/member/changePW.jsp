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
<meta name="csrf-token" content="m+jO/k55y+cGy3XQK3pZT0uzwrD9zYRw40wJMJxaRItfK7Qqu++0modvMO0BBoucDXPZFSl3t82pBvQWFx531g==" />
<meta content='113823448739791' property='fb:app_id'>
<meta content='122600525' property='fb:admins'>
<meta content='마이리얼트립' property='og:site_name'>
<meta content='https://www.myrealtrip.com/traveler/password' property='og:url'>
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
<link rel="stylesheet" media="screen" href="https://d2yoing0loi5gh.cloudfront.net/webpack/0.705efe1a596dd5bb9dcf.css" />
<link rel="stylesheet" media="all" href="https://d2yoing0loi5gh.cloudfront.net/assets/kitty/application_template-5da62e3a802820a73815ac9769d004d04db514aa47276f57320c206cc043d2ac.css" />
<link rel="stylesheet" media="all" href="https://d2yoing0loi5gh.cloudfront.net/assets/kitty/application-528570dd3e09ef23a61d6632bb99ce541f5d7126b025ea8a59f3e9a53c394359.css" />
<link rel="stylesheet" media="screen" href="https://d2yoing0loi5gh.cloudfront.net/webpack/application.705efe1a596dd5bb9dcf.css" />
<script src="https://d2yoing0loi5gh.cloudfront.net/webpack/vendor.705efe1a596dd5bb9dcf.js"></script>
<script src="https://d2yoing0loi5gh.cloudfront.net/webpack/application.705efe1a596dd5bb9dcf.js"></script>
<!--[if lte ie 9]>
<link rel="stylesheet" media="all" href="https://d2yoing0loi5gh.cloudfront.net/assets/kitty/ie-38ffa6f3950101ed0e99d3d8451c9d0bb67f52e1d24ac4c79adebdadbebbfbe0.css" />
<![endif]-->
<script src="https://d2yoing0loi5gh.cloudfront.net/assets/kitty/application-f9d7753af7989e0505182d2b2167bdb5e840b7c2ee01d9fe1bd4c7db73e48ddf.js"></script>
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

    appboy.changeUser(1984171);

  // braze signup check
</script>

<!-- 상단 선언 스크립트 : 모든페이지 공통 상단 필수 -->
<!-- PlayD TERA Log Definition Script Start -->
<script>
window['_LA']=window['_LA']||function(){
   (window['_LA'].q=window['_LA'].q||[]).push(arguments)
}
</script>

<script>
  window.App = App || {};
  var WISH_IDS = [56399]
</script>
</head>
<body class='body' data-action='edit_password' data-controller-path='kitty/traveler/account' data-controller='account' data-sign-in>
<!-- Google Tag Manager (noscript) -->
<noscript><iframe src="//www.googletagmanager.com/ns.html?id=GTM-NCVRS4"
height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
<!-- End Google Tag Manager (noscript) -->

<div class='global-alert-box'>
</div>

<div id='mrt-header'></div>
<script type="application/json" id="js-react-on-rails-context">{"railsEnv":"production","inMailer":false,"i18nLocale":"ko","i18nDefaultLocale":"ko","rorVersion":"11.0.9","rorPro":false,"href":"https://www.myrealtrip.com/traveler/password","location":"/traveler/password","scheme":"https","host":"www.myrealtrip.com","port":null,"pathname":"/traveler/password","search":null,"httpAcceptLanguage":"ko-KR,ko;q=0.9,en-US;q=0.8,en;q=0.7","serverSide":false}</script>


      <script type="application/json" class="js-react-on-rails-component" data-component-name="Header" data-dom-id="Header-react-component-406b70d5-5c3d-45e5-8df6-759d0c0c8a52">{"user":{"id":1984171,"username":"이지은","email":"skyblue8857@hanmail.net","point":"0원","numberOfCoupons":"1장","profile_image":{"urls":{"original":"//d2yoing0loi5gh.cloudfront.net/assets/default/user_profile_image-414acc60b27f0a258bec14c82b70dc361fc6768da9289f924f887bec1fc33849.png","large":"//d2yoing0loi5gh.cloudfront.net/assets/default/user_profile_image-414acc60b27f0a258bec14c82b70dc361fc6768da9289f924f887bec1fc33849.png","medium":"//d2yoing0loi5gh.cloudfront.net/assets/default/user_profile_image-414acc60b27f0a258bec14c82b70dc361fc6768da9289f924f887bec1fc33849.png","small":"//d2yoing0loi5gh.cloudfront.net/assets/default/user_profile_image-414acc60b27f0a258bec14c82b70dc361fc6768da9289f924f887bec1fc33849.png","thumb":"//d2yoing0loi5gh.cloudfront.net/assets/default/user_profile_image-414acc60b27f0a258bec14c82b70dc361fc6768da9289f924f887bec1fc33849.png"}},"guideId":null,"isAffiliation":null,"role":null},"transparent":false,"isRoma":false,"popularCities":[{"rank_name":"basis_rank","pure_rank":1,"city_id":19,"location_name":"오사카","city_key_name":"Osaka","country_key_name":"Japan","total_count":252,"confirm_count":245,"cancel_count":7,"reference_rank":1,"weighted_rank":0.004024144869215292,"ranking":1},{"rank_name":"basis_rank","pure_rank":3,"city_id":59,"location_name":"싱가포르","city_key_name":"Singapore","country_key_name":"Singapore","total_count":62,"confirm_count":62,"cancel_count":0,"reference_rank":7,"weighted_rank":0.006048387096774193,"ranking":2},{"rank_name":"basis_rank","pure_rank":2,"city_id":13,"location_name":"파리","city_key_name":"Paris","country_key_name":"France","total_count":140,"confirm_count":124,"cancel_count":16,"reference_rank":2,"weighted_rank":0.015151515151515152,"ranking":3},{"rank_name":"basis_rank","pure_rank":13,"city_id":54,"location_name":"라스베가스","city_key_name":"Las Vegas","country_key_name":"United States of America","total_count":17,"confirm_count":16,"cancel_count":1,"reference_rank":19,"weighted_rank":0.06565656565656565,"ranking":4},{"rank_name":"basis_rank","pure_rank":4,"city_id":7,"location_name":"런던","city_key_name":"London","country_key_name":"United Kingdom","total_count":60,"confirm_count":38,"cancel_count":22,"reference_rank":3,"weighted_rank":0.08163265306122448,"ranking":5},{"rank_name":"basis_rank","pure_rank":9,"city_id":295,"location_name":"교토","city_key_name":"Kyoto","country_key_name":"Japan","total_count":27,"confirm_count":27,"cancel_count":0,"reference_rank":11,"weighted_rank":0.08333333333333333,"ranking":6},{"rank_name":"basis_rank","pure_rank":5,"city_id":40,"location_name":"홍콩","city_key_name":"Hong Kong","country_key_name":"Hong Kong","total_count":59,"confirm_count":59,"cancel_count":0,"reference_rank":5,"weighted_rank":0.0847457627118644,"ranking":7},{"rank_name":"basis_rank","pure_rank":6,"city_id":9,"location_name":"도쿄","city_key_name":"Tokyo","country_key_name":"Japan","total_count":55,"confirm_count":53,"cancel_count":2,"reference_rank":6,"weighted_rank":0.1111111111111111,"ranking":8},{"rank_name":"basis_rank","pure_rank":7,"city_id":55,"location_name":"바르셀로나","city_key_name":"Barcelona","country_key_name":"Spain","total_count":53,"confirm_count":44,"cancel_count":9,"reference_rank":4,"weighted_rank":0.14432989690721648,"ranking":9},{"rank_name":"basis_rank","pure_rank":30,"city_id":461,"location_name":"고베","city_key_name":"kobe","country_key_name":"Japan","total_count":5,"confirm_count":5,"cancel_count":0,"reference_rank":49,"weighted_rank":0.15789473684210525,"ranking":10},{"rank_name":"basis_rank","pure_rank":8,"city_id":32,"location_name":"로마","city_key_name":"Roma","country_key_name":"Italy","total_count":40,"confirm_count":37,"cancel_count":3,"reference_rank":8,"weighted_rank":0.2077922077922078,"ranking":11},{"rank_name":"basis_rank","pure_rank":35,"city_id":52,"location_name":"이스탄불","city_key_name":"Istanbul","country_key_name":"Turkey","total_count":4,"confirm_count":4,"cancel_count":0,"reference_rank":48,"weighted_rank":0.33653846153846156,"ranking":12},{"rank_name":"basis_rank","pure_rank":27,"city_id":198,"location_name":"다낭","city_key_name":"Da Nang","country_key_name":"Viet Nam","total_count":6,"confirm_count":6,"cancel_count":0,"reference_rank":33,"weighted_rank":0.375,"ranking":13},{"rank_name":"basis_rank","pure_rank":10,"city_id":67,"location_name":"타이페이","city_key_name":"Taipei","country_key_name":"Taiwan, Province of China","total_count":26,"confirm_count":25,"cancel_count":1,"reference_rank":9,"weighted_rank":0.39215686274509803,"ranking":14},{"rank_name":"basis_rank","pure_rank":11,"city_id":115,"location_name":"피렌체","city_key_name":"Firenze","country_key_name":"Italy","total_count":21,"confirm_count":20,"cancel_count":1,"reference_rank":10,"weighted_rank":0.5365853658536586,"ranking":15}],"b2b":{"status":false,"logo":null}}</script>
      
<jsp:include page="/WEB-INF/layout/top2.jsp"></jsp:include>
<main class='traveler'>
<div class='traveler-container clearfix'>
<div class='extra-button'>
<a class='btn-new btn--size-xs btn--type-gray' href='https://flights.myrealtrip.com/air/b2c/AIR/AAA/AIRAAALST0100000010.k1?KSESID=air:b2c:SELK138RB:SELK138RB::00'>항공권 예약내역</a>
</div>
<div class='sidebar-heading'>비밀번호 변경하기</div>
<div class='traveler-sidebar'>
<div class='sidebar-wrapper'>
<div class='profile-container box'>
<div class='profile'>
<img alt='여행자 사진' class='img-circle' src='//d2yoing0loi5gh.cloudfront.net/assets/default/user_profile_image-414acc60b27f0a258bec14c82b70dc361fc6768da9289f924f887bec1fc33849.png' width='80'>
</div>
<div class='username'>
${authUser.member_name}
</div>
<div class='text-md setting hide-on-mobile'>
<img alt='프로필 관리' class='icon item-inline' height='11px' src='https://d2yoing0loi5gh.cloudfront.net/assets/kitty/traveler/reservation/ic_setting@2x-832c08d9d38f208502f94e8d35e78a320024fc5f61630f2eba7801845e1eda78.png' width='11px'>
<a href='/traveler/account'>프로필 관리</a>
</div>
</div>
<div class='promotion-container box clearfix'>
<div class='item'>
<div class='item-header text-md'>내 포인트</div>
<div class='item-count text-md'>
<a href='/traveler/points'>
${authUser.point }원
<img class='arrow' src='https://d2yoing0loi5gh.cloudfront.net/assets/kitty/setting/ic-arrow-right-xs@2x-b290f6804f2f002ced664adc4c5e63a59629269d2e6657184239261195f22147.png' width='16'>
</a>
</div>
</div>
<div class='item'>
<div class='item-header text-md'>내 쿠폰</div>
<div class='item-count text-md'>
<a href='/traveler/coupons?status=enable'>
<c:if test="${not empty noc }">
<c:forEach items="${noc }" var="noc">
${noc.cp_code}장 
</c:forEach>
</c:if>
<c:if test="${empty noc }">
0장
</c:if>
<img class='arrow' src='https://d2yoing0loi5gh.cloudfront.net/assets/kitty/setting/ic-arrow-right-xs@2x-b290f6804f2f002ced664adc4c5e63a59629269d2e6657184239261195f22147.png' width='16'>
</a>
</div>
</div>
</div>
<a href='/invite_friends'>
<div class='box invite-friends-container'>
<img alt='intive_friends' height='24px' src='https://d2yoing0loi5gh.cloudfront.net/assets/kitty/invite_friends/ic_wishlistbox@2x-80048ea84a241b58b254fdfeb18c9cc87eb8417f43f9e0628fb0454881b25be4.png' width='24px'>
<div class='text'><span>친구 초대하고</span><span class='accent'>&nbsp;2,000포인트&nbsp;</span><span>받기!</span></div>
</div>
</a>
</div>

</div>
<div class='traveler-body'>
<div class='member-box box clearfix mode-editable'>
<form data-validation="true" action="<%= request.getContextPath() %>/member/changePassword.do" accept-charset="UTF-8" method="post"><input name="utf8" type="hidden" value="&#x2713;" /><input type="hidden" name="_method" value="put" /><input type="hidden" name="authenticity_token" value="pw/JnqamqWrYY3yK+g2GXs+4jnSQC7DwANq8ozi7cCRjzLNKUzDWF1nHObfQcVSNiXiV0USxg01KkEGFs/9DeQ==" />
<div class='member-container'>
<div class='multiple-input-group'>
<div class='title'>비밀번호</div>
<div class='form-group form-input-group clearfix'>
<div class='input-wrapper'>
<div class='row'>
<div class='col-xs-12'>
<input id="password" class='form-control text-content input-margin-top' name='user[password]' placeholder='새 비밀번호' type='password'>
</div>
</div>
</div>
</div>
<div class='form-group form-input-group clearfix'>
<div class='input-wrapper'>
<div class='row'>
<div class='col-xs-12'>
<input class='form-control text-content input-margin-top' name='user[password_confirmation]' placeholder='새 비밀번호 재입력' type='password'>
</div>
</div>
</div>
</div>
</div>
<div class='form-btn-wrap'>
<div class='form-btn-container clearfix'>
<div class='btn--width-50'>
<a class='btn-new btn--type-outline btn--width-100' href='<%= request.getContextPath() %>/member/profileManagement.do'>취소하기</a>
</div>
<div class='btn--width-50'>
<button class='btn-new btn--type-primary btn--width-100' id='account-submit' type='submit'>저장하기</button>
</div>
</div>
</div>
</div>
</form>

</div>

</div>
</div>
</main>



      <script type="application/json" class="js-react-on-rails-component" data-component-name="Footer" data-dom-id="Footer-react-component-34c5d106-a67f-4ad2-a14d-259b3ce41df0">{"b2b":{"status":false,"b2bCompany":null}}</script>
      

<div id='popup-mask'></div>
<div id='gnb-popup-mask'></div>


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

    window.userEmail = "48acd88bff57eb6125a663c9e653c267";

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

    var user = 1984171


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


<!-- 공통 호출 하단 스크립트 : 모든페이지 하단 설치 -->
<!-- PlayD TERA Log Script v1.1 -->
<script>
var _nSA=(function(_g,_c,_s,_p,_d,_i,_h){ 
 if(_i.wgc!=_g){var _ck=(new Image(0,0)).src=_p+'//'+_c+'/?cookie';_i.wgc=_g;_i.wrd=(new Date().getTime());
 var _sc=_d.createElement('script');_sc.src=_p+'//sas.nsm-corp.com/'+_s+'gc='+_g+'&rd='+_i.wrd;
 var _sm=_d.getElementsByTagName('script')[0];_sm.parentNode.insertBefore(_sc, _sm);_i.wgd=_c;} return _i;
})('TR10118205273','ngc1.nsm-corp.com','sa-w.js?',location.protocol,document,window._nSA||{},location.hostname);
</script><noscript><img src="//ngc1.nsm-corp.com/?uid=TR10118205273&je=n&" border=0 width=0 height=0></noscript>
<!-- LogAnalytics Script Install -->


<jsp:include page="/WEB-INF/layout/bottom.jsp"></jsp:include>
</body>
</html>







