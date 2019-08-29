<%@ page trimDirectiveWhitespaces="true"
	contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset='UTF-8'>
<meta content='Content-type: text/html; charset=UTF-8' name='http-equiv'>
<meta content='IE=Edge,chrome=1' http-equiv='X-UA-Compatible'>
<meta
	content='width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1, user-scalable=no'
	name='viewport'>
<meta content='yes' name='apple-mobile-web-app-capable'>
<meta content='black' name='apple-mobile-web-app-status-bar-style'>
<meta content='SyCtjRv6wVxDU6a7dWgpsvQNMP38wW6OpOyMFBUkhQ8'
	name='google-site-verification'>
<meta content='a0a215c577b4fc16a849b8867cd9b68051ed6377'
	name='naver-site-verification'>
<meta content='all, index, follow' name='robots'>
<meta content='ko' name='locale'>
<meta content='KRW' name='currency'>
<meta
	content='현지 투어, 여행 가이드, 투어 가이드, 현지 가이드, 가이드 투어, 마이리얼트립, 현지정보, 여행정보, 입장권, 교통패스, 액티비티, 여행사, 호텔예약, 해외호텔, 호텔할인, 바로사용, 한인민박, 민박, 와이파이, 유심, 여행자보험, 항공권, 항공권 검색, 최저가 항공권'
	name='keywords'>
<meta
	content='여행지에서 즐길 수 있는 가이드 투어, 명소 입장권, 교통패스, 액티비티는 물론 호텔 예약까지 전세계 현지 여행이 준비되어 있습니다.
'
	name='description'>

<meta name="csrf-param" content="authenticity_token" />
<meta name="csrf-token"
	content="ZRFy6jU8lLULpVbxf7AiAzrACRnIJfAp8bNqP6B4MFCrT1grC7I5Faui/Wzmq0cxqh8gzrhgM68+lc+jYnYyXg==" />
<meta content='113823448739791' property='fb:app_id'>
<meta content='122600525' property='fb:admins'>
<meta content='마이리얼트립' property='og:site_name'>
<meta content='https://www.myrealtrip.com/users/sign_in'
	property='og:url'>
<link href='https://www.myrealtrip.com/opensearch.xml' rel='search'
	title='마이리얼트립 검색' type='application/opensearchdescription+xml'>
<meta
	content='https://d2yoing0loi5gh.cloudfront.net/assets/og-image-35b4b66874396ae2fc8991b926c1f0c09f27f25f9c0a23f15e5e96c73c2c9992.png'
	property='og:image'>
<link
	href='https://d2yoing0loi5gh.cloudfront.net/assets/logo/ic-mobile-76-59c4321eae219afd9cebfb870646b877f48a5b63adab68a37604891800aed0da.png'
	rel='apple-touch-icon-precomposed'>
<link
	href='https://d2yoing0loi5gh.cloudfront.net/assets/logo/ic-mobile-76-59c4321eae219afd9cebfb870646b877f48a5b63adab68a37604891800aed0da.png'
	rel='apple-touch-icon'>
<link
	href='https://d2yoing0loi5gh.cloudfront.net/assets/logo/ic-mobile-76-59c4321eae219afd9cebfb870646b877f48a5b63adab68a37604891800aed0da.png'
	rel='apple-touch-icon' sizes='76x76'>
<link
	href='https://d2yoing0loi5gh.cloudfront.net/assets/logo/ic-mobile-120-0de06603ad3e4427cb29b5e4ef6833021cc52ea642ee76e843ed997209049bf5.png'
	rel='apple-touch-icon' sizes='120x120'>
<link
	href='https://d2yoing0loi5gh.cloudfront.net/assets/logo/ic-mobile-152-cc369a832b7a69d0c0b63c3914168b58e732a26729d72e976e7f729b923ee302.png'
	rel='apple-touch-icon' sizes='152x152'>
<title>마이리얼트립 :: 600개 도시 현지 친구와 진짜 여행을</title>
<link rel="shortcut icon" type="image/x-icon"
	href="https://d2yoing0loi5gh.cloudfront.net/assets/favicon-e7fc64f202376533d86106e6f712ed41eee1e843dbc5de3b2765938656f8eb93.ico" />
