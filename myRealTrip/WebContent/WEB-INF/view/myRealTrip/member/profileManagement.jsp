<%@page import="myRealTrip.myrealtripMember.model.ProfileManagementDTO"%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@page import="java.util.Date" %>
<%@page import="java.text.SimpleDateFormat" %>

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
<meta name="csrf-token" content="+tXwxQf27mBqPxkfMf+QhzJyHfFuC/0/sKDVEgLJ86e+Hsu2zcknXPPl7ISWvK1GiiMBJSJLILK2z6CipRm6Uw==" />
<meta content='113823448739791' property='fb:app_id'>
<meta content='122600525' property='fb:admins'>
<meta content='마이리얼트립' property='og:site_name'>
<meta content='https://www.myrealtrip.com/traveler/account' property='og:url'>
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
<link rel="stylesheet" media="screen" href="https://d2yoing0loi5gh.cloudfront.net/webpack/0.bc5e84b8b900be1fb96b.css" />
<link rel="stylesheet" media="all" href="https://d2yoing0loi5gh.cloudfront.net/assets/kitty/application_template-5da62e3a802820a73815ac9769d004d04db514aa47276f57320c206cc043d2ac.css" />
<link rel="stylesheet" media="all" href="https://d2yoing0loi5gh.cloudfront.net/assets/kitty/application-f64e7c8c130c9339719ca1d38262813d576b752bb3a46eede48c7b2aa87efc8b.css" />
<link rel="stylesheet" media="screen" href="https://d2yoing0loi5gh.cloudfront.net/webpack/application.bc5e84b8b900be1fb96b.css" />
<script src="http://code.jquery.com/jquery-1.11.0.min.js"></script> 
<script src="https://d2yoing0loi5gh.cloudfront.net/webpack/vendor.bc5e84b8b900be1fb96b.js"></script>
<script src="https://d2yoing0loi5gh.cloudfront.net/webpack/application.bc5e84b8b900be1fb96b.js"></script>
<!--[if lte ie 9]>
<link rel="stylesheet" media="all" href="https://d2yoing0loi5gh.cloudfront.net/assets/kitty/ie-03f2550f99664f41f36c69b1e87ad5ab86b0a89362bfefe3c4ec453c29634926.css" />
<![endif]-->
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

    appboy.changeUser(1984171);

  // braze signup check
</script>

<script>
  window.App = App || {};
</script>

<script>
 
$(document).ready(function (){
	$('.facebookToggle').click(function() {
		if ($(this).hasClass("toggle-on")) {
		  $(this).removeClass("toggle-on");
		  $(this).addClass("toggle-off");
		  
		  $("#facebook_y_n").val("n");
		} else {
			$(this).removeClass("toggle-off");
			  $(this).addClass("toggle-on");
			  $("#facebook_y_n").val("y");
		}
	});
	
	$('.naverToggle').click(function() {
		if ($(this).hasClass("toggle-on")) {
			  $(this).removeClass("toggle-on");
			  $(this).addClass("toggle-off");
			  
			  $("#naver_y_n").val("n");
			} else {
				$(this).removeClass("toggle-off");
				  $(this).addClass("toggle-on");
				  $("#naver_y_n").val("y");
			}
	});






	   
	var modal = document.getElementById('myModal');
    var btn = document.getElementById("deleteID");
    var cancel = document.getElementById("cancelDelete");                                     

    btn.onclick = function() {
        modal.style.display = "block";
    }

    cancel.onclick = function() {
        modal.style.display = "none";
    }

    window.onclick = function(event) {
        if (event.target == modal) {
            modal.style.display = "none";
        }
    }
    
});	

</script>




</script>

<style>
#Me_RefundOnProfile-react-component-44b4bdf5-5de1-45cb-9a60-5ac4fb478996{
	box-sizing: border-box;
    outline: none;
    display: block;
    background-color: #f5f6f7;
    font-size: 0;
    -webkit-font-smoothing: antialiased;
    font-family: -apple-system,BlinkMacSystemFont,Malgun Gothic,"\B9D1\C740 \ACE0\B515",Roboto,Helvetica,Arial,sans-serif;
    letter-spacing: -.2px;
    line-height: 1.5;
    margin: 0;
    padding: 0;
    background: #fff;
    -webkit-tap-highlight-color: transparent;
    box-sizing: inherit;
}


