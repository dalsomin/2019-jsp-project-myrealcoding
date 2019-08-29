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
<meta name="csrf-token" content="M50ezT7VwltwyMJuSnOXLnzXRbQSMbO7CJkbXV0X4B8RvXd+x3WPhj0UDRj4OE3xyNQ++40jiYzqQq7evbJhYA==" />
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
<link rel="stylesheet" media="all" href="https://d2yoing0loi5gh.cloudfront.net/assets/kitty/ie-38ffa6f3950101ed0e99d3d8451c9d0bb67f52e1d24ac4c79adebdadbebbfbe0.css" />
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
<body class='site-menubar-unfold' data-action='index' data-controller-path='partner/quiz' data-controller='quiz' data-sign-in>

<div class='page animsition'>
<div class='page-header'>
<ol class='breadcrumb'>
<li>
<a href='<%=request.getContextPath() %>/partner/dashboard.do'>HOME</a>
</li>
<li class='active'>퀴즈</li>
</ol>

</div>
<div class='page-content container-fluid'>
<form data-validation="true" class="form-horizontal form-account" action="<%=request.getContextPath() %>/partner/partner_quiz.do" accept-charset="UTF-8" method="post"><input name="utf8" type="hidden" value="&#x2713;" /><input type="hidden" name="authenticity_token" value="znYpl3DcJArQx4+aEy9eDXH5IAGepztZ5rTFhBUwuzvsVkAkiXxp150bQOyhZITSxfpbTgG1AW4Eb3AH9ZU6RA==" />
<div class='row'>
<div class='col-lg-9'>
<div class='panel panel-bordered panel-profile panel-new-profile panel-form'>
<div class='panel-heading'>
<div class='panel-title'>
퀴즈
</div>
</div>
<ul class='list-group list-group-bordered'>
<li class='list-group-item'>
<a class='btn btn-dark btn-outline font-weight-700 margin-right-10 margin-top-10' download='투어&amp;티켓 매뉴얼' href='https://s3-ap-northeast-1.amazonaws.com/myrealtrip/partner_docs/mrt_company_partner_manual.pdf'>
<i aria-hidden='true' class='icon wb-link-intact'></i>
투어&amp;티켓 매뉴얼
</a>
<a class='btn btn-dark btn-outline font-weight-700 margin-right-10 margin-top-10' download='에어텔/항공권 매뉴얼' href='https://s3-ap-northeast-1.amazonaws.com/myrealtrip/partner_docs/mrt_hot_deal_partner_manual.pdf'>
<i aria-hidden='true' class='icon wb-link-intact'></i>
에어텔/항공권 매뉴얼
</a>
<a class='btn btn-dark btn-outline font-weight-700 margin-right-10 margin-top-10' download='민박 매뉴얼' href='https://s3-ap-northeast-1.amazonaws.com/myrealtrip/partner_docs/mrt_lodging_partner_manual.pdf'>
<i aria-hidden='true' class='icon wb-link-intact'></i>
민박 매뉴얼
</a>

<p class='margin-top-20 margion-bottom-20'>매뉴얼에 마이리얼트립의 운영 방법이 모두 안내되어 있습니다.<br/>마이리얼트립의 다양한 기능을 활용하실 수 있도록 매뉴얼을 꼼꼼히 읽고 퀴즈를 풀어주세요.<br/></p>
</li>
</ul>
<div class='panel-body'>
<div class='row'>
<div class='col-xs-12'>
<div class='form-group clearfix form-group__no-color-success' data-fv-quiz-name='quiz[common][0]'>
<label class='col-xs-12 control-label'>
Q. 등록한 상품 가격의 통화별로 어떤 계좌를 입력해야 하나요?
</label>
<div class='col-xs-12'>
<div class='row'>
<div class='col-xs-12'>
<div class='radio-custom radio-primary'>
<input data-fv-quiz-answer id='quiz_common_0_0' name='quiz[common][0]' type='radio' value='한화(KRW) &gt; 한국 계좌 / 현지통화 &gt; 현지계좌'>
<label for='quiz_common_0_0'>한화(KRW) &gt; 한국 계좌 / 현지통화 &gt; 현지계좌</label>
</div>
<div class='radio-custom radio-primary'>
<input id='quiz_common_0_1' name='quiz[common][0]' type='radio' value='현지통화 &gt; 한국 계좌 / 한화(KRW) &gt; 현지계좌'>
<label for='quiz_common_0_1'>현지통화 &gt; 한국 계좌 / 한화(KRW) &gt; 현지계좌</label>
</div>
</div>
</div>
</div>
</div>

