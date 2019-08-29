<%@page import="net.sf.json.JSONObject"%>
<%@page import="net.sf.json.JSONArray"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	JSONArray list = (JSONArray)request.getAttribute("list");
	
	int a_priceSum = 0;
	int a_priceFare = 0;
	int a_priceFuel = 0;
	int a_priceTax = 0;
	int a_pricecharge = 0;

	int c_priceSum = 0;
	int c_priceFare = 0;
	int c_priceFuel = 0;
	int c_priceTax = 0;
	int c_pricecharge = 0;

	int i_priceSum = 0;
	int i_priceFare = 0;
	int i_priceFuel = 0;
	int i_priceTax = 0;
	int i_pricecharge = 0;

	int c = Integer.parseInt(request.getParameter("child").equals("")?"0":request.getParameter("child"));
	int i = Integer.parseInt(request.getParameter("infant").equals("")?"0":request.getParameter("infant"));
	int a = Integer.parseInt(request.getParameter("adult").equals("")?"0":request.getParameter("adult"));

	for(int j = 0; j< list.size() ; j++){
		JSONObject obj = list.getJSONObject(j);
		a_priceSum += obj.getInt("a_sum");
		a_priceFare += obj.getInt("a_fare");
		a_priceFuel += obj.getInt("a_fuel");
		a_priceTax += obj.getInt("a_tax");
		a_pricecharge += obj.getInt("a_charge");
		
		if(c>0){
			c_priceSum += obj.getInt("c_sum");
			c_priceFare += obj.getInt("c_fare");
			c_priceFuel += obj.getInt("c_fuel");
			c_priceTax += obj.getInt("c_tax");
			c_pricecharge += obj.getInt("c_charge");
		}
		
		if(i>0){
			i_priceSum += obj.getInt("i_sum");
			i_priceFare += obj.getInt("i_fare");
			i_priceFuel += obj.getInt("i_fuel");
			i_priceTax += obj.getInt("i_tax");
			i_pricecharge += obj.getInt("i_charge");
		}
	}
%>
<!DOCTYPE html>
<html>
<head>
<title>현지 여행의 모든 것 :: 마이리얼트립</title>
<link rel="stylesheet"
	href="https://d32w679339tzui.cloudfront.net/static/css/main.css">
<link rel="stylesheet" type="text/css" href="https://flights.myrealtrip.com/air/css/mrt/airC.css">
<link rel="stylesheet" type="text/css"
	href="https://flights.myrealtrip.com/air/css/mrt/swiper/swiper.min.css">
	<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
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
#air_myp_bagginfo{
	position: absolute;
	z-index: 5555;
}
.mrt_tootip_wrap{
	position: relative;
}
#model_back {
	display: none;
	position: fixed;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
}
#model_back2 {
	display: none;
	position: fixed;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	z-index: 999;
}
input[type=number].k1_input_text {
    height: 48px;
    padding: 10px 12px;
    border: 1px solid #dee2e6;
    box-sizing: border-box;
    font-size: 14px;
    border-radius: 2px;
    color: #343a40;
    transition: all .08s ease-out;
}
input[type=number].k1_input_text:focus {
    border: 1px solid #51abf3 !important;
    box-shadow: inset 0 0 0 1px #51abf3;
}

.k1_pop_header {
    position: relative;
    height: 51px;
    line-height: 51px;
    background: #fff;
    padding: 0;
}
.k1_pop_header {
    height: 28px;
    padding: 6px 10px 8px;
    background: #777;
    color: #fff;
}
#k1_pop_wrap_2 {
    overflow: hidden;
    position: absolute;
    display: none;
    border: 2px solid #5e5e5e;
    z-index: 99999;
}

