<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
		<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://connect.facebook.net/en_US/all.js?hash=4c7dfef150be80fa6ad890097acf07f2&amp;ua=modern_es6"
	async="" crossorigin="anonymous"></script>
<script id="facebook-jssdk"
	src="//connect.facebook.net/en_US/all.js#xfbml=1&amp;appId=113823448739791"></script>
<script type="text/javascript" async=""
	src="https://www.google-analytics.com/analytics.js"></script>
<script type="text/javascript" async=""
	src="https://www.google-analytics.com/plugins/ua/ec.js"></script>
<script type="text/javascript" async=""
	src="https://www.google-analytics.com/plugins/ua/linkid.js"></script>
<script type="text/javascript" async=""
	src="https://www.google-analytics.com/analytics.js"></script>
<script async=""
	src="https://www.googletagmanager.com/gtm.js?id=GTM-NCVRS4"></script>
<script src="https://www.googletagmanager.com/gtag/js?id=UA-31181930-1"
	async=""></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="google-site-verification"
	content="sF7gineEMjwtxBoCoHQNKr3-d1qNnPLD6QGRNxZ1dYw">
<title>현지 여행의 모든 것 :: 마이리얼트립</title>

<link rel="stylesheet"
	href="https://d32w679339tzui.cloudfront.net/static/css/main.css">
<link rel="stylesheet" type="text/css"
	href="https://flights.myrealtrip.com/air/wfw/css/jquery-ui-1.8.24.custom.css">
<link rel="stylesheet" type="text/css" href="https://flights.myrealtrip.com/air/css/airB.css">
<link rel="stylesheet" type="text/css" href="https://flights.myrealtrip.com/air/css/mrt/airC.css">
<link rel="stylesheet" type="text/css"
	href="https://flights.myrealtrip.com/air/css/mrt/swiper/swiper.min.css">

<link rel="shortcut icon"
	href="https://d32w679339tzui.cloudfront.net/favicon/favicon.ico">
<style type="text/css">
.fb_hidden {
	position: absolute;
	top: -10000px;
	z-index: 10001
}

.fb_reposition {
	overflow: hidden;
	position: relative
}

.fb_invisible {
	display: none
}

.fb_reset {
	background: none;
	border: 0;
	border-spacing: 0;
	color: #000;
	cursor: auto;
	direction: ltr;
	font-family: "lucida grande", tahoma, verdana, arial, sans-serif;
	font-size: 11px;
	font-style: normal;
	font-variant: normal;
	font-weight: normal;
	letter-spacing: normal;
	line-height: 1;
	margin: 0;
	overflow: visible;
	padding: 0;
	text-align: left;
	text-decoration: none;
	text-indent: 0;
	text-shadow: none;
	text-transform: none;
	visibility: visible;
	white-space: normal;
	word-spacing: normal
}

.fb_reset>div {
	overflow: hidden
}

@
keyframes fb_transform {
	from {opacity: 0;
	transform: scale(.95)
}

to {
	opacity: 1;
	transform: scale(1)
}

}
.fb_animate {
	animation: fb_transform .3s forwards
}

.fb_dialog {
	background: rgba(82, 82, 82, .7);
	position: absolute;
	top: -10000px;
	z-index: 10001
}

.fb_dialog_advanced {
	border-radius: 8px;
	padding: 10px
}

.fb_dialog_content {
	background: #fff;
	color: #373737
}