<script
	src="https://d2yoing0loi5gh.cloudfront.net/assets/kitty/ko-5d40c1382db94787ee09831dee889f833820560fe559c19347c2079165c71e0f.js"></script>
<link rel="stylesheet" media="screen"
	href="https://d2yoing0loi5gh.cloudfront.net/webpack/0.51b5991811c479a8a7cd.css" />
<link rel="stylesheet" media="all"
	href="https://d2yoing0loi5gh.cloudfront.net/assets/kitty/application_template-5da62e3a802820a73815ac9769d004d04db514aa47276f57320c206cc043d2ac.css" />
<link rel="stylesheet" media="all"
	href="https://d2yoing0loi5gh.cloudfront.net/assets/kitty/application-f64e7c8c130c9339719ca1d38262813d576b752bb3a46eede48c7b2aa87efc8b.css" />
<link rel="stylesheet" media="screen"
	href="https://d2yoing0loi5gh.cloudfront.net/webpack/application.51b5991811c479a8a7cd.css" />
<script
	src="https://d2yoing0loi5gh.cloudfront.net/webpack/vendor.51b5991811c479a8a7cd.js"></script>
<script
	src="https://d2yoing0loi5gh.cloudfront.net/webpack/application.51b5991811c479a8a7cd.js"></script>
<!--[if lte ie 9]>
<link rel="stylesheet" media="all" href="https://d2yoing0loi5gh.cloudfront.net/assets/kitty/ie-03f2550f99664f41f36c69b1e87ad5ab86b0a89362bfefe3c4ec453c29634926.css" />
<![endif]-->
<script
	src="https://d2yoing0loi5gh.cloudfront.net/assets/kitty/application-8ca969f663e621ec2203dfd31702dd1848d1a0abee1d902e6b4164db402d8583.js"></script>
<script
	src="//maps.googleapis.com/maps/api/js?key=AIzaSyC84fbqS1JuAJ9t24SLY2LEWf2Ud8W8F1E&amp;libraries=places&amp;language=ko"
	async="async" defer="defer"></script>
<script src="//cdn.ravenjs.com/3.24.2/raven.min.js" async="async"
	defer="defer" onload="initRaven()"></script>
<script>
	function initRaven() {
		Raven.config(
				'https://5bfa4c779b0a477cb4cdb9b8b659cb8b@sentry.io/146345')
				.install();
	}
</script>
<!-- Google Tag Manager -->
<script>
	dataLayer = [];
	(function(w, d, s, l, i) {
		w[l] = w[l] || [];
		w[l].push({
			'gtm.start' : new Date().getTime(),
			event : 'gtm.js'
		});
		var f = d.getElementsByTagName(s)[0], j = d.createElement(s), dl = l != 'dataLayer' ? '&l='
				+ l
				: '';
		j.async = true;
		j.src = '//www.googletagmanager.com/gtm.js?id=' + i + dl;
		f.parentNode.insertBefore(j, f);
	})(window, document, 'script', 'dataLayer', 'GTM-NCVRS4');
</script>
<!-- End Google Tag Manager -->

<script src="//wcs.naver.net/wcslog.js"></script>


<script type="text/javascript" charset="UTF-8"
	src="//t1.daumcdn.net/adfit/static/kp.js"></script>
<script type="text/javascript">
	kakaoPixel('5174958686083042808').pageView();
</script>