.k1_pop_header h1 {
    padding: 28px 32px 0;
    color: #343a40;
    padding-left: 24px;
    font-size: 18px;
    font-weight: bold;
    background: none;
}
.k1_pop_header h1 {
    padding-left: 20px;
    background: url(https://flights.myrealtrip.com/air/wfw/imgs/airB/common/bul_popup.gif) 0 0 no-repeat;
    font-weight: bold;
    font-size: 14px;
    line-height: 1em;
}
.k1_btn_p_close1 {
    position: absolute;
    display: inline-block;
    top: 6px;
    right: 12px;
    width: 13px;
    height: 13px;
    border: 0 none;
    background: url(https://flights.myrealtrip.com/air/wfw/imgs/airB/btn/btn_icon.png) no-repeat -48px -24px;
    font-size: 0;
    cursor: pointer;
    vertical-align: middle;
}
.k1_pop_contents {
    overflow-y: auto;
    padding: 10px;
    background: #fff;
}
.k1_pop_contents ul.test {
    width: 100%;
    margin-top: 16px;
}
.k1_agree_step{
	padding-bottom: 1px;
}
.k1_agree_step li{
	height: 47px!important;
}
</style>
<script>
function acrrCheck(a){
    var txtEle = $(a);
    for(var i = 0; i < txtEle.length; i ++){
        if("" == $(txtEle[i]).val() || null == $(txtEle[i]).val()){
            return false;  //비어있으면 false 반환
        }
    }
    return true;
}

function inputChaCheck(a){
    var txtEle = $(a);
    var pattern = /^[A-Za-z]$/g;
    for(var i = 0; i < txtEle.length; i ++){
        if(!pattern.test($(txtEle[i]).val())){
            return false;  //비어있으면 false 반환
        }
    }
    return true;
}

function gfn_onlyformat(e, pattern){
	// console.log($(e).val());
	var p = null;
	if(pattern == 'alphabet'){
		$(e).val($(e).val().replace(/[0-9]/g,''));
		$(e).val($(e).val().replace(/[ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/g,''));
		$(e).val($(e).val().toUpperCase());
	}else if(pattern == 'number'){
		$(e).val($(e).val().replace(/[a-zA-Z]/g,''));
		$(e).val($(e).val().replace(/[ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/g,''));
	}
}
$(document).ready(function() {
	$(".k1_agree_step > li").on("click", function(){
		var index = $(this).attr("id").substr(4, 1);
		if(index < 5){
			$(".k1_agree_step > li").removeClass("active");
			$(".ruledetail").css("display", "none");
			$("#ruledetail"+index).css("display", "block");
			$(this).addClass("active");
		}
	});
	
	$(".mrt_tootip_wrap").on("click", function(){
		$("#air_myp_bagginfo").css("top", $(this).offset().top + 20)
										 .css("left", $(this).offset().left - 390)
										 .css("display", "block");
		$("#model_back").fadeIn();
	});
	$(".close_baggage").on("click", function(){
		$("#air_myp_bagginfo").css("display", "none");
		$("#model_back").fadeOut();
	});
	var times = new Date();
	var microtimes = times.getMilliseconds();
	
	if("${param.initform}" == "OW"){
		$(".datearow").addClass("ico_itinerary_05");
	}else{
		$(".datearow").addClass("ico_itinerary_04");
	}
	$(".datearow").css("margin-left", "30px")
					    .css("margin-bottom", "5px");
	
	$("#rsvuseremail3").on("change", function(){
		console.log($("#rsvuseremail3 option:selected").val());
		if($("#rsvuseremail3 option:selected").val() == "직접입력"){
			$("#rsvuseremail2").val("")
										.prop("readonly", false);
			return;
		}
		$("#rsvuseremail1").val($("#rsvuseremail3 option:selected").val());
		$("#rsvuseremail2").val($("#rsvuseremail3 option:selected").val())
								    .prop("readonly", true);
	});
	
	$("#rule5").on("click", function(){
		// console.log($(this).offset().top);
		var left = ($(window).scrollLeft() + ($(window).width() - $("#k1_pop_wrap_2").width())/2);
		var top = ($(window).scrollTop() + ($(window).height() - $("#k1_pop_wrap_2").height())/2);
		$("#k1_pop_wrap_2").css("left", left)
									  .css("top", top)
								   	  .css("display", "block");
		$("#model_back2").fadeIn();
	});
	
	$(".k1_btn_p_close1").on("click", function(){
		event.preventDefault();
		$("#k1_pop_wrap_2").css("display", "none");
		$("#model_back2").fadeOut();
	});
	
	$(".submitBtn").on("click", function(){
		console.log(inputChaCheck($("input[name='inpaxfirstname']")));
		if($("#rsvusername").val() == ""){
			alert("예약자 성명을 입력해 주십시오");
			return;
		}else if($("#rsvuseremail1").val() == "" || $("#rsvuseremail2").val() == ""){
			alert("예약자 전자메일 주소를 정확히 입력해 주십시오");
			return;
		}else if($("#rsvusermphone1").val() == "" || $("#rsvusermphone2").val() == "" || $("#rsvusermphone3").val() == "" ){
			alert("예약자 전화번호를 정확히 입력해 주십시오");
			return;
		}else if($("input[type='radio']:checked").length < ${ param.adult + param.child + param.infant}){
			alert("탑승자 성별을 정확히 입력해 주십시오");
			return;
		}else if(!acrrCheck($("input[name='inpaxlastname']")) || !acrrCheck($("input[name='inpaxfirstname']"))){
			alert("탑승자 영문 성함을 정확히 입력해 주십시오");
			return;
		}else if(!acrrCheck($("input[name='birthYear']")) || !acrrCheck($("select[name='birthMonth'] option:selected")) || !acrrCheck($("select[name='birthDay'] option:selected"))){
			alert("탑승자 생년월일을 정확히 입력해 주십시오");
			return;
		}
		
		console.log($("#reserveform").serialize());
		$("#reserveform").submit();
	});
	
	$("#rsvusermphone").on("change", function(){
		if($("#rsvusermphone option:selected").val() == "000"){
			$("#rsvusermphone1").css("display", "inline");
		}else{
			$("#rsvusermphone1").css("display", "none");
		}
	});
	
	$(".ico_checkbox").on("click", function(){
		var checkbox = $("#"+$(this).parent().attr("for"));
		if(!checkbox.prop("checked")){
			// ruledetail1
			// chkagree1
			var index = checkbox.attr("id").substr(8, 1);
			if(index != 2 && index < 4){
				$("#ruledetail"+index).css("display", "none");
				$("#rule"+index).removeClass("active");
				index = Number(index)+1;
				if(index <= 4) {
					$("#ruledetail"+index).css("display", "block");
					$("#rule"+index).addClass("active");
				}
			}else if(index == 2){
				if($("#chkbagginfo").prop("checked")){
					$("#ruledetail"+index).css("display", "none");
					console.log(Number(index)+1);
					$("#rule"+index).removeClass("active");
					index = Number(index)+1;
					$("#ruledetail"+index).css("display", "block");
					$("#rule"+index).addClass("active");
				}
			}
			
		}
	});
	
	$("#chkbagginfo").on("click", function(){
		if($("#chkagree2").prop("checked")){
			$("#ruledetail2").css("display", "none");
			$("#rule2").removeClass("active");
			$("#ruledetail3").css("display", "block");
			$("#rule3").addClass("active");
		}
	});

});
// document ready 끝
</script>
</head>

<body>
<jsp:include page="/WEB-INF/layout/top2.jsp"></jsp:include>
	<script type="text/javascript">          

var user = "";
var headerTarget = "";
var transparent = "";
</script>
	<div id="ki_wrap">
		<div id="k1_container">
			<div id="k1_content" style="background-color: rgb(255, 255, 255);">




<style>
.mrt_radio_full:first-child label {
	border-radius: 2px 0 0 2px;
	border-right: 1px solid #dee2e6
}

.mrt_radio_full:last-child label {
	margin-left: 8px;
	border-radius: 0 2px 2px 0;
	border-left: 1px solid #dee2e6;
}

.mrt_radio_full:first-child label:hover {
	border: 1px solid #848c94;
}

.mrt_radio_full:last-child label:hover {
	border: 1px solid #848c94
}
.mrt_condi_box .k1_h_tit2{
	height: 34px!important;
}
</style>
				<div class="mrt_con_section mrt_reserve_wrap">
					<div id="k1_air_select">
						<!-- leftarea -->
						<div class="mrt_reserve_left">

							<div class="mrt_reserve_view" role="head_reserve">
								<table>
									<caption>예약 항공권</caption>
									<colgroup>
										<col style="">
										<col style="width: 104px">
										<col style="width: 78px">
										<col style="width: 124px">
										<col style="width: 54px">
									</colgroup>
									<tbody>
										<tr>
											<td class="reserve_airline">
												<p class="airline">
													<span class="kr" id="debCtyNm">${ list[0].dept_name }</span> <span class="en"
														id="debCtyCd">${ list[0].ap_code }</span>
												</p>
												<p class="date">

													<span class="datearow">여행일정</span>
													<!-- 왕복일 경우  ico_itinerary_04 편도일 경우 ico_itinerary_05-->

													<span class="day" id="debtArrDay">${fn:substring(list[0].ft_deptime,5,7)}월${fn:substring(list[0].ft_deptime,8,10)}일 - ${fn:substring(list[0].ft_arrtime,5,7)}월${fn:substring(list[0].ft_arrtime,8,10)}일</span>
												</p>
												<p class="airline">
													<span class="kr" id="arrCtyNm">${ list[0].arr_name }</span> <span class="en"
														id="arrCtyCd">${ list[0].ap_code2 }</span>
												</p>
											</td>
											<td class="airline_info">
												<p class="ico_airline" id="airCd">
													<img src="${ list[0].fa_logo }" alt="${ list[0].fa_name }">
												</p>
												<p class="airline_name" id="airNm">${ list[0].fa_name }</p>
											</td>
											<td>
												<p class="k1_h_tit_sub">운항종류</p>
												<p id="initFormNm">
												<c:if test="${param.initform eq 'OW' }">편도</c:if>
												<c:if test="${param.initform eq 'RT' }">왕복</c:if>
												<c:if test="${param.initform eq 'MT' }">다구간</c:if>
												</p>
											</td>
											<td>
												<p class="k1_h_tit_sub">좌석등급</p>
												<p id="cabinClassnm">${ param.seatLevel }</p>
											</td>
											<td>
												<p class="k1_h_tit_sub ">승객</p>
												<p id="paxCount">${param.adult+param.child+param.infant }명</p>
											</td>
										</tr>
									</tbody>
								</table>
							</div>

							<div class="mrt_basic_view" id="grdScheduleInfoList">
								<table xmlns="http://www.w3.org/1999/xhtml">
									<caption>스케쥴</caption>
									<colgroup>
										<col style="width: 10%;">
										<col style="width: 20%;">
										<col>
										<col style="width: 12%;">
										<col style="width: 12%;">
										<col style="width: 12%;">
										<col style="width: 9%;">
									</colgroup>
									<thead>
										<tr>
											<th colspan="2" class="k1_tac">항공편</th>
											<th>여정</th>
											<th>출발</th>
											<th>도착</th>
											<th>좌석</th>
											<th class="k1_tac">수하물</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach items="${ list }" var="dto" varStatus="status">
											<c:if test="${ not empty dto.vap_code }"> <!-- 경유지 있는 경우 -->
											<tr>
												<c:if test="${ param.initform eq 'MT' }">
													<td class="bold" rowspan="2">여정${ status.index+1 }</td>
												</c:if>
												<c:if test="${ param.initform ne 'MT' }">
													<c:if test="${ status.index eq 0 }">
													<td class="bold" rowspan="2">가는날</td>
												</c:if>
												<c:if test="${ status.index eq 1 }">
													<td class="bold" rowspan="2">오는날</td>
												</c:if>
												</c:if>
												
												<td>${ dto.ft_apcode }편
												<button class="btn_label mrt_btn_white" title="비행상세보기 팝업">상세</button>
												</td>
												<td>${ dto.dept_name } - ${ dto.vap_name }</td>
												<fmt:parseDate value="${dto.ft_deptime}" var="eduFromDate" pattern="yyyy/MM/dd HH:mm"/>
												<td>${fn:substring(dto.ft_deptime,5,7)}월 ${fn:substring(dto.ft_deptime,8,10)}일 (<fmt:formatDate value="${eduFromDate}" pattern="E"/>)<br>
												${fn:substring(dto.ft_deptime,11,16)}
											</td>
											<fmt:parseDate value="${dto.v_arrtime}" var="eduFromDate" pattern="yyyy/MM/dd HH:mm"/>
											<td>${fn:substring(dto.v_arrtime,5,7)}월 ${fn:substring(dto.v_arrtime,8,10)}일 (<fmt:formatDate value="${eduFromDate}" pattern="E"/>)<br>
											${fn:substring(dto.v_arrtime,11,16)}&nbsp;
											</td>
											<td>${ param.seatLevel }<br>${ param.adult + param.child + param.infant }석</td>
											<td>${fn:substring(dto.baggage,7,8)}PC <a href="javascript:void(0);" class="mrt_tootip_wrap"><span
													class="ico_info"></span><span class="txt_wrap"><span
														class="txt"></span></span></a>
											</td>
											</tr>
											<tr>
												<td>${ dto.vft_code }편
												<button class="btn_label mrt_btn_white" title="비행상세보기 팝업">상세</button>
												</td>
												<td>${ dto.vap_name } - ${ dto.arr_name }</td>
												<fmt:parseDate value="${dto.v_deptime}" var="eduFromDate" pattern="yyyy/MM/dd HH:mm"/>
												<td>${fn:substring(dto.v_deptime,5,7)}월 ${fn:substring(dto.v_deptime,8,10)}일 (<fmt:formatDate value="${eduFromDate}" pattern="E"/>)<br>
												${fn:substring(dto.v_deptime,11,16)}
											</td>
											<fmt:parseDate value="${dto.ft_arrtime}" var="eduFromDate" pattern="yyyy/MM/dd HH:mm"/>
											<td>${fn:substring(dto.ft_arrtime,5,7)}월 ${fn:substring(dto.ft_arrtime,8,10)}일 (<fmt:formatDate value="${eduFromDate}" pattern="E"/>)<br>
											${fn:substring(dto.ft_arrtime,11,16)}&nbsp;
											</td>
											<td>${ param.seatLevel }<br>${ param.adult + param.child + param.infant }석</td>
											<td>${fn:substring(dto.baggage,7,8)}PC <a href="javascript:void(0);" class="mrt_tootip_wrap"><span
													class="ico_info"></span><span class="txt_wrap"><span
														class="txt"></span></span></a>
											</td>
											</tr>
											</c:if>
											<c:if test="${ empty dto.vap_code}"> <!-- 경유지 없는 경우 -->
												<c:if test="${ param.initform eq 'MT' }">
													<td class="bold">여정${ status.index+1 }</td>
												</c:if>
												<c:if test="${ param.initform ne 'MT' }">
													<c:if test="${ status.index eq 0 }">
													<td class="bold">가는날</td>
												</c:if>
												<c:if test="${ status.index eq 1 }">
													<td class="bold">오는날</td>
												</c:if>
												</c:if>
												<td>${ dto.ft_apcode }편
												<button class="btn_label mrt_btn_white" title="비행상세보기 팝업">상세</button>
												</td>
												<td>${ dto.dept_name } - ${ dto.arr_name }</td>
												<fmt:parseDate value="${dto.ft_deptime}" var="eduFromDate" pattern="yyyy/MM/dd HH:mm"/>
												<td>${fn:substring(dto.ft_deptime,5,7)}월 ${fn:substring(dto.ft_deptime,8,10)}일 (<fmt:formatDate value="${eduFromDate}" pattern="E"/>)<br>
												${fn:substring(dto.ft_deptime,11,16)}
											</td>
											<fmt:parseDate value="${dto.ft_arrtime}" var="eduFromDate" pattern="yyyy/MM/dd HH:mm"/>
											<td>${fn:substring(dto.ft_arrtime,5,7)}월 ${fn:substring(dto.ft_arrtime,8,10)}일 (<fmt:formatDate value="${eduFromDate}" pattern="E"/>)<br>
											${fn:substring(dto.ft_arrtime,11,16)}&nbsp;
											</td>
											<td>${ param.seatLevel }<br>${ param.adult + param.child + param.infant }석</td>
											<td>${fn:substring(dto.baggage,7,8)}PC <a href="javascript:void(0)" class="mrt_tootip_wrap"><span
													class="ico_info"></span><span class="txt_wrap"><span
														class="txt"></span></span></a>
											</td>
											</c:if>
										</c:forEach>
									</tbody>
								</table>
							</div>

							<!-- 규정 -->
							<div class="mrt_regulation k1_mt16" id="codesharebox">
								<ul>
									<li>규정에 따라 탑승 수속 마감시간이 상이할 수 있으니 반드시 확인 바랍니다.</li>
									<li>대기예약시 모든 여정이 확약되어야만, 항공권 구매가 가능합니다. 미확약시 이용이 불가능합니다.</li>
								</ul>
							</div>
							<!-- //규정 -->
							<!-- 예약자 정보 --> <!-- 폼 태그 -->
							<form id="reserveform" name="reserveform" method="post" action="<%= request.getContextPath() %>/flights/booking.do" >
							<input type="hidden" value="${ param.codes }" name="codes"/>
							<input type="hidden" value="${ param.seatLevel }" name="seatLevel"/>
							<div class="info_from mrt_user_info">
								<h3 class="k1_h_tit1 k1_mt20">예약자 정보</h3>
								<div class="mrt_user">

									<div class="user_name">
										<label for="rsvusername" class="k1_h_tit3">예약자 이름</label> <input
											class="k1_input_text" id="rsvusername" name="rsvusername"
											onkeyup="gfn_onlyformat(this, 'notspec'); gfn_chkmaxlength(this, 20, false)"
											type="text" placeholder="홍길동" value="${ authUser.member_name }">
									</div>

									<div class="user_email k1_mt24">
										<label for="rsvuseremail1" class="k1_h_tit3">이메일 주소</label>
										<!-- 표준 -->
										<input class="k1_input_text" id="rsvuseremail1"
											name="rsvuseremail1" style="ime-mode: disabled"
											type="text" title="이메일아이디입력" value="${ authUser.emailPre() }"> @
										<input class="k1_input_text" id="rsvuseremail2" name="rsvuseremail2"
											style="ime-mode: disabled"
											type="text" title="이메일주소입력" value="${ authUser.emailSub() }"> <label
											for="rsvuseremail3" style="display: none;"></label> <select
											class="mrt_select_sort" id="rsvuseremail3"
											name="rsvuseremail3" title="이메일 직접입력">
											<option value="직접입력" selected="">직접입력</option>
											<option value="hanmail.net">hanmail.net</option>
											<option value="naver.com">naver.com</option>
											<option value="nate.com">nate.com</option>
											<option value="gmail.com">gmail.com</option>
										</select>

										<!-- mrt 디자인 -->
										<!-- <input id="" type="text" title="이메일주소" placeholder="" class="k1_input_text"> -->
										<p class="k1_h_tit_sub">입력한 이메일 주소로 예약 확정 이메일을 발송합니다.</p>
									</div>

									<div class="user_phone k1_mt24">
										<label for="rsvusermphone" class="k1_h_tit3">휴대전화 번호</label> <select
											class="mrt_select_sort" id="rsvusermphone" title="핸드폰번호 선택"><option
												value="010">010</option>
											<option value="011">011</option>
											<option value="016">016</option>
											<option value="017">017</option>
											<option value="018">018</option>
											<option value="019">019</option>
											<option value="000">기타</option></select>
										<!-- 표준 --><input
											class="k1_input_text" id="rsvusermphone1"
											name="rsvusermphone1" type="text"
											title="핸드폰 번호 입력" style="display: none;" maxlength="4"
											value="010"> <label for="rsvusermphone2"
											style="display: none;"></label> <input class="k1_input_text"
											id="rsvusermphone2" name="rsvusermphone2" type="text"
											title="핸드폰 번호 앞자리" maxlength="4" value=""> <label
											for="rsvusermphone3" style="display: none;"></label> <input
											class="k1_input_text" id="rsvusermphone3"
											name="rsvusermphone3" type="text"
											title="핸드폰 번호 뒷자리" maxlength="4" value="">

										<p class="k1_h_tit_sub">예약에 문제가 있을 경우 입력하신 번호로 연락드립니다.</p>
									</div>

									
								</div>
							</div>
					
							<!-- 규정 -->
							<div class="k1_mt16" id="paxinfo">
								<div class="k1_option_box1">
									<ul class="k1_statue_list2">
										<li class="k1_cpoint2">탑승객의 영문이름과 생년월일은 여권과 반드시 동일해야 합니다.
											(영문이름은 특수문자 및 공백 제외한 영문만 입력 가능합니다)<br> 예약완료 후 잘못된 정보 입력
											시에는 수정이 불가하며, 출국하실 수 없습니다.
										</li>
										<li>소아는 출발일 기준 만 2세이상~만12세미만, 유아는 출발일로부터 만2세 미만입니다.</li>
										<li>귀국일 기준으로 만12세 이상인 소아와 만2세가 넘는 유아는 추가 차액 발생하므로
											항공예약상담으로 문의 바랍니다.</li>
										<li>보호자 없이 혼자 여행하는 만12세~18세 미만 청소년의 경우 운송항공사 규정에 따라 탑승이
											제한될 수 있습니다.</li>
									</ul>
								</div>
							</div>
							<!-- //규정 -->

							<!-- 국제선 탑승객 정보 -->
							<div class="info_from mrt_pass_info" id="airPassengerTable">
								<h3 class="k1_h_tit1 k1_mt20">탑승객 정보</h3>

								<c:forEach begin="1" end="${ param.adult + param.child + param.infant  }" step="1" var="i">
								<div class="mrt_user">
									<h3 class="pass">탑승객 ${ i } : 
										<c:choose>
											<c:when test="${ param.adult >= i }">성인
											<input type="hidden" value="성인" name="FT_PSTYPE"/>
											</c:when>
											<c:when test="${ (param.adult + param.child) >= i }">소아
											<input type="hidden" value="소아" name="FT_PSTYPE"/>
											</c:when>
											<c:when test="${ (param.adult + param.child + param.infant) >= i }">유아
											<input type="hidden" value="유아" name="FT_PSTYPE"/>
											</c:when>
										</c:choose>
									</h3>
									<!-- 이름 -->
									<div class="user_name k1_clearfix">
										<div class="first">
											<label for="inpaxlastname${ i }" class="k1_h_tit3" title="영문 성">영문
												성</label> <input name="inpaxlastname" id="inpaxlastname${ i }"
												type="text" placeholder="예) HONG" title="영문성" onkeyup="gfn_onlyformat(this,'alphabet');"
												class="k1_input_text" style="ime-mode: disabled">
										</div>
										<div class="last">
											<label for="inpaxfirstname${ i }" class="k1_h_tit3">영문 이름</label>
											<input name="inpaxfirstname" id="inpaxfirstname${ i }" type="text"
												placeholder="예) GILDONG" title="영문이름" class="k1_input_text"
												style="ime-mode: disabled" onkeyup="gfn_onlyformat(this,'alphabet');">
											<input type="hidden" id="passengername1" value="">
										</div>
										<p class="k1_h_tit_sub">예약 후 변경이 불가능 하오니 영문 성함을 정확히 입력
											바랍니다.</p>
									</div>
									<!-- //이름 -->

									<!-- 성별 -->
									<div class="user_sex k1_mt24 k1_clearfix" role="passSex">
										<label for="" class="k1_h_tit3">성별</label>
										<div class="k1_clearfix">
											<span class="mrt_radio_full k1_fl"><input type="radio" class="genderRadio"
												name="inpaxsex_NM${ i }" id="inpaxsex${ i }_M" value="M" title="남성"><label
												for="inpaxsex${ i }_M">남성</label></span> <span
												class="mrt_radio_full k1_fl"><input type="radio" class="genderRadio"
												name="inpaxsex_NM${ i }" id="inpaxsex${ i }_F" value="F" title="여성"><label
												for="inpaxsex${ i }_F">여성</label></span>
										</div>
									</div>
									<!-- //성별 -->

									<!-- 생년월일 -->
									<div class="user_birth k1_mt24 k1_clearfix" role="passInfo">
										<label for="" class="k1_h_tit3">생년월일</label> <input id=""
											type="text" placeholder="예) 2018" title="생년월일 년도"
											class="k1_input_text" role="birthYear" onkeyup="gfn_onlyformat(this,'number');"
											style="ime-mode: disabled;" maxlength="4" name="birthYear"> <select
											class="mrt_select_sort" title="생년월일 월" role="birthMonth" name="birthMonth"><option
												value="" selected="">월</option>
											<option value="01">01</option>
											<option value="02">02</option>
											<option value="03">03</option>
											<option value="04">04</option>
											<option value="05">05</option>
											<option value="06">06</option>
											<option value="07">07</option>
											<option value="08">08</option>
											<option value="09">09</option>
											<option value="10">10</option>
											<option value="11">11</option>
											<option value="12">12</option></select> <select
											class="mrt_select_sort" title="생년월일 일" role="birthDay" name="birthDay"><option
												value="" selected="">일</option>
											<option value="01">01</option>
											<option value="02">02</option>
											<option value="03">03</option>
											<option value="04">04</option>
											<option value="05">05</option>
											<option value="06">06</option>
											<option value="07">07</option>
											<option value="08">08</option>
											<option value="09">09</option>
											<option value="10">10</option>
											<option value="11">11</option>
											<option value="12">12</option>
											<option value="13">13</option>
											<option value="14">14</option>
											<option value="15">15</option>
											<option value="16">16</option>
											<option value="17">17</option>
											<option value="18">18</option>
											<option value="19">19</option>
											<option value="20">20</option>
											<option value="21">21</option>
											<option value="22">22</option>
											<option value="23">23</option>
											<option value="24">24</option>
											<option value="25">25</option>
											<option value="26">26</option>
											<option value="27">27</option>
											<option value="28">28</option>
											<option value="29">29</option>
											<option value="30">30</option>
											<option value="31">31</option></select> 

									</div>
									<!-- //생년월일 -->
								</div>
								</c:forEach>
<!-- mrt_user 끝 -->



							</div>
							<!-- //국제선 탑승객 정보 -->
							</form>

							<!-- 항공예약유의사항동의 -->
							<div class="k1_agree info_from">
								<h3 class="k1_h_tit1 k1_mt20">예약 유의사항 동의</h3>
								<ul class="k1_agree_step">
									<li id="rule1" class="active"><span
										id="generalruletit">예약규정</span></li>
									<li id="rule2" class=""><span>운임규정</span></li>
									<li id="rule3" class=""><span id="refundruletit">결제규정</span></li>
									<li id="rule4" class=""><span id="paymentruletit">환불규정</span></li>
									<li id="rule5" >수하물정보</li>
								</ul>
								<h4 class="k1_blind">
									<span id="generalruletit1">예약규정</span>약관
								</h4>
								<fieldset id="ruledetail1" class="ruledetail">
									<legend>
										<span id="generalruletit2">예약규정</span>약관
									</legend>
									<div id="generalrule" class="k1_agreebox"
										style="word-wrap: break-word;">
										<b><font color="#2b96ed">▶취급 수수료 : 1인당 1만원(성인/소아/유아
												동일)</font></b><br>마이리얼트립을 통해 예약/발권/일정변경/영문변경/환불 시에는 운임규정과 별도로 여행사
										취급 수수료가 매회 발생되며, 취급 수수료는 환불이 불가합니다.<br>
										<br>
										<b><font color="#2b96ed">▶운임규정 - </font></b>결제 요청 전에 반드시 항공사
										운임규정을 확인 바랍니다. 규정 확인이 어려우신 경우 고객센터를 통해 문의 바랍니다.<br>
										<br>
										<b><font color="#2b96ed">▶영문명 - </font></b>여권 상의 영문 성함과 다른 경우
										탑승이 불가하며, 예약 완료 후에는 영문명 변경이 불가합니다. 동일 발음의 영문 변경을 허용하는 항공사인 경우,
										취급 수수료가 발생됩니다. (항공권 양도 불가)<br>
										<br>
										<b><font color="#2b96ed">▶기타 서비스 - </font></b>자리지정/기내식/아기바구니/휠체어/항공사마일리지적립
										등 확정된 사항이 아니며, 이용하시는 항공사 콜센터를 통해 신청 바랍니다. <br>
										<br>
										<b><font color="#2b96ed">▶수하물 - </font></b>예약 내역에서 무료 수하물 확인
										바랍니다. 수하물 추가는 해당 항공사를 통해 신청 바랍니다.<br>
										<br>
										<b><font color="#2b96ed">▶예약변경 - </font></b>예약 후 일정/시간/경유지/목적지
										변경 시 항공요금 변동되거나, 변경이 불가할 수 있으니, 운임규정을 확인 바랍니다.<br>
										<br>
										<b><font color="#2b96ed">▶미확정 운임 - </font></b>항공사의 판매금액이 미확정된
										예약으로 요금 확정시 요금이 인상되거나, 확정 불가한 예약은 SMS 안내 후 취소됩니다.<br>
										<br>
										<b><font color="#2b96ed">▶여권 및 비자 - </font></b>여권의 유효기간이 6개월
										미만인 경우 출국이 제한될 수 있습니다. 여행하시는 나라(경유지 포함)의 대사관, 영사관, 출입국사무소 등을
										통해 입국 요건(비자 유/무)을 미리 확인하시기 바랍니다. 출국 불가, 입국 거부 등으로 발생되는 비용, 환불에
										대해 당사는 책임지지 않습니다. <br>
										<br>
										<b><font color="#2b96ed">▶중복예약 - </font></b>동일 항공사로 같은 일정 예약 시
										중복 예약으로 간주되어 별도의 사전 연락 없이 항공사에서 임의로 취소할 수 있으며, 그로 인한 불이익 발생 시
										당사에서는 책임지지 않습니다.<br>
										<br>
										<b><font color="#2b96ed">▶마일리지이용/적립 - </font></b>마일리지 이용은
										이용하시는 항공사를 통해 문의 바랍니다. 마일리지를 통한 좌석 승급은 당사 고객센터로 문의 부탁드립니다.
										마일리지 적립은 "마일리지 등록" 버튼을 통하여 입력 또는 수속 시에 항공사로 요청하셔야 합니다. 적립률 또는
										적립 여부는 이용하시는 항공사를 통해 확인 바랍니다.<br>
										<br>
										<b><font color="#2b96ed">▶어린이의 여행 - </font></b>혼자 여행하는 어린이(만
										12세~18세)는 탑승 항공사에 별도의 서비스를 신청해야 하며, 추가 비용이 발생되므로 고객센터를 통해 상담 후
										예약하여 주시기 바랍니다. 항공사별로 규정이 상이할 수 있으며, 목적지 국가의 입국이 거절될 수 있습니다.<br>
										<br>
										<b><font color="#2b96ed">▶결제시한 - </font></b>예약 완료 후 결제 시한을 확인
										바랍니다. 당사의 결제시한은 항공사 결제시한과 상이할 수 있으며, 사전 통보 없이 변경될 수 있습니다. <br>
										<br>
										<b><font color="#2b96ed">▶고객 센터</font></b><br>항공권 문의 전화번호
										<b><font size="5,-2">1670-8208</font> (내선 2번)</b><br>365일
										09:00-18:00 연중무휴, 점심시간 12:00-13:00 ※단, 변경 및 환불은 09:00-17:00까지
										접수 가능합니다.
									</div>
									<div class="k1_agree_check">
										<ul>
											<li>
												<div class="mrt_check_wrap">
													<input id="chkagree1" type="checkbox">
													<label for="chkagree1"><span class="ico_checkbox"></span><span
														id="generalruletit3">예약규정</span>을 읽었으며, 내용에 동의합니다.</label>
												</div>
											</li>
										</ul>
									</div>
								</fieldset>
								<h4 class="k1_blind">운임규정약관</h4>
								<fieldset id="ruledetail2" style="display: none;" class="ruledetail">
									<legend>운임규정약관</legend>
									<div id="fareruleinfotab" class="k1_agreebox">
										<div xmlns="http://www.w3.org/1999/xhtml"
											class="k1_option_box1 k1_mb10" style="margin-top: 0px;">
											<dl>
												<dd>아래 운임규정은 1인 기준으로 적용되는 규정입니다.</dd>
											</dl>
										</div>
										<table xmlns="http://www.w3.org/1999/xhtml"
											class="k1_tbl k1_tbl_form" style="margin-top: -1px;">
											<caption>운임규정</caption>
											<colgroup>
												<col style="width: 30%;">
												<col style="width: 85%;">
											</colgroup>
											<tbody class="tal">
												<input type="hidden" name="contents" class="cont"
													id="tempContents_1" value="성인">
												<tr>
													<th scope="row">적용대상</th>
													<td class="last" id="contents_1">성인</td>
												</tr>
												<input type="hidden" name="contents" class="cont"
													id="tempContents_2" value="매일">
												<tr>
													<th scope="row">출국요일</th>
													<td class="last" id="contents_2">매일</td>
												</tr>
												<input type="hidden" name="contents" class="cont"
													id="tempContents_3" value="매일">
												<tr>
													<th scope="row">귀국요일</th>
													<td class="last" id="contents_3">매일</td>
												</tr>
												<input type="hidden" name="contents" class="cont"
													id="tempContents_4" value="제한없음">
												<tr>
													<th scope="row">최소체류일</th>
													<td class="last" id="contents_4">제한없음</td>
												</tr>
												<input type="hidden" name="contents" class="cont"
													id="tempContents_5" value="여행사로 확인 요망">
												<tr>
													<th scope="row">최대체류일</th>
													<td class="last" id="contents_5">여행사로 확인 요망</td>
												</tr>
												<input type="hidden" name="contents" class="cont"
													id="tempContents_6"
													value="<B><font color='Red'>[하기 날짜 출국 시 50,000원 추가 징수]<BR/>
- 2019년 09월 11일~13일<BR/>
- 2020년 01월 23일~24일<BR/>
- 2020년 04월 30일~05월 02일<BR/>
※편도 운임 동일하게 50,000원 징수<BR/>
[캐나다 노선 추가 SURCHARGE]<BR/>- CANADA NAVIGATION CHARGE : 편도당 15CAD 징수<BR/>
※유/소아 할인 불가. 성인과 동일 적용</font></B>">
												<tr>
													<th scope="row">SURCHARGE</th>
													<td class="last" id="contents_6"><b><font
															color="Red">[하기 날짜 출국 시 50,000원 추가 징수]<br> -
																2019년 09월 11일~13일<br> - 2020년 01월 23일~24일<br>
																- 2020년 04월 30일~05월 02일<br> ※편도 운임 동일하게 50,000원 징수<br>
																[캐나다 노선 추가 SURCHARGE]<br>- CANADA NAVIGATION CHARGE
																: 편도당 15CAD 징수<br> ※유/소아 할인 불가. 성인과 동일 적용
														</font></b></td>
												</tr>
												<input type="hidden" name="contents" class="cont"
													id="tempContents_7"
													value="만2세 미만(좌석 미점유) 성인판매가의 10% <BR/>[항공사 및 운항 항공편에 따라 유아 나이의 적용 기준이 달라질 수 있습니다. 출발 당시&nbsp;유아 운임 적용 가능하더라도 여행 도중 24개월 이상이 되는 경우, 유아 운임 적용 불가할 수 있으며 유아 항공권을 소지하더라도 운항 항공편에&nbsp;따라 탑승이 거절되거나 추가 비용 발생 등 항공권 사용에 문제가 될 수 있으니 구매 전 반드시 확인하시기 바랍니다.]">
												<tr>
													<th scope="row">유아요금</th>
													<td class="last" id="contents_7">만2세 미만(좌석 미점유) 성인판매가의
														10% <br>[항공사 및 운항 항공편에 따라 유아 나이의 적용 기준이 달라질 수 있습니다.
														출발 당시&nbsp;유아 운임 적용 가능하더라도 여행 도중 24개월 이상이 되는 경우, 유아 운임 적용
														불가할 수 있으며 유아 항공권을 소지하더라도 운항 항공편에&nbsp;따라 탑승이 거절되거나 추가 비용
														발생 등 항공권 사용에 문제가 될 수 있으니 구매 전 반드시 확인하시기 바랍니다.]
													</td>
												</tr>
												<input type="hidden" name="contents" class="cont"
													id="tempContents_8"
													value="만2세이상 만12세미만(성인 동반) 성인판매가의 75%<BR/>[항공사 및 운항 항공편에 따라 소아 나이의 적용 기준이 달라질 수 있습니다. 출발 당시 소아 운임 적용 가능하더라도 여행 도중 만 12세 이상이 되는 경우, 소아 운임 적용 불가할 수 있으며 소아 항공권을 소지하더라도 운항&nbsp;항공편에 따라 탑승이 거절되거나 추가 비용 발생 등 항공권 사용에 문제가 될 수 있으니 구매 전 반드시 확인하시기 바랍니다.]">
												<tr>
													<th scope="row">소아요금</th>
													<td class="last" id="contents_8">만2세이상 만12세미만(성인 동반)
														성인판매가의 75%<br>[항공사 및 운항 항공편에 따라 소아 나이의 적용 기준이 달라질 수
														있습니다. 출발 당시 소아 운임 적용 가능하더라도 여행 도중 만 12세 이상이 되는 경우, 소아 운임
														적용 불가할 수 있으며 소아 항공권을 소지하더라도 운항&nbsp;항공편에 따라 탑승이 거절되거나 추가
														비용 발생 등 항공권 사용에 문제가 될 수 있으니 구매 전 반드시 확인하시기 바랍니다.]
													</td>
												</tr>
												<input type="hidden" name="contents" class="cont"
													id="tempContents_9"
													value="<font color='Blue'>출/귀국 예약 변경 가능<BR/>1) 출발 예약 변경 : 항공권 재발행 필수 / 재발행시 수수료&nbsp;</font><B><font color='Blue'>150,000원</font></B><font color='Blue'> 징수<BR/>2) 귀국 예약 변경 : 항공권 유효기간내에 변경 가능 / 재발행시 수수료</font><B><font color='Blue'> 150,000원</font></B><font color='Blue'> 징수<BR/>3) 예약 변경시 시즌 및 운임이 변경되는 경우&nbsp;</font><B><font color='Blue'>운임 차액</font></B><font color='Blue'> 및 재발행 수수료&nbsp;</font><B><font color='Blue'>150,000원</font></B><font color='Blue'> 징수</font>">
												<tr>
													<th scope="row">항공사 수수료- 예약변경</th>
													<td class="last" id="contents_9"><font color="Blue">출/귀국
															예약 변경 가능<br>1) 출발 예약 변경 : 항공권 재발행 필수 / 재발행시
															수수료&nbsp;
													</font><b><font color="Blue">150,000원</font></b><font color="Blue">
															징수<br>2) 귀국 예약 변경 : 항공권 유효기간내에 변경 가능 / 재발행시 수수료
													</font><b><font color="Blue"> 150,000원</font></b><font
														color="Blue"> 징수<br>3) 예약 변경시 시즌 및 운임이 변경되는
															경우&nbsp;
													</font><b><font color="Blue">운임 차액</font></b><font color="Blue">
															및 재발행 수수료&nbsp;</font><b><font color="Blue">150,000원</font></b><font
														color="Blue"> 징수</font></td>
												</tr>
												<input type="hidden" name="contents" class="cont"
													id="tempContents_10"
													value="<font color='Blue'>※ 전체미사용 항공권의 출발편 변경 유효기간은 항공사 규정 및 운임에 따라 상이하므로 문의 바랍니다.</font>">
												<tr>
													<th scope="row">항공사 수수료- 예약변경</th>
													<td class="last" id="contents_10"><font color="Blue">※
															전체미사용 항공권의 출발편 변경 유효기간은 항공사 규정 및 운임에 따라 상이하므로 문의 바랍니다.</font></td>
												</tr>
												<input type="hidden" name="contents" class="cont"
													id="tempContents_11"
													value="<font color='Blue'>NO SHOW(예약확정 후 미탑승)시 구간당 패널티&nbsp;</font><B><font color='Blue'>15만원</font></B><font color='Blue'> 부과<BR/>1) 항공편 출발 이전까지 예약취소 없이 탑승하지 않거나 탑승수속 후 탑승하지 않는 경우 부과<BR/>2) 재발행수수료 또는 환불수수료와 별도 적용<BR/>3) 소아도 성인과 동일한 노쇼 수수료 적용</font>">
												<tr>
													<th scope="row">항공사 수수료-NO SHOW</th>
													<td class="last" id="contents_11"><font color="Blue">NO
															SHOW(예약확정 후 미탑승)시 구간당 패널티&nbsp;</font><b><font color="Blue">15만원</font></b><font
														color="Blue"> 부과<br>1) 항공편 출발 이전까지 예약취소 없이
															탑승하지 않거나 탑승수속 후 탑승하지 않는 경우 부과<br>2) 재발행수수료 또는 환불수수료와
															별도 적용<br>3) 소아도 성인과 동일한 노쇼 수수료 적용
													</font></td>
												</tr>
												<input type="hidden" name="contents" class="cont"
													id="tempContents_12"
													value="대만 경유 시 1회 무료, 2회&nbsp;<B><font color='Blue'>100,000원</font></B> 징수">
												<tr>
													<th scope="row">경유지체류</th>
													<td class="last" id="contents_12">대만 경유 시 1회 무료,
														2회&nbsp;<b><font color="Blue">100,000원</font></b> 징수
													</td>
												</tr>
												<input type="hidden" name="contents" class="cont"
													id="tempContents_13" value="불가">
												<tr>
													<th scope="row">귀국일오픈</th>
													<td class="last" id="contents_13">불가</td>
												</tr>
												<input type="hidden" name="contents" class="cont"
													id="tempContents_14"
													value="<font color='Blue'>1) 전체환불:</font><B><font color='Blue'>&nbsp;</font></B><font color='Blue'>환불수수료</font><B><font color='Blue'> 200,000원&nbsp;</font></B><font color='Blue'>공제 후 환불<BR/>2) 부분환불:&nbsp;</font><B><font color='Blue'>사용 편도 운임 + 200,000원&nbsp;</font></B><font color='Blue'>공제</font>">
												<tr>
													<th scope="row">항공사 수수료- 환불</th>
													<td class="last" id="contents_14"><font color="Blue">1)
															전체환불:</font><b><font color="Blue">&nbsp;</font></b><font
														color="Blue">환불수수료</font><b><font color="Blue">
																200,000원&nbsp;</font></b><font color="Blue">공제 후 환불<br>2)
															부분환불:&nbsp;
													</font><b><font color="Blue">사용 편도 운임 + 200,000원&nbsp;</font></b><font
														color="Blue">공제</font></td>
												</tr>
												<input type="hidden" name="contents" class="cont"
													id="tempContents_15"
													value="1) 유효기간 연장 불가<BR/>2) 현지 연락처 기재 필수<BR/>* 예약일과 발권일이 상이한 경우 발권일의 환율에 따라 TAX(유류할증료 포함)가 변동될 수 있습니다.<BR/>
