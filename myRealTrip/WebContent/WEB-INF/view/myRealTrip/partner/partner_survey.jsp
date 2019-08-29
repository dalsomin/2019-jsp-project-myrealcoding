<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
<meta name="csrf-token" content="09pPcCWe7fkxtXC5tWE/3eWuvSSKk2l8qwxjIF3n7fG+WRwEwJ7q9FdGT4RVd0QIy8hs2sJyvnxtYtuGucn13g==" />
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
<body class='site-menubar-unfold' data-action='index' data-controller-path='partner/questionnaires' data-controller='questionnaires' data-sign-in>
<!--[if lt ie 8]>
<p class='browserupgrade'>You are using an <strong>outdated</strong> browser. Please <a href='http://browsehappy.com/'>upgrade your browser</a> to improve your experience.</p>
<![endif]-->
<jsp:include page="/WEB-INF/layout/partnerpage_top.jsp"></jsp:include>
<jsp:include page="/WEB-INF/layout/partnerpage_nav.jsp"></jsp:include>


<div class='page animsition'>
<div class='page-header'>
<ol class='breadcrumb'>
<li>
<a href='/partner'>HOME</a>
</li>
<li class='active'>설문지 작성</li>
</ol>

</div>
<div class='page-content container-fluid'>
<form data-validation="true" class="form-horizontal form-account" action="<%=request.getContextPath() %>/partner/survey.do" accept-charset="UTF-8" method="post"><input name="utf8" type="hidden" value="&#x2713;" /><input type="hidden" name="authenticity_token" value="Io1jEzCG+Nl/S4dMPs9/N16IjU0f8rS80Z2ur+5jXxVPDjBn1Yb/1Bm4uHHe2QTicO5cs1cTY7wX8xYJCk1HOg==" />
<div class='row'>
<div class='col-md-9'>
<div class='panel panel-bordered panel-profile panel-new-profile panel-form'>
<div class='panel-heading'>
<div class='panel-title'>
설문지 작성
</div>
</div>
<ul class='list-group list-group-bordered'>
<li class='list-group-item'>
<p class='margin-top-20 margion-bottom-20'>안녕하세요 파트너님.<br/>마이리얼트립 파트너로 등록해주시고 멋진 여행상품을 만들어주셔서 감사합니다.<br/>인터뷰는 올려주신 상품과 인터뷰 사전 설문지를 기반으로 진행되오니 꼼꼼한 답변 부탁드립니다.<br/><br/>Help individuals experience the world<br/>마이리얼트립 드림<br/></p>
</li>
</ul>
<div class='panel-body'>
<div class='row'>
<div class='col-xs-12'>
<div class='form-group clearfix form-group__no-color-success' data-fv-questionnaire>
<label class='col-xs-12 control-label'>
마이리얼트립을 어떻게 알게 되셨나요?
</label>
<div class='col-xs-12'>
<div class='row'>
<div class='col-xs-12'>
<div class='radio-custom radio-primary'>
<input id='how_did_you_find_us_0' name='know_path' type='radio' value='지인 추천'>
<label class='terms-label' for='how_did_you_find_us_0'>지인 추천</label>
</div>
<div class='radio-custom radio-primary'>
<input id='how_did_you_find_us_1' checked="checked"  name='know_path' type='radio' value='포털 검색(구글, 네이버 등)'>
<label class='terms-label' for='how_did_you_find_us_1'>포털 검색(구글, 네이버 등)</label>
</div>
<div class='radio-custom radio-primary'>
<input id='how_did_you_find_us_2' name='know_path' type='radio' value='언론 노출(신문기사, 인터넷기사 등)'>
<label class='terms-label' for='how_did_you_find_us_2'>언론 노출(신문기사, 인터넷기사 등)</label>
</div>
<div class='radio-custom radio-primary'>
<input id='how_did_you_find_us_3' name='know_path' type='radio' value='SNS 광고'>
<label class='terms-label' for='how_did_you_find_us_3'>SNS 광고</label>
</div>
<div class='radio-custom radio-primary'>
<input id='how_did_you_find_us_4' name='know_path' type='radio' value='현지 커뮤니티 광고'>
<label class='terms-label' for='how_did_you_find_us_4'>현지 커뮤니티 광고</label>
</div>
<div class='radio-custom radio-primary'>
<input id='how_did_you_find_us_5' name='know_path' type='radio' value='입점 요청'>
<label class='terms-label' for='how_did_you_find_us_5'>입점 요청</label>
</div>
<div class='radio-custom radio-primary'>
<input id='how_did_you_find_us_6' name='know_path' type='radio' value='기타'>
<label class='terms-label' for='how_did_you_find_us_6'>기타</label>
</div>
</div>
</div>
</div>
</div>