.Me_RefundOnProfile-module__container--2G94r{
	width: 100%;
    height: 160px;
    padding: 32px 40px;
    border-radius: 2px;
    background-color: #fff;
    box-shadow: 0 1px 0 0 #e9ecef;
    box-sizing: border-box;
    outline: none;
    display: block;
    font-size: 0;
    -webkit-font-smoothing: antialiased;
    font-family: -apple-system,BlinkMacSystemFont,Malgun Gothic,"\B9D1\C740 \ACE0\B515",Roboto,Helvetica,Arial,sans-serif;
    letter-spacing: -.2px;
    line-height: 1.5;
    margin: 0;
    /* padding: 0; */
    color: #373a3c;
    
}

#accManager{
	margin-bottom: 8px;
    font-size: 24px;
    font-weight: 600;
    color: #495056;
	/* font-size: 2rem; */
	margin-bottom: .5rem;
    font-family: inherit;
    line-height: 1.1;
    color: inherit;
    margin-top: 0;
    box-sizing: border-box;
    outline: none;
    
}


.Me_Link-module__link--2Ioo8 Link-module__small--1f3a3 Button-module__button--227wS Button-module__outline--1gLZe Button-module__small--2gBmw{
	color: #495056;
	text-decoration: none;
	padding-top: 8px;
	display: inline-block;
    line-height: 1;
    
}



/* 계정 삭제 모달창 */




</style>
</head>
<body class='body' data-action='edit' data-controller-path='kitty/traveler/account' data-controller='account' data-sign-in>
<!-- Google Tag Manager (noscript) -->
<noscript><iframe src="//www.googletagmanager.com/ns.html?id=GTM-NCVRS4"
height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
<!-- End Google Tag Manager (noscript) -->

