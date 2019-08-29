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
<meta name="csrf-token" content="+X4sqSExzm5NROQUFJw7oUBhFpIiAcYpcIn/61XHXDbp/2ONt44ALSPk/8xJTwhkRQ3BnLhLAUY19THApAzLdQ==" />
<meta content='113823448739791' property='fb:app_id'>
<meta content='122600525' property='fb:admins'>
<meta content='마이리얼트립' property='og:site_name'>
<meta content='https://www.myrealtrip.com/offers/33742/reservations/new?choice_set[begin_at]=2019-06-19&amp;choice_set[choices][][key]=3935981&amp;choice_set[choices][][travelers]=1&amp;choice_set[choices][][key]=3935982&amp;choice_set[choices][][travelers]=2' property='og:url'>
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
<link rel="stylesheet" media="screen" href="https://d2yoing0loi5gh.cloudfront.net/webpack/0.06708f03e97ff8f5e67b.css" />
<link rel="stylesheet" media="all" href="https://d2yoing0loi5gh.cloudfront.net/assets/kitty/application_template-5da62e3a802820a73815ac9769d004d04db514aa47276f57320c206cc043d2ac.css" />
<link rel="stylesheet" media="all" href="https://d2yoing0loi5gh.cloudfront.net/assets/kitty/application-528570dd3e09ef23a61d6632bb99ce541f5d7126b025ea8a59f3e9a53c394359.css" />
<link rel="stylesheet" media="screen" href="https://d2yoing0loi5gh.cloudfront.net/webpack/application.06708f03e97ff8f5e67b.css" />
<script src="https://d2yoing0loi5gh.cloudfront.net/webpack/vendor.06708f03e97ff8f5e67b.js"></script>
<script src="https://d2yoing0loi5gh.cloudfront.net/webpack/application.06708f03e97ff8f5e67b.js"></script>
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

    appboy.changeUser(1972914);

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
  var WISH_IDS = []
</script>
</head>
<body class='body' data-action='new' data-controller-path='kitty/reservations' data-controller='reservations' data-sign-in>

<jsp:include page="/WEB-INF/layout/top2.jsp"></jsp:include>    


<main data-category='ticket'>
<div class='step-container'>
<div class='step-wrapper'>
<div class='step-title'>구매하기</div>
<div class='steps row three-steps'>
<div class='col-md-6 col-xs-12 current step'>
<div class='step-number'>
<span class='step-inner-number'>1</span>
<img class='step-icon' height='10px' src='https://d2yoing0loi5gh.cloudfront.net/assets/kitty/reservation/check@2x-862d945b87e7e2ebabdba6d218f523290145aae91ec07ade57b60ad983b64931.png' width='12px'>
</div>
<span class='step-name'>정보입력 &amp; 결제</span>
</div>
<div class='step col-md-6 col-xs-12'>
<div class='step-number'>
<span class='step-inner-number'>2</span>
</div>
<span class='step-name'>완료</span>
</div>
</div>
</div>
</div>

<section class='body-container clearfix bg-gray' data-request-url='/offers/33742/occupied_dates'>
<div class='twin-container row'>
<form id="reservation_form" data-validation="true" action="/offers/33742/reservations" accept-charset="UTF-8" method="post"><input name="utf8" type="hidden" value="&#x2713;" />
<input type="hidden" name="authenticity_token" value="dg28jPjZHFdZBfHS6Qt2mtlLceMkQlgzFdHSD2TdOcxmjPOobmbSFDel6gq02EVf3Cem7b4In1xQrRwklRaujw==" />
<div class='reservation-box col-md-6 col-xs-12 reservation-first-box'>
<div class='panel'>
<div class='bg-img' style='background-image:url(${pInfo.p_pic})'></div>
<div class='panel-body' data-amount='32300.0' data-city-length='4' data-city='Osaka' data-country='Japan' data-currency='KRW' data-id='33742' data-price='32300.0' data-type='ETicket' id='reservation-order-result'>
<div class='title'>${pInfo.p_name }</div>
<div class='profile'>
<img class='img-circle' src='https://d2ur7st6jjikze.cloudfront.net/profile_images/1840444/1840444_original_1555552754.png?1555552754'>
<span>${pInfo.partner }</span>
</div>
</div>
<div class='panel-body panel-body-border'>
<div class='item'>
<div class='strong-text' data-beginAt='${param.date }'></div>
<div class='strong-noti'>선택한 날짜를 다시 한번 확인해주세요!<br/>잘못 입력 시 환불이 불가할 수 있습니다.<br/></div>
<input name='choice_set[begin_at]' type='hidden' value='${param.date }'>
</div>
</div>
<script>
 var total_price= 0;
</script>
<div class='panel-body panel-body-border' id="totalprice" data-amount='32300.0' data-currency='KRW' data-price='₩ 32,300'>
<c:forEach items="${options }" var="dto" varStatus="i">
<div class='item item-border item-padding-b-20'>
<div class='option-name'>${dto.a_d_name }</div>
<div class='option-price-wrapper clearfix' data-option-price='11700.0' data-option-travelers='1'>
<div class='option-quantity'>${nums[i.index]} ✕ ₩ ${dto.a_d_price }</div>
<div class='option-price'>₩ ${nums[i.index] * dto.a_d_price }</div>
<script>
 total_price += ${nums[i.index] * dto.a_d_price };
</script>
</div>
</div>
</c:forEach>
<div class='item item-bold'>
<span>여행금액</span>
<span class='pull-right text-price totalprice'></span>
</div>
</div>

<div class='panel-body panel-body-border panel-list'>
<div class='best-discount-btn' data-gtm-action='최대혜택 적용하기' data-gtm-category='결제' data-opposite='최대혜택 적용됨' id='bestDiscountBtn'>최대혜택 적용하기</div>
<div class='item item-border'>
<div class='form-group clearfix'>
<div class='row'>
<div class='control-label col-xs-12'>
<span>할인쿠폰 즉시발급</span>
</div>
</div>
<div class='row'>
<div class='col-sm-8 col-xs-9'>
<input autocomplete='off' class='form-control' data-offer-id='33742' data-url='/traveler/coupons' id='promotion-coupon-input' name='promotion_coupon_code' placeholder='할인쿠폰코드 입력' type='text'>
<div class='form-error-message'></div>
</div>
<div class='col-sm-4 col-xs-3 with-input-btn'>
<div class='btn-new btn--type-outline btn--size-sm btn--width-100 btn-margin-top-0' id='promotion-coupon-btn'>할인쿠폰 받기</div>
</div>
</div>
</div>
<div class='form-group clearfix'>
<div class='row'>
<div class='control-label col-xs-12'>
<span>쿠폰</span>
<span class='font-blue font-bold' data-coupon-count='0'>0개</span>
</div>
</div>
<div class='row'>
<div class='col-xs-12'>
<select class='form-control' name='promotion[coupon_code_id]'>
<option value=''>쿠폰 선택 안함</option>
</select>
<small class='help-block coupon-warning' id='couponOverTotalWarning'>쿠폰 금액 중 여행 금액을 넘어가는 차액은 사라집니다.</small>
</div>
</div>
</div>
</div>
<div class='row hidden-xs-up price-warning'>
<div class='col-xs-12 help-message'>• 최소 결제 금액은 1,000원 입니다.</div>
</div>
<div class='item item-bold'>
<span>총 할인금액</span>
<span class='pull-right text-price' data-discount-price>0</span>
</div>
</div>
<div class='panel-body blue' id='final-price'>
<span class='item-bold'>최종결제금액</span>
<div class='pull-right price-container totalprice' data-amount='32300' data-currency='KRW' data-price='₩ 32,300'>
</div>
</div>
</div>

</div>

<script>
 $('#totalprice').attr("data-amount",total_price);
 $('.totalprice').text(total_price+" 원");
 $('.price-container').attr("data-amount",total_price);
</script>
<div class='reservation-box col-md-6 col-xs-12'>

<div class='panel'>
<div class='panel-heading'>
<div class='title'>
<img class='icon' height='16px' src='https://d2yoing0loi5gh.cloudfront.net/assets/kitty/reservation/ic-user@2x-5222eb7cdac9bece491cad1e055720cfe21c94aa6f5067e51d3816d6b0a39a94.png' width='15px'>
구매자 정보
</div>
</div>
<div class='panel-body panel-body-border'>
<div class='form-group clearfix extra-form-group'>
<div class='row'>
<div class='col-xs-12 control-title'>
<span>이메일 주소</span>
<span class='font-blue help-message'>(아래의 이메일로 상품 안내 및 예약 안내가 됩니다.)</span>
</div>
</div>
<div class='row'>
<div class='col-xs-3 control-label'>
이메일 주소
</div>
<div class='col-xs-9'>
<input autocomplete='off' class='form-control' id='input-email' name='extra_required[email][address]' value='${memberInfo[0] }'>
</div>
</div>
<div class='row'>
<div class='col-xs-3 control-label'>이메일 주소 확인</div>
<div class='col-xs-9'>
<input autocomplete='off' class='form-control' id='input-email-confirm' name='extra_required[email][address_confirm]' value='${memberInfo[0] }'>
</div>
</div>
</div>

</div>
</div>

