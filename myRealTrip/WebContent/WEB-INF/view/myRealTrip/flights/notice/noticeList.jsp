<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jsp/servlet class - (2019. 5. 17.-오후 3:36:48)</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<link rel="stylesheet" type="text/css" href="">

<style>
element.style {
    table-layout: auto;
}
body, textarea, select, table, input, button {
    margin: 0;
    padding: 0;
    font-family: '돋움',Dotum,'굴림',Gulim,AppleGothic,sans-serif;
    font-size: 12px;
    color: #5e5e5e;
}
body, th, td, li, div, span, p, form, label, select, input, textarea, button {
    font-family: -apple-system, BlinkMacSystemFont, "Malgun Gothic", "맑은 고딕", Roboto, Helvetica, Arial, sans-serif;
    font-size: 14px;
    color: #343a40;
    letter-spacing: -0.2px;
    -webkit-font-smoothing: antialiased;
}
body, div, h1, h2, h3, h4, h5, h6, ul, ol, li, dl, dt, dd, p, form, fieldset, input, table, tr, th, td {
    margin: 0;
    padding: 0;
}
/* 부분만 */
html, body, div, span, applet, object, iframe, h1, h2, h3, h4, h5, h6, p, blockquote, pre, a, abbr, acronym, address, big, cite, code, del, dfn, em, img, ins, kbd, q, s, samp, small, strike, strong, sub, sup, tt, var, b, u, i, center, dl, dt, dd, ol, ul, li, fieldset, form, label, legend, table, caption, tbody, tfoot, thead, tr, th, td, article, aside, canvas, details, embed, figure, figcaption, footer, header, hgroup, menu, nav, output, ruby, section, summary, time, mark, audio, video {
    margin: 0;
    padding: 0;
    border: 0;
    font-size: 100%;
    font: inherit;
    vertical-align: baseline;
}
div {
    display: block;
}
div#k1_container {
    width: 100%;
}
#k1_container:after {
    content: ".";
    display: block;
    height: 0;
    clear: both;
    visibility: hidden;
}
div#k1_content {
    width: 100%;
    background: #f5f6f7;
}
.mrt_notice {
    background-color: #fff;
}
.mrt_notice_wrap {
    width: 700px;
    padding: 64px 0 120px;
    margin: 0 auto;
}
.mrt_notice .k1_h_tit1 {
    margin-bottom: 48px;
    font-size: 32px;
    line-height: 40px;
    text-align: center;
}
.k1_h_tit1 {
    background: none;
    padding: 0;
    margin: 0;
    font-weight: 600;
}
h2 {
    display: block;
    font-size: 1.5em;
    margin-block-start: 0.83em;
    margin-block-end: 0.83em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
    font-weight: bold;
}
</style>
<style>
/* table */
.mrt_notice_list table {
    border-top: 1px solid #ced4da;
}
.k1_bbs_board {
    width: 100%;
    border-top: #555 2px solid;
    font-size: 13px;
    table-layout: fixed;
}
.k1_mt10 {
    margin-top: 10px !important;
}
table {
    border-collapse: collapse;
    border-spacing: 0;
}

caption {
    visibility: hidden;
    overflow: hidden;
    display: none;
}
legend, caption {
    display: none;
    clear: both;
}
caption {
    display: table-caption;
    text-align: -webkit-center;
}
colgroup {
    display: table-column-group;
}
col {
    display: table-column;
}
thead {
    display: table-header-group;
 	/* 두줄 날림 */
}
tr, th {
    font-weight: normal;
}
#k1_content table th, #k1_content table td {
    vertical-align: middle;
    line-height: 1.4;
}
.mrt_notice_list th{
	color: #343a40;
	background-color: transparent;
	border-color: #e9ecef !important;
}
.k1_bbs_board th {
    padding: 15px 7px 15px;
    font-size: 14px;
    border-bottom: #d9d9d9 1px solid;
    line-height: 14px;
    color: #393939;
}
.k1_bbs_board th {
    height: 14px;
    border-bottom: #d9d9d9 1px solid;
    line-height: 14px;
    color: #393939;
}
.mrt_notice_list td {
    padding: 18px 16px !important;
    border-right: none;
    border-color: #e9ecef !important;
    vertical-align: top !important;
}
.k1_bbs_board td {
    padding: 8px 7px 8px;
    font-size: 13px;
    border-bottom: #d9d9d9 1px solid;
    line-height: 17px;
    text-align: center;
}
.k1_bbs_board td {
    height: 17px;
    padding: 5px 7px 4px;
    border-bottom: #d9d9d9 1px solid;
    line-height: 17px;
    text-align: center;
}
.mrt_notice_list .k1_txt_tit02 {
    width: 40px;
    height: 20px;
    font-size: 11px;
    font-weight: bold;
    color: #2b96ed;
    line-height: 18px;
    border-radius: 10px;
    border: 1px solid #2b96ed;
    background: none;
    box-sizing: border-box;
}
.k1_txt_tit02 {
    display: inline-block;
    width: 42px;
    height: 18px;
    font-size: 12px;
    background: url(/air/imgs_ibe/mrt/bg/txt_tit02.gif) no-repeat;
    color: #fff;
    line-height: 19px;
    text-align: center;
}
.k1_tal {
    text-align: left !important;
}
.k1_bold {
    font-weight: bold !important;
}
.mrt_notice_list td a {
    display: block;
    width: 476px;
    height: 20px;
    line-height: 20px !important;
    font-size: 15px;
    color: #495056;
    overflow: hidden;
    text-overflow: ellipsis;
    white-space: nowrap;
}
td {
    display: table-cell;
    vertical-align: inherit;
}
.mrt_notice .time {
    font-size: 13px;
    color: #848c94;
    text-align: center;
}
</style>
<style>
/* paging */
.mrt_notice .k1_page_num {
    height: auto;
    padding: 0;
    margin-top: 24px;
    text-align: center;
}