<div class='global-alert-box'>
</div>



      <script type="application/json" class="js-react-on-rails-component" data-component-name="Header" data-dom-id="Header-react-component-62b03d16-785b-4e30-8479-ae34a73e80a5">{"user":{"id":1984171,"username":"이지은","email":"skyblue8857@hanmail.net","point":"0원","numberOfCoupons":"1장","profile_image":{"urls":{"original":"//d2yoing0loi5gh.cloudfront.net/assets/default/user_profile_image-414acc60b27f0a258bec14c82b70dc361fc6768da9289f924f887bec1fc33849.png","large":"//d2yoing0loi5gh.cloudfront.net/assets/default/user_profile_image-414acc60b27f0a258bec14c82b70dc361fc6768da9289f924f887bec1fc33849.png","medium":"//d2yoing0loi5gh.cloudfront.net/assets/default/user_profile_image-414acc60b27f0a258bec14c82b70dc361fc6768da9289f924f887bec1fc33849.png","small":"//d2yoing0loi5gh.cloudfront.net/assets/default/user_profile_image-414acc60b27f0a258bec14c82b70dc361fc6768da9289f924f887bec1fc33849.png","thumb":"//d2yoing0loi5gh.cloudfront.net/assets/default/user_profile_image-414acc60b27f0a258bec14c82b70dc361fc6768da9289f924f887bec1fc33849.png"}},"guideId":null,"isAffiliation":null,"role":null},"transparent":false,"isRoma":false,"popularCities":[{"rank_name":"basis_rank","pure_rank":1,"city_id":19,"location_name":"오사카","city_key_name":"Osaka","country_key_name":"Japan","total_count":375,"confirm_count":361,"cancel_count":14,"reference_rank":1,"weighted_rank":0.002717391304347826,"ranking":1},{"rank_name":"basis_rank","pure_rank":2,"city_id":13,"location_name":"파리","city_key_name":"Paris","country_key_name":"France","total_count":162,"confirm_count":151,"cancel_count":11,"reference_rank":2,"weighted_rank":0.012779552715654952,"ranking":2},{"rank_name":"basis_rank","pure_rank":3,"city_id":32,"location_name":"로마","city_key_name":"Roma","country_key_name":"Italy","total_count":102,"confirm_count":93,"cancel_count":9,"reference_rank":3,"weighted_rank":0.03076923076923077,"ranking":3},{"rank_name":"basis_rank","pure_rank":4,"city_id":9,"location_name":"도쿄","city_key_name":"Tokyo","country_key_name":"Japan","total_count":84,"confirm_count":81,"cancel_count":3,"reference_rank":4,"weighted_rank":0.048484848484848485,"ranking":4},{"rank_name":"basis_rank","pure_rank":5,"city_id":55,"location_name":"바르셀로나","city_key_name":"Barcelona","country_key_name":"Spain","total_count":65,"confirm_count":56,"cancel_count":9,"reference_rank":5,"weighted_rank":0.08264462809917356,"ranking":5},{"rank_name":"basis_rank","pure_rank":8,"city_id":59,"location_name":"싱가포르","city_key_name":"Singapore","country_key_name":"Singapore","total_count":45,"confirm_count":45,"cancel_count":0,"reference_rank":9,"weighted_rank":0.08888888888888889,"ranking":6},{"rank_name":"basis_rank","pure_rank":6,"city_id":40,"location_name":"홍콩","city_key_name":"Hong Kong","country_key_name":"Hong Kong","total_count":63,"confirm_count":59,"cancel_count":4,"reference_rank":6,"weighted_rank":0.09836065573770492,"ranking":7},{"rank_name":"basis_rank","pure_rank":7,"city_id":7,"location_name":"런던","city_key_name":"London","country_key_name":"United Kingdom","total_count":53,"confirm_count":43,"cancel_count":10,"reference_rank":7,"weighted_rank":0.14583333333333331,"ranking":8},{"rank_name":"basis_rank","pure_rank":17,"city_id":173,"location_name":"마드리드","city_key_name":"Madrid","country_key_name":"Spain","total_count":20,"confirm_count":18,"cancel_count":2,"reference_rank":20,"weighted_rank":0.14912280701754382,"ranking":9},{"rank_name":"basis_rank","pure_rank":11,"city_id":295,"location_name":"교토","city_key_name":"Kyoto","country_key_name":"Japan","total_count":36,"confirm_count":36,"cancel_count":0,"reference_rank":12,"weighted_rank":0.15277777777777776,"ranking":10},{"rank_name":"basis_rank","pure_rank":16,"city_id":1,"location_name":"프라하","city_key_name":"Praha","country_key_name":"Czech Republic","total_count":21,"confirm_count":21,"cancel_count":0,"reference_rank":18,"weighted_rank":0.19047619047619047,"ranking":11},{"rank_name":"basis_rank","pure_rank":33,"city_id":206,"location_name":"세고비아","city_key_name":"Segovia","country_key_name":"Spain","total_count":11,"confirm_count":10,"cancel_count":1,"reference_rank":41,"weighted_rank":0.19642857142857142,"ranking":12},{"rank_name":"basis_rank","pure_rank":9,"city_id":67,"location_name":"타이페이","city_key_name":"Taipei","country_key_name":"Taiwan, Province of China","total_count":44,"confirm_count":41,"cancel_count":3,"reference_rank":8,"weighted_rank":0.21176470588235294,"ranking":13},{"rank_name":"basis_rank","pure_rank":32,"city_id":476,"location_name":"톨레도","city_key_name":"Toledo","country_key_name":"Spain","total_count":11,"confirm_count":10,"cancel_count":1,"reference_rank":39,"weighted_rank":0.21768707482993194,"ranking":14},{"rank_name":"basis_rank","pure_rank":21,"city_id":54,"location_name":"라스베가스","city_key_name":"Las Vegas","country_key_name":"United States of America","total_count":16,"confirm_count":13,"cancel_count":3,"reference_rank":24,"weighted_rank":0.24137931034482757,"ranking":15}],"b2b":{"status":false,"logo":null}}</script>
      
