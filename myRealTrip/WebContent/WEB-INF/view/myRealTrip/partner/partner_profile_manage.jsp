<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html
    class="js flexbox canvas canvastext webgl no-touch geolocation postmessage websqldatabase indexeddb hashchange history draganddrop websockets rgba hsla multiplebgs backgroundsize borderimage borderradius boxshadow textshadow opacity cssanimations csscolumns cssgradients cssreflections csstransforms csstransforms3d csstransitions fontface generatedcontent video audio localstorage sessionstorage webworkers applicationcache svg inlinesvg smil svgclippaths js-menubar"
    lang="en" style="">

<head>

<script src="http://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js" type="text/javascript"></script>

<script type="text/javascript" src="js/script.js"></script>
    <style type="text/css">
        .turbolinks-progress-bar {
            position: fixed;
            display: block;
            top: 0;
            left: 0;
            height: 3px;
            background: #0076ff;
            z-index: 9999;
            transition: width 300ms ease-out, opacity 150ms 150ms ease-in;
            transform: translate3d(0, 0, 0);
        }
    </style>

    <link rel="stylesheet" media="all" href="/myRealTrip/css/app_template_1.css">
    <link rel="stylesheet" media="all" href="/myRealTrip/css/app_template_2.css">
    <link rel="stylesheet" media="all" href="/myRealTrip/css/app_template_3.css">
 
    <link href="/myRealTrip/css/googleapi_font_1.css" rel="stylesheet">
    <script
        src="/myRealTrip/js/app_template_4.js">
    </script>
    <script  src="/myRealTrip/js/mainjs.js"></script>
    <style type="text/css"></style>
    <script>
        Breakpoints();
    </script>
    <script src="//maps.googleapis.com/maps/api/js?key=AIzaSyBJr_Xc1ErOFoVluRDtSjfeBlNpppuP6pw&amp;libraries=places"
        type="text/javascript"></script>
    <script src="/myRealTrip/js/raven.js"></script>
 <!--    <script>
        Raven.config('https://7d40cd233b7b4666b3c2b05e5493fbc4@sentry.io/145992').install()
    </script> -->
    <meta charset="utf-8">
    <meta content="IE=edge" http-equiv="X-UA-Compatible">
    <meta content="width=device-width, initial-scale=1.0, user-scalable=0" name="viewport">
    <meta content="파트너 페이지" name="description">
    <meta content="" name="author">
    <title>파트너 페이지 | MYREALTRIP 마이리얼트립</title>
    <meta name="csrf-param" content="authenticity_token">
    <meta name="csrf-token"
        content="EQGWBcIbuUPE6E8+oi4+NG9ruKKLPgp+KbqNBO8nw7eGsXdyyeCvjSGMzbJWf8J+t1cLkR2md0FSH2qhhNJ5dQ==">
    <link
        href="https://d2yoing0loi5gh.cloudfront.net/assets/favicon-e7fc64f202376533d86106e6f712ed41eee1e843dbc5de3b2765938656f8eb93.ico"
        rel="shortcut icon">
    <link
        href="https://d2yoing0loi5gh.cloudfront.net/assets/logo/ic-mobile-76-59c4321eae219afd9cebfb870646b877f48a5b63adab68a37604891800aed0da.png"
        rel="apple-touch-icon-precomposed">
    <link
        href="https://d2yoing0loi5gh.cloudfront.net/assets/logo/ic-mobile-76-59c4321eae219afd9cebfb870646b877f48a5b63adab68a37604891800aed0da.png"
        rel="apple-touch-icon">
    <link
        href="https://d2yoing0loi5gh.cloudfront.net/assets/logo/ic-mobile-76-59c4321eae219afd9cebfb870646b877f48a5b63adab68a37604891800aed0da.png"
        rel="apple-touch-icon" sizes="76x76">
    <link
        href="https://d2yoing0loi5gh.cloudfront.net/assets/logo/ic-mobile-120-0de06603ad3e4427cb29b5e4ef6833021cc52ea642ee76e843ed997209049bf5.png"
        rel="apple-touch-icon" sizes="120x120">
    <link
        href="https://d2yoing0loi5gh.cloudfront.net/assets/logo/ic-mobile-152-cc369a832b7a69d0c0b63c3914168b58e732a26729d72e976e7f729b923ee302.png"
        rel="apple-touch-icon" sizes="152x152">
    <script type="text/javascript" charset="UTF-8"
        src="/myRealTrip/js/common.js"></script>
    <script type="text/javascript" charset="UTF-8"
        src="/myRealTrip/js/util.js"></script>