<div class='form-group clearfix form-group__no-color-success' data-fv-quiz-name='quiz[common][1]'>
<label class='col-xs-12 control-label'>
Q. 예약을 완료해야 할 경우 [파트너페이지] &gt; [예약관리] 기능에서 ______ 버튼을 눌러야 합니다. 어떤 버튼인가요?
</label>
<div class='col-xs-12'>
<div class='row'>
<div class='col-xs-12'>
<div class='radio-custom radio-primary'>
<input data-fv-quiz-answer id='quiz_common_1_0' name='quiz[common][1]' type='radio' value='확정하기'>
<label for='quiz_common_1_0'>확정하기</label>
</div>
<div class='radio-custom radio-primary'>
<input id='quiz_common_1_1' name='quiz[common][1]' type='radio' value='예약하기'>
<label for='quiz_common_1_1'>예약하기</label>
</div>
<div class='radio-custom radio-primary'>
<input id='quiz_common_1_2' name='quiz[common][1]' type='radio' value='확답하기'>
<label for='quiz_common_1_2'>확답하기</label>
</div>
</div>
</div>
</div>
</div>

<div class='form-group clearfix form-group__no-color-success' data-fv-quiz-name='quiz[common][2]'>
<label class='col-xs-12 control-label'>
Q. 마이리얼트립 상품 소개에 작성 가능한 내용은 무엇인가요? (정답 이외 보기는 상품 소개에 기재할 수 없습니다.)
</label>
<div class='col-xs-12'>
<div class='row'>
<div class='col-xs-12'>
<div class='radio-custom radio-primary'>
<input data-fv-quiz-answer id='quiz_common_2_0' name='quiz[common][2]' type='radio' value='마이리얼트립에 등록된 다른 상품 링크'>
<label for='quiz_common_2_0'>마이리얼트립에 등록된 다른 상품 링크</label>
</div>
<div class='radio-custom radio-primary'>
<input id='quiz_common_2_1' name='quiz[common][2]' type='radio' value='외부 연락처'>
<label for='quiz_common_2_1'>외부 연락처</label>
</div>
<div class='radio-custom radio-primary'>
<input id='quiz_common_2_2' name='quiz[common][2]' type='radio' value='자사 홈페이지 주소'>
<label for='quiz_common_2_2'>자사 홈페이지 주소</label>
</div>
<div class='radio-custom radio-primary'>
<input id='quiz_common_2_3' name='quiz[common][2]' type='radio' value='SNS 주소'>
<label for='quiz_common_2_3'>SNS 주소</label>
</div>
</div>
</div>
</div>
</div>

<div class='form-group clearfix form-group__no-color-success' data-fv-quiz-name='quiz[common][3]'>
<label class='col-xs-12 control-label'>
Q. 마감이나 취소 등으로 예약을 받을 수 없을 때  [파트너페이지] 의 ______  기능에서 캘린더를 관리할 수 있습니다. 해당 기능은 무엇인가요?
</label>
<div class='col-xs-12'>
<div class='row'>
<div class='col-xs-12'>
<div class='radio-custom radio-primary'>
<input data-fv-quiz-answer id='quiz_common_3_0' name='quiz[common][3]' type='radio' value='일정관리'>
<label for='quiz_common_3_0'>일정관리</label>
</div>
<div class='radio-custom radio-primary'>
<input id='quiz_common_3_1' name='quiz[common][3]' type='radio' value='상품관리'>
<label for='quiz_common_3_1'>상품관리</label>
</div>
<div class='radio-custom radio-primary'>
<input id='quiz_common_3_2' name='quiz[common][3]' type='radio' value='정산관리'>
<label for='quiz_common_3_2'>정산관리</label>
</div>
<div class='radio-custom radio-primary'>
<input id='quiz_common_3_3' name='quiz[common][3]' type='radio' value='공지사항'>
<label for='quiz_common_3_3'>공지사항</label>
</div>
</div>
</div>
</div>
</div>