<jsp:include page="/WEB-INF/layout/top2.jsp"></jsp:include>
<main class='traveler'>
<div class='traveler-container clearfix'>
<div class='extra-button'>
<a class='btn-new btn--size-xs btn--type-gray' href='https://flights.myrealtrip.com/air/b2c/AIR/AAA/AIRAAALST0100000010.k1?KSESID=air:b2c:SELK138RB:SELK138RB::00'>항공권 예약내역</a>
</div>
<div class='sidebar-heading'>프로필 관리</div>
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
<a href='<%= request.getContextPath() %>/member/profileManagement.do'>프로필 관리</a>
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
<main class='member-box box mode-readonly clearfix' id='member'>
<div class='member-container with-edit-btn'>
<div class='btn-new btn--type-outline btn--size-xs btn-modify' id='account-modify'><%-- <a href="<%= request.getContextPath() %>/member/editPM.do"> --%>편집<!-- </a> --></div>
<div class='content-wrapper'>
<div class='profile-img-container hide-on-tablet'>
<img class="img profile-img" width="98px" src="//d2yoing0loi5gh.cloudfront.net/assets/default/user_profile_image-414acc60b27f0a258bec14c82b70dc361fc6768da9289f924f887bec1fc33849.png" alt="User profile image" />
<form class="profile-uploader" action="/traveler/upload-profile-image" accept-charset="UTF-8" data-remote="true" method="post"><input name="utf8" type="hidden" value="&#x2713;" /><input type="hidden" name="_method" value="put" />
<input name='user[profile_image]' type='file'>
<div class='camera-icon ladda-button' data-spinner-color='#616161' data-style='slide-up'>
<img width="26px" class="ladda-button" data-style="expand-right" src="https://d2yoing0loi5gh.cloudfront.net/assets/kitty/traveler/account/ic-camera-copy@2x-ccea255702b3a0ad377893a5c5094e97f81c1518938c5fe0e3b144af9f6d3d92.png" alt="Ic camera copy@2x" />
</div>
</form>

<div class='text'>${authUser.member_name}</div>
</div>
<div class='member-wrapper'>
<form id="account-edit-form" data-validation="true" action="<%= request.getContextPath() %>/member/editPM.do" accept-charset="UTF-8" method="post"><input name="utf8" type="hidden" value="&#x2713;" /><input type="hidden" name="_method" value="put" /><input type="hidden" name="authenticity_token" value="VWIkAMIuOXNmLGafsZI8RTzre/oR3SzjBW0h/sDE+hIRqR9zCBHwT//2kwQW0QGEhLpnLl2d8W4DAlROZxSz5g==" />
<div class='form-group form-input-group'>
<div class='title text-middle'>이름</div>
<div class='input-wrapper text-middle'>
<div class='row'>
<div class='col-xs-12'>
<input class='form-control text-content' name='user[username]' readonly type='text' value='${authUser.member_name }'>
</div>
</div>
</div>
</div>
<div class='form-group'>
<div class='title text-middle'>이메일</div>
<div class='input-wrapper text-middle'>${authUser.member_email }</div>
<input type='hidden' >
<div class='label-verified hide-on-editable'>
${authUser.auth_e }
</div>
</div>
<div class='form-group'>
<div class='title text-middle'>연락처</div>
<div class='input-wrapper text-middle'>
${authUser.member_tel }
</div>
<a class="text-link text-link-margin hide-on-editable" data-gtm-category="프로필" data-gtm-action="인증하기" data-turbolinks="false" href="/users/verifications/phone?previous=account&amp;type=phone_new">${authUser.auth_p }</a>
<a class="show-on-editable text-link text-link-margin" data-gtm-category="프로필" data-gtm-action="인증하기" data-turbolinks="false" href="연락처 변경하기 #">연락처 변경하기</a>
</div>
<div class='form-group form-subscription-group'>
<div class='title text-middle'>SNS 연동</div>
<div class='input-wrapper text-middle input-wrapper--block'>
<div class='row'>
<div class='col-xs-12'>
<div class='sns-wrapper clearfix'>
<img name="profileImg" class='icon' src='https://d2yoing0loi5gh.cloudfront.net/assets/kitty/setting/fb-logo@2x-2a65bc6ab97a894a1baeca5b714f4201eb991cfc6d955ef657f86de8e56f89d5.png' width='18'>
<span>페이스북 연동</span>
<c:if test="${empty authUser.facebook || authUser.facebook eq 'n'}">
<div class='sns-toggle-button'  >
<a data-gtm-action='페이스북 연동' data-gtm-label='해제' >
<div class='toggle-icon toggle-off facebookToggle'></div>
</a>
</div>
</c:if>
<c:if test="${authUser.facebook eq 'y'}">
<div class='sns-toggle-button' >
<div class="toggle-icon toggle-on facebookToggle" data-gtm-label="연동"></div>
</div>
</c:if>