</head>

<body class="site-menubar-unfold" data-action="edit" data-controller-path="partner/offers" data-controller="offers"
    data-sign-in="">

    <jsp:include page="/WEB-INF/layout/partnerpage_top.jsp"></jsp:include>
    <jsp:include page="/WEB-INF/layout/partnerpage_nav.jsp"></jsp:include>

<div class='page animsition'>
<div class='page-header'>
<ol class='breadcrumb'>
<li>
<a href='<%=request.getContextPath() %>/partner/dashboard.do'>HOME</a>
</li>
<li class='active'>계정관리</li>
</ol>

</div>
<div class='page-content container-fluid'>
<div class='row'>
<div class='col-lg-12'>
<div class='panel panel-bordered panel-profile panel-edit-profile panel-form'>
<div class='panel-heading'>
<div class='panel-title'>
계정관리
</div>
</div>
<div class='panel-body'>
<div class='col-lg-8 col-lg-offset-2 col-sm-12'>
<div class='row'>
<form data-validation="true" class="form-horizontal form-account" action="/partner" accept-charset="UTF-8" method="post"><input name="utf8" type="hidden" value="&#x2713;" /><input type="hidden" name="_method" value="put" /><input type="hidden" name="authenticity_token" value="8EFZi/ys/BCoAdPMSarD4kmjZ986b3vRkOpeLuDeCOQB6s3i1Cx2v7bMVik1CEJAqTPstYEWTbIDnn9U2W0KaA==" />
<input name='guide[company]' type='hidden' value='false'>
<div class='panel panel-bordered panel-border-gray panel-profile'>
<div class='panel-image bg-blue-grey-300' style='background:url(&#39;&#39;) no-repeat center center;background-size:cover;'>
<div class='input-group-file background-file file-upload-btn'>
<input name='guide[background_image_temp_url]' type='hidden' value=''>
<input id='guideBgBtn' name='file' type='file' value="${pdto.bg_img}">
<div class='btn btn-default btn-file ladda-button' data-spinner-color='DarkGrey' data-style='zoom-out'>
<span class='ladda-label'></span>
<i aria-hidden='true' class='icon wb-upload'></i>
배경사진 변경...
</div>
</div>
</div>
<div class='photo-container'>
<div class='avatar avatar-lg'>
<img alt='guide profile' class='default-img' src='//d2yoing0loi5gh.cloudfront.net/assets/default/user_profile_image-414acc60b27f0a258bec14c82b70dc361fc6768da9289f924f887bec1fc33849.png'>
<div class='img-preview'></div>
</div>
<div class='avatar-file file-upload-btn'>
<input name='user[profile_image_temp_url]' type='hidden' value=''>
<input id='guideProfileBtn' name='file' type='file' value="${pdto.partnerpicture }">
<div class='btn btn-success btn-file ladda-button' data-spinner-color='DarkGrey' data-style='zoom-out'>
<span class='ladda-label'></span>
<i aria-hidden='true' class='icon wb-upload'></i>
사진변경...
</div>
</div>
</div>
<div class='panel-body margin-top-50'>
<div class='form-group clearfix'>
<label class='col-sm-3 control-label font-weight-700'>
파트너 이름
<span>*</span>
</label>
<div class='col-sm-9'>
<input class='form-control' name='user[username]' type='text' value='${pdto.member_name}'>
</div>
</div>

