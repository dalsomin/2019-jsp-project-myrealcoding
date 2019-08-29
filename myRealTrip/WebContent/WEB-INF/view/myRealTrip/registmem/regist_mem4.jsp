<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="java.util.ArrayList"%>
<%@page import="myRealTrip.partner.dto.International_pnumDTO"%>

	

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
<meta name="csrf-token" content="ZItmbeka8mZxyw5wE3foPcBVhDB+n2vhmda69F8SQulbjTXfVkQSCShA5qSaLY/EkomlFspSgP+QT2yXiNrw2g==" />
<meta content='113823448739791' property='fb:app_id'>
<meta content='122600525' property='fb:admins'>
<meta content='마이리얼트립' property='og:site_name'>
<meta content='https://www.myrealtrip.com/users/verifications/all' property='og:url'>
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
<link rel="stylesheet" media="screen" href="https://d2yoing0loi5gh.cloudfront.net/webpack/0.5155cb0ea96a3d8a43d0.css" />
<link rel="stylesheet" media="all" href="https://d2yoing0loi5gh.cloudfront.net/assets/kitty/application_template-5da62e3a802820a73815ac9769d004d04db514aa47276f57320c206cc043d2ac.css" />
<link rel="stylesheet" media="all" href="https://d2yoing0loi5gh.cloudfront.net/assets/kitty/application-f64e7c8c130c9339719ca1d38262813d576b752bb3a46eede48c7b2aa87efc8b.css" />
<link rel="stylesheet" media="screen" href="https://d2yoing0loi5gh.cloudfront.net/webpack/application.5155cb0ea96a3d8a43d0.css" />
<script src="https://d2yoing0loi5gh.cloudfront.net/webpack/vendor.5155cb0ea96a3d8a43d0.js"></script>
<script src="https://d2yoing0loi5gh.cloudfront.net/webpack/application.5155cb0ea96a3d8a43d0.js"></script>
<!--[if lte ie 9]>
<link rel="stylesheet" media="all" href="https://d2yoing0loi5gh.cloudfront.net/assets/kitty/ie-03f2550f99664f41f36c69b1e87ad5ab86b0a89362bfefe3c4ec453c29634926.css" />
<![endif]-->
<script src="https://d2yoing0loi5gh.cloudfront.net/assets/kitty/application-8ca969f663e621ec2203dfd31702dd1848d1a0abee1d902e6b4164db402d8583.js"></script>
<!-- <script src="//maps.googleapis.com/maps/api/js?key=AIzaSyC84fbqS1JuAJ9t24SLY2LEWf2Ud8W8F1E&amp;libraries=places&amp;language=ko" async="async" defer="defer"></script>
<script src="//cdn.ravenjs.com/3.24.2/raven.min.js" async="async" defer="defer" onload="initRaven()"></script>
<script>
  function initRaven() {
    Raven.config('https://5bfa4c779b0a477cb4cdb9b8b659cb8b@sentry.io/146345').install();
  }
</script>
Google Tag Manager
<script>
  dataLayer = [];
  (function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
  new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
  j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
  '//www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
  })(window,document,'script','dataLayer','GTM-NCVRS4');
</script> -->
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
    appboy.changeUser(2083649);
    appboy.getUser().setCustomUserAttribute('push_yn', true);

    var loginWithNaver = false;
    var loginWithFaceBook = false;
    var loginType ='email';

    if (loginWithFaceBook) {
      loginType = 'facebook';
    } else if (loginWithNaver) {
      loginType = 'naver';
    }

    appboy.logCustomEvent('complete_registration', {signup_method: loginType});
</script>

<script>
  window.App = App || {};
</script>
<script>
$(document).ready(function(){
	
	$("#phonenum").on("focusout", function(){
		
	var member_tel ='+'+$("#ipnum").val()+'  '+$("#phonenum").val();
	$.ajax({
		url:"/myRealTrip/member/phoneCheck.do",
		method:"GET",
		dataType:"JSON",
		data:{phonenum: member_tel},
		success:function(phonedata){
			if (!phonedata.pduple) {
				$("#phoneCheckAjax").text(phonedata.phone_error);
				$("#phonenum").val(' ');
			}else{
				
				$("#phoneCheckAjax").text(phonedata.phone_error);
				
			}
			
		}
	});
		
	});	
	
});
</script>
</head>
<body class='body' data-action='all' data-controller-path='users/verifications' data-controller='verifications'>
<!-- Google Tag Manager (noscript) -->
<noscript><iframe src="//www.googletagmanager.com/ns.html?id=GTM-NCVRS4"
height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
<!-- End Google Tag Manager (noscript) -->