<div class='panel'>
<div class='panel-heading'>
<div class='title'>
<img class='icon' height='16px' src='https://d2yoing0loi5gh.cloudfront.net/assets/kitty/reservation/ic-user@2x-5222eb7cdac9bece491cad1e055720cfe21c94aa6f5067e51d3816d6b0a39a94.png' width='15px'>
예약정보
</div>
</div>
<div class='panel-body panel-body-border'>
<div>
<div class='form-group clearfix'>
<div class='row'>
<div class='control-label col-xs-12'>여행자 연락처</div>
</div>
<div class='row'>
<div class='col-xs-5'>
<select class='form-control' name='reservation[phone_icc]' title='국가번호'>
<option value=''>국가번호</option>
<option value='1'>+1 ( 미국  캐나다 )</option>
<option value='7'>+7 ( 러시아  카자흐스탄 )</option>
<option value='20'>+20 ( 이집트 )</option>
<option value='27'>+27 ( 남아프리카 공화국 )</option>
<option value='30'>+30 ( 그리스 )</option>
<option value='31'>+31 ( 네덜란드 )</option>
<option value='32'>+32 ( 벨기에 )</option>
<option value='33'>+33 ( 프랑스 )</option>
<option value='34'>+34 ( 스페인 )</option>
<option value='36'>+36 ( 헝가리 )</option>
<option value='39'>+39 ( 이탈리아  바티칸 )</option>
<option value='40'>+40 ( 루마니아 )</option>
<option value='41'>+41 ( 스위스 )</option>
<option value='43'>+43 ( 오스트리아 )</option>
<option value='44'>+44 ( 영국 )</option>
<option value='45'>+45 ( 덴마크 )</option>
<option value='46'>+46 ( 스웨덴 )</option>
<option value='47'>+47 ( 노르웨이 )</option>
<option value='48'>+48 ( 폴란드 )</option>
<option value='49'>+49 ( 독일 )</option>
<option value='51'>+51 ( 페루 )</option>
<option value='52'>+52 ( 멕시코 )</option>
<option value='53'>+53 ( 쿠바 )</option>
<option value='54'>+54 ( 아르헨티나 )</option>
<option value='55'>+55 ( 브라질 )</option>
<option value='56'>+56 ( 칠레 )</option>
<option value='57'>+57 ( 콜롬비아 )</option>
<option value='58'>+58 ( 베네수엘라 )</option>
<option value='60'>+60 ( 말레이시아 )</option>
<option value='61'>+61 ( 크리스마스 섬  코코스킬링 제도  오스트레일리아 )</option>
<option value='62'>+62 ( 인도네시아 )</option>
<option value='63'>+63 ( 필리핀 )</option>
<option value='64'>+64 ( 뉴질랜드 )</option>
<option value='65'>+65 ( 싱가포르 )</option>
<option value='66'>+66 ( 태국 )</option>
<option value='81'>+81 ( 일본 )</option>
<option selected value='82'>+82 ( 대한민국 )</option>
<option value='84'>+84 ( 베트남 )</option>
<option value='86'>+86 ( 중국 )</option>
<option value='90'>+90 ( 터키 )</option>
<option value='91'>+91 ( 인도 )</option>
<option value='92'>+92 ( 파키스탄 )</option>
<option value='94'>+94 ( 스리랑카 )</option>
<option value='95'>+95 ( 미얀마 )</option>
<option value='98'>+98 ( 이란 )</option>
<option value='212'>+212 ( 모로코 )</option>
<option value='213'>+213 ( 알제리 )</option>
<option value='216'>+216 ( 튀니지 )</option>
<option value='218'>+218 ( 리비아 )</option>
<option value='220'>+220 ( 감비아 )</option>
<option value='221'>+221 ( 세네갈 )</option>
<option value='222'>+222 ( 모리타니 )</option>
<option value='223'>+223 ( 말리 )</option>
<option value='224'>+224 ( 기니 )</option>
<option value='225'>+225 ( 코트디부와르 )</option>
<option value='226'>+226 ( 부르키나파소 )</option>
<option value='227'>+227 ( 니제르 )</option>
<option value='228'>+228 ( 토고 )</option>
<option value='229'>+229 ( 베넹 )</option>
<option value='230'>+230 ( 모리셔스 )</option>
<option value='231'>+231 ( 리베리아 )</option>
<option value='232'>+232 ( 시에라리온 )</option>
<option value='233'>+233 ( 가나 )</option>
<option value='234'>+234 ( 나이지리아 )</option>
<option value='235'>+235 ( 차드 )</option>
<option value='236'>+236 ( 중앙아프리카공화국 )</option>
<option value='237'>+237 ( 카메룬 )</option>
<option value='238'>+238 ( 까뽀베르데 )</option>
<option value='239'>+239 ( 쌍투메 프린시페 )</option>
<option value='240'>+240 ( 적도 기니 )</option>
<option value='241'>+241 ( 가봉 )</option>
<option value='242'>+242 ( 콩고 )</option>
<option value='243'>+243 ( 콩고민주공화국 )</option>
<option value='244'>+244 ( 앙골라 )</option>
<option value='245'>+245 ( 기네비쏘 )</option>
<option value='248'>+248 ( 세이셸 )</option>
<option value='249'>+249 ( 수단 )</option>
<option value='250'>+250 ( 르완다 )</option>
<option value='251'>+251 ( 이디오피아 )</option>
<option value='252'>+252 ( 소말리아 )</option>
<option value='253'>+253 ( 지부티 )</option>
<option value='254'>+254 ( 케냐 )</option>
<option value='255'>+255 ( 탄자니아 )</option>
<option value='256'>+256 ( 우간다 )</option>
<option value='257'>+257 ( 브룬디 )</option>
<option value='258'>+258 ( 모잠비크 )</option>
<option value='260'>+260 ( 잠비아 )</option>
<option value='261'>+261 ( 마다가스카르 )</option>
<option value='263'>+263 ( 짐바브웨 )</option>
<option value='264'>+264 ( 나미비아 )</option>
<option value='265'>+265 ( 말라위 )</option>
<option value='266'>+266 ( 레소토 )</option>
<option value='267'>+267 ( 보츠와나 )</option>
<option value='268'>+268 ( 스와질랜드 )</option>
<option value='269'>+269 ( 코모르 )</option>
<option value='290'>+290 ( 세인트 헬레나 )</option>
<option value='297'>+297 ( 아루바 )</option>
<option value='298'>+298 ( 페로 군도 )</option>
<option value='299'>+299 ( 그린랜드 )</option>
<option value='350'>+350 ( 영국령 지브롤터 )</option>
<option value='351'>+351 ( 포르투갈 )</option>
<option value='352'>+352 ( 룩셈부르크 )</option>
<option value='353'>+353 ( 아일랜드 )</option>
<option value='354'>+354 ( 아이슬란드 )</option>
<option value='355'>+355 ( 알바니아 )</option>
<option value='356'>+356 ( 몰타 )</option>
<option value='357'>+357 ( 사이프러스 )</option>
<option value='358'>+358 ( 핀란드 )</option>
<option value='359'>+359 ( 불가리아 )</option>
<option value='370'>+370 ( 리투아니아 )</option>
<option value='371'>+371 ( 라트비아 )</option>
<option value='372'>+372 ( 에스토니아 )</option>
<option value='373'>+373 ( 몰도바 )</option>
<option value='374'>+374 ( 아르메니아 )</option>
<option value='375'>+375 ( 벨라루스 )</option>
<option value='376'>+376 ( 안도라 )</option>
<option value='377'>+377 ( 모나코 )</option>
<option value='378'>+378 ( 산마리노 )</option>
<option value='380'>+380 ( 우크라이나 )</option>
<option value='381'>+381 ( 세르비아 )</option>
<option value='382'>+382 ( 몬테네그로 )</option>
<option value='385'>+385 ( 크로아티아 )</option>
<option value='386'>+386 ( 슬로베니아 )</option>
<option value='387'>+387 ( 보스니아 헤르체고비나 )</option>
<option value='389'>+389 ( 마케도니아 )</option>
<option value='420'>+420 ( 체코 )</option>
<option value='421'>+421 ( 슬로바키아 )</option>
<option value='423'>+423 ( 리히텐슈타인 )</option>
<option value='500'>+500 ( 포클랜드 )</option>
<option value='501'>+501 ( 벨리즈 )</option>
<option value='502'>+502 ( 과테말라 )</option>
<option value='503'>+503 ( 엘살바도르 )</option>
<option value='504'>+504 ( 온두라스 )</option>
<option value='505'>+505 ( 니카라과 )</option>
<option value='506'>+506 ( 코스타리카 )</option>
<option value='507'>+507 ( 파나마 )</option>
<option value='508'>+508 ( 세인트 피에르 미퀠론 )</option>
<option value='509'>+509 ( 아이티 )</option>
<option value='591'>+591 ( 볼리비아 )</option>
<option value='592'>+592 ( 가이아나 )</option>
<option value='593'>+593 ( 에쿠아도르 )</option>
<option value='595'>+595 ( 파라과이 )</option>
<option value='597'>+597 ( 수리남 )</option>
<option value='598'>+598 ( 우루과이 )</option>
<option value='672'>+672 ( 남극 )</option>
<option value='673'>+673 ( 브루나이 )</option>
<option value='674'>+674 ( 나우루 )</option>
<option value='675'>+675 ( 파푸아뉴기니 )</option>
<option value='676'>+676 ( 통가 )</option>
<option value='677'>+677 ( 솔로몬 군도 )</option>
<option value='678'>+678 ( 바누아투 )</option>
<option value='679'>+679 ( 피지 )</option>
<option value='680'>+680 ( 팔라우 )</option>
<option value='681'>+681 ( 월리스 후트나 )</option>
<option value='682'>+682 ( 쿠크 군도 )</option>
<option value='683'>+683 ( 니우에 )</option>
<option value='685'>+685 ( 사모아 )</option>
<option value='686'>+686 ( 키리바시 )</option>
<option value='687'>+687 ( 뉴 칼레도니아 )</option>
<option value='688'>+688 ( 투발루 )</option>
<option value='689'>+689 ( 프랑스령 폴리네시아 )</option>
<option value='690'>+690 ( 토켈라우 )</option>
<option value='691'>+691 ( 마이크로네시아 )</option>
<option value='692'>+692 ( 마샬 군도 )</option>
<option value='850'>+850 ( 북한 )</option>
<option value='852'>+852 ( 홍콩 )</option>
<option value='853'>+853 ( 마카오 )</option>
<option value='855'>+855 ( 캄보디아 )</option>
<option value='856'>+856 ( 라오스 )</option>
<option value='870'>+870 ( 핏케언 군도 )</option>
<option value='880'>+880 ( 방글라데시 )</option>
<option value='886'>+886 ( 대만 )</option>
<option value='960'>+960 ( 몰디브 )</option>
<option value='961'>+961 ( 레바논 )</option>
<option value='962'>+962 ( 요르단 )</option>
<option value='963'>+963 ( 시리아 )</option>
<option value='964'>+964 ( 이라크 )</option>
<option value='965'>+965 ( 쿠웨이트 )</option>
<option value='966'>+966 ( 사우디아라비아 )</option>
<option value='967'>+967 ( 예멘 )</option>
<option value='968'>+968 ( 오만 )</option>
<option value='971'>+971 ( 아랍에미리트 )</option>
<option value='972'>+972 ( 이스라엘 )</option>
<option value='973'>+973 ( 바레인 )</option>
<option value='974'>+974 ( 카타르 )</option>
<option value='975'>+975 ( 부탄 )</option>
<option value='976'>+976 ( 몽골 )</option>
<option value='977'>+977 ( 네팔 )</option>
<option value='992'>+992 ( 타지키스탄 )</option>
<option value='993'>+993 ( 투르크메니스탄 )</option>
<option value='994'>+994 ( 아제르바이잔 )</option>
<option value='995'>+995 ( 조지아 )</option>
<option value='996'>+996 ( 키르기스스탄 )</option>
<option value='998'>+998 ( 우즈베키스탄 )</option>
[[&quot;+1 ( 미국  캐나다 )&quot;, 1], [&quot;+7 ( 러시아  카자흐스탄 )&quot;, 7], [&quot;+20 ( 이집트 )&quot;, 20], [&quot;+27 ( 남아프리카 공화국 )&quot;, 27], [&quot;+30 ( 그리스 )&quot;, 30], [&quot;+31 ( 네덜란드 )&quot;, 31], [&quot;+32 ( 벨기에 )&quot;, 32], [&quot;+33 ( 프랑스 )&quot;, 33], [&quot;+34 ( 스페인 )&quot;, 34], [&quot;+36 ( 헝가리 )&quot;, 36], [&quot;+39 ( 이탈리아  바티칸 )&quot;, 39], [&quot;+40 ( 루마니아 )&quot;, 40], [&quot;+41 ( 스위스 )&quot;, 41], [&quot;+43 ( 오스트리아 )&quot;, 43], [&quot;+44 ( 영국 )&quot;, 44], [&quot;+45 ( 덴마크 )&quot;, 45], [&quot;+46 ( 스웨덴 )&quot;, 46], [&quot;+47 ( 노르웨이 )&quot;, 47], [&quot;+48 ( 폴란드 )&quot;, 48], [&quot;+49 ( 독일 )&quot;, 49], [&quot;+51 ( 페루 )&quot;, 51], [&quot;+52 ( 멕시코 )&quot;, 52], [&quot;+53 ( 쿠바 )&quot;, 53], [&quot;+54 ( 아르헨티나 )&quot;, 54], [&quot;+55 ( 브라질 )&quot;, 55], [&quot;+56 ( 칠레 )&quot;, 56], [&quot;+57 ( 콜롬비아 )&quot;, 57], [&quot;+58 ( 베네수엘라 )&quot;, 58], [&quot;+60 ( 말레이시아 )&quot;, 60], [&quot;+61 ( 크리스마스 섬  코코스킬링 제도  오스트레일리아 )&quot;, 61], [&quot;+62 ( 인도네시아 )&quot;, 62], [&quot;+63 ( 필리핀 )&quot;, 63], [&quot;+64 ( 뉴질랜드 )&quot;, 64], [&quot;+65 ( 싱가포르 )&quot;, 65], [&quot;+66 ( 태국 )&quot;, 66], [&quot;+81 ( 일본 )&quot;, 81], [&quot;+82 ( 대한민국 )&quot;, 82], [&quot;+84 ( 베트남 )&quot;, 84], [&quot;+86 ( 중국 )&quot;, 86], [&quot;+90 ( 터키 )&quot;, 90], [&quot;+91 ( 인도 )&quot;, 91], [&quot;+92 ( 파키스탄 )&quot;, 92], [&quot;+94 ( 스리랑카 )&quot;, 94], [&quot;+95 ( 미얀마 )&quot;, 95], [&quot;+98 ( 이란 )&quot;, 98], [&quot;+212 ( 모로코 )&quot;, 212], [&quot;+213 ( 알제리 )&quot;, 213], [&quot;+216 ( 튀니지 )&quot;, 216], [&quot;+218 ( 리비아 )&quot;, 218], [&quot;+220 ( 감비아 )&quot;, 220], [&quot;+221 ( 세네갈 )&quot;, 221], [&quot;+222 ( 모리타니 )&quot;, 222], [&quot;+223 ( 말리 )&quot;, 223], [&quot;+224 ( 기니 )&quot;, 224], [&quot;+225 ( 코트디부와르 )&quot;, 225], [&quot;+226 ( 부르키나파소 )&quot;, 226], [&quot;+227 ( 니제르 )&quot;, 227], [&quot;+228 ( 토고 )&quot;, 228], [&quot;+229 ( 베넹 )&quot;, 229], [&quot;+230 ( 모리셔스 )&quot;, 230], [&quot;+231 ( 리베리아 )&quot;, 231], [&quot;+232 ( 시에라리온 )&quot;, 232], [&quot;+233 ( 가나 )&quot;, 233], [&quot;+234 ( 나이지리아 )&quot;, 234], [&quot;+235 ( 차드 )&quot;, 235], [&quot;+236 ( 중앙아프리카공화국 )&quot;, 236], [&quot;+237 ( 카메룬 )&quot;, 237], [&quot;+238 ( 까뽀베르데 )&quot;, 238], [&quot;+239 ( 쌍투메 프린시페 )&quot;, 239], [&quot;+240 ( 적도 기니 )&quot;, 240], [&quot;+241 ( 가봉 )&quot;, 241], [&quot;+242 ( 콩고 )&quot;, 242], [&quot;+243 ( 콩고민주공화국 )&quot;, 243], [&quot;+244 ( 앙골라 )&quot;, 244], [&quot;+245 ( 기네비쏘 )&quot;, 245], [&quot;+248 ( 세이셸 )&quot;, 248], [&quot;+249 ( 수단 )&quot;, 249], [&quot;+250 ( 르완다 )&quot;, 250], [&quot;+251 ( 이디오피아 )&quot;, 251], [&quot;+252 ( 소말리아 )&quot;, 252], [&quot;+253 ( 지부티 )&quot;, 253], [&quot;+254 ( 케냐 )&quot;, 254], [&quot;+255 ( 탄자니아 )&quot;, 255], [&quot;+256 ( 우간다 )&quot;, 256], [&quot;+257 ( 브룬디 )&quot;, 257], [&quot;+258 ( 모잠비크 )&quot;, 258], [&quot;+260 ( 잠비아 )&quot;, 260], [&quot;+261 ( 마다가스카르 )&quot;, 261], [&quot;+263 ( 짐바브웨 )&quot;, 263], [&quot;+264 ( 나미비아 )&quot;, 264], [&quot;+265 ( 말라위 )&quot;, 265], [&quot;+266 ( 레소토 )&quot;, 266], [&quot;+267 ( 보츠와나 )&quot;, 267], [&quot;+268 ( 스와질랜드 )&quot;, 268], [&quot;+269 ( 코모르 )&quot;, 269], [&quot;+290 ( 세인트 헬레나 )&quot;, 290], [&quot;+297 ( 아루바 )&quot;, 297], [&quot;+298 ( 페로 군도 )&quot;, 298], [&quot;+299 ( 그린랜드 )&quot;, 299], [&quot;+350 ( 영국령 지브롤터 )&quot;, 350], [&quot;+351 ( 포르투갈 )&quot;, 351], [&quot;+352 ( 룩셈부르크 )&quot;, 352], [&quot;+353 ( 아일랜드 )&quot;, 353], [&quot;+354 ( 아이슬란드 )&quot;, 354], [&quot;+355 ( 알바니아 )&quot;, 355], [&quot;+356 ( 몰타 )&quot;, 356], [&quot;+357 ( 사이프러스 )&quot;, 357], [&quot;+358 ( 핀란드 )&quot;, 358], [&quot;+359 ( 불가리아 )&quot;, 359], [&quot;+370 ( 리투아니아 )&quot;, 370], [&quot;+371 ( 라트비아 )&quot;, 371], [&quot;+372 ( 에스토니아 )&quot;, 372], [&quot;+373 ( 몰도바 )&quot;, 373], [&quot;+374 ( 아르메니아 )&quot;, 374], [&quot;+375 ( 벨라루스 )&quot;, 375], [&quot;+376 ( 안도라 )&quot;, 376], [&quot;+377 ( 모나코 )&quot;, 377], [&quot;+378 ( 산마리노 )&quot;, 378], [&quot;+380 ( 우크라이나 )&quot;, 380], [&quot;+381 ( 세르비아 )&quot;, 381], [&quot;+382 ( 몬테네그로 )&quot;, 382], [&quot;+385 ( 크로아티아 )&quot;, 385], [&quot;+386 ( 슬로베니아 )&quot;, 386], [&quot;+387 ( 보스니아 헤르체고비나 )&quot;, 387], [&quot;+389 ( 마케도니아 )&quot;, 389], [&quot;+420 ( 체코 )&quot;, 420], [&quot;+421 ( 슬로바키아 )&quot;, 421], [&quot;+423 ( 리히텐슈타인 )&quot;, 423], [&quot;+500 ( 포클랜드 )&quot;, 500], [&quot;+501 ( 벨리즈 )&quot;, 501], [&quot;+502 ( 과테말라 )&quot;, 502], [&quot;+503 ( 엘살바도르 )&quot;, 503], [&quot;+504 ( 온두라스 )&quot;, 504], [&quot;+505 ( 니카라과 )&quot;, 505], [&quot;+506 ( 코스타리카 )&quot;, 506], [&quot;+507 ( 파나마 )&quot;, 507], [&quot;+508 ( 세인트 피에르 미퀠론 )&quot;, 508], [&quot;+509 ( 아이티 )&quot;, 509], [&quot;+591 ( 볼리비아 )&quot;, 591], [&quot;+592 ( 가이아나 )&quot;, 592], [&quot;+593 ( 에쿠아도르 )&quot;, 593], [&quot;+595 ( 파라과이 )&quot;, 595], [&quot;+597 ( 수리남 )&quot;, 597], [&quot;+598 ( 우루과이 )&quot;, 598], [&quot;+672 ( 남극 )&quot;, 672], [&quot;+673 ( 브루나이 )&quot;, 673], [&quot;+674 ( 나우루 )&quot;, 674], [&quot;+675 ( 파푸아뉴기니 )&quot;, 675], [&quot;+676 ( 통가 )&quot;, 676], [&quot;+677 ( 솔로몬 군도 )&quot;, 677], [&quot;+678 ( 바누아투 )&quot;, 678], [&quot;+679 ( 피지 )&quot;, 679], [&quot;+680 ( 팔라우 )&quot;, 680], [&quot;+681 ( 월리스 후트나 )&quot;, 681], [&quot;+682 ( 쿠크 군도 )&quot;, 682], [&quot;+683 ( 니우에 )&quot;, 683], [&quot;+685 ( 사모아 )&quot;, 685], [&quot;+686 ( 키리바시 )&quot;, 686], [&quot;+687 ( 뉴 칼레도니아 )&quot;, 687], [&quot;+688 ( 투발루 )&quot;, 688], [&quot;+689 ( 프랑스령 폴리네시아 )&quot;, 689], [&quot;+690 ( 토켈라우 )&quot;, 690], [&quot;+691 ( 마이크로네시아 )&quot;, 691], [&quot;+692 ( 마샬 군도 )&quot;, 692], [&quot;+850 ( 북한 )&quot;, 850], [&quot;+852 ( 홍콩 )&quot;, 852], [&quot;+853 ( 마카오 )&quot;, 853], [&quot;+855 ( 캄보디아 )&quot;, 855], [&quot;+856 ( 라오스 )&quot;, 856], [&quot;+870 ( 핏케언 군도 )&quot;, 870], [&quot;+880 ( 방글라데시 )&quot;, 880], [&quot;+886 ( 대만 )&quot;, 886], [&quot;+960 ( 몰디브 )&quot;, 960], [&quot;+961 ( 레바논 )&quot;, 961], [&quot;+962 ( 요르단 )&quot;, 962], [&quot;+963 ( 시리아 )&quot;, 963], [&quot;+964 ( 이라크 )&quot;, 964], [&quot;+965 ( 쿠웨이트 )&quot;, 965], [&quot;+966 ( 사우디아라비아 )&quot;, 966], [&quot;+967 ( 예멘 )&quot;, 967], [&quot;+968 ( 오만 )&quot;, 968], [&quot;+971 ( 아랍에미리트 )&quot;, 971], [&quot;+972 ( 이스라엘 )&quot;, 972], [&quot;+973 ( 바레인 )&quot;, 973], [&quot;+974 ( 카타르 )&quot;, 974], [&quot;+975 ( 부탄 )&quot;, 975], [&quot;+976 ( 몽골 )&quot;, 976], [&quot;+977 ( 네팔 )&quot;, 977], [&quot;+992 ( 타지키스탄 )&quot;, 992], [&quot;+993 ( 투르크메니스탄 )&quot;, 993], [&quot;+994 ( 아제르바이잔 )&quot;, 994], [&quot;+995 ( 조지아 )&quot;, 995], [&quot;+996 ( 키르기스스탄 )&quot;, 996], [&quot;+998 ( 우즈베키스탄 )&quot;, 998]]</select>
</div>
<div class='col-xs-7'>
<input class='form-control' maxlength='20' minlength='6' name='reservation[phone_number]' placeholder='전화번호 입력' title='여행자 연락처' type='tel' value='${memberInfo[1] }'>
</div>
</div>
<div class='row'>
<div class='col-xs-12 font-blue help-message'>예약 관련 연락 시 사용될 번호이니 정확하게 기입하여 주세요.</div>
</div>
</div>
<div class='form-group clearfix'>
<div class='row'>
<div class='control-label col-xs-12'>여행컨셉</div>
</div>
<div class='row'>
<div class='col-xs-12'>
<select class='form-control' name='user_privacy[age]' title='연령대'>
<option disabled selected>연령대</option>
<option value='10'>10대</option>
<option selected value='20'>20대</option>
<option value='30'>30대</option>
<option value='40'>40대</option>
<option value='50'>50대</option>
<option value='60'>60대 이상</option>
[10, 20, 30, 40, 50, 60]</select>
</div>
</div>
<div class='row'>
<div class='col-xs-12'>
<select class='form-control' name='reservation[purpose]' title='여행컨셉'>
<option disabled selected>여행 목적을 선택해주세요(필수)</option>
<option value='alone'>혼자 떠나는 여행</option>
<option value='friends'>친구들과 떠나는 여행</option>
<option value='lover'>연인과 함께 떠나는 로맨틱한 여행</option>
<option value='honeymoon'>허니문</option>
<option value='partner'>배우자와 단 둘이 떠나는 여행</option>
<option value='parents'>부모님과 떠나는 여행</option>
<option value='children'>자녀와 함께 떠나는 여행</option>
<option value='official'>출장, 학회</option>
<option value='etc'>기타</option>
[&quot;alone&quot;, &quot;friends&quot;, &quot;lover&quot;, &quot;honeymoon&quot;, &quot;partner&quot;, &quot;parents&quot;, &quot;children&quot;, &quot;official&quot;, &quot;etc&quot;]</select>
</div>
</div>
</div>
<div class='form-group clearfix'>
<div class='row'>
<div class='control-label col-xs-12'>
추가정보
<div class='col-xs-12 font-blue help-message'>수령자 이름을 꼭 입력해주세요(ex.홍길동)</div>
</div>
</div>
<div class='row'>
<div class='col-xs-12'>
<textarea class='form-control' data-message-placeholder name='reservation[message]'></textarea>
</div>
</div>
</div>
</div>
</div>
</div>