<input name='guide[localizations_attributes][][id]' type='hidden' value='11735'>
<div class='form-group clearfix'>
<label class='col-sm-3 control-label font-weight-700'>
키워드
<span>*</span>
</label>
<div class='col-sm-9 col-xs-12'>
<div class='row'>
<div class='col-sm-5'>
<input class='form-control' name='guide[localizations_attributes][][job]' placeholder='직업' type='text' value='${pdto.keyword1}'>
</div>
<div class='col-sm-7'>
<input class='form-control' name='guide[localizations_attributes][][organization]' placeholder='소속/직장명' type='text' value='${pdto.keyword2}'>
</div>
</div>
<small class='help-block'>• 본인을 가장 잘 나타낼 수 있는 키워드를 적어주세요.</small>
</div>
</div>

<div class='form-group clearfix'>
<label class='col-sm-3 control-label font-weight-700'>
소개
<span>*</span>
</label>
<div class='col-sm-9'>
<div class='row'>
<div class='col-sm-12'>
<p>거주하게 된 배경, 파트너 활동의 계기, 직업 등 여행자에게 파트너님을 소개해주세요.<br/>한글 기준 최소 100자 이상 작성해주세요.<br/></p>
<textarea class='form-control' name='guide[localizations_attributes][][introduction]' rows='5' type='text'>
${pdto.introduce}
</textarea>
</div>
</div>
<small class='help-block'>• 예약 확정 후 서로의 연락처가 공개됩니다.<br/>• 안전 거래를 위해 파트너님의 개인 연락처 및 SNS 페이지를 기재할 경우 수정되거나 삭제될 수 있습니다.<br/></small>
</div>
</div>

<div class='form-group clearfix'>
<label class='col-sm-3 control-label font-weight-700'>
현지 연락처
<span>*</span>
</label>
<div class='col-sm-9 col-xs-12'>
<div class='row'>
<div class='col-sm-5'>
<select class="form-control" id="ipnumdto" name="pnum_emer" >
<c:forEach items="${ ipnumdto  }" var="dto">
   <option value="${ dto.pnum }">${ dto.country_name }</option>
 </c:forEach>
</select>
</div>
<div class='col-sm-7'>
<input class='form-control' name='guide[contact_infos][][phone_number]' type='tel' value='${pdto.localnumber}'>
</div>
</div>
<small class='help-block'>• 상시 연락할 수 있는 전화번호를 알려주시면 여행자에게 큰 도움이 됩니다.<br/></small>
</div>
</div>

<div class='form-group clearfix'>
<label class='col-sm-3 control-label font-weight-700'>
비상 연락처
<span>*</span>
</label>
<div class='col-sm-9 col-xs-12'>
<div class='row'>
<div class='col-sm-5'>
<select class="form-control" id="ipnumdto" name="pnum_emer" >
<c:forEach items="${ ipnumdto  }" var="dto">
   <option value="${ dto.pnum }">${ dto.country_name }</option>
 </c:forEach>
</select>
</div>
<div class='col-sm-7'>
<input class='form-control' name='guide[emergency_phone_number]' type='tel' value='01050537425'>
</div>
</div>
<small class='help-block'>• 상시 연락할 수 있는 다른 연락처 혹은 파트너님과 가장 잘 연락될 수 있는 분의 연락처를 적어주세요<br/></small>
</div>
</div>

<div class='form-group clearfix'>
<label class='col-sm-3 control-label font-weight-700'>
카카오톡 ID
<span>*</span>
</label>
<div class='col-sm-9'>
<div class='row'>
<div class='col-sm-12'>
<input autocapitalize='off' class='form-control' name='guide[kakao_id]' type='text' value='ndolpinn'>
</div>
</div>
<small class='help-block'>• 예약 확정 후 연락처가 공개될 경우 카카오톡으로 여행자의 문의를 받을 수 있습니다.<br/>• 영상인터뷰를 위해 필요합니다.<br/></small>
</div>
</div>