<div class='form-group clearfix form-group__no-color-success' data-fv-quiz-name='quiz[common][4]'>
<label class='col-xs-12 control-label'>
Q. 여행자의 상품에 대한 실시간 문의는 [파트너페이지]의 ______ 기능을 사용합니다.
</label>
<div class='col-xs-12'>
<div class='row'>
<div class='col-xs-12'>
<div class='radio-custom radio-primary'>
<input data-fv-quiz-answer id='quiz_common_4_0' name='quiz[common][4]' type='radio' value='메세지'>
<label for='quiz_common_4_0'>메세지</label>
</div>
<div class='radio-custom radio-primary'>
<input id='quiz_common_4_1' name='quiz[common][4]' type='radio' value='문의하기'>
<label for='quiz_common_4_1'>문의하기</label>
</div>
<div class='radio-custom radio-primary'>
<input id='quiz_common_4_2' name='quiz[common][4]' type='radio' value='답하기'>
<label for='quiz_common_4_2'>답하기</label>
</div>
</div>
</div>
</div>
</div>

<div class='form-group clearfix form-group__no-color-success' data-fv-quiz-name='quiz[common][5]'>
<label class='col-xs-12 control-label'>
Q. 예약확정 후 취소 시 여행자에게 취소 환불 규정을 직접 안내하시고, 고객센터로 (카카오톡 myrealtrip / 전화 070-4858-2200 / 네이트온 myrealtripcs@nate.com) 취소 내용을 전달해주세요. 전달할 내용은 무엇인가요?
</label>
<div class='col-xs-12'>
<div class='row'>
<div class='col-xs-12'>
<div class='radio-custom radio-primary'>
<input data-fv-quiz-answer id='quiz_common_5_0' name='quiz[common][5]' type='radio' value='파트너명 / 예약 번호 / 환불 금액 / 취소 사유'>
<label for='quiz_common_5_0'>파트너명 / 예약 번호 / 환불 금액 / 취소 사유</label>
</div>
<div class='radio-custom radio-primary'>
<input id='quiz_common_5_1' name='quiz[common][5]' type='radio' value='파트너명 / 환불 금액 / 취소 사유'>
<label for='quiz_common_5_1'>파트너명 / 환불 금액 / 취소 사유</label>
</div>
<div class='radio-custom radio-primary'>
<input id='quiz_common_5_2' name='quiz[common][5]' type='radio' value='파트너명 / 여행자명 / 예약 번호 / 환불 금액'>
<label for='quiz_common_5_2'>파트너명 / 여행자명 / 예약 번호 / 환불 금액</label>
</div>
<div class='radio-custom radio-primary'>
<input id='quiz_common_5_3' name='quiz[common][5]' type='radio' value='파트너명 / 여행자명 / 취소 사유'>
<label for='quiz_common_5_3'>파트너명 / 여행자명 / 취소 사유</label>
</div>
</div>
</div>
</div>
</div>

<div class='form-group clearfix form-group__no-color-success' data-fv-quiz-name='quiz[common][6]'>
<label class='col-xs-12 control-label'>
Q. 수익금 신청은 언제부터 가능한가요?
</label>
<div class='col-xs-12'>
<div class='row'>
<div class='col-xs-12'>
<div class='radio-custom radio-primary'>
<input data-fv-quiz-answer id='quiz_common_6_0' name='quiz[common][6]' type='radio' value='여행일 다음날부터'>
<label for='quiz_common_6_0'>여행일 다음날부터</label>
</div>
<div class='radio-custom radio-primary'>
<input id='quiz_common_6_1' name='quiz[common][6]' type='radio' value='여행일 전날부터'>
<label for='quiz_common_6_1'>여행일 전날부터</label>
</div>
<div class='radio-custom radio-primary'>
<input id='quiz_common_6_2' name='quiz[common][6]' type='radio' value='여행일 3일 후부터'>
<label for='quiz_common_6_2'>여행일 3일 후부터</label>
</div>
<div class='radio-custom radio-primary'>
<input id='quiz_common_6_3' name='quiz[common][6]' type='radio' value='여행일 7일 후부터'>
<label for='quiz_common_6_3'>여행일 7일 후부터</label>
</div>
</div>
</div>
</div>
</div>

