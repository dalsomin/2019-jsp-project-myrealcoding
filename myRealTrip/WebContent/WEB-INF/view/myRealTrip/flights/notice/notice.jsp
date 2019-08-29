<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jsp/servlet class - (2019. 5. 17.-오후 5:20:59)</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<link rel="stylesheet" type="text/css" href="">
<style>
/* k1_container  */
element.style {
    display: none;
}
div#k1_container {
    width: 100%;
}
body, th, td, li, div, span, p, form, label, select, input, textarea, button {
    font-family: -apple-system, BlinkMacSystemFont, "Malgun Gothic", "맑은 고딕", Roboto, Helvetica, Arial, sans-serif;
    font-size: 14px;
    color: #343a40;
    letter-spacing: -0.2px;
    -webkit-font-smoothing: antialiased;
}
body, textarea, select, table, input, button {
    margin: 0;
    padding: 0;
    font-family: '돋움',Dotum,'굴림',Gulim,AppleGothic,sans-serif;
    font-size: 12px;
    color: #5e5e5e;
}
html, body, div, span, applet, object, iframe, h1, h2, h3, h4, h5, h6, p, blockquote, pre, a, abbr, acronym, address, big, cite, code, del, dfn, em, img, ins, kbd, q, s, samp, small, strike, strong, sub, sup, tt, var, b, u, i, center, dl, dt, dd, ol, ul, li, fieldset, form, label, legend, table, caption, tbody, tfoot, thead, tr, th, td, article, aside, canvas, details, embed, figure, figcaption, footer, header, hgroup, menu, nav, output, ruby, section, summary, time, mark, audio, video {
    margin: 0;
    padding: 0;
    border: 0;
    font-size: 100%;
    font: inherit;
    vertical-align: baseline;
}
body, div, h1, h2, h3, h4, h5, h6, ul, ol, li, dl, dt, dd, p, form, fieldset, input, table, tr, th, td {
    margin: 0;
    padding: 0;
}
div {
    display: block;
}
#k1_container:after {
    content: ".";
    display: block;
    height: 0;
    clear: both;
    visibility: hidden;
}
</style>
<style>
div#k1_content {
    width: 100%;
    background: #f5f6f7;
}
#k1_content {
    float: right;
}
.mrt_notice {
    background-color: #fff;
}
form {
    display: block;
    margin-top: 0em;
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
        color: #393939;
}
h1, h2, h3, h4, h5, h6 {
    margin: 0;
    padding: 0;
    border: 0;
    background: transparent;
    font-weight: normal;
    font-size: 100%;
    outline: 0;
    vertical-align: baseline;
}
h2 {
    font: inherit;/*추가  */
    display: block;
    margin-block-start: 0.83em;
    margin-block-end: 0.83em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
}
</style>
<style>
/* table */
.mrt_notice .k1_bbs_boardview {
    border-top: 1px solid #ced4da;
}
.k1_bbs_boardview {
    width: 100%;
}
.k1_mt10 {
    margin-top: 10px !important;
}