</div>
</div>
</div>
<div class='row'>
<div class='col-xs-12'>
<div class='sns-wrapper margin-bottom-0 clearfix'>
<img class='icon' src='https://d2yoing0loi5gh.cloudfront.net/assets/kitty/setting/naver-logo@2x-332865f7b796a02822378e0b61e6dcace93ae9a24abd810cd774a06b5fbcb0b5.png' width='18'>
<span>네이버 연동</span>
<c:if test="${empty authUser.naver || authUser.naver eq 'n'}">
<div class='sns-toggle-button' >
<a data-gtm-action="네이버 연동" data-gtm-label="해제" >
<div class="toggle-icon toggle-off naverToggle"></div>
</a>
</div>
</c:if>
<c:if test="${authUser.naver eq 'y'}">
<div class='sns-toggle-button' >
<div class="toggle-icon toggle-on naverToggle" data-gtm-label="연동">
</div>
</div>
</c:if>
</div>
</div>
</div>
</div>
</div>

<div class='form-group'>
<div class='title text-middle'>비밀번호</div>
<div class='input-wrapper hide-on-editable text-middle'>
${authUser.replaceStar() }
</div>
<div class='input-wrapper show-on-editable'>
<a class='text-link text-middle' href='<%=request.getContextPath()%>/member/inputNewPW.do'>비밀번호 변경하기</a>
</div>
</div>
<div class='form-group form-subscription-group'>
<div class='title text-middle'>마케팅 수신동의</div>
<div class='input-wrapper text-middle'>
<div class='row'>
<div class='col-xs-12'>
<div class='subscription--wrapper'><span class='subscription-title'>e-mail</span>
 
 
 <c:if test="${ fn:contains( mar_types, 'email' )}"> : 수신 동의</c:if>
 <c:if test="${! fn:contains( mar_types, 'email' )}"> : 수신 거부</c:if>
 
<span class='hide-on-editable'>




</span><div class='radio-custom radio-sm radio-primary show-on-editable'>
<c:if test="${ fn:contains( mar_types, 'email' )}">
<input id='subscription-email-true' name='user[subscription_settings][email]' required type='radio' checked="checked" value="true">
</c:if>
<c:if test="${! fn:contains( mar_types, 'email' )}">
<input id='subscription-email-true' name='user[subscription_settings][email]' required type='radio' value="true">
</c:if>
<label for='subscription-email-true'>수신</label>
</div>
<div class='radio-custom radio-sm radio-primary show-on-editable'>

<c:if test="${! fn:contains( mar_types, 'email' )}">
<input id='subscription-email-false' name='user[subscription_settings][email]' required type='radio' checked="checked" value="false">
</c:if>
<c:if test="${ fn:contains( mar_types, 'email' )}">
<input id='subscription-email-false' name='user[subscription_settings][email]' required type='radio'  value="false">
</c:if>

<label for='subscription-email-false'>수신 거부</label>
</div>
</div>
</div>
</div>
<div class='row'>
<div class='col-xs-12'>
<div class='subscription-wrapper'><span class='subscription-title'>sms</span>

 <c:if test="${ fn:contains( mar_types, 'sms' )}"> : 수신 동의</c:if>
 <c:if test="${! fn:contains( mar_types, 'sms' )}"> : 수신 거부</c:if>

<span class='hide-on-editable'>