.fb_dialog_close_icon {
	background:
		url(https://static.xx.fbcdn.net/rsrc.php/v3/yq/r/IE9JII6Z1Ys.png)
		no-repeat scroll 0 0 transparent;
	cursor: pointer;
	display: block;
	height: 15px;
	position: absolute;
	right: 18px;
	top: 17px;
	width: 15px
}

.fb_dialog_mobile .fb_dialog_close_icon {
	left: 5px;
	right: auto;
	top: 5px
}

.fb_dialog_padding {
	background-color: transparent;
	position: absolute;
	width: 1px;
	z-index: -1
}

.fb_dialog_close_icon:hover {
	background:
		url(https://static.xx.fbcdn.net/rsrc.php/v3/yq/r/IE9JII6Z1Ys.png)
		no-repeat scroll 0 -15px transparent
}

.fb_dialog_close_icon:active {
	background:
		url(https://static.xx.fbcdn.net/rsrc.php/v3/yq/r/IE9JII6Z1Ys.png)
		no-repeat scroll 0 -30px transparent
}

.fb_dialog_iframe {
	line-height: 0
}

.fb_dialog_content .dialog_title {
	background: #6d84b4;
	border: 1px solid #365899;
	color: #fff;
	font-size: 14px;
	font-weight: bold;
	margin: 0
}

.fb_dialog_content .dialog_title>span {
	background:
		url(https://static.xx.fbcdn.net/rsrc.php/v3/yd/r/Cou7n-nqK52.gif)
		no-repeat 5px 50%;
	float: left;
	padding: 5px 0 7px 26px
}

body.fb_hidden {
	height: 100%;
	left: 0;
	margin: 0;
	overflow: visible;
	position: absolute;
	top: -10000px;
	transform: none;
	width: 100%
}

.fb_dialog.fb_dialog_mobile.loading {
	background:
		url(https://static.xx.fbcdn.net/rsrc.php/v3/ya/r/3rhSv5V8j3o.gif)
		white no-repeat 50% 50%;
	min-height: 100%;
	min-width: 100%;
	overflow: hidden;
	position: absolute;
	top: 0;
	z-index: 10001
}

.fb_dialog.fb_dialog_mobile.loading.centered {
	background: none;
	height: auto;
	min-height: initial;
	min-width: initial;
	width: auto
}

.fb_dialog.fb_dialog_mobile.loading.centered #fb_dialog_loader_spinner {
	width: 100%
}

.fb_dialog.fb_dialog_mobile.loading.centered .fb_dialog_content {
	background: none
}

.loading.centered #fb_dialog_loader_close {
	clear: both;
	color: #fff;
	display: block;
	font-size: 18px;
	padding-top: 20px
}

#fb-root #fb_dialog_ipad_overlay {
	background: rgba(0, 0, 0, .4);
	bottom: 0;
	left: 0;
	min-height: 100%;
	position: absolute;
	right: 0;
	top: 0;
	width: 100%;
	z-index: 10000
}

#fb-root #fb_dialog_ipad_overlay.hidden {
	display: none
}

.fb_dialog.fb_dialog_mobile.loading iframe {
	visibility: hidden
}

.fb_dialog_mobile .fb_dialog_iframe {
	position: sticky;
	top: 0
}

.fb_dialog_content .dialog_header {
	background: linear-gradient(from(#738aba), to(#2c4987));
	border-bottom: 1px solid;
	border-color: #1d3c78;
	box-shadow: white 0 1px 1px -1px inset;
	color: #fff;
	font: bold 14px Helvetica, sans-serif;
	text-overflow: ellipsis;
	text-shadow: rgba(0, 30, 84, .296875) 0 -1px 0;
	vertical-align: middle;
	white-space: nowrap
}

.fb_dialog_content .dialog_header table {
	height: 43px;
	width: 100%
}

.fb_dialog_content .dialog_header td.header_left {
	font-size: 12px;
	padding-left: 5px;
	vertical-align: middle;
	width: 60px
}

.fb_dialog_content .dialog_header td.header_right {
	font-size: 12px;
	padding-right: 5px;
	vertical-align: middle;
	width: 60px
}

.fb_dialog_content .touchable_button {
	background: linear-gradient(from(#4267B2), to(#2a4887));
	background-clip: padding-box;
	border: 1px solid #29487d;
	border-radius: 3px;
	display: inline-block;
	line-height: 18px;
	margin-top: 3px;
	max-width: 85px;
	padding: 4px 12px;
	position: relative
}

.fb_dialog_content .dialog_header .touchable_button input {
	background: none;
	border: none;
	color: #fff;
	font: bold 12px Helvetica, sans-serif;
	margin: 2px -12px;
	padding: 2px 6px 3px 6px;
	text-shadow: rgba(0, 30, 84, .296875) 0 -1px 0
}

.fb_dialog_content .dialog_header .header_center {
	color: #fff;
	font-size: 16px;
	font-weight: bold;
	line-height: 18px;
	text-align: center;
	vertical-align: middle
}

.fb_dialog_content .dialog_content {
	background:
		url(https://static.xx.fbcdn.net/rsrc.php/v3/y9/r/jKEcVPZFk-2.gif)
		no-repeat 50% 50%;
	border: 1px solid #4a4a4a;
	border-bottom: 0;
	border-top: 0;
	height: 150px
}

.fb_dialog_content .dialog_footer {
	background: #f5f6f7;
	border: 1px solid #4a4a4a;
	border-top-color: #ccc;
	height: 40px
}

#fb_dialog_loader_close {
	float: left
}

.fb_dialog.fb_dialog_mobile .fb_dialog_close_button {
	text-shadow: rgba(0, 30, 84, .296875) 0 -1px 0
}

.fb_dialog.fb_dialog_mobile .fb_dialog_close_icon {
	visibility: hidden
}

#fb_dialog_loader_spinner {
	animation: rotateSpinner 1.2s linear infinite;
	background-color: transparent;
	background-image:
		url(https://static.xx.fbcdn.net/rsrc.php/v3/yD/r/t-wz8gw1xG1.png);
	background-position: 50% 50%;
	background-repeat: no-repeat;
	height: 24px;
	width: 24px
}

@
keyframes rotateSpinner { 0%{
	transform: rotate(0deg)
}

100%{
transform
:rotate(360deg)
}
}
.fb_iframe_widget {
	display: inline-block;
	position: relative
}

.fb_iframe_widget span {
	display: inline-block;
	position: relative;
	text-align: justify
}

.fb_iframe_widget iframe {
	position: absolute
}

.fb_iframe_widget_fluid_desktop, .fb_iframe_widget_fluid_desktop span,
	.fb_iframe_widget_fluid_desktop iframe {
	max-width: 100%
}

.fb_iframe_widget_fluid_desktop iframe {
	min-width: 220px;
	position: relative
}

.fb_iframe_widget_lift {
	z-index: 1
}

.fb_iframe_widget_fluid {
	display: inline
}

.fb_iframe_widget_fluid span {
	width: 100%
}
</style>
</head>
<jsp:include page="/WEB-INF/layout/top2.jsp"></jsp:include>
<body style="">
	
	<div id="ki_wrap">
		<!-- header -->




		<div id="k1_container">
			<!-- left menu -->


			<div id="k1_aside">
				<div></div>

			</div>



			<!-- content -->
			<div id="k1_content">











				<link rel="stylesheet" type="text/css"
					href="https://flights.myrealtrip.com/air/css/mrt/airC_myp.css">
				<!-- mrt 마이페이지 css 임시링크 -->


				<section id="content">
					<div id="k1_content">
						<div class="k1_width_fixed k1_mt20">
							<a
								href="나의 예약내역#"
								class="my_trip">나의 여행</a>
							<div id="reservation_list" class="k1_reserved_list">
								<h3 xmlns="http://www.w3.org/1999/xhtml"
									class="k1_mrt_tit k1_fl">
									항공권 예약내역<span class="com">문의사항은 예약상세 &gt; 온라인 상담하기 기능을
										이용해주세요.</span>
								</h3>
								<table xmlns="http://www.w3.org/1999/xhtml"
									class="k1_tbl k1_tbl_basic k1_cb k1_mb0" id="resvlist">
									<caption>예약확인테이블</caption>
									<colgroup>
										<col style="width: 10%;">
										<col style="width: 15%;">
										<col style="width: *;">
										<col style="width: 8%;">
										<col style="width: 8%;">
										<col style="width: 9%;">
										<col style="width: 12%;">
									</colgroup>
									<thead>
										<tr>
											<th scope="col">예약번호</th>
											<th scope="col">예약일</th>
											<th scope="col">여정</th>
											<th scope="col">예약</th>
											<th scope="col">요금</th>
											<th scope="col">상태</th>
											<th scope="col"></th>
										</tr>
									</thead>
									<tbody>
										<tr class="h40">
											<td colspan="7" class="last">검색된 데이터가 없습니다.</td>
										</tr>
									</tbody>
								</table>
								<div xmlns="http://www.w3.org/1999/xhtml" class="paging"></div>
							</div>
							<!-- //항공권 예약 내역 -->
						</div>
					</div>
				</section>

				<div id="k1_air_select" style="display: none">
					<form id="afrm01" name="afrm01" method="get"
						action="/air/b2c/AIR/AAA/AIRAAALST0100000010.k1"
						onsubmit="return airfn_search_0100000010();">
						<input type="hidden" id="hid_searchflag" name="searchflag"
							value=""> <input type="hidden" id="hid_fromdt"
							name="fromdt" value="2018-11-23"> <input type="hidden"
							id="hid_todt" name="todt" value="2019-05-23"> <input
							type="hidden" id="hid_voidflag" name="voidflag" value="">
						<input type="hidden" id="hid_rsvcontentntceyn"
							name="rsvcontentntceyn" value=""> <input type="hidden"
							id="hid_saleformcd" name="saleformcd" value=""> <input
							type="hidden" id="serverpaging" name="serverpaging" value="on">
						<input type="hidden" id="orderby" name="orderby"
							value=" PNR_SEQNO DESC "> <input type="hidden"
							id="summary" name="summary" value="on"> <input
							type="hidden" id="rowsperpage" name="rowsperpage" value="20">
						<input type="hidden" id="targetpage" name="targetpage" value="1">
						<input type="hidden" id="rowstart" name="rowstart" value="">
						<input type="hidden" id="rowfinish" name="rowfinish" value="">
						<input type="hidden" id="diflag" name="diflag" value="">
						<div class="k1_statue_area1 k1_mt5">
							<p class="k1_mt5">
								<span class="k1_arrow_txt01">기간별 조회</span> <input type="radio"
									id="rdodate_1" name="rdodate" class="k1_input_radio k1_ml15"
									onclick="javascript:airfn_selectdate_0100000010(-1);">
								<label for="rdodate_1">1개월</label> <input type="radio"
									id="rdodate_2" name="rdodate" class="k1_input_radio k1_ml15"
									onclick="javascript:airfn_selectdate_0100000010(-2);">
								<label for="rdodate_2">2개월</label> <input type="radio"
									id="rdodate_3" name="rdodate" class="k1_input_radio k1_ml15"
									onclick="javascript:airfn_selectdate_0100000010(-3);">
								<label for="rdodate_3">3개월</label> <input type="radio"
									id="rdodate_6" name="rdodate" class="k1_input_radio k1_ml15"
									onclick="javascript:airfn_selectdate_0100000010(-6);"
									checked="checked"> <label for="rdodate_6">6개월</label>
							</p>
							<p class="k1_mt5">
								<label for="searchflag" class="k1_arrow_txt01">일자별조회</label> <select
									id="searchflag" name="searchflag"
									class="k1_select_border k1_ml20 k1_w70" title="예약일 선택">
									<option value="resvdtm">예약일</option>
									<option value="depdtm">출발일</option>
								</select> <label for="fromdt" class="k1_arrow_txt01"
									style="display: none">조회시작일</label> <input type="text"
									id="fromdt" name="fromdt"
									class="k1_input_text k1_w90 hasDatepicker" title="조회시작일"><a
									href="#k1_calender" title="날짜선택"
									class="ui-datepicker-trigger k1_btn_cal"
									style="margin-left: 4px;">날짜선택</a> ~ <label for="todt"
									class="k1_arrow_txt01" style="display: none">조회마지막일</label> <input
									type="text" id="todt" name="todt"
									class="k1_input_text k1_w90 hasDatepicker" title="조회마지막일"><a
									href="#k1_calender" title="날짜선택"
									class="ui-datepicker-trigger k1_btn_cal"
									style="margin-left: 4px;">날짜선택</a> <input type="checkbox"
									id="voidflag" name="voidflag" value="Y"
									class="k1_input_check k1_ml5" title="취소예약제외"> <label
									for="voidflag">취소예약제외</label> <span id="btnSearch"
									class="k1_btn_reserch1 k1_ml15"
									onclick="javascript:airfn_searchresv_0100000010('','',this.id);return false;"><button
										type="button">검색하기</button></span>
								<!-- <a href="#" class="k1_btn_reserch1 k1_ml15" title="검색"><span onclick="javascript:airfn_searchresv_0100000010();return false;">검색하기</span></a> -->
							</p>
							<p class="k1_dot_line2_1"></p>
							<p class="k1_txt_dot2_1">예약번호를 클릭하시면 예약 상세 내용(탑승자명 변경요청,
								예약취소, 결제, 이티켓출력 등)을 보실 수 있습니다.</p>
						</div>
						<div id="div_notice" class="k1_statue_box5_1 k1_mt5">
							<p id="p_notice" class="k1_statue_stt">예약번호를 클릭하시면 상세정보를 보실 수
								있으며, 예약 리스트를 확인하신 후 각 진행상태에 따라 이용 바랍니다.</p>
						</div>

						<div class="k1_tar k1_mt20">
							<input type="radio" id="rdostatus_1" name="rdostatus"
								class="k1_radio k1_ml10" value=""
								onclick="javascript:airfn_tab_radio_click_0100000010(this.id,this.value);return false;"
								checked="checked"> <label for="rdostatus_1">전체</label> <input
								type="radio" id="rdostatus_2" name="rdostatus"
								class="k1_radio k1_ml10" value="RMPQ"
								onclick="javascript:airfn_tab_radio_click_0100000010(this.id,this.value);return false;">
							<label for="rdostatus_2">확약</label> <input type="radio"
								id="rdostatus_3" name="rdostatus" class="k1_radio k1_ml10"
								value="RMQQ"
								onclick="javascript:airfn_tab_radio_click_0100000010(this.id,this.value);return false;">
							<label for="rdostatus_3">대기</label> <input type="radio"
								id="rdostatus_4" name="rdostatus" class="k1_radio k1_ml10"
								value="RMXX"
								onclick="javascript:airfn_tab_radio_click_0100000010(this.id,this.value);return false;">
							<label for="rdostatus_4">취소</label> <input type="radio"
								id="rdostatus_5" name="rdostatus" class="k1_radio k1_ml10"
								value="TKKY"
								onclick="javascript:airfn_tab_radio_click_0100000010(this.id,this.value);return false;">
							<label for="rdostatus_5">발권완료</label>
						</div>
						<!-- tab_menu -->
						<div class="k1_tabs1 k1_mt5">
						</div>
						<input type="hidden" id="KSESID" name="KSESID"
							value="air:b2c:SELK138RB:SELK138RB::00">
					</form>
					<div class="k1_blank20"></div>
				</div>
				
			</div>
			<div class="k1_blank20">&nbsp;</div>
		</div>

		<!-- footer -->

		<div class="k1_cb"></div>
		<div id="k1_footer">


			<div class="f_cont">
				<h2></h2>
			</div>
		</div>











		<!-- 선택한 항공편 레이어팝업 -->
		<div id="air_reservation" class="k1_air_reservation_2"
			style="height: 295px; display: none;">
			<div class="all">
				<div class="left_wrap"></div>

				<div class="cont_wrap">

					<h3 class="k1_h_tit1">선택한 항공편</h3>
					<div class="k1_air_reservation1_1">
						<div class="k1_cont" id="selected_schedule">
							<ul>
								<li></li>
								<li></li>
								<li></li>
								<li></li>
							</ul>
							<p class="k1_fr">
								<button type="submit" class="k1_btn_resevation3" title="예약하기"
									onclick="javascript:airfn_submit_AIRINTSCH0100100010();return false;"></button>
							</p>
						</div>
					</div>
					<div class="k1_cont_box2" id="selected_price">
						<p class="k1_total_price">
							<strong>총액요금 : <span class="k1_cpoint">0원</span></strong><span></span><span
								style="display: none;">[예상컴 : 0원 VAT : 0원]</span>
						</p>
						<span class="k1_btn2" id="btmsrule" style="display: none;"><button
								type="button"
								onclick="javascript:airfn_clickbtriprulebtn_AIRINTSCH0100100010(); return false;">출장규정보기
								▶</button></span> <a href="#div_farerule" class="k1_btn2"
							onclick="javascript:airfn_fareruleinfo();return false;"><span>운임규정보기
								▶</span></a> <a href="#air_fareInfo" class="k1_btn2"
							onclick="javascript:airfn_faredetailinfo_AIRINTSCH0100100010(0);return false;"><span>상세보기
								▶</span></a>
						<p class="k1_tit_dot3" id="fare_priceinfo">유류할증료, 제세공과금 포함(변동
							가능)</p>
					</div>
					<div class="k1_statue_area1">
						<p class="k1_blind">주의사항</p>
						<p id="p_sel_notice" class="k1_statue_tt"></p>
					</div>
					<button type="button" class="close"
						onclick="javascript:airfn_selectreviewclose();return false;"
						title="닫기">
						닫기<em></em>
					</button>
					<!-- <a href="#btn_reservation" class="close k1_bold" onclick="javascript:airfn_selectreviewclose();return false;" title="닫기">닫기</a> -->
				</div>
			</div>
		</div>
		<!-- //선택한 항공편 레이어팝업 -->


		<!-- 할인항공 선택한 항공편 레이어팝업 -->
		<div id="air_dscnt_reservation" style="display: none;">
			<div id="k1_pop_wrap" style="width: 600px;">
				<div class="k1_pop_header">
					<h1>선택한 항공권 재확인</h1>
				</div>
				<div class="k1_pop_contents">
					<!-- 선택한 항공권 재확인 -->
					<div class="k1_select_air_layer">
						<table class="k1_board_type3 k1_mt5">
							<caption>선택한 항공권 재확인</caption>
							<colgroup>
								<col style="width: 25%;">
								<col style="width: 25%;">
								<col style="width: 25%;">
								<col style="width: 25%;">
							</colgroup>
							<thead>
								<tr class="k1_brn_th">
									<th scope="col">항공편</th>
									<th scope="col">여정</th>
									<th scope="col">출발시간</th>
									<th scope="col">도착시간</th>
								</tr>
							</thead>
							<tbody class="brn">
								<tr>
									<td class="k1_cont"><div id="depFlightInfo"></div></td>
									<td class="k1_bold"><div id="depAvailInfo"></div></td>
									<td><div id="depDepDTm"></div></td>
									<td><div id="depArrDTm"></div></td>
								</tr>
								<tr>
									<td class="k1_cont"><div id="retFlightInfo"></div></td>
									<td class="k1_bold"><div id="retAvailInfo"></div></td>
									<td><div id="retDepDTm"></div></td>
									<td><div id="retArrDTm"></div></td>
								</tr>
							</tbody>
						</table>
					</div>
					<div class="k1_btn_wrap2">
						<a href="#none" id="aIfrno" ifrno="0"
							onclick="javascript:airfn_reservation_0100100047(this);return false;"
							class="k1_btn01 k1_w80"><span>확인</span></a>
					</div>
					<!-- //선택한 항공권 재확인 -->
				</div>
				<a href="#none"
					onclick="javascript:$.uiUnblockByJq();return false;"
					class="k1_btn_p_close1" title="닫기">닫기</a>
			</div>
		</div>
		<!-- //할인항공 선택한 항공편 레이어팝업 -->


		<!-- //나이구분 레이어팝업 국제선 -->
		<div id="air_ageinfo" style="display: none;">
			<div class="k1_detail_pop" style="width: 460px">
				<div class="cont_wrap">
					<dl class="list">
						<dt>소아요금&nbsp;-&nbsp;</dt>
						<dd>
							<strong>출발일 기준 만2세 ~ 만12세 미만</strong>의 소아에게 적용되는 요금.
						</dd>
						<dt>유아요금&nbsp;-&nbsp;</dt>
						<dd>
							<p>
								<strong>출발일 기준 생후14일 ~ 만24개월 미만</strong>의 유아에게 적용되는 요금으로서 별도의
								좌석이 없음.
							</p>
							<p>별도의 좌석을 원할 경우소아좌석을 예약해야 됨.</p>
						</dd>
					</dl>
					<a href="#" onclick="javascript:$.uiUnblockByJq();return false;"
						class="k1_btn_p_close2">닫기</a>
				</div>
			</div>
		</div>
		<!-- //나이구분 레이어팝업 -->

		<!-- //나이구분 레이어팝업 국내선-->
		<div id="air_ageinfo2" style="display: none;">
			<div class="k1_detail_pop" style="width: 460px">
				<div class="cont_wrap">
					<dl class="list">
						<dt>소아요금&nbsp;-&nbsp;</dt>
						<dd>
							<strong>출발일 기준 만2세 ~ 만13세 미만</strong>의 소아에게 적용되는 요금.
						</dd>
						<dt>유아요금&nbsp;-&nbsp;</dt>
						<dd>
							<p>
								<strong>출발일 기준 생후14일 ~ 만24개월 미만</strong>의 유아에게 적용되는 요금으로서 별도의
								좌석이 없음.
							</p>
							<p>별도의 좌석을 원할 경우소아좌석을 예약해야 됨.</p>
						</dd>
					</dl>
					<a href="#" onclick="javascript:$.uiUnblockByJq();return false;"
						class="k1_btn_p_close2">닫기</a>
				</div>
			</div>
		</div>
		<!-- //나이구분 레이어팝업 -->

		<!-- //수화물 안내 레이어팝업 국내선-->
		<!-- hjhong 20180403 디자인변경 소스 추가.시작  -->
		<div id="air_myp_bagginfo" style="display: none;">
			<div class="k1_mrt_pop_wrap" style="width: 450px;">
				<h4>수하물 관련 안내사항</h4>
				<div class="k1_mrt_pop_contents">
					<p class="ac k1_mb20">
						<i class="k1_mrt_ico circle-caution k1_mb10"></i><br> <span
							class="k1_fnt20"><b class="">1PC</b>의 무료 수하물 기준은 <b
							class="">1개</b>입니다.</span>
					</p>
					<div class="k1_mrt_box_mild">
						<ul class="k1_mrt_guide">
							<li>항공사별 무게 및 사이즈가 상이하므로 항공사로 확인 바랍니다.</li>
							<li>(공동운항편, 타항공사 항공편 탑승, STOPOVER 일정 및 항공사 스케줄이 없어서 24시간 이상
								중간 체류 하는 경우, 특정도시에 따라 무료수하물 규정은 변경 될 수 있으며, 캐리어 가방 외에 기타 수하물 및
								반려동물은 결제 전 항공사로 문의해주세요)</li>
						</ul>
					</div>
					<a class="close_pop" href="#"
						onclick="javascript:$.uiUnblockByJq();return false;">팝업창 닫기</a>
				</div>
			</div>
		</div>
		<!-- hjhong 20180403 디자인변경 소스 추가.시작  -->
		<!-- hjhong 20180403 주석처리 <div id="air_bagginfo" style="display: none;">
	<div class="k1_detail_pop">
		<div class="cont_wrap">
			<h4>수화물 안내</h4>
			<dl class="list">
				수하물 기준은 항공사별 무게 및 사이즈 상이 하므로 항공사로 확인바랍니다.
				<br />(공동운항편, 타항공사 항공편탑승, <br />STOPOVER 일정 및 항공사 스케줄이 없어서 24시간 이상 중간체류하는 경우, <br />특정도시에 따라 무료 수하물 규정은 변경 될 수 있으며, <br />캐리어 가방외에 기타수하물 및 반려 동물은 결제전 항공사로 문의해주세요)    
	        </dl>
			<a href="#" onclick="javascript:$.uiUnblockByJq();return false;" class="k1_btn_p_close2">닫기</a>
		</div>
	</div>
</div> -->
		<!-- //수화물 안내 레이어팝업 국내선-->

		<!-- //VISA 경고 레이어팝업 -->

		<!-- hjhong 20180313 디자인변경 소스 추가.시작  -->
		<div id="air_visa_warning" style="display: none;">
			<div class="k1_mrt_pop_wrap" style="width: 800px;">
				<h4>예약전 안내사항</h4>
				<div class="k1_mrt_pop_contents">

					<p class="k1_caution_guide_fnt16 k1_mb20">VISA가 필요한 국가입니다.</p>

					<ul class="k1_mrt_info k1_cb">
						<li>선택하신 도시는 VISA가 반드시 필요한 곳입니다. 아래 사항을 점검해 주십시오.
							<ol>
								<li>VISA 소지 여부를 확인하여 주십시오.</li>
								<li>소지하신 VISA의 유효기간을 반드시 확인하여 주십시오.</li>
							</ol>
						</li>
					</ul>
					<div class="mrt_visa_banner">
						<div class="k1_fl">
							<img src="https://flights.myrealtrip.com/air/imgs_ibe/mrt/ico/ico_visa.png" alt="visa icon">
						</div>
						<div class="text k1_fl">
							<h3>비자 미리미리 준비하세요!</h3>
							<p>비자가 필요한 국가로 여행 가시는 경우 미리미리 비자를 신청 해주세요.</p>
						</div>
						<a
							href="http://agent.myvisa.co.kr/index.asp?cp_userid=IF96HH88&amp;cp_sitecd=9688"
							target="_blank" class="k1_fr k1_mrt_btn k1_mrt_btn_blue">비자
							신청하기</a>
					</div>
					<a href="javascript:$.uiUnblockByJq();" class="close_pop">팝업창
						닫기</a>
				</div>
			</div>
		</div>
		<!-- hjhong 20180313 디자인변경 소스 추가.끝 -->
		<!-- //VISA 경고 레이어팝업 -->

		<!-- //TASF 결제 별도 레이어팝업 -->
		<div id="air_tooltip_tasfpayxtr" style="display: none;">
			<div class="k1_detail_pop">
				<div class="cont_wrap">
					<dl>
						<dt class="k1_bold k1_cpoint">TASF결제별도 :</dt>
						<dd>
							<span class="k1_bold">체크 시 TASF를 항공금액과 별도의 카드로 결제요청합니다.</span>
						</dd>
					</dl>
				</div>
			</div>
		</div>
		<!-- //TASF 결제 별도 레이어팝업 -->

		<!-- 유류할증료 팝업  -->
		<div id="air_baf_warning" style="display: none;">
			<div class="k1_mrt_pop_wrap" style="width: 450px;">
				<h4>유류할증료 인상 안내</h4>
				<div class="k1_mrt_pop_contents">
					<ul class="k1_mrt_info k1_cb">
						<li>
							<ul>
								<li style="padding-bottom: 10px;"><font
									style="color: #2B96ED">7월 1일 예약/발권분부터</font> 유류할증료가 인상됩니다.</li>
								<li style="padding-bottom: 10px;"><font
									style="color: #2B96ED">6월 29일(금) 18:00 이후 예약 및 결제 시</font> 인상된
									요금이</li>
								<li>적용됩니다.</li>
							</ul>
						</li>
					</ul>
					<a href="javascript:$.uiUnblockByJq();" class="close_pop">팝업창
						닫기</a>
				</div>
			</div>
		</div>
		<!-- //유류할증료 팝업  -->

		<!-- //div에 직접 HTML 설정 레이어팝업 -->
		<div id="air_common_layer" style="display: none"></div>
		<!-- //div에 직접 HTML 설정 레이어팝업 -->


		<!-- //이중클릭 방지용 레이어팝업 (작은사이즈)-->
		<div id="air_block_layer" style="display: none">
			<div class="loading_spinner">
				<span></span>
			</div>
		</div>
		<!-- //이중클릭 방지용 레이어팝업 -->


		<!-- //이중클릭 방지용 레이어팝업 (큰사이즈) -->
		<div id="air_block2_layer" style="display: none;">
			<div class="loading_spinner">
				<span></span>
			</div>
		</div>
		<!-- //이중클릭 방지용 레이어팝업 -->


		<!-- alert 을 위한 메시지 레이어팝업 시작 -->
		<div id="air_messege_layer" style="display: none">
			<div id="k1_pop_wrap">
				<div class="popup">
					<div class="header">
						<h1 class="tit">Message</h1>
					</div>
					<div class="contents">
						<div class="k1_message_box">
							<!-- 주요내용 -->
							<div class="box1 k1_bold" id="returnMessage"></div>
							<!-- //주요내용 -->
							<!-- 부가설명 -->
							<div class="box2 k1_mt10" id="errorMessage"></div>
							<div class="box2 k1_mt10" id="subErrorMessage"></div>
							<!-- //부가설명 -->
						</div>
						<div class="k1_popup_btn">
							<span class="k1_btn_01"><button type="button" title="닫기"
									onclick="javascript:gfn_common_message_forLayer_callbackfunction();">닫기</button></span>
						</div>
					</div>
					<button type="button" class="k1_btn_p_close1" title="닫기"
						onclick="javascript:gfn_common_message_forLayer_callbackfunction();">닫기</button>
				</div>
			</div>
		</div>
		<!-- alert 을 위한 메시지 레이어팝업 끝 -->

		<div id="dom_baggage_info" style="display: none">
			<div id="k1_pop_wrap" style="width: 550px;">
				<div class="k1_pop_header">
					<h1>항공사 수하물 규정</h1>
				</div>
				<div class="k1_pop_contents" style="height: 500px;">
					<div class="k1_gride5">
						<table class="k1_board_type3_1">
							<caption>항공사 수하물 규정</caption>
							<colgroup>
								<col style="width: 140px;">
								<col style="">
							</colgroup>
							<tbody>
								<tr>
									<th scope="row" rowspan="3" class="k1_bold">KE<br>(대한항공)
									</th>
									<td class="last k1_tal">일반석 무료 수하물 허용량 : 20kg</td>
								</tr>
								<tr>
									<td class="last k1_tal">프레스티지석 무료 수하물 허용량 : 30kg</td>
								</tr>
								<tr>
									<td class="last k1_tal">초과 시 kg당 2,000원</td>
								</tr>
								<tr>
									<th scope="row" rowspan="2" class="k1_bold">OZ/RS<br>(아시아나/에어서울)
									</th>
									<td class="last k1_tal">일반석 무료 수하물 허용량 : 20kg</td>
								</tr>
								<tr>
									<td class="last k1_tal">초과 시 kg당 2,000원</td>
								</tr>
								<tr>
									<th scope="row" rowspan="2" class="k1_bold">LJ<br>(진에어)
									</th>
									<td class="last k1_tal">일반석 무료 수하물 허용량 : 15kg</td>
								</tr>
								<tr>
									<td class="last k1_tal">초과 시 kg당 2,000원</td>
								</tr>
								<tr>
									<th scope="row" rowspan="2" class="k1_bold">TW<br>(티웨이항공)
									</th>
									<td class="last k1_tal">일반석 무료 수하물 허용량 : 15kg</td>
								</tr>
								<tr>
									<td class="last k1_tal">초과 시 kg당 2,000원</td>
								</tr>
								<tr>
									<th scope="row" rowspan="2" class="k1_bold">ZE<br>(이스타항공)
									</th>
									<td class="last k1_tal">일반석 무료 수하물 허용량 : 15kg</td>
								</tr>
								<tr>
									<td class="last k1_tal">초과 시 kg당 2,000원</td>
								</tr>
								<tr>
									<th scope="row" rowspan="2" class="k1_bold">7C<br>(제주항공)
									</th>
									<td class="last k1_tal">일반석 무료 수하물 허용량 : 15kg</td>
								</tr>
								<tr>
									<td class="last k1_tal">초과 시 kg당 2,000원</td>
								</tr>
								<tr>
									<th scope="row" rowspan="2" class="k1_bold">BX<br>(에어부산)
									</th>
									<td class="last k1_tal">일반석 무료 수하물 허용량 : 15kg</td>
								</tr>
								<tr>
									<td class="last k1_tal">초과 시 kg당 2,000원</td>
								</tr>
							</tbody>
						</table>
					</div>

					<div class="k1_statue_area2 k1_mt10">
						<ul class="k1_statue_list2">
							<li>전항공사 유아 공통사항 - 접이식 유모차, 카시트(또는 요람) 각 1개</li>
							<li>대한항공/아시아나 소아 공통사항 - 성인과 동일 및 접이식 유모차, 카시트(또는 요람) 각 1개</li>
							<li>각 좌석등급별(할인석,비즈니스석) 수하물 정보는 상이할 수 있으니 자세한 사항은 항공사로 문의해
								주십시요.</li>
						</ul>
					</div>
				</div>
				<a href="" class="k1_btn_p_close1"
					onclick="javascript:$.uiUnblockByJq();return false;" title="닫기">닫기</a>
			</div>
		</div>

		<!-- //국내선 결제 전 주의사항 -->
		<!-- hjhong 20180409 기존소스 주석처리. 시작  -->
		<!-- <div id="domPayWarning" style="display: none;">
	<div class="k1_detail_pop k1_pt25" style="width:567px;">
		<p class="k1_blind">주의사항</p>
		<strong class="k1_ico_ex2">결제 전 주의사항</strong>
		<div class="cont_wrap2">
			<div id = "visaaddinfo">
			<ul class="k1_statue_list2">
				<li><span class="k1_bmpoint_05">즉시 결제하지 않으시면 예약이 자동취소됩니다.</span></li>
				<li><span class="k1_bmpoint_05">예약 후 이름/일정/인원/시간/항공사 변경이 불가하며 취소 후 재예약하셔야 합니다.</span></li>
				<li>취소 후 재예약 시 좌석이 없을 수도 있으니, 가는편과 오는편의 시간을 정확히 확인해주시기 바랍니다.</li>
				<li>결제는 모두 카드결제만 가능하며, 현금결제는 불가합니다.</li>
				<li><span class="k1_bmpoint_05">결제 후 결제카드 변경은 불가하며 취소 후 재예약하셔야 합니다.</span></li>
				<li><span class="k1_bmpoint_05">카드 할부개월수 변경은 당사를 통해서 불가하오니 해당 카드사로 요청 바랍니다.</span></li>
				<li>항공사의 주의사항을 꼭 확인해주시기 바랍니다.</li>
				<li>아시아나항공은 김포-부산, 부산-제주 이용시 에어부산과 공동운항됩니다.</li>
				<li>항공권 예매 후 항공사 사정 및 천재지변으로 인하여 지연 또는 결항될 수 있습니다.</li>
			</ul>
			</div>	
		</div>	
		<a href="javascript:$.uiUnblockByJq();" class="k1_btn_p_close2">닫기</a>
	</div>
</div> -->
		<!-- hjhong 20180409 기존소스 주석처리.끝  -->
		<!-- hjhong 20180409 디자인변경 소스 추가.시작  -->
		<div id="domPayWarning" style="display: none;">
			<div class="k1_mrt_pop_wrap" style="width: 575px;">
				<h4>결제 전 주의사항</h4>
				<div class="k1_mrt_pop_contents">
					<div class="k1_mrt_box_mild" id="visaaddinfo">
						<ul class="k1_mrt_guide">
							<li><span class="k1_bmpoint_05">즉시 결제하지 않으시면 예약이
									자동취소됩니다.</span></li>
							<li><span class="k1_bmpoint_05">예약 후 이름/일정/인원/시간/항공사
									변경이 불가하며 취소 후 재예약하셔야 합니다.</span></li>
							<li>취소 후 재예약 시 좌석이 없을 수도 있으니, 가는편과 오는편의 시간을 정확히 확인해주시기 바랍니다.</li>
							<li>결제는 모두 카드결제만 가능하며, 현금결제는 불가합니다.</li>
							<li><span class="k1_bmpoint_05">결제 후 결제카드 변경은 불가하며 취소
									후 재예약하셔야 합니다.</span></li>
							<li><span class="k1_bmpoint_05">카드 할부개월수 변경은 당사를 통해서
									불가하오니 해당 카드사로 요청 바랍니다.</span></li>
							<li>항공사의 주의사항을 꼭 확인해주시기 바랍니다.</li>
							<li>아시아나항공은 김포-부산, 부산-제주 이용시 에어부산과 공동운항됩니다.</li>
							<li>항공권 예매 후 항공사 사정 및 천재지변으로 인하여 지연 또는 결항될 수 있습니다.</li>
						</ul>
					</div>
					<a href="javascript:$.uiUnblockByJq();" class="close_pop">팝업창
						닫기</a>
				</div>
			</div>
		</div>
		<!-- hjhong 20180409 디자인변경 소스 추가.끝  -->
		<!-- //국내선 결제 전 주의사항 -->

		<!-- hjhong 20180409 기존소스 주석처리. 시작  -->
		<!-- <div id="air_apis_info" style="display: none">
	<div class="k1_detail_pop k1_pt25" style="width:465px;">
		<p class="k1_blind">주의사항</p>
		<strong class="k1_ico_ex2">주의!</strong>
		<div class="cont_wrap2">
			<span class="k1_arrow_dot2_3"></span>
			<span style="color: #ca2323; font-weight: bold;"> 중국동방항공,하문항공,홍콩항공 및 러시아항공(러시아 국내지역포함)</span>
			<p class="txt2">이용시 임의의 여권정보 입력 후 수정 시 비용이 발생될 수 있으니 정확한 정보를 입력해주세요.</p>
		</div>
		<div class="k1_popup_btn" style="padding: 10px 0 0 111px;">
			<button type="button" class="k1_btn_01" title="확인" onclick="javascript:airfn_apisinfochk_0100100020();return false;">확인</button>
			<button type="button" class="k1_btn_02" title="닫기" onclick="javascript:$.uiUnblockByJq();return false;">닫기</button>
		</div>
	</div>	
	<a href="" class="k1_btn_p_close1" onclick="javascript:$.uiUnblockByJq();return false;" title="닫기">닫기</a>	
</div> -->
		<!-- hjhong 20180409 기존소스 주석처리. 끝  -->
		<!-- hjhong 20180409 디자인변경 소스 추가.시작  -->
		<div id="air_apis_info" style="display: none;">
			<div class="k1_mrt_pop_wrap" style="width: 535px;">
				<h4>여권정보 수정불가 안내</h4>
				<div class="k1_mrt_pop_contents">
					<div class="k1_mrt_box_mild">
						<ul class="k1_mrt_guide">
							<li>여권정보 수정이 불가능한 항공사입니다. 정확한 여권 정보를 입력해주십시오.</li>
							<li><span class="clr01">여권정보 수정불가 항공사 : 중국동방항공,
									에어아스타나, 우크라이나항공.</span></li>
							<li><span class="clr01" style="color: #ca2323;">중국동방항공,하문항공,홍콩항공
									및 러시아항공(러시아 국내지역포함)</span> 이용시 임의의 여권정보 입력 후 수정 시 비용이 발생될 수 있으니 정확한
								정보를 입력해주세요.</li>
							<li></li>
						</ul>
					</div>
					<p class="k1_tar" style="margin-top: 20px;">
						<button type="button"
							class="k1_mrt_btn k1_mrt_btn_blue k1_mrt_btn_big" title="확인"
							onclick="javascript:airfn_apisinfochk_0100100020();return false;">확인</button>
						<button type="button" onclick="javascript:$.uiUnblockByJq();"
							class="k1_mrt_btn k1_mrt_btn_gray k1_mrt_btn_big">닫기</button>
					</p>
					<a href="javascript:$.uiUnblockByJq();" class="close_pop">팝업창
						닫기</a>
				</div>
			</div>
		</div>
		<!-- hjhong 20180409 디자인변경 소스 추가.끝  -->

		<!-- 인천공항 제2터미널 개장안내 팝업 -->
		<div id="air_icn2trmnl_noti" style="display: none;">
			<div class="k1_mrt_pop_wrap" style="width: 800px;">
				<h4>인천공항 이용 안내</h4>
				<div class="k1_mrt_pop_contents">
					<p class="k1_caution_guide_fnt16 k1_fl k1_mb20">인천공항 신청사(제2터미널)
						개장 안내</p>
					<ul class="k1_mrt_info k1_cb">
						<li>2018년 1월 18일부터 실제탑승이 대한항공, 델타항공, 에어프랑스항공, 네덜란드항공 출발, 도착인
							경우 제2터미널을 이용합니다.</li>
						<li>2018년 10월 28일부터 실제탑승이 가루다인도네시아항공, 아에로멕시코항공, 중화항공,알리탈리아항공,
							아에로플로트, 샤먼항공 출/도착인 경우 제2터미널을 이용합니다.</li>
						<li>공동운항 편 이용 시 실제 탑승하는 항공사의 터미널을 이용하셔야 합니다.</li>
						<li>혼선의 우려가 있으니 반드시 출발 3시간 전까지 공항에 도착하시기 바랍니다.</li>
						<li>체코항공은 11월 2일 OK191편부터 제2터미널로 이전 예정(10월 7일 OK190편 ~ 11월 1일
							OK191편 운휴)</li>
						<li>자세한 내용은 <a href="http://www.airport.kr/" target="_blank">http://www.airport.kr/</a>
							에서 확인 가능합니다.
						</li>


					</ul>
					<a href="javascript:$.uiUnblockByJq();" class="close_pop">닫기</a>
				</div>
			</div>
		</div>
		<!-- 인천공항 제2터미널 개장안내 팝업 -->

	</div>
	<script type="text/javascript" src="https://flights.myrealtrip.com/air/wfw/js/plugin/XSLTransform.js"></script>
	<script type="text/javascript"
		src="https://flights.myrealtrip.com/air/wfw/js/plugin/jquery-ui-1.8.24.custom.js"></script>
	<script type="text/javascript"
		src="https://flights.myrealtrip.com/air/js/mrtjs/plugin/jquery-ui-1.8.24.custom.js"></script>
	<script type="text/javascript"
		src="https://flights.myrealtrip.com/air/js/mrtjs/plugin/mixitup.min.js"></script>
	<script type="text/javascript"
		src="https://flights.myrealtrip.com/air/js/mrtjs/plugin/jquery-ui.multidatespicker.js"></script>
	<script type="text/javascript" src="https://flights.myrealtrip.com/air/js/mrtjs/plugin/swiper.min.js"></script>
	<script type="text/javascript"
		src="https://flights.myrealtrip.com/air/js/mrtjs/plugin/jquery.plugin.js"></script>
	<script type="text/javascript"
		src="https://flights.myrealtrip.com/air/js/mrtjs/plugin/jquery.datepick.min.js"></script>
	<script type="text/javascript"
		src="https://flights.myrealtrip.com/air/wfw/js/plugin/jquery.blockUI.js"></script>
	<script type="text/javascript"
		src="https://flights.myrealtrip.com/air/wfw/js/plugin/jquery.validate.js"></script>
	<script type="text/javascript"
		src="https://flights.myrealtrip.com/air/wfw/js/plugin/jquery.cookie.js"></script>
	<script type="text/javascript"
		src="https://flights.myrealtrip.com/air/wfw/js/plugin/jquery.columnmanager.min.js"></script>
	<script type="text/javascript" src="https://flights.myrealtrip.com/air/wfw/js/plugin/jquery.form.js"></script>
	<script type="text/javascript" src="https://flights.myrealtrip.com/air/wfw/js/lib/jquery.com.file.js"></script>
	<script type="text/javascript"
		src="https://flights.myrealtrip.com/air/wfw/js/plugin/jquery.browser.js"></script>
	<script type="text/javascript"
		src="https://flights.myrealtrip.com/air/wfw/js/lib/jquery.com.toxslt.js"></script>
	<script type="text/javascript"
		src="https://flights.myrealtrip.com/air/wfw/js/lib/jquery.com.datepicker.js"></script>
	<script type="text/javascript"
		src="https://flights.myrealtrip.com/air/wfw/js/lib/jquery.com.toxslt.js"></script>
	<script type="text/javascript" src="https://flights.myrealtrip.com/air/wfw/js/lib/jquery.com.util.js"></script>
	<script type="text/javascript"
		src="https://flights.myrealtrip.com/air/wfw/js/lib/jquery.com.table.js"></script>
	<script type="text/javascript" src="https://flights.myrealtrip.com/air/wfw/js/lib/jquery.com.form.js"></script>
	<script type="text/javascript" src="https://flights.myrealtrip.com/air/wfw/js/lib/jquery.com.js"></script>
	<script type="text/javascript" src="https://flights.myrealtrip.com/air/wfw/js/common.js"></script>
	<script type="text/javascript" src="https://flights.myrealtrip.com/air/js/AIR/AIR.js?20190522105320"></script>

	<script type="text/javascript"
		src="https://flights.myrealtrip.com/air/js/core/AIR/AAA/AIRAAA.js?20190522105320"></script>
	<script type="text/javascript"
		src="https://flights.myrealtrip.com/air/js/core/AIR/AAA/AIRAAALST.js?20190522105320"></script>
	<script type="text/javascript"
		src="https://flights.myrealtrip.com/air/js/AIR/AAA/AIRAAA.js?20190522105320"></script>
	<script type="text/javascript"
		src="https://flights.myrealtrip.com/air/js/AIR/AAA/AIRAAALST.js?20190522105320"></script>

	<script type="text/javascript"
		src="https://d32w679339tzui.cloudfront.net/static/js/main.js"></script>




	
	<div id="k1_calender"
		class="k1_calender_wrap ui-datepicker ui-widget-content ui-helper-clearfix"
		style="display: none;"></div>
	<div id="fb-root" class=" fb_reset">
		<div
			style="position: absolute; top: -10000px; width: 0px; height: 0px;">
			<div>
				<iframe name="fb_xdm_frame_https" frameborder="0"
					allowtransparency="true" allowfullscreen="true" scrolling="no"
					allow="encrypted-media" id="fb_xdm_frame_https" aria-hidden="true"
					title="Facebook Cross Domain Communication Frame" tabindex="-1"
					src="https://staticxx.facebook.com/connect/xd_arbiter.php?version=44#channel=f338c4778cfc40c&amp;origin=https%3A%2F%2Fflights.myrealtrip.com"
					style="border: none;"></iframe>
			</div>
			<div></div>
		</div>
	</div>
	<div class="ReactModalPortal"></div>
	<jsp:include page="/WEB-INF/layout/bottom.jsp"></jsp:include>
</body>
<noscript>
	<iframe src="https://www.googletagmanager.com/ns.html?id=GTM-NCVRS4"
		height="0" width="0" style="display: none; visibility: hidden"></iframe>
</noscript>
</html>