* 항공사의 사정으로 별도의 공지없이 운임 및 규정이 변경되어 운임 차액이 발생하는 경우 운임차액 추가 징수됩니다">
												<tr>
													<th scope="row">기타</th>
													<td class="last" id="contents_15">1) 유효기간 연장 불가<br>2)
														현지 연락처 기재 필수<br>* 예약일과 발권일이 상이한 경우 발권일의 환율에 따라
														TAX(유류할증료 포함)가 변동될 수 있습니다.<br> * 항공사의 사정으로 별도의 공지없이
														운임 및 규정이 변경되어 운임 차액이 발생하는 경우 운임차액 추가 징수됩니다
													</td>
												</tr>
												<input type="hidden" name="contents" class="cont"
													id="tempContents_16"
													value="※ 경유지 당일 연결이 불가한 경우 해당 공항 심야 이용이 불가 할 수 있으므로<BR/>
반드시 공항 운영 시간 확인 부탁 드립니다.">
												<tr>
													<th scope="row">기타</th>
													<td class="last" id="contents_16">※ 경유지 당일 연결이 불가한 경우
														해당 공항 심야 이용이 불가 할 수 있으므로<br> 반드시 공항 운영 시간 확인 부탁 드립니다.
													</td>
												</tr>
												<input type="hidden" name="contents" class="cont"
													id="tempContents_17"
													value="좌석등급 및 노선에 따라 상이하므로 항공권 구입 전 해당 항공사로 문의바랍니다.<BR/>항공사 요금규정에 무료수하물 내용이 누락된 경우 표기되지&nbsp;않을 수 있으며, 표기되지 않은 경우, 해당항공사에 문의 부탁드립니다.<BR/>※ 공동운항편, 타항공사 연결편, 24시간 이상 체류 일정, 해외출발 일정, 특수 수하물의 경우 운항항공사에 따라 수하물 규정이 상이할 수 있습니다. 각 항공사로 문의하시거나 담당자에게 문의 부탁드립니다.">
												<tr>
													<th scope="row">무료수하물</th>
													<td class="last" id="contents_17">좌석등급 및 노선에 따라 상이하므로
														항공권 구입 전 해당 항공사로 문의바랍니다.<br>항공사 요금규정에 무료수하물 내용이 누락된
														경우 표기되지&nbsp;않을 수 있으며, 표기되지 않은 경우, 해당항공사에 문의 부탁드립니다.<br>※
														공동운항편, 타항공사 연결편, 24시간 이상 체류 일정, 해외출발 일정, 특수 수하물의 경우 운항항공사에
														따라 수하물 규정이 상이할 수 있습니다. 각 항공사로 문의하시거나 담당자에게 문의 부탁드립니다.
													</td>
												</tr>
												<input type="hidden" name="contents" class="cont"
													id="tempContents_18" value="항공사별 초과 수하물 안내">
												<tr>
													<th scope="row">초과수하물</th>
													<td class="last" id="contents_18">항공사 별 초과수하물 안내는 <a
														href="/air/b2cpop/AIR/AAA/AIRAAASCH0100110090.k1"
														style="color: red" target="_blank">여기</a> 를 클릭하세요.
													</td>
												</tr>
												<input type="hidden" name="contents" class="cont"
													id="tempContents_19" value="불가">
												<tr>
													<th scope="row">호텔제공</th>
													<td class="last" id="contents_19">불가</td>
												</tr>
												<input type="hidden" name="contents" class="cont"
													id="tempContents_20"
													value="사용가능 (단, 제 3자 카드 사용 불가)<BR/><font color='Red'>※ 다이너스 카드 사용 불가</font>">
												<tr>
													<th scope="row">신용카드</th>
													<td class="last" id="contents_20">사용가능 (단, 제 3자 카드 사용
														불가)<br>
													<font color="Red">※ 다이너스 카드 사용 불가</font>
													</td>
												</tr>
												<input type="hidden" name="contents" class="cont"
													id="tempContents_21"
													value="<B><font color='Red'>유료(사전 좌석 지정을 구매한 후 환불 불가)</font></B>">
												<tr>
													<th scope="row">사전 좌석 지정</th>
													<td class="last" id="contents_21"><b><font
															color="Red">유료(사전 좌석 지정을 구매한 후 환불 불가)</font></b></td>
												</tr>
												<input type="hidden" name="contents" class="cont"
													id="tempContents_22" value="불가">
												<tr>
													<th scope="row">마일리지 좌석승급</th>
													<td class="last" id="contents_22">불가</td>
												</tr>
												<input type="hidden" name="contents" class="cont"
													id="tempContents_23"
													value="※<font color='Red'>항공사</font> 마일리지 적립률 및 적립여부는 항공권 구입 전 반드시 확인 부탁 드립니다.">
												<tr>
													<th scope="row">항공사 마일리지적립</th>
													<td class="last" id="contents_23">※<font color="Red">항공사</font>
														마일리지 적립률 및 적립여부는 항공권 구입 전 반드시 확인 부탁 드립니다.
													</td>
												</tr>
												<input type="hidden" name="contents" class="cont"
													id="tempContents_24"
													value="만 5세이상-16세 이하 소아는 아래의 경우 비동반 소아 서비스를 신청 하셔야 합니다.<BR/>