<div class='global-alert-box'>
</div>

<div id='mrt-header'></div>
<script type="application/json" id="js-react-on-rails-context">{"railsEnv":"production","inMailer":false,"i18nLocale":"ko","i18nDefaultLocale":"ko","rorVersion":"11.0.9","rorPro":false,"href":"https://www.myrealtrip.com/users/verifications/all","location":"/users/verifications/all","scheme":"https","host":"www.myrealtrip.com","port":null,"pathname":"/users/verifications/all","search":null,"httpAcceptLanguage":"ko-KR,ko;q=0.9,en-US;q=0.8,en;q=0.7","serverSide":false}</script>
<jsp:include page="/WEB-INF/layout/top2.jsp"></jsp:include>
 <script type="application/json" class="js-react-on-rails-component" data-component-name="Header" data-dom-id="Header-react-component-91a0a696-cbb2-4009-a6c9-167f4d42febc">{"user":null,"transparent":false,"isRoma":false,"popularCities":[{"rank_name":"basis_rank","pure_rank":1,"city_id":19,"location_name":"오사카","city_key_name":"Osaka","country_key_name":"Japan","total_count":585,"confirm_count":556,"cancel_count":29,"reference_rank":1,"weighted_rank":0.0017528483786152498,"ranking":1},{"rank_name":"basis_rank","pure_rank":2,"city_id":13,"location_name":"파리","city_key_name":"Paris","country_key_name":"France","total_count":190,"confirm_count":175,"cancel_count":15,"reference_rank":2,"weighted_rank":0.010958904109589041,"ranking":2},{"rank_name":"basis_rank","pure_rank":3,"city_id":9,"location_name":"도쿄","city_key_name":"Tokyo","country_key_name":"Japan","total_count":128,"confirm_count":125,"cancel_count":3,"reference_rank":3,"weighted_rank":0.023715415019762844,"ranking":3},{"rank_name":"basis_rank","pure_rank":6,"city_id":7,"location_name":"런던","city_key_name":"London","country_key_name":"United Kingdom","total_count":94,"confirm_count":83,"cancel_count":11,"reference_rank":7,"weighted_rank":0.03389830508474576,"ranking":4},{"rank_name":"basis_rank","pure_rank":4,"city_id":32,"location_name":"로마","city_key_name":"Roma","country_key_name":"Italy","total_count":112,"confirm_count":100,"cancel_count":12,"reference_rank":4,"weighted_rank":0.03773584905660377,"ranking":5},{"rank_name":"basis_rank","pure_rank":5,"city_id":59,"location_name":"싱가포르","city_key_name":"Singapore","country_key_name":"Singapore","total_count":111,"confirm_count":105,"cancel_count":6,"reference_rank":5,"weighted_rank":0.046296296296296294,"ranking":6},{"rank_name":"basis_rank","pure_rank":7,"city_id":40,"location_name":"홍콩","city_key_name":"Hong Kong","country_key_name":"Hong Kong","total_count":91,"confirm_count":88,"cancel_count":3,"reference_rank":6,"weighted_rank":0.0782122905027933,"ranking":7},{"rank_name":"basis_rank","pure_rank":8,"city_id":55,"location_name":"바르셀로나","city_key_name":"Barcelona","country_key_name":"Spain","total_count":85,"confirm_count":68,"cancel_count":17,"reference_rank":8,"weighted_rank":0.10457516339869281,"ranking":8},{"rank_name":"basis_rank","pure_rank":9,"city_id":295,"location_name":"교토","city_key_name":"Kyoto","country_key_name":"Japan","total_count":83,"confirm_count":79,"cancel_count":4,"reference_rank":9,"weighted_rank":0.1111111111111111,"ranking":9},{"rank_name":"basis_rank","pure_rank":10,"city_id":67,"location_name":"타이페이","city_key_name":"Taipei","country_key_name":"Taiwan, Province of China","total_count":71,"confirm_count":71,"cancel_count":0,"reference_rank":10,"weighted_rank":0.14084507042253522,"ranking":10},{"rank_name":"basis_rank","pure_rank":11,"city_id":120,"location_name":"삿포로","city_key_name":"Sapporo","country_key_name":"Japan","total_count":63,"confirm_count":58,"cancel_count":5,"reference_rank":11,"weighted_rank":0.18181818181818182,"ranking":11},{"rank_name":"basis_rank","pure_rank":14,"city_id":23,"location_name":"방콕","city_key_name":"Bangkok","country_key_name":"Thailand","total_count":39,"confirm_count":34,"cancel_count":5,"reference_rank":15,"weighted_rank":0.1917808219178082,"ranking":12},{"rank_name":"basis_rank","pure_rank":12,"city_id":57,"location_name":"보라카이","city_key_name":"Boracay","country_key_name":"Philippines","total_count":47,"confirm_count":42,"cancel_count":5,"reference_rank":12,"weighted_rank":0.2696629213483146,"ranking":13},{"rank_name":"basis_rank","pure_rank":27,"city_id":296,"location_name":"부다페스트","city_key_name":"budapest","country_key_name":"Hungary","total_count":16,"confirm_count":13,"cancel_count":3,"reference_rank":30,"weighted_rank":0.31034482758620685,"ranking":14},{"rank_name":"basis_rank","pure_rank":13,"city_id":48,"location_name":"후쿠오카","city_key_name":"Fukuoka","country_key_name":"Japan","total_count":40,"confirm_count":38,"cancel_count":2,"reference_rank":13,"weighted_rank":0.3333333333333333,"ranking":15}],"b2b":{"status":false,"logo":null}}</script>