<div class='form-group clearfix'>
<label class='col-sm-3 control-label font-weight-700'>예약 알림 설정</label>
<div class='col-sm-9 col-xs-12'>
<div class='form-group clearfix margin-bottom-20'>
<label class='col-sm-3 control-label'>이메일 알림</label>
<div class='col-sm-9 col-xs-12'>
<div class='row'>
<div class='col-xs-6'>
<div class='radio-custom radio-primary clearfix'>
<input checked id='receiveEmail' name='guide[subscription_settings][email]' type='radio' value='true'>
<label for='receiveEmail'>
<div class='col-xs-12'>수신</div>
</label>
</div>
</div>
<div class='col-xs-6'>
<div class='radio-custom radio-primary clearfix'>
<input id='blockEmail' name='guide[subscription_settings][email]' type='radio' value='false'>
<label for='blockEmail'>
<div class='col-xs-12'>수신 안함</div>
</label>
</div>
</div>
</div>
</div>
</div>
<div class='form-group clearfix'>
<label class='col-sm-3 control-label'>SMS 알림</label>
<div class='col-sm-9 col-xs-12'>
<div class='row'>
<div class='col-xs-6'>
<div class='radio-custom radio-primary clearfix'>
<input checked id='receiveSMS' name='guide[subscription_settings][sms]' type='radio' value='true'>
<label for='receiveSMS'>
<div class='col-xs-12'>수신</div>
</label>
</div>
</div>
<div class='col-xs-6'>
<div class='radio-custom radio-primary clearfix'>
<input id='blockSMS' name='guide[subscription_settings][sms]' type='radio' value='false'>
<label for='blockSMS'>
<div class='col-xs-12'>수신 안함</div>
</label>
</div>
</div>
</div>
</div>
</div>
</div>
</div>

<div class='form-group clearfix'>
<label class='col-sm-3 control-label font-weight-700'>
문의 기본 응답 메시지
</label>
<div class='col-sm-9 col-xs-12'>
<textarea class='form-control' name='guide[automated_message]' rows='5'>안녕하세요.&#x000A;문소민가이드 입니다. 문의하고자하는 상품과 날짜, 인원을 알려주시면 최대한 빨리 답변 드리겠습니다.</textarea>
<small class='help-block'>• 기본메시지는 여행자가 최초 문의를 했을 때 기본으로 제공되는 메시지 입니다.<br/>• 친절하고 구체적인 인사말로 예약을 유도하세요.<br/></small>
</div>
</div>

<div class='margin-bottom-10 margin-top-40 clearfix'>
<div class='row'>
<div class='col-sm-3'></div>
<div class='col-sm-9'>
<div class='row'>
<div class='center-block clearfix'>
<div class='col-xs-6 padding-right-5'>
<a class="btn btn-block btn-default" href="https://www.myrealtrip.com/partner/edit">취소하기</a>
</div>
<div class='col-xs-6 padding-left-5'>
<button class='btn btn-block btn-primary' type='submit'>저장하기</button>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</form>

<script>
  window.App = App || {};
  App.directUpload = {
    option: {"key":"uploads/691cf367-b7dc-4743-a701-36ad1a843e3d/${filename}","success_action_status":"201","acl":"public-read","policy":"eyJleHBpcmF0aW9uIjoiMjAxOS0wNi0xMFQwNjozMjo1M1oiLCJjb25kaXRpb25zIjpbeyJidWNrZXQiOiJteXJlYWx0cmlwLXVwbG9hZC11cy10ZW1wIn0sWyJzdGFydHMtd2l0aCIsIiRrZXkiLCJ1cGxvYWRzLzY5MWNmMzY3LWI3ZGMtNDc0My1hNzAxLTM2YWQxYTg0M2UzZC8iXSx7InN1Y2Nlc3NfYWN0aW9uX3N0YXR1cyI6IjIwMSJ9LHsiYWNsIjoicHVibGljLXJlYWQifSx7IngtYW16LWNyZWRlbnRpYWwiOiJBS0lBSVhONkNZNERFNjZTS0RIUS8yMDE5MDYwOS91cy1lYXN0LTEvczMvYXdzNF9yZXF1ZXN0In0seyJ4LWFtei1hbGdvcml0aG0iOiJBV1M0LUhNQUMtU0hBMjU2In0seyJ4LWFtei1kYXRlIjoiMjAxOTA2MDlUMTAzNTQyWiJ9XX0=","x-amz-credential":"AKIAIXN6CY4DE66SKDHQ/20190609/us-east-1/s3/aws4_request","x-amz-algorithm":"AWS4-HMAC-SHA256","x-amz-date":"20190609T103542Z","x-amz-signature":"ba17f82fd6ee1067796ab3c196229781d47920c33058c7c143ee2b152e76128e"},
    url: "https://myrealtrip-upload-us-temp.s3.amazonaws.com"
  }
