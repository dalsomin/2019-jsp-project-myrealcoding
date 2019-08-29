<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
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
<meta name="csrf-token" content="8CchU/iNr4swpZ7s+B4Mq/E1kdcXF9RKFlZB6CMAS9OdpHInHY2ohlZWodEYCHd+31NAKV/2A0rQOPlOxy5T/A==" />
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
<body class='site-menubar-unfold' data-action='index' data-controller-path='partner/bank' data-controller='bank' data-sign-in>
<!--[if lt ie 8]>
<p class='browserupgrade'>You are using an <strong>outdated</strong> browser. Please <a href='http://browsehappy.com/'>upgrade your browser</a> to improve your experience.</p>
<![endif]-->


<jsp:include page="/WEB-INF/layout/partnerpage_top.jsp"></jsp:include>
<jsp:include page="/WEB-INF/layout/partnerpage_nav.jsp"></jsp:include>

<div class='page animsition'>
<div class='page-header'>
<ol class='breadcrumb'>
<li>
<a href='<%=request.getContextPath() %>/partner/dashboard.do'>HOME</a>
</li>
<li>
<a href='javascript:void(0)'>정산 관리</a>
</li>
<li class='active'>정산 계좌 설정</li>
</ol>

<div class='page-title'>
<h4>정산 계좌 설정</h4>
</div>
</div>
<div class='page-content container-fluid'>
<div class='row'>
<div class='col-lg-9'>
<div class='row'>
<form id="bankForm" action="<%=request.getContextPath() %>/partner/account.do" accept-charset="UTF-8" method="post"><input name="utf8" type="hidden" value="&#x2713;" /><input type="hidden" name="_method" value="put" /><input type="hidden" name="authenticity_token" value="KRaMqayS/tLhZBbGfyGsMS8VxjB94w6mCgQH2qsCOhpEld/dSZL534eXKfufN9fkAXMXzjUC2abMar98TywiNQ==" />
<div class='panel panel-bordered'>
<div class='panel-body'>
<div class='form-group'>
<div class='row'>
<input name='guide_bank[bank_type]' type='hidden' value='domestic'>
<div class='form-group col-xs-12'>
<label class='control-label' for='bank_recipient_name'>
수취인 이름
<span>*</span>
</label>
<input autocomplete='off' class='form-control' id='bank_recipient_name' name='ca_name' type='text' value='문소민'>
</div>
<div class='form-group col-xs-12'>
<label class='control-label' for='bank_name'>
은행 이름
<span>*</span>
</label>
<input autocomplete='off' class='form-control' id='bank_name' name='ca_bank' type='text' value='하나은행'>
</div>
<div class='form-group col-xs-12'>
<label class='control-label' for='bank_account_number'>
계좌 번호
<span class='small'>(유럽은행의 경우 IBAN CODE를 적어주세요.)</span>
<span>*</span>
</label>
<input autocomplete='off' class='form-control' id='bank_account_number' name='ca_sno' type='text' value='166-910397-40207'>
</div>
<div class='form-group col-xs-12'>
<label class='control-label' for='bank_swift_code'>
SWIFT BIC CODE
<span class='small'>(해외 계좌일 경우)</span>
</label>
<input autocomplete='off' class='form-control' id='bank_swift_code' name='ca_swift' type='text'>
</div>
<div class='form-group col-xs-12'>
<label class='control-label' for='bank_branch'>
은행 지점명
<span class='small'>(해외 계좌일 경우)</span>
</label>
<input autocomplete='off' class='form-control' id='bank_branch' name='ca_branch' type='text'>
</div>
<div class='form-group col-xs-12'>
<label class='control-label' for='bank_recipient_address'>
수취인 주소
<span class='small'>(해외 계좌일 경우)</span>
</label>
<input autocomplete='off' class='form-control' id='bank_recipient_address' name='ca_addr' type='text' value=''>
</div>
<div class='form-group col-xs-12'>
<label class='control-label' for='bank_routing_number'>
Routing Number
<span class='small'>(미국은행일 경우)</span>
</label>
<input autocomplete='off' class='form-control' id='bank_routing_number' name='ca_rn' type='text'>
</div>
</div>
</div>
</div>
</div>
<div class='row margin-bottom-30'>
<div class='center-block width-350'>
<div class='col-xs-6'>
<a class="btn btn-block btn-default" href="https://www.myrealtrip.com/partner?guide_id=12043">취소하기</a>
</div>
<div class='col-xs-6'>
<button class='btn btn-block btn-primary' id='bankSubmitBtn' type='submit'>저장하기</button>
</div>
</div>
</div>
</form>


</div>
</div>
<div class='col-lg-3'>
<div class='widget widget-shadow'>
<div class='widget-header cover overlay text-center' style='height: 200px;'>
<div class='overlay-panel vertical-align bg-grey-100 blue-grey-700'>
<div class='vertical-align-middle'>
<a class='avatar avatar-100 bg-white margin-bottom-10 img-bordered margin-xs-0' href='javascript:void(0)'>
<img width="45px" height="45px" class="icon" src="https://d2yoing0loi5gh.cloudfront.net/assets/logo/ic-mobile-76-59c4321eae219afd9cebfb870646b877f48a5b63adab68a37604891800aed0da.png" alt="Ic mobile 76" />
</a>
</div>
</div>
</div>
<div class='widget-content'>
<div class='padding-15'>
<p>* 송금 신청 기간 : 여행 종료일 다음 날부터 원하는 날짜에 언제든지 송금을 요청할 수 있습니다.</p>

<p>* 수수료 안내 : 해외 송금 수수료는 나라마다 상이하며, 이는 가이드 본인 부담입니다.</p>

<p>* 송금 방식 : 마지막 송금 이후 누적되어 있는 비용을 한꺼번에 신청할 수도 있고, 개별 건을 각각 신청할 수도 있습니다. 송금 신청 후 입금까지 국내 계좌의 경우 최대 4일, 해외 계좌의 경우 최대 2주 정도가 소요될 수 있으니 양해 부탁 드립니다.</p>

<p>* 세금 : 대한민국에서 활동 중인 가이드의 경우 대한민국 법에 따라 원천 징수세가 부과되며, 따라서 송금 금액의 3.3%가 공제되고 송금될 예정입니다.
</p>
</div>
</div>
</div>

</div>
</div>
</div>
</div>
<jsp:include page="/WEB-INF/layout/partnerpage_bottom.jsp"></jsp:include>

</body>
</html>
