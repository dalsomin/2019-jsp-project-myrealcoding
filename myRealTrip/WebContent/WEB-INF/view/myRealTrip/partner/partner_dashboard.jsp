<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html class='no-js css-menubar' lang='en'>
<head>
<meta charset='utf-8'>
<meta content='IE=edge' http-equiv='X-UA-Compatible'>
<meta content='width=device-width, initial-scale=1.0, user-scalable=0' name='viewport'>
<meta content='파트너 페이지' name='description'>
<meta content='' name='author'>
<title>파트너 페이지 | MYREALTRIP 마이리얼트립</title>
<meta name="csrf-param" content="authenticity_token" />
<meta name="csrf-token" content="/QA2JKcbtF2RrBxJTD0QERjfjpLZxrvpEkRgasQsLTYPB7vr1porsVwwYxVHx4IQ9pOSk1OEPnT32kmexnUxiQ==" />
<link href='https://d2yoing0loi5gh.cloudfront.net/assets/favicon-e7fc64f202376533d86106e6f712ed41eee1e843dbc5de3b2765938656f8eb93.ico' rel='shortcut icon'>
<link rel="stylesheet" media="all" href="https://d2yoing0loi5gh.cloudfront.net/assets/partner/application_template_1-2ece18b6c26275ab3bce2543416a6d5ce8ab1fb02e628874719778440a82ecb2.css" />
<link rel="stylesheet" media="all" href="https://d2yoing0loi5gh.cloudfront.net/assets/partner/application_template_2-a79762e95ce2ee3797f3c699b7bae7897749e06c8ca7717bf815c52af7e70d4e.css" />
<link rel="stylesheet" media="all" href="https://d2yoing0loi5gh.cloudfront.net/assets/partner/application-1f1bf6de0d66895a382fe64c10b99a4922d097a149c8ccb7e52658bf06174263.css" />
<link href='//fonts.googleapis.com/css?family=Roboto:300,400,500,300italic' rel='stylesheet'>
<link href='https://d2yoing0loi5gh.cloudfront.net/assets/logo/ic-mobile-76-59c4321eae219afd9cebfb870646b877f48a5b63adab68a37604891800aed0da.png' rel='apple-touch-icon-precomposed'>
<link href='https://d2yoing0loi5gh.cloudfront.net/assets/logo/ic-mobile-76-59c4321eae219afd9cebfb870646b877f48a5b63adab68a37604891800aed0da.png' rel='apple-touch-icon'>
<link href='https://d2yoing0loi5gh.cloudfront.net/assets/logo/ic-mobile-76-59c4321eae219afd9cebfb870646b877f48a5b63adab68a37604891800aed0da.png' rel='apple-touch-icon' sizes='76x76'>
<link href='https://d2yoing0loi5gh.cloudfront.net/assets/logo/ic-mobile-120-0de06603ad3e4427cb29b5e4ef6833021cc52ea642ee76e843ed997209049bf5.png' rel='apple-touch-icon' sizes='120x120'>
<link href='https://d2yoing0loi5gh.cloudfront.net/assets/logo/ic-mobile-152-cc369a832b7a69d0c0b63c3914168b58e732a26729d72e976e7f729b923ee302.png' rel='apple-touch-icon' sizes='152x152'>
<!--[if lte ie 9]>
<link rel="stylesheet" media="all" href="https://d2yoing0loi5gh.cloudfront.net/assets/kitty/ie-03f2550f99664f41f36c69b1e87ad5ab86b0a89362bfefe3c4ec453c29634926.css" />
<![endif]-->
<!--[if lt ie 9]>
<script src="https://d2yoing0loi5gh.cloudfront.net/assets/common/html5shiv/dist/html5shiv-72001964f72eb70efb8cd11b4727fa613245eb29e197137d690e2b276fc12f61.js"></script>
<![endif]-->
<!--[if lt ie 10]>
<script src="https://d2yoing0loi5gh.cloudfront.net/assets/common/media.match-562ed6d1b442ca3aaab51118f9293da0f5cbbc364d1ef2318054c8e4caf282b7.js"></script>
<link rel="stylesheet" media="screen" href="https://d2yoing0loi5gh.cloudfront.net/assets/common/respond/respond-proxy.html.css" />
<link href='/assets/common/respond/respond-proxy.html' id='respond-proxy' rel='respond-procy'>
<script src='/assets/common/respond/respond.src.js'></script>
<link href='/assets/common/respond/respond.proxy.gif' id='respond-redirect' rel='respond-redirect'>
<script src='/assets/common/respond/respond.proxy.js'></script>
<![endif]-->
<script src="https://d2yoing0loi5gh.cloudfront.net/assets/kitty/ko-5d40c1382db94787ee09831dee889f833820560fe559c19347c2079165c71e0f.js"></script>
<script src="https://d2yoing0loi5gh.cloudfront.net/assets/partner/application-0a1f0d84b41d048d5930089311ad8e11e301bd606ee17fa9b2c5b3d74f7bec4a.js"></script>
<script>
  Breakpoints();