</span><div class='radio-custom radio-sm radio-primary show-on-editable'>
<c:if test="${ fn:contains( mar_types, 'sms' )}">
<input id='subscription-sms-true' name='user[subscription_settings][sms]' required type='radio' checked="checked" value="true">
</c:if>
<c:if test="${! fn:contains( mar_types, 'sms' )}">
<input id='subscription-sms-true' name='user[subscription_settings][sms]' required type='radio' value="true">
</c:if>
<label for='subscription-sms-true'>수신</label>
</div>
<div class='radio-custom radio-sm radio-primary show-on-editable'>

<c:if test="${! fn:contains( mar_types, 'sms' )}">
<input id='subscription-sms-false' name='user[subscription_settings][sms]' required type='radio' checked="checked" value="false">
</c:if>
<c:if test="${ fn:contains( mar_types, 'sms' )}">
<input id='subscription-sms-false' name='user[subscription_settings][sms]' required type='radio' value="false">
</c:if>
<label for='subscription-sms-false'>수신 거부</label>
</div>
</div>
</div>
</div>
<div class='row'>
<div class='col-xs-12'>
<div class='subscription-wrapper'><span class='subscription-title'>앱 푸시</span>
 
  <c:if test="${ fn:contains( mar_types, 'push' )}"> : 수신 동의</c:if>
 <c:if test="${! fn:contains( mar_types, 'push' )}"> : 수신 거부</c:if>
 
<span class='hide-on-editable'>

</span><div class='radio-custom radio-sm radio-primary show-on-editable'>
<c:if test="${ fn:contains( mar_types, 'push' )}">
<input id='subscription-push-true' name='user[subscription_settings][push]' required type='radio' checked="checked" value="true">
</c:if>
<c:if test="${! fn:contains( mar_types, 'push' )}">
<input id='subscription-push-true' name='user[subscription_settings][push]' required type='radio' value="true">
</c:if>

<label for='subscription-push-true'>수신</label>
</div>
<div class='radio-custom radio-sm radio-primary show-on-editable'>
<c:if test="${! fn:contains( mar_types, 'push' )}">
<input id='subscription-push-false' name='user[subscription_settings][push]' required type='radio' checked="checked" value="false">
</c:if>
<c:if test="${ fn:contains( mar_types, 'push' )}">
<input id='subscription-push-false' name='user[subscription_settings][push]' required type='radio' value="false">
</c:if>
<label for='subscription-push-false'>수신 거부</label>
</div>
</div>
</div>
</div>
<div class='recent-edit-text show-on-editable'><%--최근 수정일:  ${member.moddate } --%></div>
</div>
</div>

<div class='form-btn-wrap'>
<div class='form-btn-container clearfix'>
<div class='btn--width-50'>
<button class='btn-new btn--type-gray btn--width-100 btn--size-sm' onclick='javascript:location.reload();return false;'><a href="<%= request.getContextPath() %>/member/editPM.do">취소하기</a></button>
</div>
<div class='btn--width-50'>
<button class='btn-new btn--type-primary btn--width-100 btn--size-sm' id='account-submit' type='submit'>저장하기</button>
</div>
</div>
</div>
<!-- <div class='toggle-icon toggle-off facebookToggle'></div> -->
<input type="hidden" id="facebook_y_n" name="facebook_y_n" value="" />
<input type="hidden" id="naver_y_n" name="naver_y_n" value="" />
<script>
   
   var clsf =  $(".facebookToggle").attr("class");
   var flagf = "n";
   if( clsf.indexOf("n") < 0 ) flagf = "y";  
   $("#facebook_y_n").val(flagf);
   
   
   var clsn =  $(".naverToggle").attr("class");
   var flagn = "n";
   if( clsn.indexOf("n") < 0 ) flagn = "y";  
   $("#naver_y_n").val(flagn);
   
   
</script>
</form>

</div>
</div>
</div>
</main>

<script type="application/json" id="js-react-on-rails-context">
{"railsEnv":"production","inMailer":false,"i18nLocale":"ko","i18nDefaultLocale":"ko","rorVersion":"11.0.9","rorPro":false,"href":"https://www.myrealtrip.com/traveler/account","location":"/traveler/account","scheme":"https","host":"www.myrealtrip.com","port":null,"pathname":"/traveler/account","search":null,"httpAcceptLanguage":"ko-KR,ko;q=0.9,en-US;q=0.8,en;q=0.7","serverSide":false}
</script>