</script>

</div>
</div>
</div>
</div>
<div aria-hidden='true' aria-labelledby='visaModal' class='modal fade' id='visaModal' role='dialog' tabindex='-1'>
<div class='modal-dialog modal-center'>
<form class="modal-content" data-validation="true" action="/partner/documents" accept-charset="UTF-8" method="post"><input name="utf8" type="hidden" value="&#x2713;" /><input type="hidden" name="authenticity_token" value="rQIt8vmsmUn1zjbf2lJHzcZ+ComzhEyLxwOsaoW31fRcqbmb0SwT5usDszqm8MZvJu6B4wj9euhUd40QvATXeA==" />
<div class='modal-header'>
<button aria-label='Close' class='close' data-dismiss='modal' type='button'>
<span aria-hidden='true'>×</span>
</button>
<h4 class='modal-title'>현지 비자</h4>
</div>
<div class='modal-body font-size-14'>
<div class='clearfix'>
<div class='form-group row' data-expiry-form>
<div class='col-xs-12'>
<label class='control-label'>만료 날짜</label>
</div>
<div class='col-xs-12'>
<div class='form-group'>
<div class='row'>
<div class='col-xs-4'>
<input class='form-control' name='document[expiry][yyyy]' placeholder='년(YYYY)' type='text'>
</div>
<div class='col-xs-4'>
<input class='form-control' name='document[expiry][mm]' placeholder='월(MM)' type='text'>
</div>
<div class='col-xs-4'>
<input class='form-control' name='document[expiry][dd]' placeholder='일(DD)' type='text'>
</div>
</div>
</div>
</div>
</div>
<div class='form-group row'>
<div class='col-xs-12'>
<label class='control-label'>서류 업로드</label>
</div>
<div class='col-xs-12'>
<div class='file-upload-btn inline-block' data-display-file-name data-document-button-container data-is-unique data-url='/partner/documents?type=visa'>
<input name='document[document_file_temp_url]' type='hidden' value=''>
<input name='document[type]' type='hidden' value='visa'>
<input name='file' type='file'>
<button class='btn btn-default btn-info offer-register-btn margin-top-10 btn-file ladda-button' data-spinner-color='DarkGrey' data-style='zoom-out'>
<span class='ladda-label'></span>
<i aria-hidden='true' class='icon wb-upload'></i>
현지 비자 업로드
</button>
</div>
<input class='input-file-name' data-file-name name='document[file_name]' readonly type='text'>
</div>
</div>
</div>
</div>
<div class='modal-footer'>
<div class='pull-right'>
<button class='btn btn-primary ladda-button' data-style='expand-left' type='submit'>완료</button>
</div>
</div>
</form>

</div>
</div>