</script>
<script src='//maps.googleapis.com/maps/api/js?key=AIzaSyC84fbqS1JuAJ9t24SLY2LEWf2Ud8W8F1E&amp;libraries=places' type='text/javascript'></script>
<script src='//cdn.ravenjs.com/3.24.2/raven.min.js'></script>
<script>
  Raven.config('https://7d40cd233b7b4666b3c2b05e5493fbc4@sentry.io/145992').install()
</script>
</head>
<body class='site-menubar-unfold' data-action='index' data-controller-path='partner/dashboard' data-controller='dashboard' data-sign-in>
<!--[if lt ie 8]>
<p class='browserupgrade'>You are using an <strong>outdated</strong> browser. Please <a href='http://browsehappy.com/'>upgrade your browser</a> to improve your experience.</p>
<![endif]-->


<jsp:include page="/WEB-INF/layout/partnerpage_top.jsp"></jsp:include>
<jsp:include page="/WEB-INF/layout/partnerpage_nav.jsp"></jsp:include>


<div class='page animsition page-dashboard'>
<div class='page-header'>
<ol class='breadcrumb'>
<li>
<a href='<%=request.getContextPath() %>/partner/dashboard.do'>HOME</a>
</li>
<li class='active'>대시보드</li>
</ol>

<h3 class='page-title margin-top-20'>
<div class='avatar pull-left margin-right-20'>
<img alt='guide profile image' src='//d2yoing0loi5gh.cloudfront.net/assets/default/user_profile_image-414acc60b27f0a258bec14c82b70dc361fc6768da9289f924f887bec1fc33849.png'>
</div>
<div class='profile-container'>
<div class='guide-name'> ${authUser.member_name} 파트너</div>
</div>
<div class='btn-manual-container'>
<c:if test="${Tour eq true }">
<a class='btn btn-dark btn-outline font-weight-700 margin-left-10' download='투어&amp;티켓 매뉴얼' href='https://s3-ap-northeast-1.amazonaws.com/myrealtrip/partner_docs/mrt_company_partner_manual.pdf'>
<i aria-hidden='true' class='icon wb-link-intact'></i>
투어&amp;티켓 매뉴얼
</a>
</c:if>
<c:if test="${Lodging eq true }">
<a class='btn btn-dark btn-outline font-weight-700 margin-left-10' download='민박 매뉴얼' href='https://s3-ap-northeast-1.amazonaws.com/myrealtrip/partner_docs/mrt_lodging_partner_manual.pdf'>
<i aria-hidden='true' class='icon wb-link-intact'></i>
민박 매뉴얼
</a>
</c:if>

</div>
</h3>
</div>

