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
<meta name="csrf-token" content="P/RhuxMuDDFa1cVPIPrJUPwMsmLTdA5/jbc01rxTXwKVWPmcB7K+R3eJv7t2Wwnpop6GQGlMEPkNkhvYJY0VUw==" />
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
<body class='site-menubar-unfold' data-action='index' data-controller-path='partner/notices' data-controller='notices' data-sign-in>
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
<li class='active'>공지사항</li>
</ol>

</div>
<div class='page-content container-fluid'>
<div class='row'>
<div class='col-lg-12'>
<div class='panel panel-bordered'>
<div class='panel-heading'>
<div class='panel-title'>
공지사항
</div>
</div>
<div class='panel-body'>
<div class='adv-table'>
<table class='display table table-striped table-hover table-hover-pointer' id='hidden-table-info'>
<thead>

<tr>
<th class='hidden-xs'>No.</th>
<th>제목 - title</th>
<th>작성일</th>
</tr>
</thead>

<tbody>

 <%-- ${infodto.content.size()} --%>
 
<c:forEach var="infodto" items="${infodto.content}">
	<tr data-target='#notice_22' data-toggle='modal'>
	<td class='hidden-xs'>${infodto.pn_no}</td>
	<td>${infodto.pn_title}</td>
	<td>${infodto.pn_regdate}</td>
	<div aria-hidden='true' aria-labelledby='notice modal' class='modal fade' id='notice_22' role='dialog' tabindex='-1'>
	<div class='modal-dialog modal-center'>
	<div class='modal-content'>
	<div class='modal-header'>
	<button aria-label='Close' class='close' data-dismiss='modal' type='button'>
	<i class='icon wb-close-mini'></i>
	</button>
	<h4 class='modal-title'>${infodto.pn_title}</h4>
	<span class='modal-date'>${infodto.pn_regdate }</span>
	</div>
	<div class='modal-body'>
	${infodto.pn_detail}
	</div>
	</div>
	</div>
	</div>
	</tr>
</c:forEach>
 

</tbody>
</table>
</div>


<div class='paging-list'>
<nav class='pull-right'>
<ul class='pagination'>
<li>
<a arial-label="Previous" href="/partner/notices"><span arial-hidden='true'>&laquo;</span>
</a>
</li>


<li>
<a href="/partner/notices?page=${infodto.currentPage}">${infodto.currentPage}</a>
</li>



</nav>
</div>

</div>
</div>
</div>
</div>
</div>
</div>


<jsp:include page="/WEB-INF/layout/partnerpage_bottom.jsp"></jsp:include>

<div class='global-alert-box'>
</div>

</body>
</html>