<div class='panel' id='paymentForm'>
<input name='reservation_uuid' type='hidden' value='efda9bcf-e985-4862-a82a-c78effb094db'>
<div class='panel-heading'>
<div class='title'>
<img class='icon' height='13px' src='https://d2yoing0loi5gh.cloudfront.net/assets/kitty/reservation/ic-card@2x-2d8b062fe151e5f5d4f1942a072f282186dc7f65a27d404df3c01e5f98bf3b74.png' width='19px'>
결제정보
</div>
</div>
<div class='panel-body panel-body-border'>
<div class='clearfix'>
<div class='input-group'>
<div class='clearfix'>
<div class='radio-custom radio-primary'>
<input checked='checked' id='type-wcard' name='payment[paytype]' type='radio' value='wcard'>
<label for='type-wcard'>신용카드 결제</label>
</input>
</div>
</div>
<div class='clearfix'>
<div class='radio-custom radio-primary'>
<input id='type-bank' name='payment[paytype]' type='radio' value='bank'>
<label for='type-bank'>실시간계좌이체</label>
</input>
</div>
</div>
<div class='clearfix'>
<div class='radio-custom radio-primary'>
<input id='type-vbank' name='payment[paytype]' type='radio' value='vbank'>
<label for='type-vbank'>무통장 입금</label>
</input>
</div>
</div>
<div class='clearfix'>
<div class='radio-custom radio-primary'>
<input id='type-toss' name='payment[paytype]' type='radio' value='toss'>
<label for='type-toss'>
토스계좌결제
<img class='payment-icon' src='https://d2yoing0loi5gh.cloudfront.net/assets/kitty/reservation/toss_logo@2x-872c43d7bed424215fc50be1865dcff40738d7195621ab20b938bc273495503b.png' width='39'>
</label>
</input>
</div>
</div>
<div class='clearfix'>
<div class='radio-custom radio-primary'>
<input id='type-naverpay' name='payment[paytype]' type='radio' value='naverpay'>
<label for='type-naverpay'>
네이버페이
<img class='payment-icon' src='https://d2yoing0loi5gh.cloudfront.net/assets/kitty/reservation/naverpay_logo@2x-295ee13bb970072b3e5fb4bda4a80cfd5d14ae677927109b3e42b0acdf6f5232.png' width='78'>
</label>
</input>
</div>
</div>
</div>
</div>
</div>
</div>
<script>
  