<div class='page-content container-fluid' data-join-process>
<div class='row'>
<div class='col-xs-12'>
<div class='panel panel-bordered panel-profile panel-new-profile'>
<div class='panel-heading'>
<div class='panel-title'>
개인 파트너 등록
</div>
</div>
<ul class='list-group list-group-bordered'>
<li class='list-group-item padding-top-0 process-done'>
<div class='form-group clearfix'>
<div class='row'>
<div class='col-xs-1'>
<div class='padding-left-10'>
<h2 class='process-num'>1</h2>
<i aria-hidden='true' class='icon wb-check process-check green-600'></i>
</div>
</div>
<div class='col-xs-11'>
<label class='control-label font-weight-700 margin-top-20'>상품 등록</label>
<div>판매하시려는 상품을 등록해주세요.</div>
<div class='row'>
<div class='panel-btn-container clearfix'>
<div class='col-xs-12'>
<c:if test="${Tour eq true }">
<a class='btn btn-default btn-info offer-register-btn margin-top-10' 
href='<%=request.getContextPath() %>/partner/regist_tour1.do'>
<i aria-hidden='true' class='icon wb-plus'></i>
가이드 투어 등록
</a>
</c:if>
<c:if test="${Lodging eq true }">
<a class='btn btn-default btn-info offer-register-btn margin-top-10'
 href='<%=request.getContextPath()%>/partner/regist_minbak.do'>
<i aria-hidden='true' class='icon wb-plus'></i>
민박 등록
</a>
</c:if>
</div>
</div>
</div>
</div>
</div>
</div>
</li>

<li class='list-group-item padding-top-0'>
<div class='form-group clearfix'>
<div class='row'>
<div class='col-xs-1'>
<div class='padding-left-10'>
<c:if test="${surveycnt ne 1 }">
<h2 class='process-num'>2</h2>
</c:if>
<c:if test="${surveycnt eq 1 }">
<br>
<img src="<%=request.getContextPath() %>/partner_Images/check.PNG"alt="" />
</c:if>
</div>
</div>
<div class='col-xs-11'>
<label class='control-label font-weight-700 margin-top-20'>설문지 작성</label>
<div>상품을 모두 등록하셨다면 아래 설문지를 작성해주세요.</div>
<div class='row'>
<div class='panel-btn-container clearfix'>
<div class='col-xs-12'>
<a class='btn btn-default btn-info offer-register-btn margin-top-10' href='<%=request.getContextPath() %>/partner/survey.do'>
<i aria-hidden='true' class='icon wb-pencil'></i>
설문지 작성
</a>
</div>
</div>
</div>
</div>
</div>
</div>
</li>

<li class='list-group-item padding-top-0'>
<div class='form-group clearfix'>
<div class='row'>
<div class='col-xs-1'>
<div class='padding-left-10'>
<h2 class='process-num'>3</h2>
<i aria-hidden='true' class='icon wb-check process-check green-600'></i>
</div>
</div>
<div class='col-xs-11'>
<label class='control-label font-weight-700 margin-top-20'>인터뷰</label>
<div>설문지 작성 완료 후 2~3일 내에 등록한 연락처로 인터뷰 요청 연락을 드립니다.</div>
<div class='row'>
<div class='panel-btn-container clearfix'>
<div class='col-xs-12'>
<button class='btn btn-default offer-register-btn margin-top-10 disabled'>
앞단계를 먼저 완료해주세요
</button>
</div>
</div>
</div>
</div>
</div>
</div>
</li>

