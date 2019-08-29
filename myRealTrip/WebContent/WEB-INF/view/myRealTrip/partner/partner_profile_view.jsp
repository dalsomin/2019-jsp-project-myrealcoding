<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>

<head>
    <meta charset='UTF-8'>
    <meta content='Content-type: text/html; charset=UTF-8' name='http-equiv'>
    <meta content='IE=Edge,chrome=1' http-equiv='X-UA-Compatible'>
    <meta content='width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1, user-scalable=no'
        name='viewport'>
    <meta content='yes' name='apple-mobile-web-app-capable'>
    <meta content='black' name='apple-mobile-web-app-status-bar-style'>
    <meta content='SyCtjRv6wVxDU6a7dWgpsvQNMP38wW6OpOyMFBUkhQ8' name='google-site-verification'>
    <meta content='a0a215c577b4fc16a849b8867cd9b68051ed6377' name='naver-site-verification'>
    <meta content='all, index, follow' name='robots'>
    <meta content='ko' name='locale'>
    <meta content='KRW' name='currency'>
    <meta
        content='현지 투어, 여행 가이드, 투어 가이드, 현지 가이드, 가이드 투어, 마이리얼트립, 현지정보, 여행정보, 입장권, 교통패스, 액티비티, 여행사, 호텔예약, 해외호텔, 호텔할인, 바로사용, 한인민박, 민박, 와이파이, 유심, 여행자보험, 항공권, 항공권 검색, 최저가 항공권'
        name='keywords'>
    <meta content='여행지에서 즐길 수 있는 가이드 투어, 명소 입장권, 교통패스, 액티비티는 물론 호텔 예약까지 전세계 현지 여행이 준비되어 있습니다.
' name='description'>
    <link rel="alternate" href="android-app://com.mrt.ducati/mrt/guides/10272" />
    <link rel="alternate" href="Ios-app://1141745032/mrt/guides/10272" />
    <meta property="al:ios:url" content="mrt://guides/10272" />
    <meta property="al:ios:app_store_id" content="1141745032" />
    <meta property="al:ios:app_name" content="마이리얼트립" />
    <meta property="al:android:url" content="mrt://guides/10272" />
    <meta property="al:android:package" content="com.mrt.ducati" />
    <meta property="al:android:app_name" content="마이리얼트립" />
    <meta name="csrf-param" content="authenticity_token" />
    <meta name="csrf-token"
        content="B2T/zyBwtZoLDq1yoneGQyJOPkNCKYqzZtd0C2u/pkP2z2umCPA/NRXDKJfe1Qfhwt61KflQvND1o1VxUgykzw==" />
    <meta content='113823448739791' property='fb:app_id'>
    <meta content='122600525' property='fb:admins'>
    <meta content='마이리얼트립' property='og:site_name'>
    <meta content='https://www.myrealtrip.com/guides/10272' property='og:url'>
    <link href='https://www.myrealtrip.com/opensearch.xml' rel='search' title='마이리얼트립 검색'
        type='application/opensearchdescription+xml'>
    <meta content='여행나무' property='og:title'>
    <meta content='부산에 위치한 여행나무 여행사 입니다.
현재 일본 및 동남아 1day 투어 상품 기획/판매 중에 있습니다.
여행의 최대한의 즐거움을 드릴 수 있도록 개발하고 노력하여 좋은 상품으로 인사드리겠습니다.

주말에도, 마이리얼트립으로 예약/문의주시면 시간 상관없이 최대한 빨리 응대 드리도록 하겠습니다.

여행준비하시는 모든 분들 즐겁고 추억 가득한 여행 되시길 바랍니다.' property='og:description'>
    <meta content='https://d2ur7st6jjikze.cloudfront.net/profile_images/1367183/1367183_large_1540515874.png?1540515874'
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
    <title>여행나무 가이드 in 오사카, 일본 여행 가이드, 여행 정보 및 코스 제공 :: 600개 도시 현지 친구와 진짜 여행을</title>
    <link rel="shortcut icon" type="image/x-icon"
        href="https://d2yoing0loi5gh.cloudfront.net/assets/favicon-e7fc64f202376533d86106e6f712ed41eee1e843dbc5de3b2765938656f8eb93.ico" />
    <script
        src="https://d2yoing0loi5gh.cloudfront.net/assets/kitty/ko-5d40c1382db94787ee09831dee889f833820560fe559c19347c2079165c71e0f.js">
    </script>
    <link rel="stylesheet" media="screen"
        href="https://d2yoing0loi5gh.cloudfront.net/webpack/0.06708f03e97ff8f5e67b.css" />
    <link rel="stylesheet" media="all"
        href="https://d2yoing0loi5gh.cloudfront.net/assets/kitty/application_template-5da62e3a802820a73815ac9769d004d04db514aa47276f57320c206cc043d2ac.css" />
    <link rel="stylesheet" media="all"
        href="https://d2yoing0loi5gh.cloudfront.net/assets/kitty/application-528570dd3e09ef23a61d6632bb99ce541f5d7126b025ea8a59f3e9a53c394359.css" />
    <link rel="stylesheet" media="screen"
        href="https://d2yoing0loi5gh.cloudfront.net/webpack/application.06708f03e97ff8f5e67b.css" />
    <script src="https://d2yoing0loi5gh.cloudfront.net/webpack/vendor.06708f03e97ff8f5e67b.js"></script>
    <script src="https://d2yoing0loi5gh.cloudfront.net/webpack/application.06708f03e97ff8f5e67b.js"></script>
    <!--[if lte ie 9]>