<script type="text/javascript">
	+function(a, p, P, b, y) {
		appboy = {};
		appboyQueue = [];
		for (var s = "initialize destroy getDeviceId toggleAppboyLogging setLogger openSession changeUser requestImmediateDataFlush requestFeedRefresh subscribeToFeedUpdates requestContentCardsRefresh subscribeToContentCardsUpdates logCardImpressions logCardClick logCardDismissal logFeedDisplayed logContentCardsDisplayed logInAppMessageImpression logInAppMessageClick logInAppMessageButtonClick logInAppMessageHtmlClick subscribeToNewInAppMessages removeSubscription removeAllSubscriptions logCustomEvent logPurchase isPushSupported isPushBlocked isPushGranted isPushPermissionGranted registerAppboyPushMessages unregisterAppboyPushMessages submitFeedback trackLocation stopWebTracking resumeWebTracking wipeData ab ab.DeviceProperties ab.User ab.User.Genders ab.User.NotificationSubscriptionTypes ab.User.prototype.getUserId ab.User.prototype.setFirstName ab.User.prototype.setLastName ab.User.prototype.setEmail ab.User.prototype.setGender ab.User.prototype.setDateOfBirth ab.User.prototype.setCountry ab.User.prototype.setHomeCity ab.User.prototype.setLanguage ab.User.prototype.setEmailNotificationSubscriptionType ab.User.prototype.setPushNotificationSubscriptionType ab.User.prototype.setPhoneNumber ab.User.prototype.setAvatarImageUrl ab.User.prototype.setLastKnownLocation ab.User.prototype.setUserAttribute ab.User.prototype.setCustomUserAttribute ab.User.prototype.addToCustomAttributeArray ab.User.prototype.removeFromCustomAttributeArray ab.User.prototype.incrementCustomUserAttribute ab.User.prototype.addAlias ab.User.prototype.setCustomLocationAttribute ab.InAppMessage ab.InAppMessage.SlideFrom ab.InAppMessage.ClickAction ab.InAppMessage.DismissType ab.InAppMessage.OpenTarget ab.InAppMessage.ImageStyle ab.InAppMessage.TextAlignment ab.InAppMessage.Orientation ab.InAppMessage.CropType ab.InAppMessage.prototype.subscribeToClickedEvent ab.InAppMessage.prototype.subscribeToDismissedEvent ab.InAppMessage.prototype.removeSubscription ab.InAppMessage.prototype.removeAllSubscriptions ab.InAppMessage.Button ab.InAppMessage.Button.prototype.subscribeToClickedEvent ab.InAppMessage.Button.prototype.removeSubscription ab.InAppMessage.Button.prototype.removeAllSubscriptions ab.SlideUpMessage ab.ModalMessage ab.FullScreenMessage ab.HtmlMessage ab.ControlMessage ab.Feed ab.Feed.prototype.getUnreadCardCount ab.ContentCards ab.ContentCards.prototype.getUnviewedCardCount ab.Card ab.ClassicCard ab.CaptionedImage ab.Banner ab.ControlCard ab.WindowUtils display display.automaticallyShowNewInAppMessages display.showInAppMessage display.showFeed display.destroyFeed display.toggleFeed display.showContentCards display.hideContentCards display.toggleContentCards sharedLib"
				.split(" "), i = 0; i < s.length; i++) {
			for (var m = s[i], k = appboy, l = m.split("."), j = 0; j < l.length - 1; j++)
				k = k[l[j]];
			k[l[j]] = (new Function("return function " + m.replace(/\./g, "_")
					+ "(){appboyQueue.push(arguments); return true}"))()
		}
		appboy.getUser = function() {
			return new appboy.ab.User
		};
		appboy.getCachedFeed = function() {
			return new appboy.ab.Feed
		};
		appboy.getCachedContentCards = function() {
			return new appboy.ab.ContentCards
		};
		(y = p.createElement(P)).type = 'text/javascript';
		y.src = 'https://js.appboycdn.com/web-sdk/2.2/appboy.min.js';
		y.async = 1;
		(b = p.getElementsByTagName(P)[0]).parentNode.insertBefore(y, b)
	}(window, document, 'script');
	appboy.initialize('87176a41-8b09-4adb-bec0-d4ccc6ce8bfb', {
		baseUrl : 'https://customer.iad-03.braze.com/api/v3'
	});
	appboy.initialize('87176a41-8b09-4adb-bec0-d4ccc6ce8bfb', {
		baseUrl : 'https://customer.fra-01.braze.eu/api/v3'
	})
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
<style>
	.global-alert-box .alert.alert-error {
   	 	background-color: #ff8d7c;
	}
	.global-alert-box .alert{
		.global-alert-box .alert {
	    border: none;
	    border-radius: 2px;
	    box-shadow: 0 2px 4px 0 rgba(0,0,0,0.15);
	    color: white;
	    font-size: 14px;
	    height: auto;
	    line-height: 1.43;
	    padding: 16px 24px;
	    position: relative;
	    width: 300px;
	}
	.alert {
	    padding: 15px;
	    margin-bottom: 1rem;
	    border: 1px solid transparent;
	    border-radius: .25rem;
	}
</style>
<script>
	window.App = App || {};
</script>
<script>
$(document).ready(function(){
    var userInputId = getCookie("userInputId");
    $("#emailId").val(userInputId); 
     
    if($("#emailId").val() != ""){ 
        $("#remember_me").attr("checked", true); 
    }
     
    $("#remember_me").change(function(){ 
        if($("#remember_me").is(":checked")){ 
            var userInputId = $("#emailId").val();
            setCookie("userInputId", userInputId, 7); 
        }else{ 
            deleteCookie("userInputId");
        }
    });
     
    $("#emailId").keyup(function(){ 
        if($("#remember_me").is(":checked")){ 
            var userInputId = $("#emailId").val();
            setCookie("userInputId", userInputId, 7); 
        }
    });
});
 
function setCookie(cookieName, value, exdays){
    var exdate = new Date();
    exdate.setDate(exdate.getDate() + exdays);
    var cookieValue = escape(value) + ((exdays==null) ? "" : "; expires=" + exdate.toGMTString());
    document.cookie = cookieName + "=" + cookieValue;
}
 
function deleteCookie(cookieName){
    var expireDate = new Date();
    expireDate.setDate(expireDate.getDate() - 1);
    document.cookie = cookieName + "= " + "; expires=" + expireDate.toGMTString();
}
 
function getCookie(cookieName) {
    cookieName = cookieName + '=';
    var cookieData = document.cookie;
    var start = cookieData.indexOf(cookieName);
    var cookieValue = '';
    if(start != -1){
        start += cookieName.length;
        var end = cookieData.indexOf(';', start);
        if(end == -1)end = cookieData.length;
        cookieValue = cookieData.substring(start, end);
    }
    return unescape(cookieValue);
}

</script>
</head>
<body class='body' data-action='new'
	data-controller-path='users/sessions' data-controller='sessions'>
	<!-- Google Tag Manager (noscript) -->
	<noscript>
		<iframe src="//www.googletagmanager.com/ns.html?id=GTM-NCVRS4"
			height="0" width="0" style="display: none; visibility: hidden"></iframe>
	</noscript>
	<!-- End Google Tag Manager (noscript) -->
	<c:if test="${ errors.idOrPwNotMatch }">
	<div class='global-alert-box'>
		<div class="alert alert-error">
			이메일이나 패스워드가 다릅니다.
		</div>
	</div>
	</c:if>
	<div id='mrt-header'></div>
	<script type="application/json" id="js-react-on-rails-context">{"railsEnv":"production","inMailer":false,"i18nLocale":"ko","i18nDefaultLocale":"ko","rorVersion":"11.0.9","rorPro":false,"href":"https://www.myrealtrip.com/users/sign_in","location":"/users/sign_in","scheme":"https","host":"www.myrealtrip.com","port":null,"pathname":"/users/sign_in","search":null,"httpAcceptLanguage":"ko-KR,ko;q=0.9,en-US;q=0.8,en;q=0.7","serverSide":false}</script>
	<jsp:include page="/WEB-INF/layout/top2.jsp" />
	<script type="application/json" class="js-react-on-rails-component"
		data-component-name="Header"
		data-dom-id="Header-react-component-cee35659-c9c9-4068-9751-cac2ddb0fa79">{"user":null,"transparent":false,"isRoma":false,"popularCities":[{"rank_name":"basis_rank","pure_rank":1,"city_id":19,"location_name":"오사카","city_key_name":"Osaka","country_key_name":"Japan","total_count":275,"confirm_count":264,"cancel_count":11,"reference_rank":1,"weighted_rank":0.0037105751391465678,"ranking":1},{"rank_name":"basis_rank","pure_rank":2,"city_id":13,"location_name":"파리","city_key_name":"Paris","country_key_name":"France","total_count":151,"confirm_count":112,"cancel_count":39,"reference_rank":2,"weighted_rank":0.015209125475285171,"ranking":2},{"rank_name":"basis_rank","pure_rank":3,"city_id":55,"location_name":"바르셀로나","city_key_name":"Barcelona","country_key_name":"Spain","total_count":70,"confirm_count":63,"cancel_count":7,"reference_rank":3,"weighted_rank":0.045112781954887216,"ranking":3},{"rank_name":"basis_rank","pure_rank":4,"city_id":7,"location_name":"런던","city_key_name":"London","country_key_name":"United Kingdom","total_count":59,"confirm_count":48,"cancel_count":11,"reference_rank":4,"weighted_rank":0.07476635514018691,"ranking":4},{"rank_name":"basis_rank","pure_rank":7,"city_id":40,"location_name":"홍콩","city_key_name":"Hong Kong","country_key_name":"Hong Kong","total_count":45,"confirm_count":44,"cancel_count":1,"reference_rank":8,"weighted_rank":0.07865168539325842,"ranking":5},{"rank_name":"basis_rank","pure_rank":17,"city_id":48,"location_name":"후쿠오카","city_key_name":"Fukuoka","country_key_name":"Japan","total_count":14,"confirm_count":14,"cancel_count":0,"reference_rank":23,"weighted_rank":0.10119047619047618,"ranking":6},{"rank_name":"basis_rank","pure_rank":5,"city_id":32,"location_name":"로마","city_key_name":"Roma","country_key_name":"Italy","total_count":52,"confirm_count":41,"cancel_count":11,"reference_rank":5,"weighted_rank":0.10752688172043012,"ranking":7},{"rank_name":"basis_rank","pure_rank":6,"city_id":9,"location_name":"도쿄","city_key_name":"Tokyo","country_key_name":"Japan","total_count":50,"confirm_count":49,"cancel_count":1,"reference_rank":6,"weighted_rank":0.12121212121212122,"ranking":8},{"rank_name":"basis_rank","pure_rank":28,"city_id":461,"location_name":"고베","city_key_name":"kobe","country_key_name":"Japan","total_count":7,"confirm_count":7,"cancel_count":0,"reference_rank":41,"weighted_rank":0.15384615384615385,"ranking":9},{"rank_name":"basis_rank","pure_rank":8,"city_id":59,"location_name":"싱가포르","city_key_name":"Singapore","country_key_name":"Singapore","total_count":43,"confirm_count":43,"cancel_count":0,"reference_rank":7,"weighted_rank":0.18604651162790697,"ranking":10},{"rank_name":"basis_rank","pure_rank":10,"city_id":115,"location_name":"피렌체","city_key_name":"Firenze","country_key_name":"Italy","total_count":29,"confirm_count":18,"cancel_count":11,"reference_rank":11,"weighted_rank":0.2127659574468085,"ranking":11},{"rank_name":"basis_rank","pure_rank":22,"city_id":22,"location_name":"뉴욕","city_key_name":"New York City","country_key_name":"United States of America","total_count":11,"confirm_count":9,"cancel_count":2,"reference_rank":27,"weighted_rank":0.22000000000000003,"ranking":12},{"rank_name":"basis_rank","pure_rank":9,"city_id":295,"location_name":"교토","city_key_name":"Kyoto","country_key_name":"Japan","total_count":36,"confirm_count":36,"cancel_count":0,"reference_rank":9,"weighted_rank":0.25,"ranking":13},{"rank_name":"basis_rank","pure_rank":12,"city_id":207,"location_name":"인터라켄","city_key_name":"Interlaken","country_key_name":"Switzerland","total_count":24,"confirm_count":19,"cancel_count":5,"reference_rank":13,"weighted_rank":0.27906976744186046,"ranking":14},{"rank_name":"basis_rank","pure_rank":18,"city_id":296,"location_name":"부다페스트","city_key_name":"budapest","country_key_name":"Hungary","total_count":13,"confirm_count":10,"cancel_count":3,"reference_rank":20,"weighted_rank":0.3913043478260869,"ranking":15}],"b2b":{"status":false,"logo":null}}</script>


	<main class='member'>
	<div class='container-fluid content-wrap'>
		<div class='member-panel'>
			<div class='panel-button'>
				<div class='btn-wrap'>
					<a class='btn-new btn--type-outline btn--width-100 btn-sns'
						href='https://www.myrealtrip.com/users/auth/facebook'> <img
						class='icon'
						src='https://d2yoing0loi5gh.cloudfront.net/assets/kitty/setting/fb-logo@2x-2a65bc6ab97a894a1baeca5b714f4201eb991cfc6d955ef657f86de8e56f89d5.png'
						width='18'> <span>페이스북으로 로그인</span>
					</a>
				</div>
				<div class='btn-wrap'>
					<a class='btn-new btn--type-outline btn--width-100 btn-sns'
						href='https://www.myrealtrip.com/users/auth/naver'> <img
						class='icon'
						src='https://d2yoing0loi5gh.cloudfront.net/assets/kitty/setting/naver-logo@2x-332865f7b796a02822378e0b61e6dcace93ae9a24abd810cd774a06b5fbcb0b5.png'
						width='18'> <span>네이버로 로그인</span>
					</a>
				</div>
			</div>
			<div class='panel-line clearfix'>
				<hr class='divider'>
				<div class='or'>또는</div>
			</div>
			<div class='panel-body'>
				<form action="<%= request.getContextPath() %>/login.do" role="form" data-validation="true"
					 accept-charset="UTF-8" method="post">
					<input name="utf8" type="hidden" value="&#x2713;" /><input
						type="hidden" name="authenticity_token"
						value="v86Bx6pdue0/wQzTcCZxzvHV8KPoplP3DiX2zXThd+FxkKsGlNMUTZ/Gp07pPRT8YQrZdJjjkHHBA1NRtu917w==" />
					<div class='form-wrapper'>
						<div class='content-wrapper'>
							<div class='form-group clearfix'>
								<div class='content-title-box'>
									<div class='sub-title'>이메일*</div>
								</div>
								<div class='row'>
									<div class='col-xs-12'>
										<input autocomplete='off' class='form-control' name='user[email]' id="emailId"
											placeholder='이메일' title='이메일' type='email'>
									</div>
								</div>
							</div>
						</div>
						<div class='content-wrapper'>
							<div class='form-group'>
								<div class='content-title-box'>
									<div class='sub-title'>비밀번호*</div>
								</div>
								<div class='row'>
									<div class='col-xs-12'>
										<input class='form-control' name='user[password]' placeholder='비밀번호'
											title='비밀번호' type='password' value="hi1234">
									</div>
								</div>
							</div>
						</div>
						<div class='content-wrapper'>
							<div class='form-group'>
								<div class='row row-margin'>
									<div class='col-xs-6'>
										<div class='checkbox-custom checkbox-primary'>
											<input id='remember_me' name='user[remember_me]'
												type='checkbox'> <label for='remember_me'>아이디 저장</label>
										</div>
									</div>
									<div class='col-xs-6'>
										<div class='find-password'>
											<a data-turbolinks='false' href='<%= request.getContextPath() %>/searchPassword.do'>비밀번호
												찾기</a>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class='btn-wrap'>
							<button class='btn-new btn--type-primary btn--width-100'
								type='submit'>
								<span>이메일로 로그인</span>
							</button>
						</div>
					</div>
				</form>

			</div>
			<div class='panel-footer'>
				<div class='footer-title'>
					아직 마이리얼트립 회원이 아니신가요? <a
						href='https://www.myrealtrip.com/users/sign_up'>회원가입</a>
				</div>
			</div>
		</div>
	</div>
	</main>

	<div id="Footer-react-component-95652282-d036-4318-8118-09bc522f5685"></div>
	<script type="application/json" class="js-react-on-rails-component"
		data-component-name="Footer"
		data-dom-id="Footer-react-component-95652282-d036-4318-8118-09bc522f5685">{"b2b":{"status":false,"b2bCompany":null}}</script>


	<div id='popup-mask'></div>
	<div id='gnb-popup-mask'></div>


	<script type="text/javascript">
		var google_tag_params = {
			ecomm_prodid : 'REPLACE_WITH_VALUE',
			ecomm_pagetype : 'REPLACE_WITH_VALUE',
			ecomm_totalvalue : 'REPLACE_WITH_VALUE',
			travel_destid : 'REPLACE_WITH_VALUE',
			travel_originid : 'REPLACE_WITH_VALUE',
			travel_startdate : 'REPLACE_WITH_VALUE',
			travel_enddate : 'REPLACE_WITH_VALUE',
			travel_pagetype : 'REPLACE_WITH_VALUE',
			travel_totalvalue : 'REPLACE_WITH_VALUE',
		};
	</script>
	<script type="text/javascript">
		/* <![CDATA[ */
		var google_conversion_id = 1004447359;
		var google_custom_params = window.google_tag_params;
		var google_remarketing_only = true;
		/* ]]> */
	</script>
	<script type="text/javascript"
		src="//www.googleadservices.com/pagead/conversion_async.js">
		
	</script>
	<noscript>
		<div style="display: inline;">
			<img height="1" width="1" style="border-style: none;" alt=""
				src="//googleads.g.doubleclick.net/pagead/viewthroughconversion/1004447359/?guid=ON&amp;script=0" />
		</div>
	</noscript>

	<!--  공통 스크립트 -->
	<script
		src="https://d2yoing0loi5gh.cloudfront.net/assets/adiz_sv120-38fea29758c151518c764b4bc1a0bdd8e78c105c31e114ef16a4fd0b8be47a31.js"></script>

	<script type="text/javascript">
		window.criteo_q = window.criteo_q || [];
		window.userEmail = "";
		window.userAgent = "d";

		if (navigator.userAgent
				.match(/Android|Mobile|iP(hone|od|ad)|BlackBerry|IEMobile|Kindle|NetFront|Silk-Accelerated|(hpw|web)OS|Fennec|Minimo|Opera M(obi|ini)|Blazer|Dolfin|Dolphin|Skyfire|Zune/)) {
			//모바일(스마트폰+태블릿)일 때
			window.userAgent = "t";
			if (navigator.userAgent
					.match(/Mobile|iP(hone|od)|BlackBerry|IEMobile|Kindle|NetFront|Silk-Accelerated|(hpw|web)OS|Fennec|Minimo|Opera M(obi|ini)|Blazer|Dolfin|Dolphin|Skyfire|Zune/)) {
				//스마트폰일 때
				window.userAgent = "m";
			}
		}
	</script>





	<script>
		var user = '0'

		dataLayer.push({
			'userID' : user
		});
		/**** fire remarketingTag ******/
		dataLayer.push({
			'event' : 'fireRemarketingTag',
			'google_tag_params' : {
				'ecomm_prodid' : '',
				'ecomm_pagetype' : 'other',
				'ecomm_totalvalue' : ''
			}
		});
		/****** fire remarketingTag ******/

		if (window.jQuery) {
			$(document).ready(
					function() {
						$('.offer-item-container li.item').click(
								function(event) {
									var $offer_item = $(this);

									var offer_id = $offer_item
											.attr('data-offer-id');
									var offer_name = $offer_item.find('.name')
											.text();
									var offer_price = $offer_item.find(
											'.price[data-offer-price]').attr(
											'data-offer-price');
									var offer_category = $offer_item
											.attr('data-offer-type');

									var offer_url = $offer_item.find(
											'a.offer-link').attr('href');

									dataLayer.push({
										'event' : 'productClick',
										'ecommerce' : {
											'click' : {
												'actionField' : {
													'list' : offer_category
												}, // Optional list property.
												'products' : [ {
													'name' : offer_name, // Name or ID is required.
													'id' : offer_id,
													'price' : offer_price,
													'category' : offer_category
												} ]
											}
										}
									});
								});

						$(document).on('wishChecked', function(e) {
							dataLayer.push({
								'event' : 'addToWishlist',
								'offer_id' : e.detail.offerId
							});
						});
					});
		}
	</script>

	<!-- Global site tag (gtag.js) - Google Ads: 1004447359 -->
	<script async
		src="https://www.googletagmanager.com/gtag/js?id=AW-1004447359"></script>
	<script>
		window.dataLayer = window.dataLayer || [];
		function gtag() {
			dataLayer.push(arguments);
		}
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