<div class='form-group clearfix form-group__no-color-success' data-fv-questionnaire>
<label class='col-xs-12 control-label'>
여행업을 시작한 동기와 경력(기간, 횟수 등)을 알려주세요.
</label>
<div class='col-xs-12'>
<div class='row'>
<div class='col-sm-12'>
<textarea class='form-control' name='mncareer' rows='3' type='text'>
처음입니다...ㅎ
</textarea>
</div>
</div>
</div>
</div>

<div class='form-group clearfix form-group__no-color-success' data-fv-questionnaire>
<label class='col-xs-12 control-label'>
다른 채널에 입점한 곳이 있다면 알려주세요.
</label>
<div class='col-xs-12'>
<div class='row'>
<div class='col-sm-12'>
<input class='form-control' name='other_ch' type='text' value="에어비엔비">
</div>
</div>
</div>
</div>

<div class='form-group clearfix form-group__no-color-success' data-fv-questionnaire>
<label class='col-xs-12 control-label'>
마이리얼트립 투어 수수료는 파트너님께서 책정한 가격의 20%이며 기타 상품(티켓, 에어텔/항공권, 민박 등)은 상품별 수수료가 적용 됩니다.
</label>
<div class='col-xs-12'>
<div class='checkbox-custom checkbox-default'>
<input id='commission_acknowledge' name='questionnaires[commission_acknowledge]' type='checkbox'>
<label class='terms-label' for='commission_acknowledge'>네</label>
</div>
</div>
</div>

<div class='form-group clearfix form-group__no-color-success' data-fv-questionnaire>
<label class='col-xs-12 control-label'>
희망하는 인터뷰 시간을 3개 이상 적어주세요. 일정을 조율하여 인터뷰 확정 시간을 메일로 안내해 드립니다. (인터뷰 가능 시간: 화/수 9:30~17:30, 한국시간 기준 / 가능한 특정 날짜보다는 요일과 시간대를 적어주세요)
</label>
<div class='col-xs-12'>
<div class='row'>
<div class='col-sm-12'>
<input class='form-control' name='int_time' type='text' value="월수금 오전">
</div>
</div>
</div>
</div>

<div class='form-group clearfix form-group__no-color-success' data-fv-questionnaire>
<label class='col-xs-12 control-label'>
기타 문의사항을 적어주세요.
</label>
<div class='col-xs-12'>
<div class='row'>
<div class='col-sm-12'>
<input class='form-control' name='other_q' type='text'>
</div>
</div>
</div>
</div>


</div>
</div>
<div class='row visible-xs-block visible-sm-block'>
<div class='col-xs-12'>
<div class='margin-top-15 pull-right clearfix'>
<button class='btn btn-primary' type='submit'>제출</button>
</div>
</div>
</div>
</div>
</div>
</div>
<div class='col-md-3 visible-md-block visible-lg-block'>
<div class='panel panel-bordered panel-default' id='sidebar'>
<div class='panel-heading'>
<div class='panel-title padding-top-15 padding-bottom-20 text-center font-size-16 font-weight-700'>설문지 작성 현황</div>
</div>
<div class='panel-body padding-15'>
<div class='process-container'>
<div class='font-weight-700' data-process-percentage='% 완료'>% 완료</div>
<div class='text' data-process-count='문항 남았습니다.'></div>
<div class='progress progress-sm progress-circle margin-top-10'>
<div class='progress-bar progress-bar-indicating active' style='width: 0%'></div>
</div>
</div>
<div class='margin-top-15 clearfix'>
<button class='btn btn-block btn-primary' type='submit'>제출</button>
</div>
</div>
</div>

</div>
</div>

</form>

</div>
</div>


<jsp:include page="/WEB-INF/layout/partnerpage_bottom.jsp"></jsp:include>


<div class='global-alert-box'>
</div>

</body>
</html>