<div id="Me_RefundOnProfile-react-component-44b4bdf5-5de1-45cb-9a60-5ac4fb478996">
	<div class="Me_RefundOnProfile-module__container--2G94r">
		<h2 id="accManager">계좌 관리</h2>
			<div class="RefundOnProfile-module__account--3Nmak">
				<h3>환불 계좌</h3>
				<p>
				<c:if test="${not empty ra}">
						${ra.ra_bank }
						${ra.ra_sno }
						${ra.ra_name }
				</c:if>
				<c:if test="${empty ra}">
					등록된 계좌가 없습니다.
				</c:if>
				</p>
				<a class="Me_Link-module__link--2Ioo8 Link-module__small--1f3a3 Button-module__button--227wS Button-module__outline--1gLZe Button-module__small--2gBmw" href="<%= request.getContextPath() %>/member/newAccount.do">계좌 변경</a>
			</div>
	</div>
</div>

<%-- 	
		<h2>계좌 관리</h2>
		<div class="RefundOnProfile-module__account--3Nmak">
			<h3>환불 계좌</h3>
			<p>
			<c:if test="${not empty pmList}">
					${pmList.ra_bank }
					${pmList.ra_sno }
					${pmList.ra_name }
			</c:if>
			<c:if test="${empty pmList}">
				등록된 계좌가 없습니다.2
			</c:if>
			</p>
		</div>
 --%>

      <script type="application/json" class="js-react-on-rails-component" data-component-name="RefundOnProfile" data-dom-id="RefundOnProfile-react-component-816a8ef0-e6ad-49ab-9d10-87bdf27bb4e2">{"account":null}</script>
      
<%-- 
<div id="RefundOnProfile-react-component-f1240683-5699-4aeb-9919-df7ad929e6b1">
	<div class="RefundOnProfile-module__container--2G94r">
		<h2>계좌 관리</h2>
		<div class="RefundOnProfile-module__account--3Nmak">
			<h3>환불 계좌</h3>
			<p class>
			<c:forEach items="${ pmList }" var="pm">
				${pm.ra_bank }
				${pm.ra_sno }
				${pm.ra_name }
			</c:forEach>
			
			</p>
		</div>
	</div>
</div>
 --%>