</script>

<div class='panel'>
<div class='panel-heading'>
<div class='title'>
<img class='icon' height='18px' src='https://d2yoing0loi5gh.cloudfront.net/assets/kitty/reservation/ic-terms@2x-e4999aacb490de8f6ae8e72b0c762a565c1bebd5860876961661de0841a18e53.png' width='15px'>
약관
</div>
</div>
<div class='panel-body panel-body-border'>
<div class='form-group clearfix terms-container'>
<div class='row'>
<div class='control-label col-xs-12'>여행자 약관(필수)</div>
</div>
<div class='row'>
<div class='col-xs-12'>
<div class='terms-box'>
<p>여행자 약관<br/><br/>제1장 목적 및 정의<br/><br/>제1조 (목적)<br/>이 약관(이하 “여행자약관”)은 주식회사 마이리얼트립(이하 “당사”)이 운영하는 “마이리얼트립” 사이트(www.myrealtrip.com) 또는 어플리케이션(Application, 이하 웹사이트와 어플리케이션을 통칭하여 “마이리얼트립 플랫폼”)을 통하여 여행자와 가이드 사이에서 체결되는 여행계약(이하 “여행계약”)의 중개와 관련하여 특히 여행자의 권리와 의무 등 법률관계를 명확히 함을 목적으로 합니다.<br/><br/>제2조 (용어의 정의)<br/>이 약관에서 사용되는 용어의 정의는 다음과 같습니다.<br/>(1) “가이드서비스”는 여행자가 원하는 날짜와 조건에 따라 당사가 중개한 가이드로부터 제공받는 제7조의 서비스를 말합니다.<br/>(2) “가이드”는 당사가 여행자에게 중개한 자로서 여행지에서 여행자에게 가이드서비스를 제공하는 자를 말합니다.<br/>(3) “투어”는 여행자가 여행계약에 따라 가이드로부터 가이드서비스를 제공받으며 향유하는 여행을 말합니다.<br/>(4) “여행확인증”은 가이드와 여행자가 구체적인 가이드서비스의 내용 및 제반 비용 등에 관한 사항을 합의하여 확정한 문서를 말합니다.<br/>(5) “수수료”는 여행자가 가이드와의 여행계약 체결을 중개/대리한 대가로 당사에 지급하는 보수를 말합니다.<br/>(6) “가이드요금”은 여행자가 가이드서비스 제공의 대가로 가이드에게 지급하는 보수를 말합니다.<br/>(7) “여행요금”은 여행자가 본 약관에 따른 여행계약과 관련하여 당사에 지급하는 수수료 및 가이드에게 지급하는 가이드요금을 합한 금원을 말합니다.<br/>(8) “미팅포인트”는 투어를 위하여 가이드와 여행자가 만나기로 약속한 장소를 말합니다.<br/>(9) “지각시간”은 가이드와 여행자가 투어를 위하여 미팅포인트에서 만나기로 정한 시각으로부터 지각한 당사자가 미팅포인트에 실제 도착하기까지 경과한 시간을 말합니다.<br/><br/>제2장 기본 사항<br/><br/>제3조 (여행계약의 당사자 및 당사의 지위)<br/>여행자와 여행계약을 체결하고 가이드서비스를 제공하는 법적 주체는 가이드이며, 당사는 마이리얼트립 플랫폼을 통하여 여행자가 원하는 날짜와 조건에 맞추어 가이드와 여행계약을 체결하고 가이드서비스를 제공받는 것을 중개하는 업무를 수행합니다.<br/><br/>제4조 (가이드의 독립당사자 지위)<br/>1. 당사는 여행자와 가이드 사이에 투어를 중개할 뿐이며, 가이드는 당사와 고용 관계에 있지 않음을 확인합니다. 또한, 당사는 가이드에 대하여 사용자로서의 책임을 일체 부담하지 않는다는 점을 명확히 합니다.<br/>2. 가이드는 가이드약관의 이행에 필요한 관련 법령상의 허가, 등록, 신고 또는 보험, 공제, 예치 등의 의무사항을 모두 이행하였으며, 당사는 가이드가 관련 법령 위배로 인하여 여행자 또는 제3자에 대하여 손해배상 등 책임을 지더라도 당사는 이에 관하여 아무런 책임이 없습니다.<br/><br/>제5조 (여행계약의 구성)<br/>여행계약은 여행확인증과 여행자약관에 나타난 사항을 그 계약내용으로 합니다.<br/><br/>제6조 (당사자 및 당사의 기본 의무)<br/>1. 가이드는 사전에 여행자와 약정한 내용에 따라 투어를 성실하게 진행하여야 하며, 그밖에 여행자에게 안전하고 만족스러운 가이드서비스를 제공하기 위하여 여행계약상 의무를 성실하게 이행하여야 합니다.<br/>2. 여행자는 여행계약에 따른 의무를 성실하게 이행하며, 안전하고 즐거운 여행을 위하여 여행자간 화합도모 및 가이드의 여행질서 유지에 적극 협조합니다.<br/>3. 당사는 여행계약 체결의 중개 행위 등에 있어 맡은 바 임무를 충실히 수행합니다.<br/><br/>제7조 (가이드서비스의 내용)<br/>가이드가 여행자에게 제공하는 가이드서비스의 구체적인 내용은 다음 각 호의 1과 같습니다.<br/>(1) 여행자의 의사 및 제반 사정을 고려한 투어 일정의 계획 및 조정<br/>(2) 미팅포인트에서 일정에 정한 각 여행지로 여행자를 인솔<br/>(3) 각 여행지에 대한 구체적인 안내 및 설명 제공<br/>(4) 당일 최종 여행지로부터 여행자의 숙소 등 일정에 정한 해산 지점으로 여행자를 인솔<br/>(5) 여행지에서 여행자의 원활한 의사소통 협조<br/>(6) 사고 등 문제 발생시의 여행자 보호 조치<br/>(7) 기타 투어 관련 제반 업무<br/><br/>제3장 여행계약의 체결<br/><br/>제8조 (여행계약 체결 및 여행확인증, 약관 등 교부)<br/>1. 다음 각 호의 경우 여행자와 가이드 사이에 여행계약이 체결됩니다. 단, 제1호의 경우 가이드는 여행자에게 청약과 동시에 여행요금을 지급할 것을 요구할 수 있습니다.<br/>(1) 가이드가 투어 일정, 여행요금 등 그 내용을 정하여 미리 제시한 청약의 유인에 따라 여행자가 투어를 신청하여 청약하면, 가이드가 여행자의 신청 내용에 따라 투어가 가능하다고 판단할 경우 미리 고지한 정해진 승낙 기한 내에 여행자에게 투어가 가능함을 회신함으로써 승낙하는 경우 또는 미리 고지한 정해진 승낙 기한 내에 본 조 제3항에 따른 투어의 불가능 회신이 없는 경우<br/>(2) 여행자와 가이드 사이에 사전에 투어의 일정, 여행요금 등 그 내용에 대해 합의가 이루어지는 경우<br/>2. 가이드는 본 조 제1항 각 호에 따라 여행계약이 체결된 경우, 여행자의 요청에 따라 당사를 통해 여행확인증과 여행자약관 사본을 여행자에게 교부합니다.<br/>3. 본 조 제1항 제1호에서 가이드가 여행자에게 청약과 동시에 여행요금의 지급을 요구하여 여행자가 이를 지급한 경우라도, 가이드가 투어가 불가능하다고 판단하여 미리 고지한 시간 또는 기일 내에 이를 여행자에게 회신할 경우 여행계약이 성립하지 않습니다.<br/>4. 당사는 본 조 제3항에 따라 여행계약이 성립하지 않는 경우 지급 받은 여행요금 전액을 여행자에게 반환합니다.<br/>5. 여행자가 본 조 제3항에 따라 미리 고지한 시간 또는 기일 내에 여행계약에 관한 청약을 취소하는 경우, 당사는 지급 받은 여행요금 전액을 여행자에게 반환합니다.<br/>6. 당사 웹사이트 및 어플리케이션을 통하여 예약하지 않은 경우 본 조 각 항의 여행계약 체결이 되지 않은 것으로 간주하며 당사에게 중개에 대한 책임 및 손해에 대한 배상을 요구할 수 없습니다.<br/><br/>제9조 (전자정보망을 통한 예약확인증 및 약관 등의 교부 간주)<br/>여행자가 인터넷 등 전자정보망으로 제공된 예약확인증 및 여행자약관의 내용에 동의하고 여행계약의 체결을 신청한 데 대하여 가이드가 전자정보망 내지 기계적 장치 등을 이용하여 여행자에게 승낙의 의사를 통지한 경우, 가이드와 여행자 사이에 제8조 제2항의 예약확인증 및 여행자약관 교부가 이루어진 것으로 봅니다.<br/><br/>제10조 (계약 체결의 거절)<br/>가이드(또는 가이드를 대신하여 당사)는 다음 각 호의 1에 해당하는 사유가 있을 경우에는 해당 여행자에 대하여 여행계약의 체결을 거절할 수 있으며, 투어가 확정된 이후에 그 사유를 알게 된 경우에도 해당 여행계약을 해제할 수 있습니다.<br/>(1) 여행자가 다른 여행자에게 폐를 끼치거나 여행의 원활한 실시에 지장이 있다고 인정될 때<br/>(2) 여행자가 보행이나 운송수단 탑승이 불가능한 부상, 전염성 질병 등 여행자의 신체에 이상이 발생하여 투어 참가가 불가능함이 의료기관이 발급한 진단서에 의해 객관적으로 확인되는 경우<br/><br/>제4장 여행요금<br/><br/>제11조 (여행요금)<br/>1. 여행자는 여행계약의 중개 및 가이드서비스 제공의 대가로서 여행확인증에 기재된 금액의 여행요금을 당사에 지급합니다. 여행요금에는 다음 각 호의 요금 또는 비용은 포함되어 있지 않습니다.<br/>(1) 투어 중 개인적 성질의 제비용(통신료, 관세, 일체의 팁, 세탁비, 개인적으로 추가한 식, 음료)<br/>(2) 치료비, 입원비 등 투어 중 여행자의 질병, 상해 또는 그 밖의 사유로 인하여 지불해야 하는 일체의 비용<br/>(3) 여행자가 통상의 규격이나 규정을 초과하여 발생한 비용(초과 규격의 수하물 등 각종 추가 요금)<br/>(4) 여행 수속 제비용(여권 인지대, 사증료 등)<br/>(5) 기타 여행확인증에 구체적으로 명시되지 않은 비용<br/>2. 수수료는 별도의 약정에 따른 금액으로 하며, 가이드요금은 여행요금 총액에서 수수료 상당액을 제한 나머지 금액으로 합니다.<br/>3. 여행자는 여행요금을 당사가 지정한 방법[신용카드 결제, 실시간 계좌이체, 가상계좌(무통장입금), 페이팔(Paypal), 당사 발행 쿠폰과 포인트 등]으로 지급합니다.<br/>4. 여행요금에 여행자 보험료가 포함되는 경우, 가이드는 여행자에게 보험회사명, 보상내용 등을 설명합니다.<br/><br/>제12조 (여행조건의 변경 요건 및 요금 등의 정산)<br/>1. 여행계약이 체결된 이후에는 계약상 여행조건은 원칙적으로 변경될 수 없습니다.<br/>2. 제1항에도 불구하고, 여행계약상의 여행조건은 다음 각 호의 1의 경우에 한하여 예외적으로 변경될 수 있습니다.<br/>(1) 투어 개시 후 여행자의 안전과 보호를 위하여 여행조건의 변경이 부득이하다고 판단되는 경우<br/>(2) 투어 개시 후 천재지변, 전란, 정부의 명령, 운송 및 숙박업체 등의 파업 또는 휴업 등으로 여행의 목적을 달성할 수 없는 경우<br/>3. 제1항의 여행조건 변경으로 인하여 가이드요금에 증감이 생기는 경우, 해당 증감분은 투어 종료 후 10일 이내에 당사를 통하여 정산(환급)하여야 합니다.<br/>4. 여행자는 투어 중 자신의 사정으로 인하여 관광 등 가이드요금에 포함된 서비스를 제공받지 못한 경우 당사에 대하여 그에 상응하는 가이드요금의 환급을 청구할 수 없습니다.<br/><br/>제5장 투어 개시 전 계약의 해제<br/><br/>제13조 (여행자의 투어 개시 전 임의해제 및 손해배상)<br/>1. 여행자는 여행요금 지급이 이루어지기 이전까지 체결하였던 여행계약을 가이드 또는 당사에 대한 손해배상 등의 법적 책임 없이 자유롭게 해제할 수 있습니다.<br/>2. 여행자가 여행요금 지급이 이루어진 후 투어 개시일 이전까지 국외여행계약 또는 국내여행계약을 임의로 해제하는 경우, 가이드는 본 약관 별첨 취소환불정책에 따라 여행자에게 여행요금의 전부 또는 일부를 환불합니다.<br/>3. 당사는 본 조에 따라 가이드와 여행자 사이에 발생하는 손해배상 등 법률관계에 대하여 보증책임 기타 어떠한 의무 또는 책임도 부담하지 않습니다.<br/><br/>제14조 (가이드의 투어 개시 전 임의해제 및 손해배상)<br/>1. 가이드가 여행자와 체결하였던 여행계약을 임의로 해제하는 경우, 가이드는 그로 인하여 여행자가 입은 손해를 배상할 의무를 부담합니다. 이 경우 손해배상액은 제21조에 정한 바에 따르며, 다만 여행자가 입은 실제 손해액이 제21조 제4항 제1호에 따른 손해배상액을 초과함이 객관적으로 입증되는 경우, 가이드는 여행자에게 그 실제 손해액을 배상할 책임을 부담합니다.<br/>2. 당사가 가이드를 대신하여 여행자에게 제1항의 손해배상의무를 이행하는 경우, 당사는 가이드에 대하여 여행자에게 배상한 금액 상당을 구상할 수 있습니다.<br/>3. 본 조에 따라 가이드가 여행계약을 해제하는 경우, 가이드는 제1항의 여행자에 대한 손해배상과 별도로 당사가 입은 손해로서 여행확인증에 기재된 수수료 상당액을 배상할 의무를 부담합니다<br/><br/>제15조 (최저행사인원 미달로 인한 계약 해제)<br/>1. 가이드는 여행자의 수가 사전에 공지한 투어의 최저행사인원에 미달하였음을 원인으로 여행계약을 해제할 수 있습니다.<br/>2. 본 조의 계약 해제를 하고자 하는 가이드는 당사를 통하여 국외여행의 경우 투어 개시일로부터 7일 이전까지, 국내여행의 경우 투어 개시일로부터 3일 이전까지 여행자에게 제1항의 해제의 의사표시 및 해제사유를 통지하여야 합니다.  만약 가이드가 최저행사인원 미달로 전항의 기일 내 통지를 하지 아니하고 계약을 해제하는 경우 여행자에 대한 배상은 공정거래위원회 고시 소비자분쟁해결기준에 의거하여 처리되며, 이 때 당사가 여행자에게 지급한 손해배상액에 대하여 당사는 가이드에게 구상할 수 있습니다.<br/><br/>제16조 (투어의 개시와 종료)<br/>투어의 개시 시점은 투어 첫 날 미팅포인트에서 여행자가 가이드와 만난 시점으로 하며, 투어의 종료 시점은 투어 마지막 날 여행자와 가이드가 일정을 마치고 헤어지는 시점으로 합니다.<br/><br/>제17조 (투어 개시 전 쌍방의 책임 없는 사유로 인한 계약 해제)<br/>투어 개시일 이전에 다음 각 호의 1에 해당하는 사유가 있는 경우, 여행자 또는 가이드는 별도의 손해배상 없이 여행계약을 해제할 수 있습니다.<br/>(1) 제10조 제1항 제1호 또는 제2호의 사유가 있는 경우<br/>(2) 보행이나 운송수단 탑승이 불가능한 부상, 전염성 질병 등 여행자의 신체에 이상이 발생하여 투어 참가가 불가능함이 의료기관이 발급한 진단서에 의해 객관적으로 확인되는 경우<br/>(3) 기타 이에 준하는 것으로서 당사자 쌍방에게 책임 없는 사유로 투어가 불가능하게 된 경우<br/><br/>제18조 (계약 해제에 따른 여행요금 환불 등 정산)<br/>1. 제13조에 따라 여행계약이 해제되는 경우, 당사는 별첨 취소환불 정책에 따른 환불 대상 여행요금을 여행자에게 환급합니다.<br/>2. 제14조, 제15조, 제17조에 따라 여행계약이 해제되는 경우, 당사는 여행자에게 지급 받은 여행요금 전액을 환불합니다.<br/><br/>제6장 의무 및 책임<br/><br/>제19조 (여행자의 의무 및 책임)<br/>1. 여행자의 고의 또는 과실로 당사 또는 가이드에게 손해가 발생한 경우, 여행자는 그 손해를 배상할 의무를 부담합니다.<br/>2. 여행자가 가이드에 대하여 성추행 등 범죄행위를 하였을 경우, 여행자는 가이드에 대하여 민형사상 책임을 부담하며, 당사에 대하여도 당사가 입은 손해 및 각종 발생 비용 등의 손실을 배상할 책임을 부담합니다.<br/>3. 여행자는 여행의 원활한 진행을 위하여 가이드가 당사를 통하여 제공하는 설명 및 자료를 통하여 여행 일정, 여행비용 내역, 약속 시간 및 장소 등 여행 관련 정보를 확인합니다.<br/>4. 여행자는 여행확인증에 기재된 기일까지 여행요금을 당사에 지급합니다.<br/>5. 여행자는 여행의 원활한 진행을 위하여 가이드의 인솔 및 요청에 성실히 협조합니다.<br/>6. 여행자는 합리적인 이유 없이 가이드에게 투어와 직접적인 관련이 없는 부당한 요구를 하여서는 아니 됩니다.<br/>7. 여행자는 투어 종료된 후 마이리얼트립 플랫폼 상에 투어 후기에 관한 게시물을 작성 및 게시할 수 있습니다. 다만, 후기 게시물이 다음 각 호의 어느 하나에 해당하는 경우, 당사는 해당 후기 게시물을 여행자의 동의 없이 삭제 또는 변경할 수 있습니다.<br/>(1) 사용자의 개인적인 경험 이외의 내용을 담고 있는 경우<br/>(2) 실제 투어와 관련되지 않은 후기인 경우 (예: 정치적, 종교적 또는 사회적 의견에 대한 후기)<br/>(3) 위해한 혹은 불법적인 행동 및 폭력을 지지하거나 비속어, 성적 언어, 명예훼손, 위협 또는 차별적인 내용을 포함하는 경우<br/>(4) 타인의 권리(지적 재산권 및 개인정보 보호에 관한 권리 등을 포함)를 침해하는 내용을 포함하는 경우 (예: 타인의 실명, 주소 또는 인적 정보를 당사자의 허락없이 기재하는 경우 등)<br/>(5) 강요의 목적으로 후기 게시물이 이용된 것이 객관적으로 입증된 경우<br/>(6) 당사에서 조사가 진행 중인 건에 대한 내용을 포함하는 경우<br/>(7) 기타 이상에 준하는 위법, 부당한 목적 또는 방법으로 후기 게시물이 작성된 경우<br/>8. 귀중품 및 소지품에 대한 보관 책임은 여행자 자신에게 있습니다. 여행 도중 여행자의 귀중품 및 소지품이 도난 또는 분실된 경우 여행자는 사고 발생을 안 때로부터 지체 없이 그 사실을 가이드 및 당사에 알리고 다음 각 호의 서류를 제출하여야 합니다.<br/>(1) 도난 확인서<br/>(2) 경위서<br/>(3) 그밖에 필요한 서류<br/>9. 여행자가 투어 개시 전에 고지하지 않은 신체의 장해 또는 질병 등으로 인하여 발생하는 문제는 여행자에게 책임이 있습니다. 단, 여행 도중 여행자의 신체에 장해 또는 질병 등이 발생하는 경우 여행자는 지체 없이 그 사실을 가이드 및 당사에 알리고 다음 각 호의 서류를 즉시 제출하여야 합니다.<br/>(1) 사고 증명서<br/>(2) 진단서<br/>(3) 경위서<br/>(4) 영수증<br/>(5) 그밖에 필요한 서류<br/><br/>제20조 (가이드의 일반 손해배상의무)<br/>1. 가이드가 여행계약을 위반하는 경우 그로 인하여 여행자가 입은 손해를 배상할 의무를 부담합니다. 단, 여행자에게 신체 손상이 없는 경우 가이드의 손해배상책임은 여행요금의 100%를 한도로 합니다.<br/>2. 가이드는 본인 또는 그 고용인이 고의 또는 과실로 위법하게 여행자에게 손해를 가한 경우 그로 인하여 여행자가 입은 손해를 배상합니다.<br/>3. 가이드는 항공기, 기차, 선박 등 교통수단의 연발착 또는 교통체증 등으로 인하여 여행자가 입은 손해를 배상합니다. 단, 가이드가 자신에게 그에 대한 고의 또는 과실이 없음을 입증한 경우에는 그러하지 아니합니다.<br/>4. 가이드는 여행자의 수하물을 수령, 인도, 보관할 의무가 없으며, 수하물이 멸실, 훼손 또는 연착되어 여행자에게 발생한 손해를 배상할 책임이 없습니다.<br/><br/>제21조 (여행 내용 불일치 등에 따른 가이드의 손해배상의무)<br/>1. 본 조에 따른 손해배상은 다음 각 호의 사유가 발생한 경우에 대하여 적용됩니다.<br/>(1) 가이드가 제15조, 제17조에 정한 사유 이외의 사유를 들어 체결하였던 국내여행계약 및 해외여행계약을 투어 개시 전에 임의로 해제하는 경우<br/>(2) 실제 투어 시간이 사전 약정에 따른 투어 시간과 명확하게 불일치하는 경우<br/>(3) 실제 투어 인원이 사전 약정에 따른 투어 인원과 명확하게 불일치하는 경우<br/>(4) 실제 투어 코스가 사전 약정에 따른 투어 코스와 명확하게 불일치하는 경우<br/>(5) 그밖에 실제 투어 내용이 사전 약정에 따른 투어 내용과 명확하게 불일치하는 경우<br/>2. 제1항에 정한 사전 약정은 해당 투어와 관련하여 (i) 마이리얼트립 플랫폼 내부 메시지창, (ii) 여행확인증, (iii) 상품 소개 페이지를 통하여 명시된 내용에 한정하며, 제1항 각 호의 사유가 발생하였는지 여부에 대하여 여행자와 가이드 사이에 다툼이 있는 경우, 당사가 객관적이고 중립적인 기준에 따라 이를 판단합니다.<br/>3. 다음 각 호의 요건을 충족하는 여행자는 가이드에게 본 조에 따른 손해배상을 청구할 수 있습니다.<br/>(1) 가이드의 투어 내용 변경에 동의 또는 합의하는 등 여행자 자신이 제1항 각 호의 사유 발생을 직접적 또는 간접적으로 야기하지 않았어야 합니다.<br/>(2) 가이드에게 투어 내용 변경에 대하여 이의하는 등 제1항 각 호의 사유 발생을 막기 위한 합리적인 노력을 다하였어야 합니다.<br/>(3) 여행자는 투어 종료 후(제1항 제1호의 경우에는 가이드로부터 해제 통보를 받은 후) 당사 '여행불만족 손해배상위원회'에 20일 이내에 고객센터의 이메일 또는 전화를 통하여 당사에 제1항 각 호의 사유 발생 사실을 통지하여야 합니다.<br/>4. 제3항의 요건이 충족되는 경우, 가이드는 여행자의 선택에 따라 다음 각 호의 손해배상 방식 중 어느 하나의 방식으로 여행자에 대한 손해를 배상하여야 합니다.<br/>(1) 현금배상 : 이 경우 구체적인 배상금액은 당사의 ‘여행불만족 손해배상위원회’ 가 내부 규정 및 지침에 따라 합리적으로 산정하되, 여행자로부터 지급받은 여행요금을 최대 한도로 하여 정합니다.<br/>(2) 마이리얼트립 credit 배상 : 현금이 아닌 추후 당사가 중개하는 여행계약에서 여행요금으로 사용 가능한 쿠폰 또는 포인트를 부여합니다. 대신 이를 선택하는 경우 배상 포인트는 제1호에 따라 산정된 현금배상 금액의 110% 상당으로 정합니다.<br/>5. 당사는 본 조의 손해배상 채무를 가이드를 대신하여 여행자에게 변제할 수 있습니다. 이 경우 당사는 여행자에 대한 변제금액 상당을 가이드에게 구상할 수 있으며, 가이드는 그에 대하여 이의하지 않고 당사의 구상에 응하여야 합니다.<br/>6. 본 조에 따른 손해배상이 이루어지는 경우, 여행자는 자신이 입은 실제 손해액이 본 조에 따른 손해배상액을 초과함을 객관적으로 주장, 입증하지 않는 이상 제20조를 포함한 본 약관상의 다른 조항을 근거로 가이드 또는 당사에게 손해배상을 청구할 수 없습니다.<br/><br/>제22조 (당사의 손해배상의무)<br/>1. 당사는 여행계약 체결의 중개와 관련하여 당사 또는 당사의 고용인이 고의 또는 과실로 여행자에게 손해를 가한 경우, 그로 인하여 여행자가 입은 손해만을 배상합니다.<br/>2. 당사는 여행계약이 체결된 이후 여행자와 가이드 사이에서 발생한 손해배상 등 법률관계와 관련하여 여행자 또는 가이드에 대하여 어떠한 책임도 부담하지 않습니다.<br/><br/>제7장 투어 진행의 장해<br/><br/>제23조 (가이드의 지각)<br/>1. 가이드가 약속한 시간까지 미팅포인트에 도착하지 못하여 투어의 진행이 지체된 경우, 가이드는 여행자에게 지체된 시간 상당의 투어를 추가적으로 제공합니다.<br/>2. 여행자는 가이드로부터 사전에 도착이 늦어지게 된 경위, 예상 도착 시간, 지체된 시간만큼의 추가 투어가 제공된다는 사실 등에 관한 구체적 통지를 수령하지 못한 상태에서 가이드가 연락 없이 약속한 시간으로부터 15분이 지나도록 미팅포인트에 도착하지 않는 경우 여행계약을 해지할 수 있으며, 이 경우 여행요금 환불 및 손해배상 등에 관하여 제26조의 규정이 적용됩니다.<br/><br/>제24조 (여행자의 지각)<br/>1. 여행자의 지각시간이 15분 이하인 경우, 가이드는 투어를 진행함에 있어 여행자에게 지각시간 상당의 투어를 추가적으로 제공합니다.<br/>2. 여행자의 지각시간이 15분 이상인 경우, 가이드는 사전에 예정되었던 일정에 따라 투어를 진행하며 그밖에 여행자에게 지각시간 상당의 투어를 추가적으로 제공할 의무가 없습니다.<br/>3. 여행자가 아무런 연락 없이 약속한 시간으로부터 15분이 넘도록 미팅포인트에 도착하지 않는 경우, 가이드는 여행자에게 투어 출발을 알린 후 제26조에 따라 여행계약을 해지할 수 있습니다.<br/>4. 본 조 제1항 내지 제3항에도 불구하고, 사전에 투어를 함께 진행하기로 예정된 다른 여행자의 전부 또는 일부가 정시에 미팅포인트에 도착한 경우에는, 가이드는 사전에 예정된 일정에 따라 투어를 진행할 수 있으며, 지각한 여행자에게 지각시간 상당의 투어를 추가적으로 제공할 의무가 없습니다.<br/><br/>제8장 투어 진행 중 여행계약의 해지<br/><br/>제25조 (상대방과의 합의에 의한 계약의 해지)<br/>1. 여행자 또는 가이드는 투어가 개시된 이후에는 상대방과의 합의 없이 임의로 여행계약을 해지할 수 없습니다.<br/>2. 상대방과의 합의에 따라 여행계약을 해지하는 경우, 가이드요금의 환불과 관련한 사항 또한 상호 합의한 내용에 따릅니다.<br/>3. 본 조의 합의해지와 관련하여, 당사는 여행자로부터 지급받은 수수료를 환불할 의무가 없습니다.<br/><br/>제26조 (상대방의 귀책사유로 인한 계약의 해지)<br/>1. 여행자 또는 가이드는 상대방에게 책임 있는 사유(제23조 및 제24조의 해지를 포함한다)로 인하여 투어의 진행이 현저히 곤란하게 된 경우 여행계약을 해지할 수 있습니다.<br/>2. 여행자에게 책임 있는 사유로 제1항의 계약 해지가 발생한 경우, 여행자는 여행요금의 환불을 청구할 수 없습니다.<br/>3. 가이드에게 책임 있는 사유로 제1항의 계약 해지가 발생한 경우, 여행자는 당사에 여행요금 전액의 환불을 청구할 수 있습니다. 이 경우, 당사는 가이드에게 여행자에게 반환한 수수료 금액과 추가 손해배상 금액을 청구할 수 있으며, 이는 최대 여행요금의 200%로 한정합니다.<br/>4. 본 조에 따른 여행계약의 해지가 발생한 경우, 귀책사유 있는 당사자는 여행요금과 별개로 그로 인하여 상대방이 입은 손해를 배상하여야 합니다.<br/><br/>제27조 (당사자 쌍방에게 책임 없는 사유로 인한 계약의 해지)<br/>1. 가이드 및 여행자 모두에게 책임 없는 사유로 인하여 투어의 진행이 불가능한 경우, 여행자 또는 가이드는 여행계약을 해지할 수 있습니다.<br/>2. 제1항의 해지가 발생한 경우, 가이드는 가이드요금 중 일정상 계획된 전체 투어 시간 중 진행되지 못한 투어 시간의 비율 상당 금액을 여행자에게 반환하여야 합니다.<br/>3. 제1항의 해지가 발생한 경우, 당사는 가이드는 대신하여 제2항에 따라 가이드가 여행자에게 반환하여야 할 금액 상당을 정산하여 여행자에게 환불하며, 가이드에게는 여행자로부터 지급받은 가이드요금 중 위 환불금을 공제하고 난 후 잔여 가이드요금을 정산하여 지급합니다.<br/>4. 제2항의 전체 투어 시간 중 진행되지 못한(또는 진행된) 투어 시간의 비율은 가이드 및 여행자의 합의를 통하여 정하는 것을 원칙으로 하며, 합의가 되지 않는 경우 당사가 객관적이고 중립적인 기준에 따라 그 비율을 정합니다.<br/>5. 본 조에 따른 해지와 관련하여 당사 및 가이드는 제2항 및 제3항에 규정된 사항 이외에 여행자에 대하여 그 밖의 다른 의무를 부담하지 않습니다.<br/><br/>제9장 기타 일반 의무<br/><br/>제28조 (설명의무)<br/>가이드는 당사를 통하여 여행계약의 중요 내용 및 그 변경사항을 여행자에게 설명하여야 하며, 당사는 이에 따라 여행자에게 여행계약에 규정된 중요한 내용 및 그 변경사항을 여행자가 이해할 수 있도록 구체적으로 설명합니다.<br/><br/>제29조 (보험가입 등)<br/>가이드는 투어와 관련하여 여행자에게 손해가 발생한 경우 여행자에게 보험금을 지급하기 위하여 보험 또는 공제에 가입하거나 영업보증금을 예치하여야 합니다.<br/><br/>제30조 (개인정보 관리의무)<br/>당사 및 가이드는 투어와 관련하여 취득한 여행자의 성명, 여권번호, 연락처 등 개인정보를 개인정보 보호법 등 제반 법령에 따라 적법하게 관리하여야 합니다.<br/><br/>제31조 (여행자를 촬영한 사진의 사용)<br/>가이드가 투어와 관련하여 촬영한 사진 또는 동영상 등을 당사 홍보 등의 목적으로 사용하고자 하는 경우, 당사는 해당 사진에 포함된 여행자에 대하여 사진 사용의 목적 및 범위 등을 알리고 그 사진을 사용할 수 있습니다.<br/><br/>제32조 (기타사항)<br/>특수지역으로의 여행으로서 정당한 사유가 있는 경우 이 약관의 내용과 달리 정할 수 있습니다.<br/><br/>제33조 (불가항력)<br/>어떠한 당사자도 화재, 폭풍, 홍수, 지진, 사고, 전쟁(실제 발생 또는 선포 여부를 불문함), 반란, 폭동 기타 민란, 전염병, 격리, 천재지변, 정부조치 등 자신의 통제를 벗어난 사유에 의해 약관상의 의무사항을 이행 또는 준수하지 못하는 경우 이에 대한 책임을 지지 아니합니다. 해당 당사자는 불가항력적인 사유의 발생 후 가능한 한 빨리 이를 상대방 당사자에게 통지하고 그 사유가 제거 또는 중단된 후 가능한 한 신속하게 약관상 의무의 이행 및 준수를 재개하여야 합니다.<br/><br/>제34조 (기타사항)<br/>여행자약관은 대한민국 법을 그 준거법으로 하며, 이에 따라 해석되고, 협의에 의하여 여행자약관에 관련된 분쟁을 해결할 수 없는 경우에는 그 소송의 관할은 당사자 간의 합의에 따르며, 사전 합의된 바가 없는 경우에는 민사소송법의 관할 규정에 따릅니다.<br/><br/><br/>[부칙] (2014년 10월 28일)<br/>1. 이 약관은 2014년 10월 28일부터 적용됩니다.<br/><br/>[부칙] (2016년 9월 6일)<br/>1. 이 약관은 2016년 9월 6일부터 적용됩니다.<br/><br/>[부칙] (2017년 6월 30일)<br/>1. 이 약관은 2017년 6월 30일부터 적용됩니다.<br/><br/>[부칙] (2017년 10월 11일)<br/>1. 이 약관은 2017년 10월 11일부터 적용됩니다.<br/><br/>[별첨. 취소환불정책]<br/><br/>각 상품 별 취소 환불 약관이 별도 기재되어 있을 경우 별도 기재 내용이 해당 규정으로서 선 적용됩니다.<br/><br/>-가이드투어 취소/환불 안내<br/>여행자는 가이드약관 제16조 제2항에 따라 여행요금 지급이 이루어진 후 투어 개시일 이전에 여행계약을 임의로 해제하는 경우, 해제 통보 시점에 관한 다음 각 호의 기준에 따라 여행요금이 환불됩니다.<br/>해제 통보 시점은 환불요청서가 마이리얼트립 플랫폼에 접수된 시간 또는 마이리얼트립 플랫폼 내 ‘메시지’ 기능을 통하여 환불요청 내용이 기록된 시간을 기준으로 합니다.<br/>[국외여행의 경우]<br/>- 여행시작 30일전 (~30) 까지 통보시: 여행 요금 전액 환불<br/>- 여행시작 20일 전까지 (29~20) 통보시: 여행요금에서 가이드 요금의 10%와 마이리얼트립 수수료 공제 후 환불<br/>- 여행시작 6일 전까지 (19~6) 통보시: 여행요금에서 가이드 요금의 15%와 마이리얼트립 수수료 공제 후 환불<br/>- 여행시작 1 일 전까지 (1~5) 통보시: 여행요금에서 가이드 요금의 20%와 마이리얼트립 수수료 공제 후 환불<br/>- 여행시작 시간 기준 24시간 이내 통보시: 여행요금에서 가이드 요금의 50%와 마이리얼트립 수수료 공제 후 환불<br/>[국내여행의 경우]<br/>- 여행자가 여행 개시일로부터 3일 이전 통보 시: 여행 요금 전액 환불<br/>- 여행 개시일로부터 2일 이전 통보 시: 여행요금에서 가이드 요금의 10%와 마이리얼트립 수수료 공제 후 환불<br/>- 여행 개시일로부터 여행 시작 시간 기준 24시간 이전 통보 시: 여행요금에서 가이드 요금의 20%와 마이리얼트립 수수료 공제 후 환불<br/>- 여행 시작 시간으로부터 24시간 이내 통보 시: 여행요금에서 가이드 요금의 30%와 마이리얼트립 수수료 공제 후 환불<br/>다만, 위의 규정에도 불구하고 다음의 경우에는 예외로 합니다.<br/>1) 여행자가 여행요금을 결제(지급)한 때로부터 24시간 이내에 여행계약을 철회(취소)하는 경우와 여행자가 투어 예약 후 가이드가 확정되기 전에 취소하는 경우는 여행요금을 전액 환불합니다.  단, 여행자가 여행요금을 결제하였다고 하더라도 해당 시점으로부터 24시간 이내 여행이 시작될 경우 (Instant Booking 예약에 해당하는 경우)는 전액 환불 대상에서 제외합니다.<br/>2) 상품의 특성에 따라 현지 예약금으로 지불되어야 하는 금액이 있는 경우 해당 예약금의 환불에 대하여는 각 상품의 상세설명보기에서 별도로 고지한 취소환불 약관을 적용합니다.<br/><br/>-티켓 취소/환불 안내<br/>아래 내용이 적용되는 대상은 마이리얼트립의 플랫폼(웹사이트와 어플리케이션 포함)을 통하여 마이리얼트립이 판매대행 또는 구매대행하여 여행자에게 배송하는 실물티켓과 여행자로 하여금 출력할 수 있도록 제공한 E-바우쳐에 한합니다.<br/>[실물티켓]<br/>1. 환불신청가능기간<br/>결제일 이후 7일 이내 환불 신청한 경우에 한하여 환불이 가능합니다.<br/>(티켓 유효기간의 1개월 이전에 환불을 신청한 경우에 한하여 환불이 가능합니다.)<br/>2. 환불진행시 유의사항<br/>여행자가 반품한 실물티켓을 당사가 수령하여 확인한 후 환불 처리됩니다.<br/>실물티켓 구매시 동봉되었던 티켓 사용 가이드북, 현지 사용 쿠폰 및 사은품도 함께 반품되어야 정상 환불 처리됩니다.<br/>환불요청 접수 후 5일 이내에 당사에 실물티켓이 수령 확인되는 경우에 한해 정상 환불 처리됩니다.<br/>개인 과실로 인하여 실물티켓이 멸실되거나 훼손된 경우에는 환불이 불가하오니, 각별히 유의하여 주시기 바랍니다.<br/>3. 환불수수료<br/>취소수수료(결제금액의 10%) 및 배송비가 환불수수료로 차감됩니다.<br/>티켓제공업체에서 자체 규정하는 별도의 환불규정이 있는 경우 제공업체의 환불규정이 마이리얼트립의 환불규정에 우선하여 적용됩니다. (상품상세보기 기재)<br/>[E-바우쳐]<br/>티켓제공업체에서 자체 규정하는 별도의 환불규정에 따라 취소/환불이 진행됩니다. (상품상세보기 기재)<br/>티켓제공업체의 정책에 따라 환불이 원칙적으로 불가할 수 있으니, 신중히 구매하여 주시기를 당부 드립니다.<br/><br/>-에어텔/민박 상품 군(구 핫딜 상품) 취소/환불 안내<br/>당사는 또는 여행자는 여행출발전 이 여행계약을 해제할 수 있습니다. 이 경우 발생하는 손해액은 ‘소비자분쟁해결기준’(공정거래위원회 고시)에 따라 배상합니다.<br/>여행자의 여행계약 해제 요청이 있는 경우(여행자의 취소 요청시)<br/>- 여행출발일 ~30일전까지 취소 통보시 - 계약금 환급<br/>- 여행출발일 29~20일전까지 취소 통보시 - 여행요금의 10% 배상<br/>- 여행출발일 19~10일전까지 취소 통보시 - 여행요금의 15% 배상<br/>- 여행출발일 9~8일전까지 취소 통보시 - 여행요금의 20% 배상<br/>- 여행출발일 7~1일전까지 취소 통보시 - 여행요금의 30% 배상<br/>- 여행출발 당일 취소 통보시 - 여행요금의 50% 배상<br/></p>
</div>
</div>
<div class='col-xs-12'>
<div class='checkbox-custom checkbox-primary'>
<input id='checkbox_terms_traveler' name='checkbox_terms_traveler' type='checkbox'>
<label class='terms-label' for='checkbox_terms_traveler'>여행자 약관을 읽었으며, 내용에 동의 합니다.</label>
</div>
</div>
</div>
</div>
</div>
</div>