<link rel="stylesheet" media="all" href="https://d2yoing0loi5gh.cloudfront.net/assets/kitty/ie-38ffa6f3950101ed0e99d3d8451c9d0bb67f52e1d24ac4c79adebdadbebbfbe0.css" />
<![endif]-->
    <script
        src="https://d2yoing0loi5gh.cloudfront.net/assets/kitty/application-f9d7753af7989e0505182d2b2167bdb5e840b7c2ee01d9fe1bd4c7db73e48ddf.js">
    </script>
    <script
        src="//maps.googleapis.com/maps/api/js?key=AIzaSyC84fbqS1JuAJ9t24SLY2LEWf2Ud8W8F1E&amp;libraries=places&amp;language=ko"
        async="async" defer="defer"></script>
    <script src="//cdn.ravenjs.com/3.24.2/raven.min.js" async="async" defer="defer" onload="initRaven()"></script>
    <script>
        function initRaven() {
            Raven.config('https://5bfa4c779b0a477cb4cdb9b8b659cb8b@sentry.io/146345').install();
        }
    </script>
    <!-- Google Tag Manager -->
    <script>
        dataLayer = [];
        (function (w, d, s, l, i) {
            w[l] = w[l] || [];
            w[l].push({
                'gtm.start': new Date().getTime(),
                event: 'gtm.js'
            });
            var f = d.getElementsByTagName(s)[0],
                j = d.createElement(s),
                dl = l != 'dataLayer' ? '&l=' + l : '';
            j.async = true;
            j.src =
                '//www.googletagmanager.com/gtm.js?id=' + i + dl;
            f.parentNode.insertBefore(j, f);
        })(window, document, 'script', 'dataLayer', 'GTM-NCVRS4');
    </script>
    <!-- End Google Tag Manager -->

    <script src="//wcs.naver.net/wcslog.js"></script>


    <script type="text/javascript" charset="UTF-8" src="//t1.daumcdn.net/adfit/static/kp.js"></script>
    <script type="text/javascript">
        kakaoPixel('5174958686083042808').pageView();
    </script>


    <script type="text/javascript">
        + function (a, p, P, b, y) {
            appboy = {};
            appboyQueue = [];
            for (var s =
                    "initialize destroy getDeviceId toggleAppboyLogging setLogger openSession changeUser requestImmediateDataFlush requestFeedRefresh subscribeToFeedUpdates requestContentCardsRefresh subscribeToContentCardsUpdates logCardImpressions logCardClick logCardDismissal logFeedDisplayed logContentCardsDisplayed logInAppMessageImpression logInAppMessageClick logInAppMessageButtonClick logInAppMessageHtmlClick subscribeToNewInAppMessages removeSubscription removeAllSubscriptions logCustomEvent logPurchase isPushSupported isPushBlocked isPushGranted isPushPermissionGranted registerAppboyPushMessages unregisterAppboyPushMessages submitFeedback trackLocation stopWebTracking resumeWebTracking wipeData ab ab.DeviceProperties ab.User ab.User.Genders ab.User.NotificationSubscriptionTypes ab.User.prototype.getUserId ab.User.prototype.setFirstName ab.User.prototype.setLastName ab.User.prototype.setEmail ab.User.prototype.setGender ab.User.prototype.setDateOfBirth ab.User.prototype.setCountry ab.User.prototype.setHomeCity ab.User.prototype.setLanguage ab.User.prototype.setEmailNotificationSubscriptionType ab.User.prototype.setPushNotificationSubscriptionType ab.User.prototype.setPhoneNumber ab.User.prototype.setAvatarImageUrl ab.User.prototype.setLastKnownLocation ab.User.prototype.setUserAttribute ab.User.prototype.setCustomUserAttribute ab.User.prototype.addToCustomAttributeArray ab.User.prototype.removeFromCustomAttributeArray ab.User.prototype.incrementCustomUserAttribute ab.User.prototype.addAlias ab.User.prototype.setCustomLocationAttribute ab.InAppMessage ab.InAppMessage.SlideFrom ab.InAppMessage.ClickAction ab.InAppMessage.DismissType ab.InAppMessage.OpenTarget ab.InAppMessage.ImageStyle ab.InAppMessage.TextAlignment ab.InAppMessage.Orientation ab.InAppMessage.CropType ab.InAppMessage.prototype.subscribeToClickedEvent ab.InAppMessage.prototype.subscribeToDismissedEvent ab.InAppMessage.prototype.removeSubscription ab.InAppMessage.prototype.removeAllSubscriptions ab.InAppMessage.Button ab.InAppMessage.Button.prototype.subscribeToClickedEvent ab.InAppMessage.Button.prototype.removeSubscription ab.InAppMessage.Button.prototype.removeAllSubscriptions ab.SlideUpMessage ab.ModalMessage ab.FullScreenMessage ab.HtmlMessage ab.ControlMessage ab.Feed ab.Feed.prototype.getUnreadCardCount ab.ContentCards ab.ContentCards.prototype.getUnviewedCardCount ab.Card ab.ClassicCard ab.CaptionedImage ab.Banner ab.ControlCard ab.WindowUtils display display.automaticallyShowNewInAppMessages display.showInAppMessage display.showFeed display.destroyFeed display.toggleFeed display.showContentCards display.hideContentCards display.toggleContentCards sharedLib"
                    .split(" "), i = 0; i < s.length; i++) {
                for (var m = s[i], k = appboy, l = m.split("."), j = 0; j < l.length - 1; j++) k = k[l[j]];
                k[l[j]] = (new Function("return function " + m.replace(/\./g, "_") +
                    "(){appboyQueue.push(arguments); return true}"))()
            }
            appboy.getUser = function () {
                return new appboy.ab.User
            };
            appboy.getCachedFeed = function () {
                return new appboy.ab.Feed
            };
            appboy.getCachedContentCards = function () {
                return new appboy.ab.ContentCards
            };
            (y = p.createElement(P)).type = 'text/javascript';
            y.src = 'https://js.appboycdn.com/web-sdk/2.2/appboy.min.js';
            y.async = 1;
            (b = p.getElementsByTagName(P)[0]).parentNode.insertBefore(y, b)
        }(window, document, 'script');
        appboy.initialize('87176a41-8b09-4adb-bec0-d4ccc6ce8bfb', {
            baseUrl: 'https://customer.iad-03.braze.com/api/v3'
        });
        appboy.initialize('87176a41-8b09-4adb-bec0-d4ccc6ce8bfb', {
            baseUrl: 'https://customer.fra-01.braze.eu/api/v3'
        })
        appboy.display.automaticallyShowNewInAppMessages();

        /*
         * If you have a unique identifier for this user (e.g. they are logged into your site) it's a good idea to call
         * changeUser here.
         * See https://js.appboycdn.com/web-sdk/latest/doc/module-appboy.html#.changeUser for more information.
         */
        window.appboy = appboy;
        appboy.openSession();

        appboy.changeUser(1984112);

        // braze signup check
    </script>

    <!-- 상단 선언 스크립트 : 모든페이지 공통 상단 필수 -->
    <!-- PlayD TERA Log Definition Script Start -->
    <script>
        window['_LA'] = window['_LA'] || function () {
            (window['_LA'].q = window['_LA'].q || []).push(arguments)
        }
    </script>

    <script>
        window.App = App || {};
        var WISH_IDS = [59171, 59058, 31750, 42062, 38293, 32826, 36738, 7063, 8508, 13756, 33455, 32987]
    </script>
</head>