<li class='list-group-item padding-top-0'>
<div class='form-group clearfix'>
<div class='row'>
<div class='col-xs-1'>
<div class='padding-left-10'>
<h2 class='process-num'>4</h2>
<i aria-hidden='true' class='icon wb-check process-check green-600'></i>
</div>
</div>
<div class='col-xs-11'>
<label class='control-label font-weight-700 margin-top-20'>서류 업로드</label>
<div>신분증, 현지 비자와 그 외 기타 서류를 업로드해주세요.</div>
<div class='row'>
<div class='panel-btn-container margin-top-10 clearfix'>
<div class='col-xs-12'>
<div class='margin-right-20 inline-block'>
<div class='row'>
<div class='col-xs-12'>
<div class='cyan-600 help-message margin-bottom-0'>필수</div>
</div>
</div>
<div class='file-upload-btn inline-block' data-document-button-container data-is-required data-is-unique data-need-reload data-type='identification' data-upload-directly data-url='/smalltalk/partner/documents'>
<input name='docu_id' type='file' value="docu_id">
<button class='btn btn-default btn-file btn-info ladda-button offer-register-btn' data-spinner-color='DarkGrey' data-style='zoom-out'>
<span class='ladda-label'></span>
<i aria-hidden='true' class='icon wb-upload'></i>
신분증 사본 업로드
</button>
</div>
<button class='btn btn-default btn-info offer-register-btn' data-target='#visaModal' data-toggle='modal' type='button'>
현지 비자...
</button>
</div>
<div class='inline-block'>
<div class='row'>
<div class='col-xs-12'>
<div class='cyan-600 help-message margin-bottom-0'>선택</div>
</div>
</div>
<button class='btn btn-default btn-info offer-register-btn' data-target='#otherModal' data-toggle='modal' type='button'>
기타 서류...
</button>
</div>
</div>
<div class='col-xs-12'>
<div class='document-container'>
<div class='documents-list'>
<div class='document-item hidden' data-document-id data-document-item-template>
<div class='info-box'>
<div class='info-type'></div>
<div class='info-name'></div>
</div>
<i aria-hidden='true' class='icon delete-icon wb-close-mini' data-delete-document></i>
</div>
</div>
</div>
</div>
</div>
</div>
<div class='row'>
<div class='col-xs-12'>
<div class='help-message'>• 각 서류의 파일명을 서류명으로 설정하시고 업로드해주세요. (예시 - "비자" "사업자등록증" "운전면허증")<br/>• 민감한 숫자, 정보들은 가린 후에 실명을 확인할 수 있도록 업로드해주세요.<br/>• 상기 서류는 개인정보보호법에 따라 안전하게 보관됨을 안내드립니다.<br/>• 각 파일의 사이즈는 5000kb를 넘지 않아야 합니다.<br/></div>
</div>
</div>
</div>
</div>
</div>
</li>

<li class='list-group-item padding-top-0 process-done'>
<div class='form-group clearfix'>
<div class='row'>
<div class='col-xs-1'>
<div class='padding-left-10'>

<c:if test="${ynlist.account_yn  ne 'y'}"> 
<h2>5</h2>
</c:if>
<c:if test="${ynlist.account_yn  eq 'y'}"> 
<br>
<img src="<%=request.getContextPath() %>/partner_Images/check.PNG"alt="" />
</c:if>
</div>
</div>
<div class='col-xs-11'>
<label class='control-label font-weight-700 margin-top-20'>정산 계좌 등록${ynlist.account_yn}</label>
<div>수익이 발생할 경우 수취할 계좌를 등록해주세요.</div>
<div class='row'>
<div class='panel-btn-container margin-top-10 clearfix'>
<div class='col-xs-12'>
<a class='btn btn-default btn-info margin-top-10 offer-register-btn' href='<%=request.getContextPath() %>/partner/account.do'>
<i aria-hidden='true' class='icon wb-pencil'></i>
정산 계좌 등록
</a>
</div>
</div>
</div>
</div>
</div>
</div>
</li>

<li class='list-group-item padding-top-0'>
<div class='form-group clearfix'>
<div class='row'>
<div class='col-xs-1'>
<div class='padding-left-10'>

<c:if test="${ynlist.quiz_yn ne 'y'}"> 
<h2 class='process-num'>6 </h2>
</c:if>

<c:if test="${ynlist.quiz_yn eq 'y'}"> 
<br>
<img src="<%=request.getContextPath() %>/partner_Images/check.PNG"alt="" />
</c:if>
</div>
</div>
<div class='col-xs-11'>
<label class='control-label font-weight-700 margin-top-20'>퀴즈 풀기</label>
<div>마지막으로 준비가 되셨는지 확인하기 위해 간단한 퀴즈를 풀어보세요.</div>
<div class='row'>
<div class='panel-btn-container margin-top-10 clearfix'>
<div class='col-xs-12'>
<a class='btn btn-default btn-info margin-top-10 offer-register-btn' href='<%=request.getContextPath() %>/partner/quiz.do'>
<i aria-hidden='true' class='icon wb-pencil'></i>
퀴즈 풀기
</a>
</div>
</div>
</div>
</div>
</div>
</div>
</li>