<main class='member member-verify'>
<div class='container-fluid content-wrap with-panel-title'>
<div class='panel-title-wrapper'>
<div class='panel-title'>가입 마지막 단계입니다!</div>
<div class='panel-desc'>휴대폰 인증 또는 이메일 인증을 완료해주세요.<br/>인증을 완료하시면 <span class="text-blue">2,000원 할인쿠폰</span>을 드립니다.<br/></div>
</div>
<div class='member-panel-tabs clearfix'>
<div class='tab active' data-tab-target='phone'>휴대폰 인증</div>
<div class='tab' data-tab-target='email'>이메일 인증</div>
</div>
<div class='member-panel member-panel--with-tab'>
<div class='panel-body'>
<div class='panel-body--phone-verification' data-panel-target='phone'>


<form name="send_code_form" role="form" data-validation="true" 
action="<%=request.getContextPath() %>/member/regist_member2.do" 
accept-charset="UTF-8" method="post"><input name="utf8" type="hidden" value="&#x2713;" />
<input type="hidden" name="authenticity_token" value="N3kkTa8jX+scXUIJ24QyFcZ2MOtYWhX0FzzJYd8IMX8If3f/EH2/hEXWqt1S3lXslKoRzeyX/uoepR8CCMCDTA==" />
<input name='member_name' type='hidden' value='${registmdto.member_name}'>
<input name='member_email' type='hidden' value="${registmdto.member_email}">
<input name='member_pwd' type='hidden' value='${registmdto.member_pwd}'>

<input name="auth_way_phonenum" type='hidden' value='인증완료'>
<c:forEach items="${agrdto.mar_type}" var="mar">
  <input name='mar_type' type="hidden" value='${mar}'><br/>
</c:forEach>

<div class='form-wrapper'>
<div class='content-wrapper'>
<div class='form-group'>
<div class='content-title-box'>
<div class='sub-title'>
국가번호
</div>
</div>
<div class='row'>
<div class='col-xs-12'>
<select class="form-control" id="ipnum" name="pnum">
<c:forEach items="${dto}" var="dto">
<option value="${dto.pnum}">${dto.country_name}</option>
</c:forEach>
</select>

</div>
</div>
</div>
</div>
<div class='content-wrapper'>
<div class='form-group'>
<div class='content-title-box'>
<div class='sub-title'>
휴대폰 번호
</div>
</div>
<div class='row'>
<div class='col-xs-12'>
<input id=phonenum class='form-control' name='phone_num' value="01050537425"
placeholder='- 없이 작성해주세요.' title='휴대폰 번호' type='tel'>
</div>
<div id="phoneCheckAjax"></div>
</div>
</div>
</div>
<div class='btn-wrap'>
<button class="btn-new btn--type-primary btn--width-100" data-gtm-action="문자로 인증번호 보내기" data-gtm-category="통합인증" id="send-verify-code-btn" type="submit">문자로 인증번호 보내기</button>
<!-- <button class='btn-new btn--type-primary btn--width-100' data-gtm-action='문자로 인증번호 보내기' data-gtm-category='통합인증' disabled id='send-verify-code-btn' type='submit'>문자로 인증번호 보내기</button> -->
</div>
</div>
</form>

<form name="verify_form" class="hidden" role="form" data-validation="true" 
data-nextpath="/users/verifications/verified?type=phone_new" data-is-invite="false" 
action="/users" accept-charset="UTF-8" method="post">
<input name="utf8" type="hidden" value="&#x2713;" /><input type="hidden" name="authenticity_token" value="lwqqrfflc5NX9WXkng1O+WZ+bXaHssQa7LIoTc8Dc96oDPkfSLuT/A5+jTAXVykANKJMUDN/LwTlK/4uGMvB7Q==" />