<body class='body' data-action='show' data-controller-path='kitty/guides' data-controller='guides' data-sign-in>
    <!-- Google Tag Manager (noscript) -->
    <noscript><iframe src="//www.googletagmanager.com/ns.html?id=GTM-NCVRS4" height="0" width="0"
            style="display:none;visibility:hidden"></iframe></noscript>
    <!-- End Google Tag Manager (noscript) -->

    <div class='global-alert-box'>
    </div>

    <div id='mrt-header'></div>
    <script type="application/json" id="js-react-on-rails-context">
     
    </script>
    <div style="position: relative" id="Header-react-component-02d47c1c-8d3d-407c-b58f-64160dec2c3c"></div>
    <script type="application/json" class="js-react-on-rails-component" data-component-name="Header"
        data-dom-id="Header-react-component-02d47c1c-8d3d-407c-b58f-64160dec2c3c">
     
    </script>


    <main class='guide-detail' itemscope itemtype='http://schema.org/Person'>
        <div class='header-container'>
            <div class='bg-blur bg-img'
                style='background-image:url(&#39;https://d2ur7st6jjikze.cloudfront.net/guide_background/10272/10272_large_1552368400.jpg?1552368400&#39;)'>
            </div>
            <div class='dark-cover'></div>
            <div class='content'>
                <div class='title-box'>
                    <div class='text-lg item-inline' itemprop='name'>여행나무</div>
                </div>
            </div>
        </div>

        <section class='clearfix body-container'>
            <div class='introduce-container content-center-narrow'>
                <div class='guide-profile'>
                    <img alt='guide image' class='img img-circle' itemprop='image'
                        src='https://d2ur7st6jjikze.cloudfront.net/profile_images/1367183/1367183_medium_1540515874.png?1540515874'>
                    <img alt='real guide' class='real-guide-badge'
                        src='https://d2yoing0loi5gh.cloudfront.net/assets/kitty/icon/ic_realguide@2x-ca8896cad2a466d3b94053c86fe531a8669dd2d0c29e3d1f4d4e2105baa73215.png'
                        width='30px'>
                </div>
                <div class='guide-content'>
                    <c:if test="${pdto.p_type eq '법인' }">
                        <div class='name' itemprop='homeLocation'> ${pdto.city}</div>
                    </c:if>
                    <p class='text' itemprop='description'>
                        ${pdto.introduce}
                    </p>
                    <div class='real-guide-content'>
                        <div class='heading'>
                            <img alt='real guide' class='real-guide-badge'
                                src='https://d2yoing0loi5gh.cloudfront.net/assets/kitty/icon/ic_realguide@2x-ca8896cad2a466d3b94053c86fe531a8669dd2d0c29e3d1f4d4e2105baa73215.png'
                                width='13px'>
                            <div class='title'>리얼가이드</div>
                            <a class='link-icon' data-turbolinks='false' href='/about/realguide' target='_blank'>
                                <img alt='real guide'
                                    src='https://d2yoing0loi5gh.cloudfront.net/assets/kitty/icon/ic-outlink@2x-5f310ae38a04fd86183cace5de197243af8da854616835ff9e8f5f2a38bb50fa.png'
                                    width='14px'>
                            </a>
                        </div>
                        <p class='text'>마이리얼트립은 다른 가이드에게 모범이 되고 여행자에게는 특별한 경험을 선사하는 우수 가이드를 선정하여 리얼가이드 배지를 부여합니다.</p>
                    </div>
                    <a class='btn-guide-message btn-gray-lg' href='/messenger/rooms/new?guide_id=10272' itemprop='url'>
                        <img class='icon'
                            src='https://d2yoing0loi5gh.cloudfront.net/assets/kitty/offer/detail/ic-messagetoguide@2x-b43b95e397a37d9272ebccf7d6df740b0957f5cb22ef9f4dedd5d3289dfce7fc.png'
                            width='23px'>
                        <span class='text'>문의하기</span>
                    </a>
                </div>
            </div>


            <div class='offer-container list-type' itemscope='true' itemtype='http://schema.org/ItemList'>
                <div class='content-center-narrow'>
                    <div class='title-with-number'>
                        개설한 여행
                        <div class='count' itemprop='numberOfItems'>13</div>
                    </div>
                    <ul class='item-container offer-item-container offer-item--horizontal'>
                        <li class='item' data-offer-id='47441' data-offer-type='ETicket' itemprop='itemListElement'
                            itemscope='true' itemtype='http://schema.org/Product'>
                            <a class="wish" data-offer-id="47441" data-remote="true" rel="nofollow" data-method="put"
                                href="/wishlists/47441.js">
                                <div class='icon'></div>
                            </a>
                            <div class='card-cover'>
                                <a class='offer-link' href='/offers/47441' itemprop='url'>
                                    <div class='img-container'>
                                        <div class='img-placeholder'>
                                            <img class='visible'
                                                src='https://d2ur7st6jjikze.cloudfront.net/offer_photos/47441/293225_medium_1543479920.jpg?1543479920'>
                                        </div>
                                    </div>
                                    <div class='content-box'>
                                        <div class='guide-container'>
                                            <img class='profile-img img-circle'
                                                src='https://d2ur7st6jjikze.cloudfront.net/profile_images/1367183/1367183_medium_1540515874.png?1540515874'>
                                            <img alt='real guide' class='real-guide-badge'
                                                src='https://d2yoing0loi5gh.cloudfront.net/assets/kitty/icon/ic_realguide_xsmall@2x-a29901ad5fb3c523fb1cf4fca3fb95b0aa87392f344a8438e925ad4daae2e3ed.png'
                                                width='12px'>
                                            <div class='profile-name'>
                                                여행나무
                                                <div class='city-name'>• 오사카</div>
                                            </div>
                                        </div>
                                        <div class='name' itemprop='name'>
                                            [투어] 오사카 교토 일일 버스투어 (한국어 가이드 동행) :: 일본/오사카</div>
                                        <div class='review'>
                                            <div class="rating-box"><span class="icon active"></span><span
                                                    class="icon active"></span><span class="icon active"></span><span
                                                    class="icon active"></span><span class="icon active"></span></div>
                                            <div class='text'>후기 29개</div>
                                        </div>
                                        <div class='price' data-offer-price='₩ 53,900' itemprop='offers'
                                            itemscope='true' itemtype='http://schema.org/Offer'>
                                            <span class='unit'>1인</span>
                                            <span>₩ 53,900</span>
                                            <meta content='KRW' itemprop='priceCurrency'>
                                            <meta content='53900' itemprop='price'>
                                        </div>
                                        <div class='info-container'>
                                            <div class='category'>
                                                가이드 투어
                                                •
                                                로컬투어
                                                •
                                                근교
                                            </div>
                                            <div class='meta-infos'>
                                                <img alt='duration' class='icon hide-on-mobile'
                                                    src='https://d2yoing0loi5gh.cloudfront.net/assets/kitty/offer/ic_duration_small@2x-c44bad18f0206f40dd43ec73fdadcfda73b8f2a58c4d9b1a60c75c181ab75c04.png'
                                                    width='10px'>
                                                <img alt='duration' class='icon show-on-mobile'
                                                    src='https://d2yoing0loi5gh.cloudfront.net/assets/kitty/offer/ic_duration_xsmall@2x-aecbcb4beef9da5174b6b6f8d7bcca7ef89b2b87588181cc5ddabc8f4e4f4926.png'
                                                    width='8px'>
                                                11 시간
                                            </div>
                                        </div>
                                    </div>
                                </a>
                            </div>
                        </li>
                        <li class='item' data-offer-id='48133' data-offer-type='Tour' itemprop='itemListElement'
                            itemscope='true' itemtype='http://schema.org/Product'>
                            <a class="wish" data-offer-id="48133" data-remote="true" rel="nofollow" data-method="put"
                                href="/wishlists/48133.js">
                                <div class='icon'></div>
                            </a>
                            <div class='card-cover'>
                                <a class='offer-link' href='/offers/48133' itemprop='url'>
                                    <div class='img-container'>
                                        <div class='img-placeholder'>
                                            <img class='visible'
                                                src='https://d2ur7st6jjikze.cloudfront.net/offer_photos/48133/296560_medium_1544161771.jpg?1544161771'>
                                        </div>
                                    </div>
                                    <div class='content-box'>
                                        <div class='guide-container'>
                                            <img class='profile-img img-circle'
                                                src='https://d2ur7st6jjikze.cloudfront.net/profile_images/1367183/1367183_medium_1540515874.png?1540515874'>
                                            <img alt='real guide' class='real-guide-badge'
                                                src='https://d2yoing0loi5gh.cloudfront.net/assets/kitty/icon/ic_realguide_xsmall@2x-a29901ad5fb3c523fb1cf4fca3fb95b0aa87392f344a8438e925ad4daae2e3ed.png'
                                                width='12px'>
                                            <div class='profile-name'>
                                                여행나무
                                                <div class='city-name'>• 삿포로</div>
                                            </div>
                                        </div>
                                        <div class='name' itemprop='name'>[투어] 북해도 오타루 샤코탄(온천) 일일 버스투어 (한국어 가이드 동행)
                                        </div>
                                        <div class='review'>
                                            <div class="rating-box"><span class="icon active"></span><span
                                                    class="icon active"></span><span class="icon active"></span><span
                                                    class="icon active"></span><span class="icon active"></span></div>
                                            <div class='text'>후기 59개</div>
                                        </div>
                                        <div class='price' data-offer-price='₩ 64,900' itemprop='offers'
                                            itemscope='true' itemtype='http://schema.org/Offer'>
                                            <span class='unit'>1인</span>
                                            <span>₩ 64,900</span>
                                            <meta content='KRW' itemprop='priceCurrency'>
                                            <meta content='64900' itemprop='price'>
                                        </div>
                                        <div class='info-container'>
                                            <div class='category'>
                                                가이드 투어
                                                •
                                                로컬투어
                                                •
                                                근교
                                            </div>
                                            <div class='meta-infos'>
                                                <img alt='duration' class='icon hide-on-mobile'
                                                    src='https://d2yoing0loi5gh.cloudfront.net/assets/kitty/offer/ic_duration_small@2x-c44bad18f0206f40dd43ec73fdadcfda73b8f2a58c4d9b1a60c75c181ab75c04.png'
                                                    width='10px'>
                                                <img alt='duration' class='icon show-on-mobile'
                                                    src='https://d2yoing0loi5gh.cloudfront.net/assets/kitty/offer/ic_duration_xsmall@2x-aecbcb4beef9da5174b6b6f8d7bcca7ef89b2b87588181cc5ddabc8f4e4f4926.png'
                                                    width='8px'>
                                                11 시간
                                            </div>
                                        </div>
                                    </div>
                                </a>
                            </div>
                        </li>
                        <li class='item' data-offer-id='48136' data-offer-type='Tour' itemprop='itemListElement'
                            itemscope='true' itemtype='http://schema.org/Product'>
                            <a class="wish" data-offer-id="48136" data-remote="true" rel="nofollow" data-method="put"
                                href="/wishlists/48136.js">
                                <div class='icon'></div>
                            </a>
                            <div class='card-cover'>
                                <a class='offer-link' href='/offers/48136' itemprop='url'>
                                    <div class='img-container'>
                                        <div class='img-placeholder'>
                                            <img class='visible'
                                                src='https://d2ur7st6jjikze.cloudfront.net/offer_photos/48136/360833_medium_1558062794.jpg?1558062794'>
                                        </div>
                                    </div>
                                    <div class='content-box'>
                                        <div class='guide-container'>
                                            <img class='profile-img img-circle'
                                                src='https://d2ur7st6jjikze.cloudfront.net/profile_images/1367183/1367183_medium_1540515874.png?1540515874'>
                                            <img alt='real guide' class='real-guide-badge'
                                                src='https://d2yoing0loi5gh.cloudfront.net/assets/kitty/icon/ic_realguide_xsmall@2x-a29901ad5fb3c523fb1cf4fca3fb95b0aa87392f344a8438e925ad4daae2e3ed.png'
                                                width='12px'>
                                            <div class='profile-name'>
                                                여행나무
                                                <div class='city-name'>• 삿포로</div>
                                            </div>
                                        </div>
                                        <div class='name' itemprop='name'>[투어] 북해도 (7~9월) 비에이 후라노 일일 버스투어 (한국어 가이드 동행)
                                        </div>
                                        <div class='review'>
                                            <div class="rating-box"><span class="icon active"></span><span
                                                    class="icon active"></span><span class="icon active"></span><span
                                                    class="icon active"></span><span class="icon active"></span></div>
                                            <div class='text'>후기 61개</div>
                                        </div>
                                        <div class='price' data-offer-price='₩ 55,000' itemprop='offers'
                                            itemscope='true' itemtype='http://schema.org/Offer'>
                                            <span class='unit'>1인</span>
                                            <span>₩ 55,000</span>
                                            <meta content='KRW' itemprop='priceCurrency'>
                                            <meta content='55000' itemprop='price'>
                                        </div>
                                        <div class='info-container'>
                                            <div class='category'>
                                                가이드 투어
                                                •
                                                로컬투어
                                                •
                                                근교
                                            </div>
                                            <div class='meta-infos'>
                                                <img alt='duration' class='icon hide-on-mobile'
                                                    src='https://d2yoing0loi5gh.cloudfront.net/assets/kitty/offer/ic_duration_small@2x-c44bad18f0206f40dd43ec73fdadcfda73b8f2a58c4d9b1a60c75c181ab75c04.png'
                                                    width='10px'>
                                                <img alt='duration' class='icon show-on-mobile'
                                                    src='https://d2yoing0loi5gh.cloudfront.net/assets/kitty/offer/ic_duration_xsmall@2x-aecbcb4beef9da5174b6b6f8d7bcca7ef89b2b87588181cc5ddabc8f4e4f4926.png'
                                                    width='8px'>
                                                11 시간
                                            </div>
                                        </div>
                                    </div>
                                </a>
                            </div>
                        </li>
                        <li class='item' data-offer-id='49111' data-offer-type='Tour' itemprop='itemListElement'
                            itemscope='true' itemtype='http://schema.org/Product'>
                            <a class="wish" data-offer-id="49111" data-remote="true" rel="nofollow" data-method="put"
                                href="/wishlists/49111.js">
                                <div class='icon'></div>
                            </a>
                            <div class='card-cover'>
                                <a class='offer-link' href='/offers/49111' itemprop='url'>
                                    <div class='img-container'>
                                        <div class='img-placeholder'>
                                            <img class='visible'
                                                src='https://d2ur7st6jjikze.cloudfront.net/offer_photos/49111/303180_medium_1545637116.jpg?1545637116'>
                                        </div>
                                    </div>
                                    <div class='content-box'>
                                        <div class='guide-container'>
                                            <img class='profile-img img-circle'
                                                src='https://d2ur7st6jjikze.cloudfront.net/profile_images/1367183/1367183_medium_1540515874.png?1540515874'>
                                            <img alt='real guide' class='real-guide-badge'
                                                src='https://d2yoing0loi5gh.cloudfront.net/assets/kitty/icon/ic_realguide_xsmall@2x-a29901ad5fb3c523fb1cf4fca3fb95b0aa87392f344a8438e925ad4daae2e3ed.png'
                                                width='12px'>
                                            <div class='profile-name'>
                                                여행나무
                                                <div class='city-name'>• 오사카</div>
                                            </div>
                                        </div>
                                        <div class='name' itemprop='name'>[투어] 오사카 나라 교토 일일 버스투어 (한국어 가이드 동행) ::
                                            일본/나라&amp;교토</div>
                                        <div class='review'>
                                            <div class="rating-box"><span class="icon active"></span><span
                                                    class="icon active"></span><span class="icon active"></span><span
                                                    class="icon active"></span><span class="icon active"></span></div>
                                            <div class='text'>후기 20개</div>
                                        </div>
                                        <div class='price' data-offer-price='₩ 58,900' itemprop='offers'
                                            itemscope='true' itemtype='http://schema.org/Offer'>
                                            <span class='unit'>1인</span>
                                            <span>₩ 58,900</span>
                                            <meta content='KRW' itemprop='priceCurrency'>
                                            <meta content='58900' itemprop='price'>
                                        </div>
                                        <div class='info-container'>
                                            <div class='category'>
                                                가이드 투어
                                                •
                                                로컬투어
                                                •
                                                근교
                                            </div>
                                            <div class='meta-infos'>
                                                <img alt='duration' class='icon hide-on-mobile'
                                                    src='https://d2yoing0loi5gh.cloudfront.net/assets/kitty/offer/ic_duration_small@2x-c44bad18f0206f40dd43ec73fdadcfda73b8f2a58c4d9b1a60c75c181ab75c04.png'
                                                    width='10px'>
                                                <img alt='duration' class='icon show-on-mobile'
                                                    src='https://d2yoing0loi5gh.cloudfront.net/assets/kitty/offer/ic_duration_xsmall@2x-aecbcb4beef9da5174b6b6f8d7bcca7ef89b2b87588181cc5ddabc8f4e4f4926.png'
                                                    width='8px'>
                                                11 시간
                                            </div>
                                        </div>
                                    </div>
                                </a>
                            </div>
                        </li>
                        <li class='item' data-offer-id='51156' data-offer-type='Tour' itemprop='itemListElement'
                            itemscope='true' itemtype='http://schema.org/Product'>
                            <a class="wish" data-offer-id="51156" data-remote="true" rel="nofollow" data-method="put"
                                href="/wishlists/51156.js">
                                <div class='icon'></div>
                            </a>
                            <div class='card-cover'>
                                <a class='offer-link' href='/offers/51156' itemprop='url'>
                                    <div class='img-container'>
                                        <div class='img-placeholder'>
                                            <img class='visible'
                                                src='https://d2ur7st6jjikze.cloudfront.net/offer_photos/51156/314053_medium_1548144896.jpg?1548144896'>
                                        </div>
                                    </div>
                                    <div class='content-box'>
                                        <div class='guide-container'>
                                            <img class='profile-img img-circle'
                                                src='https://d2ur7st6jjikze.cloudfront.net/profile_images/1367183/1367183_medium_1540515874.png?1540515874'>
                                            <img alt='real guide' class='real-guide-badge'
                                                src='https://d2yoing0loi5gh.cloudfront.net/assets/kitty/icon/ic_realguide_xsmall@2x-a29901ad5fb3c523fb1cf4fca3fb95b0aa87392f344a8438e925ad4daae2e3ed.png'
                                                width='12px'>
                                            <div class='profile-name'>
                                                여행나무
                                                <div class='city-name'>• 오사카</div>
                                            </div>
                                        </div>
                                        <div class='name' itemprop='name'>[투어] 오사카 교토 일일 버스투어 (한국어 가이드 동행)</div>
                                        <div class='review'>
                                            <div class="rating-box"><span class="icon active"></span><span
                                                    class="icon active"></span><span class="icon active"></span><span
                                                    class="icon active"></span><span class="icon active"></span></div>
                                            <div class='text'>후기 14개</div>
                                        </div>
                                        <div class='price' data-offer-price='₩ 53,900' itemprop='offers'
                                            itemscope='true' itemtype='http://schema.org/Offer'>
                                            <span class='unit'>1인</span>
                                            <span>₩ 53,900</span>
                                            <meta content='KRW' itemprop='priceCurrency'>
                                            <meta content='53900' itemprop='price'>
                                        </div>
                                        <div class='info-container'>
                                            <div class='category'>
                                                가이드 투어
                                                •
                                                로컬투어
                                                •
                                                근교
                                            </div>
                                            <div class='meta-infos'>
                                                <img alt='duration' class='icon hide-on-mobile'
                                                    src='https://d2yoing0loi5gh.cloudfront.net/assets/kitty/offer/ic_duration_small@2x-c44bad18f0206f40dd43ec73fdadcfda73b8f2a58c4d9b1a60c75c181ab75c04.png'
                                                    width='10px'>
                                                <img alt='duration' class='icon show-on-mobile'
                                                    src='https://d2yoing0loi5gh.cloudfront.net/assets/kitty/offer/ic_duration_xsmall@2x-aecbcb4beef9da5174b6b6f8d7bcca7ef89b2b87588181cc5ddabc8f4e4f4926.png'
                                                    width='8px'>
                                                10 시간
                                            </div>
                                        </div>
                                    </div>
                                </a>
                            </div>
                        </li>
                        <li class='item' data-offer-id='51182' data-offer-type='Tour' itemprop='itemListElement'
                            itemscope='true' itemtype='http://schema.org/Product'>
                            <a class="wish" data-offer-id="51182" data-remote="true" rel="nofollow" data-method="put"
                                href="/wishlists/51182.js">
                                <div class='icon'></div>
                            </a>
                            <div class='card-cover'>
                                <a class='offer-link' href='/offers/51182' itemprop='url'>
                                    <div class='img-container'>
                                        <div class='img-placeholder'>
                                            <img class='visible'
                                                src='https://d2ur7st6jjikze.cloudfront.net/offer_photos/51182/314241_medium_1548210183.jpg?1548210183'>
                                        </div>
                                    </div>
                                    <div class='content-box'>
                                        <div class='guide-container'>
                                            <img class='profile-img img-circle'
                                                src='https://d2ur7st6jjikze.cloudfront.net/profile_images/1367183/1367183_medium_1540515874.png?1540515874'>
                                            <img alt='real guide' class='real-guide-badge'
                                                src='https://d2yoing0loi5gh.cloudfront.net/assets/kitty/icon/ic_realguide_xsmall@2x-a29901ad5fb3c523fb1cf4fca3fb95b0aa87392f344a8438e925ad4daae2e3ed.png'
                                                width='12px'>
                                            <div class='profile-name'>
                                                여행나무
                                                <div class='city-name'>• 오사카</div>
                                            </div>
                                        </div>
                                        <div class='name' itemprop='name'>[투어] 오사카 나라 교토 일일 버스투어 (한국어 가이드 동행)</div>
                                        <div class='review'>
                                            <div class="rating-box"><span class="icon active"></span><span
                                                    class="icon active"></span><span class="icon active"></span><span
                                                    class="icon active"></span><span class="icon active"></span></div>
                                            <div class='text'>후기 6개</div>
                                        </div>
                                        <div class='price' data-offer-price='₩ 58,900' itemprop='offers'
                                            itemscope='true' itemtype='http://schema.org/Offer'>
                                            <span class='unit'>1인</span>
                                            <span>₩ 58,900</span>
                                            <meta content='KRW' itemprop='priceCurrency'>
                                            <meta content='58900' itemprop='price'>
                                        </div>
                                        <div class='info-container'>
                                            <div class='category'>
                                                가이드 투어
                                                •
                                                로컬투어
                                                •
                                                근교
                                            </div>
                                            <div class='meta-infos'>
                                                <img alt='duration' class='icon hide-on-mobile'
                                                    src='https://d2yoing0loi5gh.cloudfront.net/assets/kitty/offer/ic_duration_small@2x-c44bad18f0206f40dd43ec73fdadcfda73b8f2a58c4d9b1a60c75c181ab75c04.png'
                                                    width='10px'>
                                                <img alt='duration' class='icon show-on-mobile'
                                                    src='https://d2yoing0loi5gh.cloudfront.net/assets/kitty/offer/ic_duration_xsmall@2x-aecbcb4beef9da5174b6b6f8d7bcca7ef89b2b87588181cc5ddabc8f4e4f4926.png'
                                                    width='8px'>
                                                10 시간
                                            </div>
                                        </div>
                                    </div>
                                </a>
                            </div>
                        </li>
                        <li class='item' data-offer-id='51200' data-offer-type='Tour' itemprop='itemListElement'
                            itemscope='true' itemtype='http://schema.org/Product'>
                            <a class="wish" data-offer-id="51200" data-remote="true" rel="nofollow" data-method="put"
                                href="/wishlists/51200.js">
                                <div class='icon'></div>
                            </a>
                            <div class='card-cover'>
                                <a class='offer-link' href='/offers/51200' itemprop='url'>
                                    <div class='img-container'>
                                        <div class='img-placeholder'>
                                            <img class='visible'
                                                src='https://d2ur7st6jjikze.cloudfront.net/offer_photos/51200/314356_medium_1548227946.jpg?1548227946'>
                                        </div>
                                    </div>
                                    <div class='content-box'>
                                        <div class='guide-container'>
                                            <img class='profile-img img-circle'
                                                src='https://d2ur7st6jjikze.cloudfront.net/profile_images/1367183/1367183_medium_1540515874.png?1540515874'>
                                            <img alt='real guide' class='real-guide-badge'
                                                src='https://d2yoing0loi5gh.cloudfront.net/assets/kitty/icon/ic_realguide_xsmall@2x-a29901ad5fb3c523fb1cf4fca3fb95b0aa87392f344a8438e925ad4daae2e3ed.png'
                                                width='12px'>
                                            <div class='profile-name'>
                                                여행나무
                                                <div class='city-name'>• 삿포로</div>
                                            </div>
                                        </div>
                                        <div class='name' itemprop='name'>[투어]북해도 비에이 후라노 일일 버스투어 (한국어 가이드 동행)</div>
                                        <div class='review'>
                                            <div class="rating-box"><span class="icon active"></span><span
                                                    class="icon active"></span><span class="icon active"></span><span
                                                    class="icon active"></span><span class="icon active"></span></div>
                                            <div class='text'>후기 12개</div>
                                        </div>
                                        <div class='price' data-offer-price='₩ 54,500' itemprop='offers'
                                            itemscope='true' itemtype='http://schema.org/Offer'>
                                            <span class='unit'>1인</span>
                                            <span>₩ 54,500</span>
                                            <meta content='KRW' itemprop='priceCurrency'>
                                            <meta content='54500' itemprop='price'>
                                        </div>
                                        <div class='info-container'>
                                            <div class='category'>
                                                가이드 투어
                                                •
                                                로컬투어
                                                •
                                                근교
                                            </div>
                                            <div class='meta-infos'>
                                                <img alt='duration' class='icon hide-on-mobile'
                                                    src='https://d2yoing0loi5gh.cloudfront.net/assets/kitty/offer/ic_duration_small@2x-c44bad18f0206f40dd43ec73fdadcfda73b8f2a58c4d9b1a60c75c181ab75c04.png'
                                                    width='10px'>
                                                <img alt='duration' class='icon show-on-mobile'
                                                    src='https://d2yoing0loi5gh.cloudfront.net/assets/kitty/offer/ic_duration_xsmall@2x-aecbcb4beef9da5174b6b6f8d7bcca7ef89b2b87588181cc5ddabc8f4e4f4926.png'
                                                    width='8px'>
                                                11 시간
                                            </div>
                                        </div>
                                    </div>
                                </a>
                            </div>
                        </li>
                        <li class='item' data-offer-id='52425' data-offer-type='Tour' itemprop='itemListElement'
                            itemscope='true' itemtype='http://schema.org/Product'>
                            <a class="wish" data-offer-id="52425" data-remote="true" rel="nofollow" data-method="put"
                                href="/wishlists/52425.js">
                                <div class='icon'></div>
                            </a>
                            <div class='card-cover'>
                                <a class='offer-link' href='/offers/52425' itemprop='url'>
                                    <div class='img-container'>
                                        <div class='img-placeholder'>
                                            <img class='visible'
                                                src='https://d2ur7st6jjikze.cloudfront.net/offer_photos/52425/321399_medium_1550120899.jpg?1550120899'>
                                        </div>
                                    </div>
                                    <div class='content-box'>
                                        <div class='guide-container'>
                                            <img class='profile-img img-circle'
                                                src='https://d2ur7st6jjikze.cloudfront.net/profile_images/1367183/1367183_medium_1540515874.png?1540515874'>
                                            <img alt='real guide' class='real-guide-badge'
                                                src='https://d2yoing0loi5gh.cloudfront.net/assets/kitty/icon/ic_realguide_xsmall@2x-a29901ad5fb3c523fb1cf4fca3fb95b0aa87392f344a8438e925ad4daae2e3ed.png'
                                                width='12px'>
                                            <div class='profile-name'>
                                                여행나무
                                                <div class='city-name'>• 삿포로</div>
                                            </div>
                                        </div>
                                        <div class='name' itemprop='name'>[투어]북해도 오타루 샤코탄 일일 버스투어 (한국어 가이드 동행)</div>
                                        <div class='review'>
                                            <div class="rating-box"><span class="icon active"></span><span
                                                    class="icon active"></span><span class="icon active"></span><span
                                                    class="icon active"></span><span class="icon active"></span></div>
                                            <div class='text'>후기 5개</div>
                                        </div>
                                        <div class='price' data-offer-price='₩ 74,900' itemprop='offers'
                                            itemscope='true' itemtype='http://schema.org/Offer'>
                                            <span class='unit'>1인</span>
                                            <span>₩ 74,900</span>
                                            <meta content='KRW' itemprop='priceCurrency'>
                                            <meta content='74900' itemprop='price'>
                                        </div>
                                        <div class='info-container'>
                                            <div class='category'>
                                                가이드 투어
                                                •
                                                로컬투어
                                                •
                                                근교
                                            </div>
                                            <div class='meta-infos'>
                                                <img alt='duration' class='icon hide-on-mobile'
                                                    src='https://d2yoing0loi5gh.cloudfront.net/assets/kitty/offer/ic_duration_small@2x-c44bad18f0206f40dd43ec73fdadcfda73b8f2a58c4d9b1a60c75c181ab75c04.png'
                                                    width='10px'>
                                                <img alt='duration' class='icon show-on-mobile'
                                                    src='https://d2yoing0loi5gh.cloudfront.net/assets/kitty/offer/ic_duration_xsmall@2x-aecbcb4beef9da5174b6b6f8d7bcca7ef89b2b87588181cc5ddabc8f4e4f4926.png'
                                                    width='8px'>
                                                11 시간
                                            </div>
                                        </div>
                                    </div>
                                </a>
                            </div>
                        </li>
                        <li class='item' data-offer-id='52508' data-offer-type='Tour' itemprop='itemListElement'
                            itemscope='true' itemtype='http://schema.org/Product'>
                            <a class="wish" data-offer-id="52508" data-remote="true" rel="nofollow" data-method="put"
                                href="/wishlists/52508.js">
                                <div class='icon'></div>
                            </a>
                            <div class='card-cover'>
                                <a class='offer-link' href='/offers/52508' itemprop='url'>
                                    <div class='img-container'>
                                        <div class='img-placeholder'>
                                            <img class='visible'
                                                src='https://d2ur7st6jjikze.cloudfront.net/offer_photos/52508/322053_medium_1550219366.jpg?1550219366'>
                                        </div>
                                    </div>
                                    <div class='content-box'>
                                        <div class='guide-container'>
                                            <img class='profile-img img-circle'
                                                src='https://d2ur7st6jjikze.cloudfront.net/profile_images/1367183/1367183_medium_1540515874.png?1540515874'>
                                            <img alt='real guide' class='real-guide-badge'
                                                src='https://d2yoing0loi5gh.cloudfront.net/assets/kitty/icon/ic_realguide_xsmall@2x-a29901ad5fb3c523fb1cf4fca3fb95b0aa87392f344a8438e925ad4daae2e3ed.png'
                                                width='12px'>
                                            <div class='profile-name'>
                                                여행나무
                                                <div class='city-name'>• 도쿄</div>
                                            </div>
                                        </div>
                                        <div class='name' itemprop='name'>[투어] 도쿄-에노시마&amp;가마쿠라 일일 버스투어 (한국어 가이드 동행)
                                            (일본/도쿄)</div>
                                        <div class='review'>
                                            <img alt='review' class='icon'
                                                src='https://d2yoing0loi5gh.cloudfront.net/assets/kitty/offer/ic_reviewevent@2x-e0cd14bb5a469b7f06ef7a64136d6565713702aa206716d6c8bbacd00e71ef09.png'
                                                width='14px'>
                                            <div class='text font-blue'>후기 이벤트</div>
                                        </div>
                                        <div class='price' data-offer-price='₩ 88,000' itemprop='offers'
                                            itemscope='true' itemtype='http://schema.org/Offer'>
                                            <span class='unit'>1인</span>
                                            <span>₩ 88,000</span>
                                            <meta content='KRW' itemprop='priceCurrency'>
                                            <meta content='88000' itemprop='price'>
                                        </div>
                                        <div class='info-container'>
                                            <div class='category'>
                                                가이드 투어
                                                •
                                                로컬투어
                                                •
                                                근교
                                            </div>
                                            <div class='meta-infos'>
                                                <img alt='duration' class='icon hide-on-mobile'
                                                    src='https://d2yoing0loi5gh.cloudfront.net/assets/kitty/offer/ic_duration_small@2x-c44bad18f0206f40dd43ec73fdadcfda73b8f2a58c4d9b1a60c75c181ab75c04.png'
                                                    width='10px'>
                                                <img alt='duration' class='icon show-on-mobile'
                                                    src='https://d2yoing0loi5gh.cloudfront.net/assets/kitty/offer/ic_duration_xsmall@2x-aecbcb4beef9da5174b6b6f8d7bcca7ef89b2b87588181cc5ddabc8f4e4f4926.png'
                                                    width='8px'>
                                                11 시간
                                            </div>
                                        </div>
                                    </div>
                                </a>
                            </div>
                        </li>
                        <li class='item' data-offer-id='52834' data-offer-type='Tour' itemprop='itemListElement'
                            itemscope='true' itemtype='http://schema.org/Product'>
                            <a class="wish" data-offer-id="52834" data-remote="true" rel="nofollow" data-method="put"
                                href="/wishlists/52834.js">
                                <div class='icon'></div>
                            </a>
                            <div class='card-cover'>
                                <a class='offer-link' href='/offers/52834' itemprop='url'>
                                    <div class='img-container'>
                                        <div class='img-placeholder'>
                                            <img class='visible'
                                                src='https://d2ur7st6jjikze.cloudfront.net/offer_photos/52834/324685_medium_1550648528.jpg?1550648528'>
                                        </div>
                                    </div>
                                    <div class='content-box'>
                                        <div class='guide-container'>
                                            <img class='profile-img img-circle'
                                                src='https://d2ur7st6jjikze.cloudfront.net/profile_images/1367183/1367183_medium_1540515874.png?1540515874'>
                                            <img alt='real guide' class='real-guide-badge'
                                                src='https://d2yoing0loi5gh.cloudfront.net/assets/kitty/icon/ic_realguide_xsmall@2x-a29901ad5fb3c523fb1cf4fca3fb95b0aa87392f344a8438e925ad4daae2e3ed.png'
                                                width='12px'>
                                            <div class='profile-name'>
                                                여행나무
                                                <div class='city-name'>• 도쿄</div>
                                            </div>
                                        </div>
                                        <div class='name' itemprop='name'>[투어] 도쿄 후지산 일일 버스투어(한국어 가이드 동행) (일본/도쿄)</div>
                                        <div class='review'>
                                            <div class="rating-box"><span class="icon active"></span><span
                                                    class="icon active"></span><span class="icon active"></span><span
                                                    class="icon active"></span><span class="icon active"></span></div>
                                            <div class='text'>후기 7개</div>
                                        </div>
                                        <div class='price' data-offer-price='₩ 88,000' itemprop='offers'
                                            itemscope='true' itemtype='http://schema.org/Offer'>
                                            <span class='unit'>1인</span>
                                            <span>₩ 88,000</span>
                                            <meta content='KRW' itemprop='priceCurrency'>
                                            <meta content='88000' itemprop='price'>
                                        </div>
                                        <div class='info-container'>
                                            <div class='category'>
                                                가이드 투어
                                                •
                                                로컬투어
                                                •
                                                근교
                                            </div>
                                            <div class='meta-infos'>
                                                <img alt='duration' class='icon hide-on-mobile'
                                                    src='https://d2yoing0loi5gh.cloudfront.net/assets/kitty/offer/ic_duration_small@2x-c44bad18f0206f40dd43ec73fdadcfda73b8f2a58c4d9b1a60c75c181ab75c04.png'
                                                    width='10px'>
                                                <img alt='duration' class='icon show-on-mobile'
                                                    src='https://d2yoing0loi5gh.cloudfront.net/assets/kitty/offer/ic_duration_xsmall@2x-aecbcb4beef9da5174b6b6f8d7bcca7ef89b2b87588181cc5ddabc8f4e4f4926.png'
                                                    width='8px'>
                                                10 시간
                                            </div>
                                        </div>
                                    </div>
                                </a>
                            </div>
                        </li>
                        <li class='item' data-offer-id='53616' data-offer-type='Tour' itemprop='itemListElement'
                            itemscope='true' itemtype='http://schema.org/Product'>
                            <a class="wish" data-offer-id="53616" data-remote="true" rel="nofollow" data-method="put"
                                href="/wishlists/53616.js">
                                <div class='icon'></div>
                            </a>
                            <div class='card-cover'>
                                <a class='offer-link' href='/offers/53616' itemprop='url'>
                                    <div class='img-container'>
                                        <div class='img-placeholder'>
                                            <img class='visible'
                                                src='https://d2ur7st6jjikze.cloudfront.net/offer_photos/53616/369530_medium_1559901545.jpg?1559901545'>
                                        </div>
                                    </div>
                                    <div class='content-box'>
                                        <div class='guide-container'>
                                            <img class='profile-img img-circle'
                                                src='https://d2ur7st6jjikze.cloudfront.net/profile_images/1367183/1367183_medium_1540515874.png?1540515874'>
                                            <img alt='real guide' class='real-guide-badge'
                                                src='https://d2yoing0loi5gh.cloudfront.net/assets/kitty/icon/ic_realguide_xsmall@2x-a29901ad5fb3c523fb1cf4fca3fb95b0aa87392f344a8438e925ad4daae2e3ed.png'
                                                width='12px'>
                                            <div class='profile-name'>
                                                여행나무
                                                <div class='city-name'>• 삿포로</div>
                                            </div>
                                        </div>
                                        <div class='name' itemprop='name'>[투어] 특별기획 공항픽업+비에이+오타루 2일 버스투어-B팩(한국어 가이드 동행)
                                        </div>
                                        <div class='review'>
                                            <img alt='review' class='icon'
                                                src='https://d2yoing0loi5gh.cloudfront.net/assets/kitty/offer/ic_reviewevent@2x-e0cd14bb5a469b7f06ef7a64136d6565713702aa206716d6c8bbacd00e71ef09.png'
                                                width='14px'>
                                            <div class='text font-blue'>후기 이벤트</div>
                                        </div>
                                        <div class='price' data-offer-price='₩ 128,000' itemprop='offers'
                                            itemscope='true' itemtype='http://schema.org/Offer'>
                                            <span class='unit'>1인</span>
                                            <span>₩ 128,000</span>
                                            <meta content='KRW' itemprop='priceCurrency'>
                                            <meta content='128000' itemprop='price'>
                                        </div>
                                        <div class='info-container'>
                                            <div class='category'>
                                                가이드 투어
                                                •
                                                픽업/샌딩
                                            </div>
                                            <div class='meta-infos'>
                                                <img alt='duration' class='icon hide-on-mobile'
                                                    src='https://d2yoing0loi5gh.cloudfront.net/assets/kitty/offer/ic_duration_small@2x-c44bad18f0206f40dd43ec73fdadcfda73b8f2a58c4d9b1a60c75c181ab75c04.png'
                                                    width='10px'>
                                                <img alt='duration' class='icon show-on-mobile'
                                                    src='https://d2yoing0loi5gh.cloudfront.net/assets/kitty/offer/ic_duration_xsmall@2x-aecbcb4beef9da5174b6b6f8d7bcca7ef89b2b87588181cc5ddabc8f4e4f4926.png'
                                                    width='8px'>
                                                11 시간
                                            </div>
                                        </div>
                                    </div>
                                </a>
                            </div>
                        </li>
                        <li class='item' data-offer-id='53617' data-offer-type='Tour' itemprop='itemListElement'
                            itemscope='true' itemtype='http://schema.org/Product'>
                            <a class="wish" data-offer-id="53617" data-remote="true" rel="nofollow" data-method="put"
                                href="/wishlists/53617.js">
                                <div class='icon'></div>
                            </a>
                            <div class='card-cover'>
                                <a class='offer-link' href='/offers/53617' itemprop='url'>
                                    <div class='img-container'>
                                        <div class='img-placeholder'>
                                            <img class='visible'
                                                src='https://d2ur7st6jjikze.cloudfront.net/offer_photos/53617/369529_medium_1559901500.jpg?1559901500'>
                                        </div>
                                    </div>
                                    <div class='content-box'>
                                        <div class='guide-container'>
                                            <img class='profile-img img-circle'
                                                src='https://d2ur7st6jjikze.cloudfront.net/profile_images/1367183/1367183_medium_1540515874.png?1540515874'>
                                            <img alt='real guide' class='real-guide-badge'
                                                src='https://d2yoing0loi5gh.cloudfront.net/assets/kitty/icon/ic_realguide_xsmall@2x-a29901ad5fb3c523fb1cf4fca3fb95b0aa87392f344a8438e925ad4daae2e3ed.png'
                                                width='12px'>
                                            <div class='profile-name'>
                                                여행나무
                                                <div class='city-name'>• 삿포로</div>
                                            </div>
                                        </div>
                                        <div class='name' itemprop='name'>[투어] 특별기획 공항픽업+비에이 일일 버스투어-A팩(한국어 가이드 동행)
                                            (일본/삿포로)</div>
                                        <div class='review'>
                                            <div class="rating-box"><span class="icon active"></span><span
                                                    class="icon active"></span><span class="icon active"></span><span
                                                    class="icon active"></span><span class="icon active"></span></div>
                                            <div class='text'>후기 2개</div>
                                        </div>
                                        <div class='price' data-offer-price='₩ 78,000' itemprop='offers'
                                            itemscope='true' itemtype='http://schema.org/Offer'>
                                            <span class='unit'>1인</span>
                                            <span>₩ 78,000</span>
                                            <meta content='KRW' itemprop='priceCurrency'>
                                            <meta content='78000' itemprop='price'>
                                        </div>
                                        <div class='info-container'>
                                            <div class='category'>
                                                가이드 투어
                                                •
                                                로컬투어
                                                •
                                                근교
                                            </div>
                                            <div class='meta-infos'>
                                                <img alt='duration' class='icon hide-on-mobile'
                                                    src='https://d2yoing0loi5gh.cloudfront.net/assets/kitty/offer/ic_duration_small@2x-c44bad18f0206f40dd43ec73fdadcfda73b8f2a58c4d9b1a60c75c181ab75c04.png'
                                                    width='10px'>
                                                <img alt='duration' class='icon show-on-mobile'
                                                    src='https://d2yoing0loi5gh.cloudfront.net/assets/kitty/offer/ic_duration_xsmall@2x-aecbcb4beef9da5174b6b6f8d7bcca7ef89b2b87588181cc5ddabc8f4e4f4926.png'
                                                    width='8px'>
                                                10 시간
                                            </div>
                                        </div>
                                    </div>
                                </a>
                            </div>
                        </li>
                        <li class='item' data-offer-id='56008' data-offer-type='Tour' itemprop='itemListElement'
                            itemscope='true' itemtype='http://schema.org/Product'>
                            <a class="wish" data-offer-id="56008" data-remote="true" rel="nofollow" data-method="put"
                                href="/wishlists/56008.js">
                                <div class='icon'></div>
                            </a>
                            <div class='card-cover'>
                                <a class='offer-link' href='/offers/56008' itemprop='url'>
                                    <div class='img-container'>
                                        <div class='img-placeholder'>
                                            <img class='visible'
                                                src='https://d2ur7st6jjikze.cloudfront.net/offer_photos/56008/343392_medium_1554708436.jpg?1554708436'>
                                        </div>
                                    </div>
                                    <div class='content-box'>
                                        <div class='guide-container'>
                                            <img class='profile-img img-circle'
                                                src='https://d2ur7st6jjikze.cloudfront.net/profile_images/1367183/1367183_medium_1540515874.png?1540515874'>
                                            <img alt='real guide' class='real-guide-badge'
                                                src='https://d2yoing0loi5gh.cloudfront.net/assets/kitty/icon/ic_realguide_xsmall@2x-a29901ad5fb3c523fb1cf4fca3fb95b0aa87392f344a8438e925ad4daae2e3ed.png'
                                                width='12px'>
                                            <div class='profile-name'>
                                                여행나무
                                                <div class='city-name'>• 삿포로</div>
                                            </div>
                                        </div>
                                        <div class='name' itemprop='name'>[투어] 팜토미타-해바라기+라벤더 일일 버스투어 (한국어 가이드 동행)
                                            (일본/삿포로)</div>
                                        <div class='review'>
                                            <img alt='review' class='icon'
                                                src='https://d2yoing0loi5gh.cloudfront.net/assets/kitty/offer/ic_reviewevent@2x-e0cd14bb5a469b7f06ef7a64136d6565713702aa206716d6c8bbacd00e71ef09.png'
                                                width='14px'>
                                            <div class='text font-blue'>후기 이벤트</div>
                                        </div>
                                        <div class='price' data-offer-price='₩ 67,900' itemprop='offers'
                                            itemscope='true' itemtype='http://schema.org/Offer'>
                                            <span class='unit'>1인</span>
                                            <span>₩ 67,900</span>
                                            <meta content='KRW' itemprop='priceCurrency'>
                                            <meta content='67900' itemprop='price'>
                                        </div>
                                        <div class='info-container'>
                                            <div class='category'>
                                                가이드 투어
                                                •
                                                로컬투어
                                                •
                                                근교
                                            </div>
                                            <div class='meta-infos'>
                                                <img alt='duration' class='icon hide-on-mobile'
                                                    src='https://d2yoing0loi5gh.cloudfront.net/assets/kitty/offer/ic_duration_small@2x-c44bad18f0206f40dd43ec73fdadcfda73b8f2a58c4d9b1a60c75c181ab75c04.png'
                                                    width='10px'>
                                                <img alt='duration' class='icon show-on-mobile'
                                                    src='https://d2yoing0loi5gh.cloudfront.net/assets/kitty/offer/ic_duration_xsmall@2x-aecbcb4beef9da5174b6b6f8d7bcca7ef89b2b87588181cc5ddabc8f4e4f4926.png'
                                                    width='8px'>
                                                11 시간
                                            </div>
                                        </div>
                                    </div>
                                </a>
                            </div>
                        </li>

                    </ul>
                </div>
            </div>

            <div class='review-container mrt-review-container' data-review-count='215'>
                <div class='content-center-narrow'>
                    <div class='title-with-number'>
                        후기
                        <div class='count'>215</div>
                    </div>
                    <div class='review-wrapper'>
                        <div class='review-box'>
                            <div class='review-inner-container'>
                                <div class='review-row'>
                                    <div class="rating-box"><span class="icon active"></span><span
                                            class="icon active"></span><span class="icon active"></span><span
                                            class="icon active"></span><span class="icon active"></span></div>
                                    <div class='name'>강**</div>
                                </div>
                                <div class='review-row review-info'>
                                    <span>40 대</span>
                                    <span>&nbsp;•&nbsp;</span>
                                    <span>배우자와 단 둘이 떠나는 여행</span>
                                    <span>&nbsp;•&nbsp;</span>
                                    <time class='time' data-timestamp='1560059140.5515468' data-type='date'></time>
                                </div>
                                <div class='review-row'>
                                    <p class='review-message'>오사카 첫 여행와서 교토를 방문할 예정이라면 한번쯤 고려해보세요~~^^<br />편하게 버스로
                                        왔다갔다~~^^ 가이드의 친절한 설명 재미있는 이야기 등<br />여행 이외에도 많은 여행 도움을 얻을수 있는 투어 입니다</p>
                                </div>
                            </div>
                        </div>
                        <div class='review-box'>
                            <div class='review-inner-container'>
                                <div class='review-row'>
                                    <div class="rating-box"><span class="icon active"></span><span
                                            class="icon active"></span><span class="icon active"></span><span
                                            class="icon active"></span><span class="icon active"></span></div>
                                    <div class='name'>Jo*********</div>
                                </div>
                                <div class='review-row review-info'>
                                    <span>30 대</span>
                                    <span>&nbsp;•&nbsp;</span>
                                    <span>친구들과 떠나는 여행</span>
                                    <span>&nbsp;•&nbsp;</span>
                                    <time class='time' data-timestamp='1559987553.461035' data-type='date'></time>
                                </div>
                                <div class='review-row'>
                                    <p class='review-message'>완전 좋습니다!</p>
                                </div>
                            </div>
                        </div>
                        <div class='review-box'>
                            <div class='review-inner-container'>
                                <div class='review-row'>
                                    <div class="rating-box"><span class="icon active"></span><span
                                            class="icon active"></span><span class="icon active"></span><span
                                            class="icon active"></span><span class="icon"></span></div>
                                    <div class='name'>이**</div>
                                </div>
                                <div class='review-row review-info'>
                                    <span>30 대</span>
                                    <span>&nbsp;•&nbsp;</span>
                                    <span>연인과 함께 떠나는 로맨틱한 여행</span>
                                    <span>&nbsp;•&nbsp;</span>
                                    <time class='time' data-timestamp='1559715602.6032882' data-type='date'></time>
                                </div>
                                <div class='review-row'>
                                    <p class='review-message'>시기가 시기라 그런지 여행코스는 좀 다양하지는 못해서 아쉽지만 해안가에서의 경치 여행은 기억에 남네요.
                                    </p>
                                </div>
                            </div>
                        </div>

                        <a class="btn-white btn-more ladda-button" id="review-more" data-ladda="true" data-remote="true"
                            href="/guides/10272/reviews?page=2"><img class='icon'
                                src='https://d2yoing0loi5gh.cloudfront.net/assets/kitty/button/ic_arrow_more@2x-58031ef3a523ee43aa15c91fcb46284b98ab157a159dfcdf810264fc3f71ac99.png'
                                width='12px'>
                            <span>후기 더보기</span>
                        </a>
                    </div>
                </div>
            </div>

        </section>
    </main>

    <div id="Footer-react-component-a4244313-4481-48d5-998b-92bb61d20b8c"></div>
    <script type="application/json" class="js-react-on-rails-component" data-component-name="Footer"
        data-dom-id="Footer-react-component-a4244313-4481-48d5-998b-92bb61d20b8c">
        {
            "b2b": {
                "status": false,
                "b2bCompany": null
            }
        }
    </script>


    <div id='popup-mask'></div>
    <div id='gnb-popup-mask'></div>
    <script>
        if (typeof OfferWish !== 'undefined') {
            OfferWish.check([59171, 59058, 31750, 42062, 38293, 32826, 36738, 7063, 8508, 13756, 33455, 32987]);
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
            <img height="1" width="1" style="border-style:none;" alt=""
                src="//googleads.g.doubleclick.net/pagead/viewthroughconversion/1004447359/?guid=ON&amp;script=0" />
        </div>
    </noscript>

    <!--  공통 스크립트 -->
    <script
        src="https://d2yoing0loi5gh.cloudfront.net/assets/adiz_sv120-38fea29758c151518c764b4bc1a0bdd8e78c105c31e114ef16a4fd0b8be47a31.js">
    </script>

    <script type="text/javascript">
        window.criteo_q = window.criteo_q || [];
        window.userEmail = "";
        window.userAgent = "d";

        window.userEmail = "4fc42e0a3a2cf71faecdd0ce02824478";

        if (navigator.userAgent.match(
                /Android|Mobile|iP(hone|od|ad)|BlackBerry|IEMobile|Kindle|NetFront|Silk-Accelerated|(hpw|web)OS|Fennec|Minimo|Opera M(obi|ini)|Blazer|Dolfin|Dolphin|Skyfire|Zune/
                )) {
            //모바일(스마트폰+태블릿)일 때
            window.userAgent = "t";
            if (navigator.userAgent.match(
                    /Mobile|iP(hone|od)|BlackBerry|IEMobile|Kindle|NetFront|Silk-Accelerated|(hpw|web)OS|Fennec|Minimo|Opera M(obi|ini)|Blazer|Dolfin|Dolphin|Skyfire|Zune/
                    )) {
                //스마트폰일 때
                window.userAgent = "m";
            }
        }
    </script>





    <script>
        var user = 1984112


        dataLayer.push({
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
            $(document).ready(function () {
                $('.offer-item-container li.item').click(function (event) {
                    var $offer_item = $(this);

                    var offer_id = $offer_item.attr('data-offer-id');
                    var offer_name = $offer_item.find('.name').text();
                    var offer_price = $offer_item.find('.price[data-offer-price]').attr(
                        'data-offer-price');
                    var offer_category = $offer_item.attr('data-offer-type');

                    var offer_url = $offer_item.find('a.offer-link').attr('href');

                    dataLayer.push({
                        'event': 'productClick',
                        'ecommerce': {
                            'click': {
                                'actionField': {
                                    'list': offer_category
                                }, // Optional list property.
                                'products': [{
                                    'name': offer_name, // Name or ID is required.
                                    'id': offer_id,
                                    'price': offer_price,
                                    'category': offer_category
                                }]
                            }
                        }
                    });
                });


                $(document).on('wishChecked', function (e) {
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
                if (typeof (url) != 'undefined') {
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
        if (!wcs_add) var wcs_add = {};

        wcs_add["wa"] = "s_2652984f26f1";

        if (!_nao) var _nao = {};

        wcs.inflow();
        wcs_do(_nao);
    </script>



    <!-- 공통 호출 하단 스크립트 : 모든페이지 하단 설치 -->
    <!-- PlayD TERA Log Script v1.1 -->
    <script>
        var _nSA = (function (_g, _c, _s, _p, _d, _i, _h) {
            if (_i.wgc != _g) {
                var _ck = (new Image(0, 0)).src = _p + '//' + _c + '/?cookie';
                _i.wgc = _g;
                _i.wrd = (new Date().getTime());
                var _sc = _d.createElement('script');
                _sc.src = _p + '//sas.nsm-corp.com/' + _s + 'gc=' + _g + '&rd=' + _i.wrd;
                var _sm = _d.getElementsByTagName('script')[0];
                _sm.parentNode.insertBefore(_sc, _sm);
                _i.wgd = _c;
            }
            return _i;
        })('TR10118205273', 'ngc1.nsm-corp.com', 'sa-w.js?', location.protocol, document, window._nSA || {},
            location.hostname);
    </script><noscript><img src="//ngc1.nsm-corp.com/?uid=TR10118205273&je=n&" border=0 width=0 height=0></noscript>
    <!-- LogAnalytics Script Install -->
</body>

</html>