</ul>
</div>
<div aria-hidden='true' aria-labelledby='visaModal' class='modal fade' id='visaModal' role='dialog' tabindex='-1'>
<div class='modal-dialog modal-center'>
<form class="modal-content" data-validation="true" action="<%=request.getContextPath() %>/partner/upload.do" accept-charset="UTF-8" method="post"><input name="utf8" type="hidden" value="&#x2713;" /><input type="hidden" name="authenticity_token" value="H+9C1FkDdIMt7AT+6QWSNubsqMonktIV6LjPwofB6Rbt6M8bKILrb+Bwe6Li/wA3CKC0y63QV4gNJuY2hZj1qQ==" />
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
<input class='form-control' name='year' placeholder='년(YYYY)' type='text'>
</div>
<div class='col-xs-4'>
<input class='form-control' name='month' placeholder='월(MM)' type='text'>
</div>
<div class='col-xs-4'>
<input class='form-control' name='date' placeholder='일(DD)' type='text'>
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
<input name='docu_visa' type='file' value="docu_visa" >
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
<form class="modal-content" data-validation="true" action="<%=request.getContextPath() %>/partner/upload.do" accept-charset="UTF-8" method="post"><input name="utf8" type="hidden" value="&#x2713;" /><input type="hidden" name="authenticity_token" value="6lS5HrIwBqzfgvtmSuHLgicRTvDsdM93Guw1g02xWUYYUzTRw7GZQBIehDpBG1mDyV1S8WY2Sur/chx3T+hF+Q==" />
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
<select class='form-control' name='otherdocu_type'>
<option disabled selected value='default'>선택하세요.</option>
<option value='drivers_license'>운전면허증</option>
<option value='related_license'>관련 허가</option>
<option value='car_insurance'>차량/상해 보험</option>
<option value='other'>기타</option>
</select>
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
<input name='otherdocu' type='file' value="otherdocu">
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
<script>
  window.App = App || {};
  App.directUpload = {
    option: {"key":"uploads/5891445c-e435-4ade-8e36-252ea3eb736a/${filename}","success_action_status":"201","acl":"public-read","policy":"eyJleHBpcmF0aW9uIjoiMjAxOS0wNS0yNFQwMjowOTowNVoiLCJjb25kaXRpb25zIjpbeyJidWNrZXQiOiJteXJlYWx0cmlwLXVwbG9hZC11cy10ZW1wIn0sWyJzdGFydHMtd2l0aCIsIiRrZXkiLCJ1cGxvYWRzLzU4OTE0NDVjLWU0MzUtNGFkZS04ZTM2LTI1MmVhM2ViNzM2YS8iXSx7InN1Y2Nlc3NfYWN0aW9uX3N0YXR1cyI6IjIwMSJ9LHsiYWNsIjoicHVibGljLXJlYWQifSx7IngtYW16LWNyZWRlbnRpYWwiOiJBS0lBSVhONkNZNERFNjZTS0RIUS8yMDE5MDUyMy91cy1lYXN0LTEvczMvYXdzNF9yZXF1ZXN0In0seyJ4LWFtei1hbGdvcml0aG0iOiJBV1M0LUhNQUMtU0hBMjU2In0seyJ4LWFtei1kYXRlIjoiMjAxOTA1MjNUMDYyMTI1WiJ9XX0=","x-amz-credential":"AKIAIXN6CY4DE66SKDHQ/20190523/us-east-1/s3/aws4_request","x-amz-algorithm":"AWS4-HMAC-SHA256","x-amz-date":"20190523T062125Z","x-amz-signature":"c6de751b7b71a990fbf930cae754bc1aaeb8ff234019fc3bc686b994c92451d3"},
    url: "https://myrealtrip-upload-us-temp.s3.amazonaws.com"
  }
</script>

<jsp:include page="/WEB-INF/layout/partnerpage_bottom.jsp"></jsp:include>

</body>
</html>