<div class='text-clickable-container hide-on-mobile' data-popup-window>
<div class='text text-sm' id="deleteID">계정 삭제하기</div>
</div>
<div class='popup-window' id='popup-account-delete'>
<div class='dark-cover'></div>
<div class='popup-content'>
<form data-validation="true" action="<%= request.getContextPath() %>/member/deleteID.do" accept-charset="UTF-8" method="post"><input name="utf8" type="hidden" value="&#x2713;" /><input type="hidden" name="_method" value="delete" /><input type="hidden" name="authenticity_token" value="7bYFXRI6TRc/vMLudrIlS9UpW6UK1m133uco5LElgxepfT4u2AWEK6ZmN3XR8RiKbXhHcUaWsPrYiF1UFvXK4w==" />
<div class='content-container' id="myModal">
<div class='btn-close'><img class="icon" src="https://d2yoing0loi5gh.cloudfront.net/assets/roma/btn/close-6860fb9771965ed4cb40314df6f6e1d0aa54c7a8794da98f6e5c97b45983793d.png" alt="Close" /></div>
<div class='popup-header'>
<div class='title'>계정 삭제하기</div>
<div class='desc'>마이리얼트립 계정을 삭제하시면, 프로필 및 소중한 여행의 기록들이 모두 사라지게 되며, 더 이상 회원님의 계정으로 활동할 수 없게 됩니다. ;(</div>
</div>
<div class='popup-body'>
<div class='form-group-container clearfix'>
<div class='title control-label'>계정을 삭제하려는 이유가 무엇인가요? (필수)</div>
<div class='form-group'>
<div class='radio-custom radio-primary'>
<input class='form-control' id='reason_0' name='user_leave_reason[reason]' type='radio' value='no_travel'>
<label for='reason_0'>
여행을 자주 떠나지 않아서요.
</label>
</input>
</div>
<div class='radio-custom radio-primary'>
<input class='form-control' id='reason_1' name='user_leave_reason[reason]' type='radio' value='no_reason_sign_in'>
<label for='reason_1'>
굳이 회원가입을 하지 않아도 사이트를 이용할 수 있어서요.
</label>
</input>
</div>
<div class='radio-custom radio-primary'>
<input class='form-control' id='reason_2' name='user_leave_reason[reason]' type='radio' value='no_visit'>
<label for='reason_2'>
자주 방문하지 않아서요.
</label>
</input>
</div>
<div class='radio-custom radio-primary'>
<input class='form-control' id='reason_3' name='user_leave_reason[reason]' type='radio' value='difficult_usage'>
<label for='reason_3'>
어떻게 이용해야 할 지를 몰라서요.
</label>
</input>
</div>
<div class='radio-custom radio-primary'>
<input class='form-control' id='reason_4' name='user_leave_reason[reason]' type='radio' value='concern_privacy'>
<label for='reason_4'>
개인정보 침해가 우려되어서요.
</label>
</input>
</div>
<div class='radio-custom radio-primary'>
<input class='form-control' id='reason_5' name='user_leave_reason[reason]' type='radio' value='etc'>
<label for='reason_5'>
다른 이유가 있어요.(아래에 자세히 적어주세요.)
</label>
<textarea class='inner-input-textarea form-control' name='user_leave_reason[reason_txt]' rows='3'></textarea>
</input>
</div>
</div>
</div>
<div class='title'>계정을 삭제하시면 다시 복구할 수 없습니다. 정말로 마이리얼트립 계정을 삭제하시겠습니까?
</div>
</div>
</div>
<div class='btn-container'>
<div class='btn btn-cancel btn-width-50' id="cancelDelete">다시 생각해볼게요!</div>
<button class='btn btn-submit btn-width-50' type='submit' value='계정 삭제하기'>계정 삭제하기</button>
</div>
</form>

</div>
</div>


</div>
</div>
</main>



      <script type="application/json" class="js-react-on-rails-component" data-component-name="Footer" data-dom-id="Footer-react-component-a4ce97a0-ac98-4eea-80f8-78a8dfbe4ddf">{"b2b":{"status":false,"b2bCompany":null}}</script>
      

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
<script>
$(".calbtn").on("click", function(){ //취소하기 눌렀을 때
    
    
    //바뀌기 전 프로필 사진
    //var o_profile_img ="무민30.jpg"; // "/myRealTrip/img/profilePicture/토토로31.jpg" ;// $("#profileImage").attr(src);
    var o_profile_img_path =  $("body > main > div > div.traveler-sidebar > div > div.profile-container.box > div.profile > img").attr('src');
    //alert( o_profile_img_path );
    //console.log(">>>>>>> : " + o_profile_img_path);
    var o_profile_img_cut = o_profile_img_path.split('/');
    //console.log(o_profile_img_cut);
    var o_profile_img = o_profile_img_cut[o_profile_img_cut.length-1];
    //console.log(o_profile_img);
    //alert( o_profile_img)
    
    //바뀐 후 프로필 사진
    var c_profile_img_path =$("#profileImage").attr('src');
    var c_profile_img_cut = c_profile_img_path.split('/');
    var c_profile_img = c_profile_img_cut[c_profile_img_cut.length-1];
    //alert( c_profile_img);
    
    $.ajax({
         url: '<%=request.getContextPath()%>/member/cancelUploadProfilePicture.do?opi='+o_profile_img+'&cpi='+c_profile_img, 
         type: 'GET', 
         success: function (data) {
           //alert("ok");
           // //취소하기 눌렀으니까 바뀌기 전 프로필 사진으로 돌려놓기
            $('#profileImage').attr('src', "<%=request.getContextPath()%>/img/profilePicture/" + o_profile_img);
         }
     });
    
    
    
});
</script>
<jsp:include page="/WEB-INF/layout/bottom.jsp"></jsp:include>
</body>
</html>