1. 동반자가 18세 미만인 경우<BR/>
2. 동반 성인과 탑승클래스가 상이한 경우<BR/>
※ 비동반 소아 서비스는 해당 항공사의 사전 승인 하에 이용 가능하며 항공사별 서비스 대상 연령 및&nbsp;규정이 상이하므로 반드시 결제 1주일 전 담당자 확인 후 진행 부탁드립니다.<BR/>
※ 비동반 소아 서비스는 별도의 서비스 수수료가 발생할 수&nbsp;있습니다.<BR/>
※ 공동운항편의 경우 실제 탑승항공사의 규정에 따라 서비스가 불가할 수 있습니다.">
												<tr>
													<th scope="row">비동반 소아 서비스(UM)</th>
													<td class="last" id="contents_24">만 5세이상-16세 이하 소아는
														아래의 경우 비동반 소아 서비스를 신청 하셔야 합니다.<br> 1. 동반자가 18세 미만인 경우<br>
														2. 동반 성인과 탑승클래스가 상이한 경우<br> ※ 비동반 소아 서비스는 해당 항공사의 사전
														승인 하에 이용 가능하며 항공사별 서비스 대상 연령 및&nbsp;규정이 상이하므로 반드시 결제 1주일 전
														담당자 확인 후 진행 부탁드립니다.<br> ※ 비동반 소아 서비스는 별도의 서비스 수수료가
														발생할 수&nbsp;있습니다.<br> ※ 공동운항편의 경우 실제 탑승항공사의 규정에 따라
														서비스가 불가할 수 있습니다.
													</td>
												</tr>
												<input type="hidden" name="contents" class="cont"
													id="tempContents_25"
													value="<font color='Blue'>항공권 발권 후 고객의 요청에 따른 취소,변경,환불 등의 작업 필요 시, 여행사에서 취급하는 비용이므로 해당 비용에 대한 문의는 여행사로 하시기 바랍니다.<BR/>※ 발권 후 이루어지는 취소, 변경, 환불 등 모든 후속 업무는 여행사 항공사를 통해 진행하는 추가 업무입니다. 따라서 이에&nbsp;대한 여행업무 취급 수수료는 항공사 수수료와 별도로 추가 징수되는 사항이니, 신중한 결제 진행 부탁 드립니다.<BR/> ※여행업무 취급수수료는 항공권을 취소/변경/환불하더라도 환불되지 않습니다.</font>">
												<tr>
													<th scope="row">여행업무 취급수수료</th>
													<td class="last" id="contents_25"><font color="Blue">항공권
															발권 후 고객의 요청에 따른 취소,변경,환불 등의 작업 필요 시, 여행사에서 취급하는 비용이므로 해당
															비용에 대한 문의는 여행사로 하시기 바랍니다.<br>※ 발권 후 이루어지는 취소, 변경, 환불
															등 모든 후속 업무는 여행사 항공사를 통해 진행하는 추가 업무입니다. 따라서 이에&nbsp;대한
															여행업무 취급 수수료는 항공사 수수료와 별도로 추가 징수되는 사항이니, 신중한 결제 진행 부탁
															드립니다.<br> ※여행업무 취급수수료는 항공권을 취소/변경/환불하더라도 환불되지 않습니다.
													</font></td>
												</tr>
											</tbody>
										</table>
										<div xmlns="http://www.w3.org/1999/xhtml" id="ruleparams">
											<input type="hidden" name="rulegrpnos" value="1"><input
												type="hidden" name="ruletitles"
												value="적용대상                                                                    "><input
												type="hidden" name="rulecontents" value="성인"><input
												type="hidden" name="rulegrpnos" value="1"><input
												type="hidden" name="ruletitles"
												value="출국요일                                                                    "><input
												type="hidden" name="rulecontents" value="매일"><input
												type="hidden" name="rulegrpnos" value="1"><input
												type="hidden" name="ruletitles"
												value="귀국요일                                                                    "><input
												type="hidden" name="rulecontents" value="매일"><input
												type="hidden" name="rulegrpnos" value="1"><input
												type="hidden" name="ruletitles"
												value="최소체류일                                                                 "><input
												type="hidden" name="rulecontents" value="제한없음"><input
												type="hidden" name="rulegrpnos" value="1"><input
												type="hidden" name="ruletitles"
												value="최대체류일                                                                 "><input
												type="hidden" name="rulecontents" value="여행사로 확인 요망"><input
												type="hidden" name="rulegrpnos" value="1"><input
												type="hidden" name="ruletitles"
												value="SURCHARGE                                                                       "><input
												type="hidden" name="rulecontents"
												value="<B><font color='Red'>[하기 날짜 출국 시 50,000원 추가 징수]<BR/>