<div aria-hidden='true' aria-labelledby='otherModal' class='modal fade' id='otherModal' role='dialog' tabindex='-1'>
<div class='modal-dialog modal-center'>
<form class="modal-content" data-validation="true" action="/partner/documents" accept-charset="UTF-8" method="post"><input name="utf8" type="hidden" value="&#x2713;" /><input type="hidden" name="authenticity_token" value="DcaPeHW1yRo+JpJk6Q7rfCXu/GVorWGRf0TcLJGnd9/8bRsRXTVDtSDrF4GVrGrexX53D9PUV/LsMP1WqBR1Uw==" />
<div class='modal-header'>
<button aria-label='Close' class='close' data-dismiss='modal' type='button'>
<span aria-hidden='true'>×</span>
</button>
<h4 class='modal-title'>기타 서류</h4>
</div>
<div class='modal-body font-size-14'>
<div class='clearfix'>
<div class='form-group row'>
<div class='col-xs-12'>
<label class='control-label'>기타 서류 종류</label>
</div>
<div class='col-xs-12'>
<div class='form-group'>
<select class='form-control' name='document[other_types]'>
<option disabled selected value='default'>선택하세요.</option>
<option value='drivers_license'>운전면허증</option>
<option value='related_license'>관련 허가</option>
<option value='car_insurance'>차량/상해 보험</option>
<option value='other'>기타</option>
[:drivers_license, :related_license, :car_insurance, :other]</select>
</div>
</div>
</div>
<div class='form-group hidden row' data-expiry-form>
<div class='col-xs-12'>
<label class='control-label'>만료 날짜</label>
</div>
<div class='col-xs-12'>
<div class='form-group'>
<div class='row'>
<div class='col-xs-4'>
<input class='form-control' name='document[expiry][yyyy]' placeholder='년(YYYY)' type='text'>
</div>
<div class='col-xs-4'>
<input class='form-control' name='document[expiry][mm]' placeholder='월(MM)' type='text'>
</div>
<div class='col-xs-4'>
<input class='form-control' name='document[expiry][dd]' placeholder='일(DD)' type='text'>
</div>
</div>
</div>
</div>
</div>
<div class='form-group row'>
<div class='col-xs-12'>
<label class='control-label'>서류 업로드</label>
</div>
<div class='col-xs-12'>
<div class='file-upload-btn inline-block' data-display-file-name data-document-button-container data-url='/partner/documents?type=other'>
<input name='document[document_file_temp_url]' type='hidden' value=''>
<input name='document[type]' type='hidden' value='other'>
<input name='file' type='file'>
<button class='btn btn-default btn-info offer-register-btn margin-top-10 btn-file ladda-button' data-spinner-color='DarkGrey' data-style='zoom-out'>
<span class='ladda-label'></span>
<i aria-hidden='true' class='icon wb-upload'></i>
기타 서류 업로드
</button>
</div>
<input class='input-file-name' data-file-name name='document[file_name]' readonly type='text'>
</div>
</div>
</div>
</div>
<div class='modal-footer'>
<div class='pull-right'>
<button class='btn btn-primary ladda-button' data-style='expand-left' type='submit'>완료</button>
</div>
</div>
</form>

</div>
</div>

</div>
</div>
</div>
</div>

<footer class='site-footer main' id='footer'>
<div class='container-fluid content-wrap'>
<p class='copyright'>상호명 마이리얼트립 | 대표 : 이동건 | 개인정보책임자 : 류종민<br/>사업자등록번호 : 209-81-55339 | 통신판매업신고번호 : 2017-서울강남-03960 | <a target='_blank' href='http://www.ftc.go.kr/www/bizCommView.do?key=232&apv_perm_no=2017322016230203960&pageUnit=10&searchCnd=wrkr_no&searchKrwd=2098155339&pageIndex=1'>사업자정보확인</a><br/>서울특별시 강남구 강남대로 364(역삼동), 미왕빌딩 15층 (주)마이리얼트립<br/>대표번호 : 1670-8208 | 일반 문의 : help@myrealtrip.com<br/>운영시간(한국) 09:00 ~ 22:00, 주말/공휴일 포함.<br/>자사는 서울특별시관광협회 공제영업보증보험에 가입이 되어 있습니다.<br/>마이리얼트립은 통신판매중개자이며 통신판매의 당사자가 아닙니다. 따라서 마이리얼트립은 상품·거래정보 및 거래에 대하여 책임을 지지 않습니다.<br/></p>
</div>
</footer>

<div class='global-alert-box'>
</div>

</body>
</html>