.mrt_notice .k1_page_num a {
    display: inline-block;
    width: 40px;
    height: 40px;
    border: 2px solid #fff;
    line-height: 36px;
    margin: 0 5px;
    text-align: center;
    font-size: 15px;
    box-sizing: border-box;
    border-radius: 100%;
    color: #495056;
    text-decoration: none;
}
.k1_page_num a {
    vertical-align: middle;
}
a {
    color: #494949;
    text-decoration: none;
    cursor: pointer;
}
.mrt_notice .k1_page_num a.select {
    background-color: #fff;
    border: 2px solid #51abf3;
    border-radius: 100%;
    color: #495056;
}
/* 추가 */
.mrt_notice .k1_page_num a:hover {
    background-color: #fff;
    border: 2px solid #51abf3;
    border-radius: 100%;
    color: #495056;
}
</style>
<style>
/*자주 묻는 질문  */
.mrt_help_link {
    width: 100%;
    height: 48px;
    margin-top: 40px;
    border-radius: 2px;
    background-color: #f8f9fa;
    text-align: center;
}
.mrt_help_link a {
    line-height: 48px;
    font-size: 15px;
    color: #495056;
}
#wrap footer a, a:link, a:visited, a:hover, a:active {
    text-decoration: none;
}
.mrt_help_link {
    width: 100%;
    height: 48px;
    margin-top: 40px;
    border-radius: 2px;
    background-color: #f8f9fa;
    text-align: center;
}
.mrt_help_link a bold {
    padding-right: 20px;
    font-weight: bold;
/*     background: url(/air/imgs_ibe/mrt/ico/ico_circle_arrow_gray.png) no-repeat right; */
    background-size: 16px 16px;
}
</style>

</head>
<body>
<jsp:include page="/WEB-INF/layout/top2.jsp"></jsp:include>
<div id="k1_container">
<div id="k1_aside"></div>
<div id="k1_content">
<!-- <form class="mrt_notice" name="notice" id="notice" method="get" action="" onsubmit=""> -->
<form class="mrt_notice" name="notice" id="notice">
<div class="mrt_notice_wrap">
<h2 class="k1_h_tit1">항공권 공지사항</h2>
<div class="mrt_notice_list" id="list">
<table xmlns="http://www.w3.org/1999/xhtml" class="k1_bbs_board k1_mt10" id="trlength" style="table-layout: auto;">
	<caption>항공권 공지사항</caption>
	<colgroup>
		<col style="width:72px;"/>
		<col style="width:;"/>
		<col style="width:120px;"/>
	</colgroup>
	<thead>
	<tr>
	  <th scope="col">번호</th>
	  <th scope="col">제목</th>
	  <th scope="col">등록일</th>
	</tr>
	</thead>
	<tbody id="rowlength">
	<c:forEach items="${ listView.noticeList}" var="dto">
	<c:if test="${not empty dto.hot }">
		<tr>
			<td class="number"><span class="k1_txt_tit02">HOT</span></td>
		 	<td class="k1_tal k1_bold" id="#noticedetail24"><a href="view.do?num=${ dto.num }&page=${ param.page }">${ dto.subject }</a></td>
		   <td class="time">${ dto.regdate }</td>
		</tr>
	</c:if>
	</c:forEach>
	<c:forEach items="${ listView.noticeList}" var="dto">
	<c:if test="${empty dto.hot }">
		<tr>
			<td>${ dto.no }</td>
		 	<td class="k1_tal"><a href="view.do?num=${ dto.num }&page=${ param.page==null ? 1 : param.page }">${ dto.subject }</a></td>
		   <td class="time">${ dto.regdate }</td>
		</tr>		
	</c:if>
	</c:forEach>
	</tbody>	
</table>
<!-- 페이징처리 --> 
	<div xmlns="http://www.w3.org/1999/xhtml" id="div_page_navi" class="k1_page_num">	 
	 <c:if test="${not empty listView}">
	    <c:forEach var="pageNum" begin="1" end="${listView.pageTotalCount }" >
	    <c:if test="${pageNum == (param.page==null ? 1 : param.page)}">
		<a name="page" class="select" href="list.do?page=${pageNum }">${pageNum }</a>
		</c:if>
		<c:if test="${pageNum ne (param.page==null ? 1 : param.page)}">
		<a name="page" href="list.do?page=${pageNum }">${pageNum }</a>
		</c:if>
		</c:forEach>  
	</c:if> 	
	</div>
<!-- 자주 묻는 질문 보기 -->
	<div xmlns="http://www.w3.org/1999/xhtml" class="mrt_help_link">
		<a href="https://www.myrealtrip.com/help/faq#TRAVEL">
			"항공권에 대해 궁금한 점이 있으신가요? "
			<bold>자주 묻는 질문 보기</bold>
		</a>
	</div>
</div>
</div>
</form>
</div>
</div>
<jsp:include page="/WEB-INF/layout/bottom.jsp"></jsp:include>

</body>
</html>