- 2019년 09월 11일~13일<BR/>
- 2020년 01월 23일~24일<BR/>
- 2020년 04월 30일~05월 02일<BR/>
※편도 운임 동일하게 50,000원 징수<BR/>
[캐나다 노선 추가 SURCHARGE]<BR/>- CANADA NAVIGATION CHARGE : 편도당 15CAD 징수<BR/>
※유/소아 할인 불가. 성인과 동일 적용</font></B>"><input
												type="hidden" name="rulegrpnos" value="1"><input
												type="hidden" name="ruletitles"
												value="유아요금                                                                    "><input
												type="hidden" name="rulecontents"
												value="만2세 미만(좌석 미점유) 성인판매가의 10% <BR/>[항공사 및 운항 항공편에 따라 유아 나이의 적용 기준이 달라질 수 있습니다. 출발 당시&nbsp;유아 운임 적용 가능하더라도 여행 도중 24개월 이상이 되는 경우, 유아 운임 적용 불가할 수 있으며 유아 항공권을 소지하더라도 운항 항공편에&nbsp;따라 탑승이 거절되거나 추가 비용 발생 등 항공권 사용에 문제가 될 수 있으니 구매 전 반드시 확인하시기 바랍니다.]"><input
												type="hidden" name="rulegrpnos" value="1"><input
												type="hidden" name="ruletitles"
												value="소아요금                                                                    "><input
												type="hidden" name="rulecontents"
												value="만2세이상 만12세미만(성인 동반) 성인판매가의 75%<BR/>[항공사 및 운항 항공편에 따라 소아 나이의 적용 기준이 달라질 수 있습니다. 출발 당시 소아 운임 적용 가능하더라도 여행 도중 만 12세 이상이 되는 경우, 소아 운임 적용 불가할 수 있으며 소아 항공권을 소지하더라도 운항&nbsp;항공편에 따라 탑승이 거절되거나 추가 비용 발생 등 항공권 사용에 문제가 될 수 있으니 구매 전 반드시 확인하시기 바랍니다.]"><input
												type="hidden" name="rulegrpnos" value="1"><input
												type="hidden" name="ruletitles"
												value="항공사 수수료- 예약변경                                               "><input
												type="hidden" name="rulecontents"
												value="<font color='Blue'>출/귀국 예약 변경 가능<BR/>1) 출발 예약 변경 : 항공권 재발행 필수 / 재발행시 수수료&nbsp;</font><B><font color='Blue'>150,000원</font></B><font color='Blue'> 징수<BR/>2) 귀국 예약 변경 : 항공권 유효기간내에 변경 가능 / 재발행시 수수료</font><B><font color='Blue'> 150,000원</font></B><font color='Blue'> 징수<BR/>3) 예약 변경시 시즌 및 운임이 변경되는 경우&nbsp;</font><B><font color='Blue'>운임 차액</font></B><font color='Blue'> 및 재발행 수수료&nbsp;</font><B><font color='Blue'>150,000원</font></B><font color='Blue'> 징수</font>"><input
												type="hidden" name="rulegrpnos" value="1"><input
												type="hidden" name="ruletitles"
												value="항공사 수수료- 예약변경                                               "><input
												type="hidden" name="rulecontents"
												value="<font color='Blue'>※ 전체미사용 항공권의 출발편 변경 유효기간은 항공사 규정 및 운임에 따라 상이하므로 문의 바랍니다.</font>"><input
												type="hidden" name="rulegrpnos" value="1"><input
												type="hidden" name="ruletitles"
												value="항공사 수수료-NO SHOW                                                     "><input
												type="hidden" name="rulecontents"
												value="<font color='Blue'>NO SHOW(예약확정 후 미탑승)시 구간당 패널티&nbsp;</font><B><font color='Blue'>15만원</font></B><font color='Blue'> 부과<BR/>1) 항공편 출발 이전까지 예약취소 없이 탑승하지 않거나 탑승수속 후 탑승하지 않는 경우 부과<BR/>2) 재발행수수료 또는 환불수수료와 별도 적용<BR/>3) 소아도 성인과 동일한 노쇼 수수료 적용</font>"><input
												type="hidden" name="rulegrpnos" value="1"><input
												type="hidden" name="ruletitles"
												value="경유지체류                                                                 "><input
												type="hidden" name="rulecontents"
												value="대만 경유 시 1회 무료, 2회&nbsp;<B><font color='Blue'>100,000원</font></B> 징수"><input
												type="hidden" name="rulegrpnos" value="1"><input
												type="hidden" name="ruletitles"
												value="귀국일오픈                                                                 "><input
												type="hidden" name="rulecontents" value="불가"><input
												type="hidden" name="rulegrpnos" value="1"><input
												type="hidden" name="ruletitles"
												value="항공사 수수료- 환불                                                     "><input
												type="hidden" name="rulecontents"
												value="<font color='Blue'>1) 전체환불:</font><B><font color='Blue'>&nbsp;</font></B><font color='Blue'>환불수수료</font><B><font color='Blue'> 200,000원&nbsp;</font></B><font color='Blue'>공제 후 환불<BR/>2) 부분환불:&nbsp;</font><B><font color='Blue'>사용 편도 운임 + 200,000원&nbsp;</font></B><font color='Blue'>공제</font>"><input
												type="hidden" name="rulegrpnos" value="1"><input
												type="hidden" name="ruletitles"
												value="기타                                                                          "><input
												type="hidden" name="rulecontents"
												value="1) 유효기간 연장 불가<BR/>2) 현지 연락처 기재 필수<BR/>* 예약일과 발권일이 상이한 경우 발권일의 환율에 따라 TAX(유류할증료 포함)가 변동될 수 있습니다.<BR/>