tbody {
    display: table-row-group;
/*     vertical-align: middle;
    border-color: inherit; */
}
.mrt_notice .k1_bbs_boardview tr.first {
    height: 56px;
    padding: 18px 16px;
}
tr, th {
    font-weight: normal;
}
#k1_content table th, #k1_content table td {
    vertical-align: middle;
    line-height: 1.4;
}
.mrt_notice .k1_bbs_boardview tr.first .k1_bold {
    padding-top: 16px;
    padding-bottom: 16px;
    font-size: 16px;
    font-weight: bold;
}
.k1_bbs_boardview .last {
    border-right: 0 none;
}
.k1_bbs_boardview td {
    height: 16px;
    padding: 6px 10px;
    border-right: #d9d9d9 1px solid;
    border-bottom: #d9d9d9 1px solid;
    font-size: 13px;
    line-height: 1.6em;
    vertical-align: middle;
    word-break: break-all;
}
.k1_bold {
    font-weight: bold !important;
}
.k1_tar {
    text-align: right !important;
}
td {
    display: table-cell;
    vertical-align: inherit;
}
.mrt_notice .k1_bbs_boardview .mrt_notice_content {
    padding: 40px 16px;
    font-size: 15px;
    line-height: 1.75 !important;
}
</style>
<style>
/* 이전글다음글 */
.mrt_notice .mrt_list_box {
    border: none;
}
.k1_bbs_listbox {
    width: 100%;
    background: none;
    border: #555555 2px solid;
    border-left: none;
    border-right: none;
    line-height: 1.4em;
}
.mrt_notice .mrt_list_box th {
    background: none;
}
.k1_bbs_listbox th {
    padding: 15px 5px 15px;
    font-size: 14px;
    border-bottom: #e3e3e3 1px solid;
    background: url(/air/wfw/imgs/airC/cont/board_line.gif) no-repeat right 5px;
    line-height: 1.2em;
    height: 19px;
}
.k1_bbs_listbox td {
    padding: 15px 10px 15px;
    border-bottom: #e3e3e3 1px solid;
    font-size: 13px;
    line-height: 1.2em;
}
.mrt_notice .mrt_list_box a {
    font-size: 15px;
    color: #495056;
}
.mrt_notice .time {
    font-size: 13px;
    color: #848c94;
    text-align: center;
}
/* 목록보기 */
.mrt_notice .k1_requst_select {
    padding-top: 32px;
    padding-bottom: 0;
}
.k1_requst_select {
    padding: 10px;
    text-align: center;
}
element.style {
    width: 92px;
}
#wrap footer a, a:link, a:visited, a:hover, a:active {
    color: #999999;
    text-decoration: none;
}
.mrt_btn_gray {
    background-color: #e9ecef;
    color: #495056;
}
.mrt_btn_s {
    display: inline-block;
    height: 40px;
    line-height: 40px;
    min-width: 64px !important;
    padding: 0 10px !important;
    box-sizing: border-box;
    border-radius: 2px;
    font-size: 14px;
    text-align: center;
    font-weight: bold;
    transition: all .08s ease-out;
}

</style>
<script>
   $(document).ready(function (){	  
	   
   });
</script>
</head>
<body>
<jsp:include page="/WEB-INF/layout/top2.jsp"></jsp:include>
<div id="k1_container">
<div id="k1_aside"></div>
<div id="k1_content">
<form class="mrt_notice" name="notice" method="post" action="">
<!-- label -->
<div class="mrt_notice_wrap">
<h2 class="k1_h_tit1">항공권 공지사항</h2>
<!-- div 2개 -->
<table class="k1_bbs_boardview k1_mt10">
	<tbody>	
		<tr class="first">
			<td id="bltnssubj" class="last k1_bold">${ dto.subject }</td>
			<td id="regdtm" class="last k1_tar">작성일 : ${ dto.regdate } / 조회수 : ${ dto.cnt} </td>
		</tr>
		<tr id="imgstyle">
			<td id="content1" colspan="2" class="last mrt_notice_content">${dto.content }</td>
		</tr>
		<tr id="nonimgstyle" style="display:none">
			<td id="content2" colspan="2" class="last mrt_notice_content"></td>			
		</tr>
	</tbody>	
</table>
<div id="prnext"></div>
<table class="k1_bbs_listbox mrt_list_box">
	<tbody>
		<c:if test="${dto.next_num ne 0 }">
		<tr>
			<th scope="row" id="bottomnext">
				<span class="k1_btn_arrow_next2" title="next"></span>다음글 
			</th>
			<td id="nextdetail"><a href="view.do?num=${ dto.next_num }&page=${ param.page==null ? 1 : param.page }">${dto.next_subject }</a></td>
			<td class="time" id="nexttime">${dto.next_regdate }</td>
		</tr>
		</c:if>
		<c:if test="${dto.prev_num ne 0 }">
		<tr>
			<th scope="row" id="bottomprev">
				<span class="k1_btn_arrow_prev2" title="next"></span>이전글
			</th>
			<td id="prevdetail"><a href="view.do?num=${dto.prev_num }&page=${ param.page==null ? 1 : param.page }">${dto.prev_subject }</a></td>
			<td class="time" id="prevtime">${dto.prev_regdate }</td>
		</tr>
		</c:if>
	</tbody>
</table>
<div id="backlist" class="k1_requst_select">
	<a id="list" class="mrt_btn_gray mrt_btn_s" href="list.do?page=${ param.page}" style="width: 92px;">
		<span>목록보기</span>
	</a>
</div>
</div><!-- mrt_notice_wrap -->

</form>
</div><!-- k1_content -->
</div>
<jsp:include page="/WEB-INF/layout/bottom.jsp"></jsp:include>
</body>
</html>