<div class='form-group clearfix form-group__no-color-success' data-fv-quiz-name='quiz[common][7]'>
<label class='col-xs-12 control-label'>
Q. 수익금 신청 기능은 어디에 있나요?
</label>
<div class='col-xs-12'>
<div class='row'>
<div class='col-xs-12'>
<div class='radio-custom radio-primary'>
<input data-fv-quiz-answer id='quiz_common_7_0' name='quiz[common][7]' type='radio' value='[파트너페이지] &gt; [정산관리] &gt; [현재 수익 내역]'>
<label for='quiz_common_7_0'>[파트너페이지] &gt; [정산관리] &gt; [현재 수익 내역]</label>
</div>
<div class='radio-custom radio-primary'>
<input id='quiz_common_7_1' name='quiz[common][7]' type='radio' value='[파트너페이지] &gt; [정산관리] &gt; [수익 예정 내역]'>
<label for='quiz_common_7_1'>[파트너페이지] &gt; [정산관리] &gt; [수익 예정 내역]</label>
</div>
<div class='radio-custom radio-primary'>
<input id='quiz_common_7_2' name='quiz[common][7]' type='radio' value='[파트너페이지] &gt; [정산관리] &gt; [정산 계좌 설정]'>
<label for='quiz_common_7_2'>[파트너페이지] &gt; [정산관리] &gt; [정산 계좌 설정]</label>
</div>
</div>
</div>
</div>
</div>

<div class='form-group clearfix form-group__no-color-success' data-fv-quiz-name='quiz[tour_company][0]'>
<label class='col-xs-12 control-label'>
Q. 여행자가 상품에 없는 옵션/코스를 요청했을 때  [견적서 작성]으로 진행할 수 있습니다. 견적서 작성/수정 기능은 어디에 있나요?
</label>
<div class='col-xs-12'>
<div class='row'>
<div class='col-xs-12'>
<div class='radio-custom radio-primary'>
<input data-fv-quiz-answer id='quiz_tour_company_0_0' name='quiz[tour_company][0]' type='radio' value='메세지'>
<label for='quiz_tour_company_0_0'>메세지</label>
</div>
<div class='radio-custom radio-primary'>
<input id='quiz_tour_company_0_1' name='quiz[tour_company][0]' type='radio' value='공지사항'>
<label for='quiz_tour_company_0_1'>공지사항</label>
</div>
<div class='radio-custom radio-primary'>
<input id='quiz_tour_company_0_2' name='quiz[tour_company][0]' type='radio' value='정산관리'>
<label for='quiz_tour_company_0_2'>정산관리</label>
</div>
<div class='radio-custom radio-primary'>
<input id='quiz_tour_company_0_3' name='quiz[tour_company][0]' type='radio' value='일정관리'>
<label for='quiz_tour_company_0_3'>일정관리</label>
</div>
</div>
</div>
</div>
</div>

<div class='form-group clearfix form-group__no-color-success' data-fv-quiz-name='quiz[tour_company][1]'>
<label class='col-xs-12 control-label'>
Q. 예약 이후 전액 환불이 가능한 경우의 두 가지를 말씀해주세요.
</label>
<div class='col-xs-12'>
<div class='row'>
<div class='col-xs-12'>
<div class='checkbox-custom checkbox-primary'>
<input data-fv-quiz-answer id='quiz_tour_company_1_0' name='quiz[tour_company][1]' type='checkbox' value='여행자가 예약한 때로부터 24시간 이내에 예약을 취소하는 경우'>
<label for='quiz_tour_company_1_0'>여행자가 예약한 때로부터 24시간 이내에 예약을 취소하는 경우</label>
</div>
<div class='checkbox-custom checkbox-primary'>
<input id='quiz_tour_company_1_1' name='quiz[tour_company][1]' type='checkbox' value='여행자가 예약한 때로부터 48시간 이내에 예약을 취소하는 경우'>
<label for='quiz_tour_company_1_1'>여행자가 예약한 때로부터 48시간 이내에 예약을 취소하는 경우</label>
</div>
<div class='checkbox-custom checkbox-primary'>
<input data-fv-quiz-answer id='quiz_tour_company_1_2' name='quiz[tour_company][1]' type='checkbox' value='가이드가 확정하기 전에 취소하는 경우'>
<label for='quiz_tour_company_1_2'>가이드가 확정하기 전에 취소하는 경우</label>
</div>
<div class='checkbox-custom checkbox-primary'>
<input id='quiz_tour_company_1_3' name='quiz[tour_company][1]' type='checkbox' value='가이드가 확정한 후에 취소하는 경우'>
<label for='quiz_tour_company_1_3'>가이드가 확정한 후에 취소하는 경우</label>
</div>
</div>
</div>
</div>
</div>