* 항공사의 사정으로 별도의 공지없이 운임 및 규정이 변경되어 운임 차액이 발생하는 경우 운임차액 추가 징수됩니다"><input
												type="hidden" name="rulegrpnos" value="1"><input
												type="hidden" name="ruletitles"
												value="기타                                                                          "><input
												type="hidden" name="rulecontents"
												value="※ 경유지 당일 연결이 불가한 경우 해당 공항 심야 이용이 불가 할 수 있으므로<BR/>
반드시 공항 운영 시간 확인 부탁 드립니다."><input
												type="hidden" name="rulegrpnos" value="1"><input
												type="hidden" name="ruletitles"
												value="무료수하물                                                                 "><input
												type="hidden" name="rulecontents"
												value="좌석등급 및 노선에 따라 상이하므로 항공권 구입 전 해당 항공사로 문의바랍니다.<BR/>항공사 요금규정에 무료수하물 내용이 누락된 경우 표기되지&nbsp;않을 수 있으며, 표기되지 않은 경우, 해당항공사에 문의 부탁드립니다.<BR/>※ 공동운항편, 타항공사 연결편, 24시간 이상 체류 일정, 해외출발 일정, 특수 수하물의 경우 운항항공사에 따라 수하물 규정이 상이할 수 있습니다. 각 항공사로 문의하시거나 담당자에게 문의 부탁드립니다."><input
												type="hidden" name="rulegrpnos" value="1"><input
												type="hidden" name="ruletitles"
												value="초과수하물                                                                 "><input
												type="hidden" name="rulecontents" value="항공사별 초과 수하물 안내"><input
												type="hidden" name="rulegrpnos" value="1"><input
												type="hidden" name="ruletitles"
												value="호텔제공                                                                    "><input
												type="hidden" name="rulecontents" value="불가"><input
												type="hidden" name="rulegrpnos" value="1"><input
												type="hidden" name="ruletitles"
												value="신용카드                                                                    "><input
												type="hidden" name="rulecontents"
												value="사용가능 (단, 제 3자 카드 사용 불가)<BR/><font color='Red'>※ 다이너스 카드 사용 불가</font>"><input
												type="hidden" name="rulegrpnos" value="1"><input
												type="hidden" name="ruletitles"
												value="사전 좌석 지정                                                            "><input
												type="hidden" name="rulecontents"
												value="<B><font color='Red'>유료(사전 좌석 지정을 구매한 후 환불 불가)</font></B>"><input
												type="hidden" name="rulegrpnos" value="1"><input
												type="hidden" name="ruletitles"
												value="마일리지 좌석승급                                                       "><input
												type="hidden" name="rulecontents" value="불가"><input
												type="hidden" name="rulegrpnos" value="1"><input
												type="hidden" name="ruletitles"
												value="항공사 마일리지적립                                                    "><input
												type="hidden" name="rulecontents"
												value="※<font color='Red'>항공사</font> 마일리지 적립률 및 적립여부는 항공권 구입 전 반드시 확인 부탁 드립니다."><input
												type="hidden" name="rulegrpnos" value="1"><input
												type="hidden" name="ruletitles"
												value="비동반 소아 서비스(UM)                                                  "><input
												type="hidden" name="rulecontents"
												value="만 5세이상-16세 이하 소아는 아래의 경우 비동반 소아 서비스를 신청 하셔야 합니다.<BR/>