<div class='btn-container form-btn-container clearfix'>
<div class='btn--width-50'>
<a class="btn-new btn--type-gray btn--width-100" href="/offers/33742">취소하기</a>
</div>
<div class='btn--width-50'>
<button class='btn-new btn--type-primary btn--width-100' data-disable-with='로딩중..' id='reservation-btn' type='submit'>결제하기</button>
</div>
</div>
</div>
</form>

</div>
</section>
</main>

<jsp:include page="/WEB-INF/layout/bottom.jsp"></jsp:include>    

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

    // 결제 관련 tracking을 위한 orders 정의
      var reservationOrders = [
        {
          'id': 33742,
          'quantity': 1,
          'item_price': 11700,
        },
        {
          'id': 33742,
          'quantity': 2,
          'item_price': 10300,
        },
      ]

  dataLayer.push( {
    'userID': user
  });
  /**** fire remarketingTag ******/
  dataLayer.push({
    'event': 'fireRemarketingTag',
    'google_tag_params': {
      'ecomm_prodid': 33742,
      'ecomm_pagetype': 'conversionintent',
      'ecomm_totalvalue': 0
    }
  });
  /****** fire remarketingTag ******/


  dataLayer.push({
    'event': 'initiateCheckout',
    'offer_id': 33742,
    'offer_amount': 32300,
    'offer_name': "[간사이공항 리몬버스 부스 수령] 간사이 리무진 버스",
    'offer_type': "ETicket",
    'orders': reservationOrders,
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

        $('#reservation-btn').click(function(ev) {
          dataLayer.push({
            'event': 'addPaymentInfo',
            'offer_id': 33742,
            'offer_amount': 32300,
            'offer_type': "ETicket",
            'orders': reservationOrders,
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

    gtag('event', 'page_view', {
      'send_to': 'AW-1004447359',
      'ecomm_prodid': 33742,
      'ecomm_pagetype': 'conversionintent',
      'ecomm_totalvalue': 0
    });
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
</body>
</html>