<div class='form-group clearfix form-group__no-color-success' data-fv-quiz-name='quiz[tour_company][2]'>
<label class='col-xs-12 control-label'>
Q. 모객 부족으로 여행자에게 투어 취소에 관해 공지 시 최소 몇일 전까지 통지해야 하나요?
</label>
<div class='col-xs-12'>
<div class='row'>
<div class='col-xs-12'>
<div class='radio-custom radio-primary'>
<input data-fv-quiz-answer id='quiz_tour_company_2_0' name='quiz[tour_company][2]' type='radio' value='국내여행 3일전 / 국외여행 7일전'>
<label for='quiz_tour_company_2_0'>국내여행 3일전 / 국외여행 7일전</label>
</div>
<div class='radio-custom radio-primary'>
<input id='quiz_tour_company_2_1' name='quiz[tour_company][2]' type='radio' value='국내 여행 1일전 / 국외 여행 3일전'>
<label for='quiz_tour_company_2_1'>국내 여행 1일전 / 국외 여행 3일전</label>
</div>
<div class='radio-custom radio-primary'>
<input id='quiz_tour_company_2_2' name='quiz[tour_company][2]' type='radio' value='국내 여행 5일전 / 국외 여행 10일전'>
<label for='quiz_tour_company_2_2'>국내 여행 5일전 / 국외 여행 10일전</label>
</div>
<div class='radio-custom radio-primary'>
<input id='quiz_tour_company_2_3' name='quiz[tour_company][2]' type='radio' value='국내 여행 5일전 / 국외 여행 14일전'>
<label for='quiz_tour_company_2_3'>국내 여행 5일전 / 국외 여행 14일전</label>
</div>
</div>
</div>
</div>
</div>

<div class='form-group clearfix form-group__no-color-success' data-fv-quiz-name='quiz[tour_company][3]'>
<label class='col-xs-12 control-label'>
Q. 마이리얼트립 가이드 약관 제4조 제1항에 따라 액티비티, 차량투어 등 모든 투어 운영 시 당사가 가이드에 대한 사용자로서의 책임을 일체 부담하지 않습니다. 이 점 참고해주세요
</label>
<div class='col-xs-12'>
<div class='row'>
<div class='col-xs-12'>
<div class='checkbox-custom checkbox-default'>
<input data-fv-quiz-answer id='checkbox_tour_company_3' name='quiz[tour_company][3]' type='checkbox'>
<label for='checkbox_tour_company_3'>동의</label>
</div>
</div>
</div>
</div>
</div>

<div class='form-group clearfix form-group__no-color-success' data-fv-quiz-name='quiz[ticket][0]'>
<label class='col-xs-12 control-label'>
Q. 확정 대기 상태에서, 발권이 불가한 경우는 어떻게 처리하고 취소 사유를 작성하면 될까요?
</label>
<div class='col-xs-12'>
<div class='row'>
<div class='col-xs-12'>
<div class='radio-custom radio-primary'>
<input data-fv-quiz-answer id='quiz_ticket_0_0' name='quiz[ticket][0]' type='radio' value='[파트너페이지] &gt; [예약관리] &gt; [예약취소]'>
<label for='quiz_ticket_0_0'>[파트너페이지] &gt; [예약관리] &gt; [예약취소]</label>
</div>
<div class='radio-custom radio-primary'>
<input id='quiz_ticket_0_1' name='quiz[ticket][0]' type='radio' value='[파트너페이지] &gt; [상품관리] &gt; [상품수정]'>
<label for='quiz_ticket_0_1'>[파트너페이지] &gt; [상품관리] &gt; [상품수정]</label>
</div>
<div class='radio-custom radio-primary'>
<input id='quiz_ticket_0_2' name='quiz[ticket][0]' type='radio' value='[파트너페이지] &gt; [일정관리]'>
<label for='quiz_ticket_0_2'>[파트너페이지] &gt; [일정관리]</label>
</div>
</div>
</div>
</div>
</div>

<div class='form-group clearfix form-group__no-color-success' data-fv-quiz-name='quiz[hotdeal][0]'>
<label class='col-xs-12 control-label'>
Q. 해당 날짜(출발일)의 모든 예약이 들어오지 않도록 설정할 수 있는 기능은 무엇일까요?
</label>
<div class='col-xs-12'>
<div class='row'>
<div class='col-xs-12'>
<div class='radio-custom radio-primary'>
<input data-fv-quiz-answer id='quiz_hotdeal_0_0' name='quiz[hotdeal][0]' type='radio' value='일정관리'>
<label for='quiz_hotdeal_0_0'>일정관리</label>
</div>
<div class='radio-custom radio-primary'>
<input id='quiz_hotdeal_0_1' name='quiz[hotdeal][0]' type='radio' value='상품관리'>
<label for='quiz_hotdeal_0_1'>상품관리</label>
</div>
<div class='radio-custom radio-primary'>
<input id='quiz_hotdeal_0_2' name='quiz[hotdeal][0]' type='radio' value='정산관리'>
<label for='quiz_hotdeal_0_2'>정산관리</label>
</div>
<div class='radio-custom radio-primary'>
<input id='quiz_hotdeal_0_3' name='quiz[hotdeal][0]' type='radio' value='공지사항'>
<label for='quiz_hotdeal_0_3'>공지사항</label>
</div>
</div>
</div>
</div>
</div>