1. 동반자가 18세 미만인 경우<BR/>
2. 동반 성인과 탑승클래스가 상이한 경우<BR/>
※ 비동반 소아 서비스는 해당 항공사의 사전 승인 하에 이용 가능하며 항공사별 서비스 대상 연령 및&nbsp;규정이 상이하므로 반드시 결제 1주일 전 담당자 확인 후 진행 부탁드립니다.<BR/>
※ 비동반 소아 서비스는 별도의 서비스 수수료가 발생할 수&nbsp;있습니다.<BR/>
※ 공동운항편의 경우 실제 탑승항공사의 규정에 따라 서비스가 불가할 수 있습니다."><input
												type="hidden" name="rulegrpnos" value="1"><input
												type="hidden" name="ruletitles"
												value="여행업무 취급수수료                                                    "><input
												type="hidden" name="rulecontents"
												value="<font color='Blue'>항공권 발권 후 고객의 요청에 따른 취소,변경,환불 등의 작업 필요 시, 여행사에서 취급하는 비용이므로 해당 비용에 대한 문의는 여행사로 하시기 바랍니다.<BR/>※ 발권 후 이루어지는 취소, 변경, 환불 등 모든 후속 업무는 여행사 항공사를 통해 진행하는 추가 업무입니다. 따라서 이에&nbsp;대한 여행업무 취급 수수료는 항공사 수수료와 별도로 추가 징수되는 사항이니, 신중한 결제 진행 부탁 드립니다.<BR/> ※여행업무 취급수수료는 항공권을 취소/변경/환불하더라도 환불되지 않습니다.</font>">
										</div>
									</div>
									<div class="k1_agree_check">
										<ul>
											<li>
												<div class="mrt_check_wrap">
													<input id="chkagree2" type="checkbox">
													<label for="chkagree2"><span class="ico_checkbox"></span>운임규정
														<b><font color="red">(모든 운임규정은 1인 기준 적용)</font></b>에
														동의합니다.</label>
												</div>
											</li>
											<li>
												<div class="mrt_check_wrap">
													<input id="chkbagginfo" type="checkbox">
													<label for="chkbagginfo"><span class="ico_checkbox"></span>수하물
														정보를 확인했습니다.</label>
												</div>
											</li>
										</ul>
									</div>
								</fieldset>
								<h4 class="k1_blind">
									<span id="refundruletit1">결제규정</span>약관
								</h4>
								<fieldset id="ruledetail3" style="display: none;" class="ruledetail">
									<legend>
										<span id="refundruletit2">결제규정</span>약관
									</legend>
									<div id="refundrule" class="k1_agreebox"
										style="word-wrap: break-word;">
										<b><font color="#2b96ed">▶운임변동 - </font></b>항공 예약 시 조회되는
										유료할증료와 제세공과금은 결제 시점의 환율에 따라 변경될 수 있습니다. <br>
										<br>
										<b><font color="#2b96ed">▶결제요청 - </font></b>결제 요청은 탑승객, 일정,
										예약에 모두 동의한 것으로 간주되며 최대 48시간 이내에 결제/발권될 예정입니다. 결제 요청 이후
										취소/변경/환불시에는 환불 패널티와 취급 수수료가 부과됩니다.<br>
										<br>
										<b><font color="#2b96ed">▶결제수단변경 - </font></b>발권 후 카드 변경 또는
										결제수단 변경, 할부 개월 수는 변경이 불가합니다.<br>
										<br>
										<b><font color="#2b96ed">▶카드결제 - </font></b>항공사와 카드사의 가맹점 계약에
										따라 카드 결제에 제한이 있을 수 있습니다.<br>예. 비엣젯 항공 - 국민카드, 씨티카드 결제 불가
										/ 홍콩 항공 - KEB 하나카드, 해외발행 카드 불가<br>
										<br>
										<b><font color="#2b96ed">▶결제오류 - </font></b>한도 초과/잔액 부족/결제
										불가/도난 카드 등의 결제 불가한 카드의 경우에는 결제 요청이 자동 취소될 수 있습니다. 결제시한 내에 재결제
										요청 또는 재예약 바랍니다.<br>
										<br>
										<b><font color="#2b96ed">▶무이자 할부 - </font></b>무이자 카드 결제는 각
										항공사가 카드사와의 계약에 따라 고지 없이 변동될 수 있으며, 정확한 무이자 할부는 카드사를 통하여 확인 후
										결제 바랍니다.<br>
										<br>
										<b><font color="#2b96ed">▶제3자 카드결제 - </font></b>항공권은 본인, 동반인,
										예약자, 가족이 아닌 제3자의 경우 결제가 불가하며, 경우에 따라 결제 관련 증빙서류를 요구할 수 있습니다.
										증빙서류 미제출로 인한 결제시한 경과로 예약이 취소될 경우, 재 예약 바랍니다. 제3자 카드 결제로 인한 탑승
										거부 등의 불이익 발생시 당사는 책임을 지지 않습니다.<br>
										<br>
										<font color="#2b96ed">※ 카드 사용에 대한 증빙서류를 확인하시어 결제요청 단계에서
											파일 업로드 바랍니다. <br>증빙서류 미첨부시에는 결제요청이 자동 취소 될 수 있습니다.
										</font><br> <b>- 가족 카드 : </b>가족관계증명서(또는 등본)<br> <b>- 법인
											카드 : </b>사업자등록증, 재직 증명서(탑승자), 카드 앞/뒷면 사본
									</div>
									<div class="k1_agree_check">
										<ul>
											<li>
												<div class="mrt_check_wrap">
													<input id="chkagree3" type="checkbox">
													<label for="chkagree3"><span class="ico_checkbox"></span><span
														id="refundruletit3">결제규정</span> <b><font color="red">(모든
																환불규정은 1인 기준 적용)</font></b>에 동의합니다.</label>
												</div>
											</li>
										</ul>
									</div>
								</fieldset>
								<h4 class="k1_blind">
									<span id="paymentruletit1">환불규정</span>약관
								</h4>
								<fieldset id="ruledetail4" style="display: none;" class="ruledetail">
									<legend>
										<span id="paymentruletit2">환불규정</span>약관
									</legend>
									<div id="paymentrule" class="k1_agreebox"
										style="word-wrap: break-word;">
										<b><font color="#FF0000">&lt; 환불/변경 접수 가능시간 &gt;</font></b><font
											color="#FF0000"><br>- 오전 09:00 ~ 오후 17:00 연중무휴<br>-
											영업 외 시간은 환불/변경 접수 불가<br>- 환불은 고객센터 1670-8208 를 통해
											요청바랍니다.</font><br> <br> <b><font color="#2b96ed">▶환불/취소
												위약금 : </font></b>결제요청 이후 항공권의 변경/환불시 항공사 패널티와 취급 수수료가 각각 발생 됩니다. <br>-취급
										수수료 : 1인당 1만원(성인/소아/유아 동일)<br>-항공사 패널티 : 각 운임규정을 확인 바랍니다.<br>
										<br> <b><font color="#2b96ed">▶환급 기간 - </font></b>항공권 환불은
										처리 후 항공사와의 정산 기간을 거쳐 현금/카드로 환불 처리까지 약 15일~90일 정도 소요될 예정입니다. 단,
										경우에 따라 항공사 정산 기간이 길어질 수 있습니다.<br>
										<br> <b><font color="#2b96ed">▶NOSHOW - </font></b>사전 변경
										및 취소 없이 비행기 미탑승시에는 예약 부도(NO-SHOW) 처리되어 항공권의 변경 및 환불이 불가하실 수
										있습니다. 반드시 변경 및 취소는 당사 업무시간 이내에 요청하시기 바랍니다. <br>
										<br> <b><font color="#2b96ed">▶부분 미탑승- </font></b>모든 항공권은
										항공 일정의 순서대로 사용해야 하며, 첫 구간 미 탑승한 경우에는 이후 일정에 대한 탑승이 불가합니다. 전체
										일정 중 부분 이용 후 환불 요청하실 경우 환불금이 적거나 없을 수 있습니다.<br>
										<br>
										<font color="#FF0000">환불/변경 접수 가능시간 외에 접수된 예약은 익일 영업시간에
											처리되며, 접수일이 아닌 처리일 기준의 항공사 패널티와 취급 수수료가 발생됩니다. 접수 가능시간 외에
											결제요청시 유의 바랍니다.</font>
									</div>
									<div class="k1_agree_check">
										<ul>
											<li>
												<div class="mrt_check_wrap">
													<input id="chkagree4" type="checkbox">
													<label for="chkagree4"><span class="ico_checkbox"></span><span
														id="paymentruletit3">환불규정</span>에 동의합니다.</label>
												</div>
											</li>
										</ul>
									</div>
								</fieldset>
								<h4 class="k1_blind">
									<span id="etcruletit1"></span>약관
								</h4>
							</div>
							<!-- //항공예약유의사항동의 -->

							<form id="dummyform" name="dummyform" method="post">
								<input type="hidden" name="msg" id="msg"> <input
									type="hidden" name="ws1rq" id="ws1rq"> <input
									type="hidden" name="ws1rs" id="ws1rs"> <input
									type="hidden" name="ws2rq" id="ws2rq"> <input
									type="hidden" name="ws2rs" id="ws2rs"> <input
									type="hidden" name="ws3rq" id="ws3rq"> <input
									type="hidden" name="ws3rs" id="ws3rs"> <input
									type="hidden" name="ws4rq" id="ws4rq"> <input
									type="hidden" name="ws4rs" id="ws4rs"> <input
									type="hidden" name="ws5rq" id="ws5rq"> <input
									type="hidden" name="ws5rs" id="ws5rs"> <input
									type="hidden" name="eventtype" id="eventtype"> <input
									type="hidden" name="diflag" id="diflag"> <input
									type="hidden" name="pnrno" id="pnrno"> <input
									type="hidden" name="visauseyn" id="visauseyn"> <input
									type="hidden" name="arrcitycode" id="arrcitycode"> <input
									type="hidden" name="farechkval" id="farechkval"> <input
									type="hidden" name="rsvstatus" id="rsvstatus"> <input
									type="hidden" name="arrdate" id="arrdate"> <input
									type="hidden" name="arrcitycd" id="arrcitycd"> <input
									type="hidden" name="depdate" id="depdate"> <input
									type="hidden" name="depcitycd" id="depcitycd"> <input
									type="hidden" name="alphapnrno" id="alphapnrno"> <input
									type="hidden" name="saletotamt" id="saletotamt"> <input
									type="hidden" name="totpaxcount" id="totpaxcount"> <input
									type="hidden" name="pnrseqno" id="pnrseqno"> <input
									type="hidden" id="KSESID" name="KSESID"
									value="air:b2c:SELK138RB:SELK138RB::00">
							</form>
							<form id="dummyform2" name="dummyform2" method="post">
								<input type="hidden" id="KSESID" name="KSESID"
									value="air:b2c:SELK138RB:SELK138RB::00">
							</form>

							<!-- Submit 파라미터 -->
							<form id="xmllogform" name="xmllogform" method="post"
								target="newpage" action="/air/xmllog/list.k1"
								style="display: none;">
								<input type="hidden" id="rq_sessionId" name="sessionId">
								<input type="hidden" id="rq_guid" name="guid"> <span
									class="k1_btn8"><input type="submit" id="rq_xmllog"
									value="getxml" title="webservice log"></span> <a href="#"
									class="k1_btn8"
									onclick="javascript:$('form#dummyform').submit(); return false;">next</a>
								<br> debug 모드 시 바로 예약완료 또는 기본 페이지로 이동하지 않습니다. 이동하시려면 next
								버튼을 클릭 하세요. <input type="hidden" id="KSESID" name="KSESID"
									value="air:b2c:SELK138RB:SELK138RB::00">
							</form>

							<!-- //content -->
						</div>
						<!-- //left area  -->

						<!-- right area  -->
						<div class="mrt_reserve_right">
							<div class="mrt_condi_box" id="grdFareInfoList">
								<input xmlns="http://www.w3.org/1999/xhtml" type="hidden"
									id="iptuserid" value="1993070"><input
									xmlns="http://www.w3.org/1999/xhtml" type="hidden"
									id="iptusernm" value="이주영"><input
									xmlns="http://www.w3.org/1999/xhtml" type="hidden"
									id="iptphone1" value=""><input
									xmlns="http://www.w3.org/1999/xhtml" type="hidden"
									id="iptphone2" value=""><input
									xmlns="http://www.w3.org/1999/xhtml" type="hidden"
									id="iptphone3" value=""><input
									xmlns="http://www.w3.org/1999/xhtml" type="hidden"
									id="iptemail1" value="blue_pindoll"><input
									xmlns="http://www.w3.org/1999/xhtml" type="hidden"
									id="iptemail2" value="naver.com"><input
									xmlns="http://www.w3.org/1999/xhtml" type="hidden"
									id="iptemail3" value="naver.com">
								<h2 xmlns="http://www.w3.org/1999/xhtml" class="k1_h_tit1">요금정보</h2>
								<c:if test="${ param.adult > 0 }">
									<div xmlns="http://www.w3.org/1999/xhtml" class="mrt_list_wrap">
										<h2 class="k1_h_tit2">
										성인<strong class="f_blue">${ param.adult }</strong>명
										</h2>
										<div class="mrt_list mrt_basic_view k1_mt10">
											<table>
												<caption>성인 요금정보</caption>
												<colgroup>
													<col style="width: 40%;">
													<col style="width: 30%;">
													<col style="width: 30%;">
												</colgroup>
												<tbody>
												<tr>
													<td>항공요금</td>
													<td>${ param.adult }명</td>
													<td class="k1_tar"><fmt:formatNumber value="<%= a_priceFare * a %>" pattern="#,###"/>원</td>
												</tr>
												<tr>
													<td>유류할증료</td>
													<td>${ param.adult }명</td>
													<td class="k1_tar"><fmt:formatNumber value="<%= a_priceFuel * a %>" pattern="#,###"/>원</td>
												</tr>
												<tr>
													<td>제세공과금</td>
													<td>${ param.adult }명</td>
													<td class="k1_tar"><fmt:formatNumber value="<%= a_priceTax * a %>" pattern="#,###"/>원</td>
												</tr>
												<tr>
													<td>발권수수료</td>
													<td>${ param.adult }명</td>
													<td class="k1_tar"><fmt:formatNumber value="<%= a_pricecharge * a %>" pattern="#,###"/>원</td>
												</tr>
											</tbody>
											<tfoot>
												<tr>
													<td colspan="2">성인 총 요금</td>
													<td class="k1_tar"><fmt:formatNumber value="<%= a_priceSum * a %>" pattern="#,###"/>원</td>
												</tr>
											</tfoot>
											</table>
										</div>
									</div>
								</c:if>
								<c:if test="${ param.child > 0 }">
									<div xmlns="http://www.w3.org/1999/xhtml" class="mrt_list_wrap">
										<h2 class="k1_h_tit2">
										소아<strong class="f_blue">${ param.child }</strong>명
										</h2>
										<div class="mrt_list mrt_basic_view k1_mt10">
											<table>
												<caption>소아 요금정보</caption>
												<colgroup>
													<col style="width: 40%;">
													<col style="width: 30%;">
													<col style="width: 30%;">
												</colgroup>
												<tbody>
												<tr>
													<td>항공요금</td>
													<td>${ param.child }명</td>
													<td class="k1_tar"><fmt:formatNumber value="<%= c_priceFare * c %>" pattern="#,###"/>원</td>
												</tr>
												<tr>
													<td>유류할증료</td>
													<td>${ param.child }명</td>
													<td class="k1_tar"><fmt:formatNumber value="<%= c_priceFuel * c %>" pattern="#,###"/>원</td>
												</tr>
												<tr>
													<td>제세공과금</td>
													<td>${ param.child }명</td>
													<td class="k1_tar"><fmt:formatNumber value="<%= c_priceTax * c %>" pattern="#,###"/>원</td>
												</tr>
												<tr>
													<td>발권수수료</td>
													<td>${ param.child }명</td>
													<td class="k1_tar"><fmt:formatNumber value="<%= c_pricecharge * c %>" pattern="#,###"/>원</td>
												</tr>
											</tbody>
											<tfoot>
												<tr>
													<td colspan="2">소아 총 요금</td>
													<td class="k1_tar"><fmt:formatNumber value="<%= c_priceSum * c %>" pattern="#,###"/>원</td>
												</tr>
											</tfoot>
											</table>
										</div>
									</div>
								</c:if>
								<c:if test="${ param.infant > 0 }">
									<div xmlns="http://www.w3.org/1999/xhtml" class="mrt_list_wrap">
										<h2 class="k1_h_tit2">
										유아<strong class="f_blue">${ param.infant }</strong>명
										</h2>
										<div class="mrt_list mrt_basic_view k1_mt10">
											<table>
												<caption>유아 요금정보</caption>
												<colgroup>
													<col style="width: 40%;">
													<col style="width: 30%;">
													<col style="width: 30%;">
												</colgroup>
												<tbody>
												<tr>
													<td>항공요금</td>
													<td>${ param.infant }명</td>
													<td class="k1_tar"><fmt:formatNumber value="<%= i_priceFare * i %>" pattern="#,###"/>원</td>
												</tr>
												<tr>
													<td>유류할증료</td>
													<td>${ param.infant }명</td>
													<td class="k1_tar"><fmt:formatNumber value="<%= i_priceFuel * i %>" pattern="#,###"/>원</td>
												</tr>
												<tr>
													<td>제세공과금</td>
													<td>${ param.infant }명</td>
													<td class="k1_tar"><fmt:formatNumber value="<%= i_priceTax * i %>" pattern="#,###"/>원</td>
												</tr>
												<tr>
													<td>발권수수료</td>
													<td>${ param.infant }명</td>
													<td class="k1_tar"><fmt:formatNumber value="<%= i_pricecharge * i %>" pattern="#,###"/>원</td>
												</tr>
											</tbody>
											<tfoot>
												<tr>
													<td colspan="2">유아 총 요금</td>
													<td class="k1_tar"><fmt:formatNumber value="<%= i_priceSum * i %>" pattern="#,###"/>원</td>
												</tr>
											</tfoot>
											</table>
										</div>
									</div>
								</c:if>
								<div xmlns="http://www.w3.org/1999/xhtml"
									class="mrt_total_price k1_clearfix">
									<div class="k1_fl">
										<h3 class="k1_h_tit2">총 요금</h3>
									</div>
									<div class="k1_fr">
										<h3 class="fare_total">
											<fmt:formatNumber value="<%= i_priceSum * i + c_priceSum * c + a_priceSum * a %>" pattern="#,###"/><span>원</span>
										</h3>
										<span class="k1_h_tit_sub">세금 및 수수료 포함</span>
									</div>
								</div>
								<div xmlns="http://www.w3.org/1999/xhtml"
									class="mrt_regulation k1_mt24">
									<ul>
										<li>상기 요금은 유류할증료 및 제세공과금 포함한 총액요금이며, 유류할증료 및 제세공과금은 유가와
											환율에 따라 변동 가능합니다.</li>
										<li id="maininfo"><font color="RED"> 유류할증료 및
												제세공과금은 유가와 환율적용에 따라 발권시 변동될 수 있습니다. <br>경우에 따라 일부 항공사나
												일부 구간의 유류할증료 및 제세공과금이 조회가 안될 수 있습니다.
										</font></li>
									</ul>
								</div>
							</div>
						</div>
						<!-- right area  -->

						<div class="k1_btn_reservation">
							
								<button type="button" class="mrt_btn_m k1_w200 mrt_btn_blue submitBtn"  title="예약하기">예약하기</button>
						</div>

					</div>
				</div>

				<input type="hidden" id="grpDetailSeqno" value="">
			</div>
			<div class="k1_blank20">&nbsp;</div>
		</div>

							
		<!-- footer -->












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
					<a class="close_pop close_baggage" href="javascript:void(0);">팝업창 닫기</a>
				</div>
			</div>
		</div>
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
					<a href="javascript:void(0);" class="close_pop">팝업창
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
					<a href="javascript:void(0);" class="close_pop">닫기</a>
				</div>
			</div>
		</div>
		<!-- 인천공항 제2터미널 개장안내 팝업 -->

	</div>
	<script type="text/javascript"
		src="https://flights.myrealtrip.com/air/js/mrtjs/plugin/mixitup.min.js"></script>
	<script type="text/javascript" src="https://flights.myrealtrip.com/air/js/mrtjs/plugin/swiper.min.js"></script>


	<script type="text/javascript"
		src="https://d32w679339tzui.cloudfront.net/static/js/main.js"></script>



	
	<div style="display: none; visibility: hidden;">
		<script>/msie [1-7]./.test(navigator.userAgent.toLowerCase())||function(a,b,c){var e=0x6785963aafcf,d=a.getElementsByTagName(b)[0];a.getElementById(c)||(a=a.createElement(b),a.id=c,a.src="//connect.facebook.net/en_US/all.js#xfbml\x3d1\x26appId\x3d"+e,d.parentNode.insertBefore(a,d))}(document,"script","facebook-jssdk");</script>


		<noscript></noscript>
	</div>
	<div style="display: none; visibility: hidden;">
		<script type="text/javascript">var roosevelt_params={retargeting_id:"CO4BPcxxuPf7EMtOqlDEMw00",tag_label:"fDUszzkYQtK6Ijtu6-bHRA"};</script>
		<script type="text/javascript"
			src="//adimg.daumcdn.net/rt/roosevelt.js" async="null"></script>
	</div>
	<div id="fb-root" class=" fb_reset">
		<div
			style="position: absolute; top: -10000px; width: 0px; height: 0px;">
			<div>
				<iframe name="fb_xdm_frame_https" frameborder="0"
					allowtransparency="true" allowfullscreen="true" scrolling="no"
					allow="encrypted-media" id="fb_xdm_frame_https" aria-hidden="true"
					title="Facebook Cross Domain Communication Frame" tabindex="-1"
					src="https://staticxx.facebook.com/connect/xd_arbiter.php?version=44#channel=f15a668b6dc6b48&amp;origin=https%3A%2F%2Fflights.myrealtrip.com"
					style="border: none;"></iframe>
			</div>
			<div></div>
		</div>
	</div>
	<div id="k1_pop_wrap_2" style="width: 600px;background-color: rgb(255, 255, 255);left: 653.5px;top: 1350px;height: 500px;overflow-y: scroll;">
	<div class="k1_pop_header">
		<h1>항공사별 초과 수하물 정보</h1>
	</div>
	<div class="k1_pop_contents">
		<ul class="test">
		
			<li><a href="https://www.garuda-indonesia.com/kr/ko/garuda-indonesia-experience/on-ground/baggage/index.page?" target="_blank">가루다인도네시아(GA)</a></li>
			<li><a href="http://www.flysaa.com/kr/en/flyingSAA/baggage/excessBaggage.html" target="_blank">남아프리카항공(SA)</a></li>
			<li><a href="https://www.klm.com/travel/kr_ko/prepare_for_travel/baggage/baggage_allowance/index.htm" target="_blank">네델란드항공(KL)</a></li>
			<li><a href="https://www.airnewzealand.co.kr/faq#baggage" target="_blank">뉴질랜드항공(NZ)</a></li>
			<li><a href="https://kr.koreanair.com/content/koreanair/korea/ko/traveling/baggage-services.html#allowed-to-bring-unrestricted" target="_blank">대한항공(KE)</a></li>
			<li><a href="https://ko.delta.com/content/www/en_US/traveling-with-us/baggage/before-your-trip/checked.html#StandardCheckedBagAllowance" target="_blank">델타항공(DL)</a></li>
			<li><a href="http://www.laoairlines.com/?contentkey=pages&amp;id=22" target="_blank">라오항공(QV)</a></li>
			<li><a href="https://www.latam.com/en_un/travel-information/baggage/checked-baggage/" target="_blank">란칠레항공(LA)</a></li>  
			<li><a href="https://www.aeroflot.ru/ru-ko/information/preparation/baggage/allowance" target="_blank">러시아항공(SU)</a></li>
			<li><a href="http://www.lufthansa.com/kr/ko/Free-baggage-rules" target="_blank">루프트한자항공(LH)</a></li>
			<li><a href="https://www.mandarin-airlines.com/Content/%E6%A9%9F%E5%A0%B4%E6%9C%8D%E5%8B%99-2016100012-30#p2" target="_blank">만다린항공(AE)</a></li>
			<li><a href="https://www.malaysiaairlines.com/kr/ko/plan-your-trip.html" target="_blank">말레이시아항공(MH)</a></li>
			<li><a href="https://www.airmauritius.com/cbaggage.htm" target="_blank">모리셔스항공(MK)</a></li>
			<li><a href="http://www.miat.com/pagecontent.php?pageId=150&amp;lang=en" target="_blank">몽골항공(OM)</a></li>
			<li><a href="https://www.vietnamairlines.com/vn/ko/travel-information/baggage/" target="_blank">베트남항공(VN)</a></li>
			<li><a href="https://www.vietjetair.com/Sites/Web/ko-KR/NewsDetail/%e1%84%89%e1%85%ae%e1%84%92%e1%85%a1%e1%84%86%e1%85%ae%e1%86%af-%e1%84%89%e1%85%a5%e1%84%87%e1%85%b5%e1%84%89%e1%85%b3/%201542/%e1%84%89%e1%85%ae%e1%84%92%e1%85%a1%e1%84%86%e1%85%ae%e1%86%af%e1%84%89%e1%85%a5%e1%84%87%e1%85%b5%e1%84%89%e1%85%b3" target="_blank">비엣젯항공(VJ)</a></li>
			<li><a href="http://www.88888888.cn/Global/News/Detail/4610" target="_blank">사천항공(3U)</a></li>
			<li><a href="http://www.srilankan.com/en_uk/plan-and-book/luggage-revamp" target="_blank">스리랑카항공(UL)</a></li>
			<li><a href="https://www.swiss.com/ch/EN/prepare/baggage/checked-baggage" target="_blank">스위스항공(LX)</a></li>
			<li><a href="https://www.flysas.com/en/travel-info/baggage/checked-baggage/" target="_blank">스칸디나비아항공(SK)</a></li>
			<li><a href="http://www.flyscoot.com/index.php/ko/pre-flight/baggage.html" target="_blank">스쿠트항공(TZ)</a></li>
			<li><a href="https://global.shenzhenair.com/zhair/ibe/static/pages/wcm/ko/07-3-3-2-RegisteredLuggage_ko.html" target="_blank">심천항공(ZH)</a></li>
			<li><a href="http://www.singaporeair.com/ko_KR/kr/travel-info/baggage/baggage-allowance/" target="_blank">싱가폴항공(SQ)</a></li>
			<li><a href="https://www.american-airlines.co.kr/i18n/travel-info/baggage/baggage.jsp?locale=ko_KR&amp;anchorEvent=false&amp;from=Nav" target="_blank">아메리칸항공(AA)</a></li>
			<li><a href="http://flyasiana.com/CW/ko/common/pageContent.do?pageId=PC_0390" target="_blank">아시아나항공(OZ)</a></li>
			<li><a href="https://www.alitalia.com/ko_kr/fly-alitalia/baggage.html" target="_blank">알리탈리아항공(AZ)</a></li>
			<li><a href="https://www.emirates.com/kr/korean/before-you-fly/baggage/checked-baggage.aspx" target="_blank">에미레이트항공(EK)</a></li>
			<li><a href="http://www.evaair.com/ko-kr/managing-your-trip/baggage-information/allowances/" target="_blank">에바항공(BR)</a></li>
			<li><a href="https://world.aeromexico.com/en/travel-with-aeromexico/baggage/?site=us" target="_blank">에어로멕시코(AM)</a></li>
			<li><a href="http://www.airmacau.co.kr/web/text/text_list.asp?menu_id=13" target="_blank">에어마카오(NX)</a></li>
			<li><a href="https://airastana.com/kor/ko-kr/Information/Baggage-Information/Baggage-Allowance" target="_blank">에어아스타나(KC)</a></li>
			<li><a href="http://www.airindia.co.kr/sub4_2.php" target="_blank">에어인디아(AI)</a></li>
			<li><a href="http://www.aircalin.co.kr/flying/etcinfo_baggage.html" target="_blank">에어칼린(SB)</a></li>
			<li><a href="http://www.aircanada.co.kr/html/sub_info_dep_mn04_2.asp?gubun=0401" target="_blank">에어캐나다(AC)</a></li>
			<li><a href="https://www.airfrance.co.kr/KR/ko/common/guidevoyageur/pratique/bagages-cabine-airfrance.htm" target="_blank">에어프랑스(AF)</a></li>
			<li><a href="https://www.ethiopianairlines.com/AA/EN/information/baggage/free-baggage-allowance" target="_blank">에티오피아항공(ET)</a></li>
			<li><a href="http://www.etihad.com/ko-kr/before-you-fly/baggage-information/" target="_blank">에티하드항공(EY)</a></li>
			<li><a href="https://www.elal.com/en/PassengersInfo/Baggage/Pages/Hand-Bag.aspx" target="_blank">엘알이스라엘항공(LY)</a></li>
			<li><a href="https://www.britishairways.com/ko-kr/information/baggage-essentials/checked-baggage-allowances" target="_blank">영국항공(BA)</a></li>
			<li><a href="http://www.austrian.com/Info/Flying/Baggage.aspx?sc_lang=en&amp;cc=ZZ" target="_blank">오스트리아항공(OS)</a></li>
			<li><a href="http://www.uzbekair.co.kr/web/board/layout7/board_view.asp?menu_id=88372&amp;page_no=1&amp;id=1320320" target="_blank">우즈베키스탄항공(HY)</a></li>
			<li><a href="https://www.united.com/web/ko/content/travel/baggage/default.aspx" target="_blank">유나이티드항공(UA)</a></li>
			<li><a href="https://www.uniair.com.tw/uniweb/CMS/service/luggage_information_int/en-us##a3" target="_blank">유니항공(B7)</a></li>
			<li><a href="http://www.eastarjet.com/newstar/PGWIK00001" target="_blank">이스타항공(ZE)</a></li>
			<li><a href="http://www.kr.jal.co.jp/krl/ko/inter/service/bag/#anchorlink002" target="_blank">일본항공(JL)</a></li>
			<li><a href="http://www.ana.co.jp/ko/kr/international/prepare/baggage/?menu=free" target="_blank">전일본공수(NH)</a></li>
			<li><a href="https://www.jejuair.net/jejuair/serviceinfo/airport/baggage_service.jsp" target="_blank">제주항공(7C)</a></li>
			<li><a href="https://www.jetairways.com/EN/IN/TravelInformation/Baggage/baggage-allowances.aspx" target="_blank">제트에어웨이즈(9W)</a></li>
			<li><a href="https://www.airchina.kr/KR/KO/info/checked-baggage/" target="_blank">중국국제항공(CA)</a></li>
			<li><a href="http://www.csair.com/kr/ko/tourguide/luggage_service/carryon_luggage/" target="_blank">중국남방항공(CZ)</a></li>
			<li><a href="https://kr.ceair.com/ko/content/information/baggage/baggage-allowance" target="_blank">중국동방항공(MU)</a></li>
			<li><a href="http://www.xiamenair.com/en-kr/PassengerService/Ground%20Service/Baggage%20Instructions.html" target="_blank">중국하문항공(MF)</a></li>
			<li><a href="https://www.hainanairlines.com/US/US/BASV" target="_blank">중국해남항공(HU)</a></li>
			<li><a href="https://www.china-airlines.com/kr/ko/fly/prepare-for-the-fly/baggage/baggage-rules" target="_blank">중화항공(CI)</a></li>
			<li><a href="https://www.jinair.com/ready/baggage" target="_blank">진에어(LJ)</a></li>
			<li><a href="http://kr.csa.cz/kr/portal/info-and-services/travel-information/baggage2.htm" target="_blank">체코항공(OK)</a></li>
			<li><a href="https://www.qatarairways.com/ko-kr/baggage/allowance.html" target="_blank">카타르항공(QR)</a></li>
			<li><a href="https://www.cambodiaangkorair.com/ko/travel-information/baggage-information/checked-baggage/" target="_blank">캄보디아앙코르항공(K6)</a></li>
			<li><a href="https://www.cathaypacific.com/cx/ko_KR/travel-information/baggage.html" target="_blank">캐세이패시픽(CX)</a></li>
			<li><a href="https://www.kenya-airways.com/prepare-for-travel/baggage-information/baggage-allowance/en/" target="_blank">케냐항공(KQ)</a></li>
			<li><a href="http://www.qantas.com/kr/en/travel-info/baggage/checked-baggage.html" target="_blank">콴타스항공(QF)</a></li>
			<li><a href="http://www.thaiairways.com/ko_KR/plan_my_trip/travel_information/Baggage.page" target="_blank">타이항공(TG)</a></li>
			<li><a href="https://www.latam.com/en_un/travel-information/baggage/checked-baggage/" target="_blank">탐항공(JJ)</a></li>
			<li><a href="http://www.turkishairlines.com/en-kr/travel-information/baggage/free-baggage-allowance" target="_blank">터키항공(TK)</a></li>
			<li><a href="https://www.twayair.com/service/serviceInfo.do?menuSeq=236" target="_blank">티웨이항공(TW)</a></li>
			<li><a href="https://www.finnair.com/kr/ko/information-services/baggage/checked-baggage" target="_blank">핀에어(AY)</a></li>
			<li><a href="http://www.philippineair.co.kr/ko/service/baggage_rules.asp" target="_blank">필리핀항공(PR)</a></li>
			<li><a href="http://hawaiianair-kr.custhelp.com/app/home/topic/465" target="_blank">하와이안항공(HA)</a></li>
			<li><a href="http://www.hkexpress.com/ko/learn/baggage-guide/checked-baggage" target="_blank">홍콩익스프레스(UO)</a></li>
			<li></li>
			<li></li>
		
		</ul>
	</div>
	<a href="" class="k1_btn_p_close1" title="닫기" onclick="javascript:void(0);">닫기</a>
</div>
	<!-- 투명 모달창 -->
	<div id="model_back" style="background-color: rgba(0, 0, 0, 0);"></div>
	<!-- 모달창 -->
	<div id="model_back2" style="background-color: rgba(0, 0, 0, 0.2);"></div>
<jsp:include page="/WEB-INF/layout/bottom.jsp"></jsp:include>
</body>
</html>