<div class='form-wrapper'>
<div class='content-wrapper'>
<div class='form-group'>
<div class='content-title-box'>
<div class='sub-title'>
인증코드
</div>
</div>
<div class='row'>
<div class='col-xs-12'>
<input class='form-control' name='user[verify_code]' title='인증번호' type='text'>
</div>
</div>
</div>
<div class='form-group'>
<div class='content-title-box'>
<div class='sub-message'>
인증번호를 받지 못하셨나요?
<span class='resend' id='resendCode'>인증번호 다시 보내기</span>
</div>
</div>
</div>
</div>
<div class='btn-wrap'>
<button class='btn-new btn--type-primary btn--width-100 mobile-mg-rm' 
name="auth_way" value="phonenum"
data-gtm-action='인증하기' data-gtm-category='통합인증' disabled='disabled' id='verify-btn' type='submit'>인증하기</button>
</div>
</div>
</form>

</div>

<div class='hidden panel-body--email-verification' data-panel-target='email'>
<form name="send_email_form" role="form" data-validation="true" action="<%=request.getContextPath() %>/member/regist_member2.do" accept-charset="UTF-8" method="post">
<input name="utf8" type="hidden" value="&#x2713;" /><input type="hidden" name="authenticity_token" value="xQXqGJZDozHLZCQaTwmZSwCUCZHy/+k5UOOUZHBk5gz6A7mqKR1DXpLvzM7GU/6yUkgot0YyAidZekIHp6xUPw==" />
<input name='member_name' type='hidden' value='${registmdto.member_name}'>
<input name='member_email' type='hidden' value='${registmdto.member_email}'>
<input name='member_pwd' type='hidden' value='${registmdto.member_pwd}'>

<%-- ${agrdto.mar_type.length} --%>
<c:forEach items="${agrdto.mar_type}" var="mar">
  <input name='mar_type' type="hidden" value='${mar}'><br/>
</c:forEach>


<%-- 출처: https://cofs.tistory.com/263 [CofS]
${agrdto.mar_type[0]}
${agrdto.mar_type[1]}
${agrdto.mar_type[2]} --%>
<input name="auth_way_email" type='hidden' value="인증완료">
<div class='content-wrapper--email'>
<div class='form-group'>
<div class='panel-body-title' >
${registmdto.member_email}  
</div>
<div class='panel-body-desc'>가입하시려는 이메일 주소가 올바르다면, 아래 버튼을 클릭하여 이메일 인증을 진행해주세요.
</div>
</div>
<div class='form-group form-group--resend-border hidden' data-resend-email>
<div class='content-title-box'>
<div class='sub-message'>
인증 이메일을 받지 못하셨나요?
<span class='resend' id='resendEmail'>인증 이메일 다시 보내기</span>
</div>
</div>
</div>
</div>
<div class='btn-wrap margin-top' data-email-verification-button>
<button class='btn-new btn--type-primary btn--width-100' 
 data-gtm-action='인증 이메일 보내기' data-gtm-category='통합인증' id='send-verify-email-btn'
  type='submit'>인증 이메일 보내기</button>
</div>
</form>

</div>

</div>
</div>
</div>
</main>

<jsp:include page="/WEB-INF/layout/bottom.jsp"></jsp:include>
      <script type="application/json" class="js-react-on-rails-component" data-component-name="Footer" data-dom-id="Footer-react-component-5e8bf7da-094b-4cfb-85a7-a7fc9bb9ca3a">{"b2b":{"status":false,"b2bCompany":null}}</script>
      

<div id='popup-mask'></div>
<div id='gnb-popup-mask'></div>

  <script type="text/javascript">
  <!--

  //  컨버전 ID (수정하지 마세요)
  var CN = "IxN9QioPT0I=";

  //-->

  var SEA_others1 = '';
  if (window.innerWidth < 768) {
    SEA_others1 = "air_m_join";
  } else {
    SEA_others1 = "air_pc_join";
  }

  </script>
  <script language='javascript' src='https://tag.adgather.net/https_conversion.js'></script>

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

    dataLayer.push({
      'event': 'completeRegistration',
      'previous_url': "/",
    });
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

    gtag('event', 'conversion', {'send_to': 'AW-1004447359/mIBXCLeH2ZABEP_M-t4D'});
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

    _nao["cnv"] = wcs.cnv("2","1");
    wcs_do(_nao);
    _nao={};

</script>


</body>
</html>