<div class='form-group clearfix form-group__no-color-success' data-fv-quiz-name='quiz[hotdeal][1]'>
<label class='col-xs-12 control-label'>
Q. 해당 옵션의 수량 조절이 가능한 부분은 어디서 처리해야 할까요?
</label>
<div class='col-xs-12'>
<div class='row'>
<div class='col-xs-12'>
<div class='radio-custom radio-primary'>
<input data-fv-quiz-answer id='quiz_hotdeal_1_0' name='quiz[hotdeal][1]' type='radio' value='[파트너페이지] &gt;  [상품관리] &gt; [가격수정]'>
<label for='quiz_hotdeal_1_0'>[파트너페이지] &gt;  [상품관리] &gt; [가격수정]</label>
</div>
<div class='radio-custom radio-primary'>
<input id='quiz_hotdeal_1_1' name='quiz[hotdeal][1]' type='radio' value='[파트너페이지] &gt;  [상품관리] &gt; [수정]'>
<label for='quiz_hotdeal_1_1'>[파트너페이지] &gt;  [상품관리] &gt; [수정]</label>
</div>
<div class='radio-custom radio-primary'>
<input id='quiz_hotdeal_1_2' name='quiz[hotdeal][1]' type='radio' value='[파트너페이지] &gt; [에어텔/항공권 예약관리]'>
<label for='quiz_hotdeal_1_2'>[파트너페이지] &gt; [에어텔/항공권 예약관리]</label>
</div>
</div>
</div>
</div>
</div>


</div>
</div>
<div class='row hidden-lg'>
<div class='col-xs-12'>
<div class='margin-top-15 pull-right clearfix'>
<button class='btn btn-primary' type='submit'>제출</button>
</div>
</div>
</div>
</div>
</div>
</div>
<div class='col-lg-3 visible-lg-block'>
<div class='panel panel-bordered panel-default' id='sidebar'>
<div class='panel-heading'>
<div class='panel-title padding-top-15 padding-bottom-20 text-center font-size-16 font-weight-700'>퀴즈 작성 현황</div>
</div>
<div class='panel-body padding-15'>
<div class='incorrect-answer-container hidden'>
<div class='font-weight-700' data-alert-count='문항이 오답입니다.'></div>
<div class='text'>바른 답을 선택한 후 다시 제출해주세요.</div>
</div>
<div class='process-container'>
<div class='font-weight-700' data-process-percentage='% 완료'>0% 완료</div>
<div class='text' data-process-count='문항 남았습니다.'></div>
<div class='progress progress-sm progress-circles margin-top-10'>
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

<footer class='site-footer main' id='footer'>
<div class='container-fluid content-wrap'>
<p class='copyright'>상호명 마이리얼트립 | 대표 : 이동건 | 개인정보책임자 : 류종민<br/>사업자등록번호 : 209-81-55339 | 통신판매업신고번호 : 2017-서울강남-03960 | <a target='_blank' href='http://www.ftc.go.kr/www/bizCommView.do?key=232&apv_perm_no=2017322016230203960&pageUnit=10&searchCnd=wrkr_no&searchKrwd=2098155339&pageIndex=1'>사업자정보확인</a><br/>서울특별시 강남구 강남대로 364(역삼동), 미왕빌딩 15층 (주)마이리얼트립<br/>대표번호 : 1670-8208 | 일반 문의 : help@myrealtrip.com<br/>운영시간(한국) 09:00 ~ 22:00, 주말/공휴일 포함.<br/>자사는 서울특별시관광협회 공제영업보증보험에 가입이 되어 있습니다.<br/>마이리얼트립은 통신판매중개자이며 통신판매의 당사자가 아닙니다. 따라서 마이리얼트립은 상품·거래정보 및 거래에 대하여 책임을 지지 않습니다.<br/></p>
</div>
</footer>

<div class='global-alert-box'>
</div>

</body>
</html>
