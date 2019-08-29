<%@page import="com.util.ConnectionProvider"%>
<%@page import="java.sql.PreparedStatement"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
int memberId = (int )session.getAttribute("memberId");
/* Connection conn=ConnectionProvider.getConnection();
PreparedStatement ps = null;
String sql = "select * from gnp_match where memberId=?";
ps = conn. */

%>





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




<div class='site-menubar'>
<div class='site-menubar-body'>
<div>
<div>
<ul class='site-menu'>
<li class='site-menu-category'></li>
<li class='active site-menu-item'>
<a class='animsition-link' href='<%=request.getContextPath() %>/partner/dashboard.do'>
<i aria-hidden='true' class='site-menu-icon wb-stats-bars'></i>
<span class='site-menu-title'>대시보드${memberId }</span>
</a>
</li>
<li class='site-menu-item has-sub'>
<a href='javascript:void(0)'>
<i aria-hidden='true' class='site-menu-icon wb-book'></i>
<span class='site-menu-title'>투어예약관리</span>
<span class='site-menu-arrow'></span>
</a>
<ul class='site-menu-sub'>
<li class='site-menu-item'>
<a class='animsition-link' href='/partner/tour_reservations?order=created_at&amp;status=ongoing'>
<span class='site-menu-title'>진행중인 예약</span>
</a>
</li>
<li class='site-menu-item'>
<a class='animsition-link' href='/partner/tour_reservations?order=status_updated_at&amp;status=confirm'>
<span class='site-menu-title'>확정된 예약</span>
</a>
</li>
<li class='site-menu-item'>
<a class='animsition-link' href='/partner/tour_reservations?order=status_updated_at&amp;status=finish'>
<span class='site-menu-title'>다녀온 여행</span>
</a>
</li>
<li class='site-menu-item'>
<a class='animsition-link' href='/partner/tour_reservations?order=status_updated_at&amp;status=cancel'>
<span class='site-menu-title'>취소된 여행</span>
</a>
</li>
</ul>
</li>
<li class='site-menu-item has-sub'>
<a href='javascript:void(0)'>
<i aria-hidden='true' class='site-menu-icon wb-book'></i>
<span class='site-menu-title'>티켓예약관리</span>
<span class='site-menu-arrow'></span>
</a>
<ul class='site-menu-sub'>
<li class='site-menu-item'>
<a class='animsition-link' href='/partner/ticket_reservations?order=created_at&amp;status=ongoing'>
<span class='site-menu-title'>신규주문</span>
</a>
</li>
<li class='site-menu-item'>
<a class='animsition-link' href='/partner/ticket_reservations?order=status_updated_at&amp;status=confirm'>
<span class='site-menu-title'>발권완료</span>
</a>
</li>
<li class='site-menu-item'>
<a class='animsition-link' href='/partner/ticket_reservations?order=status_updated_at&amp;status=finish'>
<span class='site-menu-title'>여행완료</span>
</a>
</li>
<li class='site-menu-item'>
<a class='animsition-link' href='/partner/ticket_reservations?order=status_updated_at&amp;status=cancel'>
<span class='site-menu-title'>취소</span>
</a>
</li>
</ul>
</li>
<li class='site-menu-item has-sub'>
<a href='javascript:void(0)'>
<i aria-hidden='true' class='site-menu-icon wb-book'></i>
<span class='site-menu-title'>에어텔/항공권 예약관리</span>
<span class='site-menu-arrow'></span>
</a>
<ul class='site-menu-sub'>
<li class='site-menu-item'>
<a class='animsition-link' href='/partner/hot_deal_reservations?order=created_at&amp;status=ongoing'>
<span class='site-menu-title'>진행중인 예약</span>
</a>
</li>
<li class='site-menu-item'>
<a class='animsition-link' href='/partner/hot_deal_reservations?order=status_updated_at&amp;status=confirm'>
<span class='site-menu-title'>확정된 예약</span>
</a>
</li>
<li class='site-menu-item'>
<a class='animsition-link' href='/partner/hot_deal_reservations?order=status_updated_at&amp;status=finish'>
<span class='site-menu-title'>다녀온 여행</span>
</a>
</li>
<li class='site-menu-item'>
<a class='animsition-link' href='/partner/hot_deal_reservations?order=status_updated_at&amp;status=cancel'>
<span class='site-menu-title'>취소된 여행</span>
</a>
</li>
</ul>
</li>
<li class='site-menu-item has-sub'>
<a href='javascript:void(0)'>
<i aria-hidden='true' class='site-menu-icon wb-book'></i>
<span class='site-menu-title'>민박예약관리</span>
<span class='site-menu-arrow'></span>
</a>
<ul class='site-menu-sub'>
<li class='site-menu-item'>
<a class='animsition-link' href='/partner/lodging_reservations?order=created_at&amp;status=ongoing'>
<span class='site-menu-title'>진행중인 예약</span>
</a>
</li>
<li class='site-menu-item'>
<a class='animsition-link' href='/partner/lodging_reservations?order=status_updated_at&amp;status=confirm'>
<span class='site-menu-title'>확정된 예약</span>
</a>
</li>
<li class='site-menu-item'>
<a class='animsition-link' href='/partner/lodging_reservations?order=status_updated_at&amp;status=finish'>
<span class='site-menu-title'>다녀온 여행</span>
</a>
</li>
<li class='site-menu-item'>
<a class='animsition-link' href='/partner/lodging_reservations?order=status_updated_at&amp;status=cancel'>
<span class='site-menu-title'>취소된 여행</span>
</a>
</li>
</ul>
</li>
<li class='site-menu-item'>
<a class='animsition-link' href='/partner/calendar'>
<i aria-hidden='true' class='site-menu-icon wb-calendar'></i>
<span class='site-menu-title'>일정 관리</span>
</a>
</li>
<li class='site-menu-item has-sub'>
<a href='javascript:void(0)'>
<i aria-hidden='true' class='site-menu-icon wb-heart'></i>
<span class='site-menu-title'>후기 관리</span>
<span class='site-menu-arrow'></span>
</a>
<ul class='site-menu-sub'>
<li class='site-menu-item'>
<a class='animsition-link' href='/partner/reviews'>
<span class='site-menu-title'>답글 달지 않은 후기</span>
</a>
</li>
<li class='site-menu-item'>
<a class='animsition-link' href='/partner/reviews?category=replied'>
<span class='site-menu-title'>답변한 후기</span>
</a>
</li>
</ul>
</li>
<li class='site-menu-item'>
<a class='animsition-link' href='<%=request.getContextPath() %>/partner/manage_b_itemlist.do'>
<i aria-hidden='true' class='site-menu-icon wb-flag'></i>
<span class='site-menu-title'>상품 관리</span>
</a>
</li>
<li class='site-menu-item has-sub'>
<a href='javascript:void(0)'>
<i aria-hidden='true' class='site-menu-icon wb-payment'></i>
<span class='site-menu-title'>정산 관리</span>
<span class='site-menu-arrow'></span>
</a>
<ul class='site-menu-sub'>
<li class='site-menu-item'>
<a class='animsition-link' href='/partner/profits'>
<span class='site-menu-title'>현재 수익 내역</span>
</a>
</li>
<li class='site-menu-item'>
<a class='animsition-link' href='/partner/profits/pending'>
<span class='site-menu-title'>수익 예정 내역</span>
</a>
</li>
<li class='site-menu-item'>
<a class='animsition-link' href='/partner/remittances'>
<span class='site-menu-title'>송금 신청 내역</span>
</a>
</li>
<li class='site-menu-item'>
<a class='animsition-link' href='<%=request.getContextPath() %>/partner/account.do'>
<span class='site-menu-title'>정산 계좌 설정</span>
</a>
</li>
</ul>
</li>
<li class='site-menu-item'>
<a class='animsition-link' href='/partner/messenger/rooms'>
<i aria-hidden='true' class='site-menu-icon wb-chat-text'></i>
<span class='site-menu-title'>메시지</span>
<div class='site-menu-label'>
<span class='label label-danger label-round hidden' id='new-messages-ico'>NEW</span>
</div>
</a>
</li>
<li class='site-menu-item'>
<a class='animsition-link' href='/partner/edit'>
<i aria-hidden='true' class='site-menu-icon wb-user'></i>
<span class='site-menu-title'>계정관리</span>
</a>
</li>
<li class='site-menu-item'>
<a class='animsition-link' href='<%=request.getContextPath() %>/partner/info.do'>
<i aria-hidden='true' class='site-menu-icon wb-bell'></i>
<span class='site-menu-title'>공지사항</span>
<div class='site-menu-label'>
<span class='label label-danger label-round' id='new-notice-ico'>NEW</span>
</div>
</a>
</li>
</ul>
<div class='external-menu-item hidden-sm hidden-md'>
<a class='link' href='https://blog.myrealtrip.com' target='_blank'>
<i aria-hidden='true' class='site-menu-icon wb-home'></i>
<span>가이드 블로그</span>
</a>
</div>
</div>
</div>
</div>
</div>



</body>
</html>
