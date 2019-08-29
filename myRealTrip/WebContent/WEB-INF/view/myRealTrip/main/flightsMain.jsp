<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>jsp/servlet class - LJE (2019. 5. 15.-오후 5:10:37)</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<link rel="stylesheet" type="text/css" href="">
<style>
* {
	box-sizing: border-box;
	outline: none; /* 없어도 큰 이상 없음 */
	padding: 0;
	margin: 0;
}

body, th, td, li, div, span, p, form, label, select, input, textarea,
	button {
	font-family: -apple-system, BlinkMacSystemFont, "Malgun Gothic", "맑은 고딕",
		Roboto, Helvetica, Arial, sans-serif;
	font-size: 14px;
	color: #343a40;
	letter-spacing: -0.2px;
	-webkit-font-smoothing: antialiased;
}

input, select, textarea, label, button {
	vertical-align: middle;
}

#header {
	/* height: 350px; */
	background:
		url(https://flights.myrealtrip.com/air/imgs_ibe/mrt/bg/bg_header_pc.jpg)
		no-repeat center;
	background-size: cover;
}

#body {
	/* height: 3520.13px; */
	background-color: white;
}

a, a:active, a:hover, a:link, a:visited {
	text-decoration: none;
}

img {
	border-width: 0;
	border: 0;
}

.LnbLocalNavItem-module__item--3ZodT.LnbLocalNavItem-module__active--3-BID
	{
	opacity: 1 !important;
}

#header .k1_search_are_spot {
	position: relative;
	width: 1064px;
	margin: 0 auto;
	position: relative;
	border: none;
	padding: 40px 0 90px;
}

.k1_section_1 {
	height: auto;
	overflow: hidden;
	margin-bottom: 17px;
}

.k1_itinerary li {
	overflow: hidden;
}

.k1_section_1 li.interval_select {
	margin-left: 0;
	height: auto;
	line-height: normal;
	padding: 0;
}

.k1_section_1 li input.input_radio {
	display: none;
	width: 0;
	height: 0;
}

.k1_section_1 li input.input_radio {
	margin-right: 5px;
}

.k1_section_1 li input.input_radio:checked+label {
	color: #fff;
	opacity: 1;
	font-weight: bold;
	border-bottom: 2px solid #fff;
}

.k1_section_1 li label {
	float: left;
	display: inline-block;
	width: 64px;
	line-height: 20px;
	padding-bottom: 8px;
	margin-right: 8px;
	background-color: transparent;
	color: #fff;
	opacity: 0.5;
	font-size: 16px;
	text-align: center;
	cursor: pointer
		/*;-webkit-transition: all .2s ease;transition: all .2s ease;*/;
}

.k1_section_1 li.btn_initial {
	float: right;
	padding-top: 7px;
}

.k1_btn6 {
	display: inline-block;
	height: 20px;
	padding-right: 2px;
	background-position: right -20px;
	vertical-align: middle;
}

.k1_btn6, .k1_btn6 * {
	background-image:
		url(https://flights.myrealtrip.com/air/wfw/imgs/airC/btn/btn_bg.png);
	color: #fff;
	text-decoration: none;
	white-space: nowrap;
	cursor: pointer;
	line-height: 17px;
}

.k1_btn6 button, .k1_btn6 input {
	display: block;
	height: 20px;
	padding: 2px 9px 2px 10px;
	background-position: left -20px;
	border: 0 none;
}

.k1_btn6, .k1_btn6 * {
	background-image:
		url(https://flights.myrealtrip.com//air/wfw/imgs/airC/btn/btn_bg.png);
	color: #fff;
	text-decoration: none;
	white-space: nowrap;
	cursor: pointer;
	line-height: 17px;
}

.Header-module__lnb--2J09H {
	border-bottom: 1px solid hsla(0, 0%, 100%, .3);
}

.k1_section_1 .mrt_extra_link {
	float: right;
}

.k1_section_1 .mrt_extra_link a {
	height: 20px;
	line-height: 20px;
	padding: 0 21px 6px 0;
	color: #fff;
	font-size: 15px;
	font-weight: bold;
	background:
		url(https://flights.myrealtrip.com/air/imgs_ibe/mrt/ico/main/ico_circle_right.png)
		no-repeat right 0 top 2px;
	background-size: 16px 16px;
}

.k1_section_multi {
	padding: 0;
	margin-top: 0;
	background-color: transparent;
	/* background: #f1f1f1; */
}

legend {
	position: absolute;
	top: 0;
	left: 0;
	width: 0;
	height: 0;
	overflow: hidden;
	visibility: hidden;
	font-size: 0;
	line-height: 0;
}

.mrt_border_all {
	border-radius: 2px;
	border: 1px solid #dee2e6;
	box-sizing: border-box;
}

.mrt_city_selector, .mrt_date_selector, .mrt_seat_wrap {
	border: none !important;
}

.mrt_city_selector {
	float: left;
	width: 422px;
	height: 48px;
	line-height: 48px;
	background-color: #fff;
	-webkit-transition: all .2s ease;
	transition: all .2s ease;
}

.k1_clearfix {
	display: block;
}

.mrt_multi .k1_itinerary li {
	height: auto;
	padding: 0;
	margin-top: 4px;
	background-color: transparent;
}

.k1_itinerary select {
	width: 150px;
	display: none;
}

.k1_main_search_area .k1_search_are_spot input[type=text].k1_input_text
	{
	padding-top: 0;
	padding-bottom: 0;
	line-height: 48px;
	transition: none;
}

.mrt_city_selector input[type="text"] {
	float: left;
	padding: 0;
	padding-left: 14px;
	width: 195px;
	line-height: 48px;
	box-sizing: border-box;
	border: none;
	color: #343a40;
}

.k1_section_multi input[type="text"] {
	font-weight: bold;
	font-size: 16px;
}

input[type=text].k1_input_text {
	height: 48px;
	padding: 10px 12px;
	/* border: 1px solid #dee2e6; */
	box-sizing: border-box;
	font-size: 14px;
	border-radius: 2px;
	color: #343a40;
	transition: all .08s ease-out;
}

.k1_section_multi input[type="text"] {
	font-weight: bold;
	font-size: 16px;
}

.mrt_city_selector .mrt_btn_swapper {
	float: left;
	margin-top: 8px;
}

.mrt_btn_swapper {
	display: inline-block;
	width: 32px;
	height: 32px;
	background:
		url(https://flights.myrealtrip.com/air/imgs_ibe/mrt/btn/main/ico_swapper_lg.png)
		no-repeat center #f1f3f5;
	background-size: 24px !important;
	border-radius: 2px;
	font-size: 0;
}

button {
	border: none;
}

.k1_search_are_spot input::placeholder { /* Chrome/Opera/Safari */
	color: rgb(173, 181, 189) !important;
	font-weight: 400 !important;
}

.mrt_border_all {
	border-radius: 2px;
	border: 1px solid #dee2e6;
	box-sizing: border-box;
}

.k1_input_text {
	height: 14px;
	padding: 2px 2px 1px;
	border: 1px solid #cfcfcf;
	color: #777;
	font-size: 11px;
	line-height: 14px;
}

.mrt_date_selector {
	float: left;
	width: 290px !important;
	height: 48px;
	margin-left: 4px !important;
	padding-left: 44px !important;
	background:
		url(https://flights.myrealtrip.com/air/imgs_ibe/mrt/ico/main/ico_datepicker.png)
		no-repeat 12px center #fff;
	background-size: 24px;
	border: none !important;
}

.mrt_date_selector input[type="text"] {
	float: left;
	width: 106px !important;
	height: 48px;
	line-height: 48px;
	padding: 0;
	border: none;
}

.mrt_date_selector .hyphen {
	float: left;
	display: inline-block;
	margin: 0 6px;
	text-align: center;
	line-height: 48px;
}

.mrt_seat_wrap {
	float: left;
	margin-left: 4px;
	width: 270px;
	height: 48px;
	transition: all .2s ease;
}

.mrt_seat_wrap a {
	display: block;
	height: 48px;
	line-height: 48px;
	border: none;
	border-radius: 2px;
	box-sizing: border-box;
	cursor: pointer;
	background:
		url(https://flights.myrealtrip.com/air/imgs_ibe/mrt/ico/main/ico_arrow_lg.png)
		no-repeat right 10px center #fff;
	background-size: 24px;
	font-weight: bold;
}

.mrt_seat_wrap a .txt {
	display: inline-block;
	padding-left: 44px;
	font-size: 16px;
	color: #343a40;
	background:
		url(https://flights.myrealtrip.com/air/imgs_ibe/mrt/ico/main/ico_person.png)
		no-repeat 12px center;
	background-size: 24px;
}

#div_search1_trip2 {
	display: none;
}

.mrt_multi {
	background-color: transparent;
	padding: 0 0 10px 0;
	border-bottom: 1px solid rgba(255, 255, 255, 0.25);
}

.mrt_multi .k1_itinerary li .k1_input_text {
	float: left;
	width: 236px !important;
	margin-right: 4px !important;
	margin-left: 0 !important;
	padding: 0;
	padding-left: 14px;
	border-radius: 2px;
	border: 0;
}

.mrt_multi .k1_itinerary {
	margin: 0;
	margin-bottom: 0;
	padding: 0;
	background-color: transparent;
}

.mrt_multi .k1_itinerary li .mrt_seat_wrap {
	margin-left: 0 !important;
}

.mrt_border_all {
	border-radius: 2px;
	border: 1px solid #dee2e6;
	box-sizing: border-box;
}

.mrt_multi .k1_itinerary li {
	height: auto;
	padding: 0;
	margin-top: 4px;
	background-color: transparent;
}

.mrt_multi .k1_itinerary li:first-child {
	margin-top: 0;
}

.mrt_multi .k1_itinerary li {
	height: auto;
	padding: 0;
	margin-top: 4px;
	background-color: transparent;
}

.k1_select_border {
	height: 19px;
	border: 1px solid #cfcfcf;
	color: #777;
	font-size: 11px;
	line-height: 12px;
}

.mrt_itinerary_plus {
	height: 48px;
	margin-left: 8px;
	line-height: 48px;
}

.k1_fl {
	float: left;
}

.mrt_itinerary_plus a {
	display: inline-block;
}

.mrt_itinerary_plus .mrt_plus_white {
	display: block;
	float: left;
	margin-top: 12px;
	margin-bottom: 12px;
}

.mrt_plus_white {
	display: inline-block;
	width: 24px;
	height: 24px;
	background:
		url(https://flights.myrealtrip.com/air/imgs_ibe/mrt/btn/main/ico_add_white.png)
		no-repeat center;
	font-size: 0;
	background-size: 24px;
}

.mrt_itinerary_plus span {
	display: block;
	float: left;
	padding-top: 12px;
	padding-bottom: 12px;
	margin-left: 8px;
	font-size: 16px;
	font-weight: 500;
	line-height: 24px;
	color: #fff;
}

.k1_main_search_area #inttab .k1_tar {
	background-color: transparent;
}

.k1_tar {
	text-align: right !important;
}

.k1_main_search_area #inttab .k1_tar .mrt_condi_chk {
	margin-top: 14px;
}

.k1_fl {
	float: left;
}

.mrt_condi_chk .mrt_check_wrap {
	float: left;
	margin-top: 12px;
}

.k1_mr14 {
	margin-right: 14px !important;
}

.mrt_check_wrap.white input {
	display: none;
}

.k1_tar .mrt_condi_chk label {
	color: #fff;
	line-height: 20px;
}

.mrt_check_wrap.white label {
	display: inline-block;
	height: 20px;
	line-height: 20px;
	cursor: pointer;
}

.mrt_check_wrap.white label span.ico_checkbox {
	display: inline-block;
	vertical-align: top;
	width: 20px;
	height: 20px;
	margin-right: 8px;
	border: 1px solid #ced4da;
	border-radius: 2px;
	box-sizing: border-box;
	background-color: transparent;
	-webkit-transition: all .08s ease-out;
	transition: all .08s ease-out;
}

.k1_mr16 {
	margin-right: 16px !important;
}

.mrt_condi_chk .mrt_double_wrap {
	float: left;
	margin-top: 12px;
}

.mrt_condi_chk .mrt_double_wrap .mrt_toggle_wrap {
	position: relative;
	float: left;
	margin-left: 14px;
	margin-right: 3px;
}

.mrt_condi_chk .mrt_double_wrap .mrt_toggle_wrap:before {
	content: "";
	display: block;
	position: absolute;
	top: 4px;
	left: -14px;
	width: 1px;
	height: 12px;
	background-color: rgba(255, 255, 255, 0.3);
}

.k1_main_search_area #inttab .k1_tar .mrt_condi_chk .mrt_toggle_wrap .switch
	{
	display: none;
}

.mrt_toggle_wrap .slider {
	position: absolute;
	cursor: pointer;
	top: 0;
	left: 0;
	right: 0;
	bottom: 0;
	background-color: #ccc;
	-webkit-transition: .4s;
	transition: .4s;
}

.mrt_condi_chk .mrt_double_wrap .mrt_tootip_wrap {
	float: left;
	line-height: 18px;
}

.ico_info_white {
	display: inline-block;
	width: 16px;
	height: 16px;
	background:
		url(https://flights.myrealtrip.com/air/imgs_ibe/mrt/ico/main/ico_info_white.png)
		no-repeat center;
	vertical-align: middle;
	background-size: 16px;
}

.mrt_condi_chk .mrt_double_wrap .mrt_tootip_wrap .txt_wrap {
	top: 120px;
	left: 390px;
	margin-left: 10px;
}

.mrt_tootip_wrap .txt_wrap {
	display: none;
	position: absolute;
	z-index: 6;
	background-color: #fff;
	box-shadow: 0px 0px 3px 0px rgba(0, 0, 0, 0.3);
	-webkit-box-shadow: 0 0 2px 0 rgba(0, 0, 0, 0.3);
	-moz-box-box-shadow: 0 0 1px 0 rgba(0, 0, 0, 0.3);
	border-collapse: separate;
	border-radius: 2px;
}

.mrt_condi_chk .mrt_double_wrap .mrt_tootip_wrap .txt_wrap .txt {
	float: left;
	width: 240px;
	text-align: left;
}

.mrt_tootip_wrap .txt_wrap .txt {
	display: block;
	width: 100px;
	text-align: center;
	border-radius: 3px;
	padding: 10px 12px;
	background-color: #fff;
	box-sizing: border-box;
	font-size: 13px;
	font-weight: normal;
	line-height: 1.5;
	word-wrap: break-word;
}

.mrt_toggle_wrap .switch input {
	display: none;
}

.k1_btn_price_search {
	position: absolute;
	top: 87px;
	right: 0;
	display: block;
	width: 70px;
	min-width: 70px;
	height: 48px;
	line-height: 48px;
	font-weight: bold;
	font-size: 16px;
	color: #fff !important;
	background-image: none;
	background-color: #51abf3;
	border-radius: 2px;
	box-shadow: 0 1px 4px 0 rgba(0, 0, 0, 0.1);
	text-align: center;
	-webkit-transform: background-color ease-in-out 0.25s, box-shadow
		ease-in-out0.25s;
	transition: background-color ease-in-out 0.25s, box-shadow
		ease-in-out0.25s;
}

#div_search2 {
	display: none;
}

.k1_search_are_spot {
	transition: height 0.3s ease;
	-webkit-transition: height 0.3s ease;
}

.mrt_itinerary_delete {
	height: 48px;
	line-height: 48px;
	margin-left: 8px;
}

.mrt_itinerary_delete a {
	display: block;
}

.mrt_itinerary_delete .mrt_delete_white {
	display: block;
	margin-top: 14px;
}

.mrt_plus_white, .mrt_toggle_wrap label {
	cursor: pointer;
}

.mrt_delete_white {
	display: inline-block;
	width: 24px;
	height: 24px;
	background:
		url(https://flights.myrealtrip.com/air/imgs_ibe/mrt/btn/main/ico_close_lg_white.png)
		no-repeat center;
	font-size: 0;
	background-size: 24px;
	cursor: pointer;
}

#search2_3, #search2_4 {
	display: none;
}

.mrt_check_wrap.white label span.ico_checkbox:hover {
	border: 2px solid rgb(173, 181, 189);
}

.mrt_check_wrap.white input:checked+label span.ico_checkbox {
	background:
		url(https://flights.myrealtrip.com//air/imgs_ibe/mrt/btn/main/ico_checkbox_white.png)
		no-repeat 0 0px;
	border: none;
	background-size: 20px;
}

.txt_wrap::after {
	top: 50%;
	margin-top: -5px;
	transform: rotate(45deg);
	left: 0;
	box-shadow: none;
}

.mrt_tootip_wrap .txt_wrap::after {
	position: absolute;
	top: 50%;
	z-index: -1;
	margin-left: -4px;
	content: "";
	display: inline-block;
	width: 8px;
	height: 8px;
	background-color: #fff;
	box-shadow: 1px 1px 0px 0px rgba(0, 0, 0, 0.1);
	-webkit-box-shadow: 1px 1px 0px 0px rgba(0, 0, 0, 0.1);
	-moz-box-box-shadow: 1px 1px 0px 0px rgba(0, 0, 0, 0.08);
	transform: rotate(225deg);
}

#simplemodal-container {
	position: absolute;
	background-color: transparent;
	border-color: transparent;
	height: 100%;
	padding: 0px;
	width: 762px;
	z-index: 1002;
	left: 419.5px;
	top: 270px;
	max-height: 885px;
	overflow: visible;
	-webkit-transform: all .3s ease;
	transform: all .3s ease;
}

/* 도시 스타일 */
#simplemodal-container {
	border: 0px;
	width: 745px;
}
#k1_pop_wrap {
	overflow: hidden;
	position: relative;
}

div.k1_mrtair_pop_wrap {
	position: relative;
	border-radius: 2px;
	box-shadow: 0 1px 4px 0 rgba(0, 0, 0, 0.15);
}

div.k1_mrtair_pop_wrap h4 {
	padding: 28px 32px 0;
	font-size: 18px;
	font-weight: 600;
	color: #343a40;
	line-height: 24px;
}

div.k1_mrtair_pop_contents {
	padding: 28px 32px 32px;
}

div.k1_mrtair_pop_wrap p {
	font-size: 13px;
}

.k1_mrtair_srch_city {
	margin-bottom: 20px;
}

.k1_mrtair_srch_city input[type=text] {
	display: block;
	float: left;
	padding: 0 16px;
	height: 40px;
	width: 551px;
	border: 1px solid #ced4da;
	border-right: none;
	border-radius: 2px 0 0 2px;
	font-size: 14px;
}

.k1_input_text {
	height: 14px;
	padding: 2px 2px 1px;
	border: 1px solid #cfcfcf;
	color: #777;
	font-size: 11px;
	line-height: 14px;
}

.k1_mrtair_srch_city button.k1_mrtair_btn {
	width: 100px;
	height: 40px;
	font-size: 16px;
	color: #fff;
	border: none;
	background-color: #51abf3;
	border-radius: 0 2px 2px 0;
}

#input_search::placeholder {
	color: rgb(173, 181, 189) !important;
	font-weight: 400 !important;
}

div.k1_mrtair_pop_wrap p.k1_title {
	margin-bottom: 20px;
	font-size: 16px;
	font-weight: 600;
	color: #343a40;
}

.k1_mt20 {
	margin-top: 20px !important;
}

div.k1_mrtair_pop_contents table.k1_tbl_form {
	margin-bottom: 0;
}

table.k1_tbl_form {
	font-size: 13px;
	border-top: 1px solid #dee2e6;
}

table.k1_tbl {
	width: 100%;
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

div.k1_mrtair_pop_contents table.k1_tbl_form th, div.k1_mrtair_pop_contents table.k1_tbl_form td
	{
	padding: 14px 8px;
	height: 20px;
}

table.k1_tbl_form th {
	padding: 0;
	text-align: left;
	font-weight: 600;
	color: #343a40;
}

table.k1_tbl_form th, table.k1_tbl_form td {
	padding: 14px 16px;
	border-bottom: 1px solid #e9ecef;
}

table.k1_tbl th, table.k1_tbl td {
	line-height: 18px;
}

table th, table td {
	font-size: 13px !important;
}

table.k1_tbl_form td {
	padding: 14px 16px;
	color: #495056;
}

.k1_main_city td {
	padding-top: 10px !important;
	padding-bottom: 10px !important;
}

.k1_main_city td a {
	padding: 6px 8px;
	border-radius: 2px;
	transition: all .08s;
}

a {
	color: #494949;
	text-decoration: none;
	cursor: pointer;
}

div.k1_mrtair_pop_wrap a.close_pop {
	position: absolute;
	top: 26px;
	right: 26px;
	width: 30px;
	height: 30px;
	border-radius: 2px;
	text-indent: -9999px;
	background:
		url(https://flights.myrealtrip.com/air/imgs_ibe/mrt/btn/ic-close.png)
		no-repeat center center;
	background-size: 24px 24px;
	transition: all .08s;
}

#simplemodal-container {
	display: none;
}

div.k1_mrtair_pop_wrap a.close_pop:hover {
	background-color: rgb(241, 243, 245);
}

.k1_main_city td a:hover {
	background-color: rgb(241, 243, 245);
}

#model_back {
	display: none;
	position: fixed;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
}
/* 달력 스타일 */
.mrt_calendar_wrap {
	position: absolute;
	top: -580px;
	left: 845px;
	width: 608px;
	z-index: 999999;
	padding: 0;
	box-sizing: border-box;
	background-color: #fff;
	display: none;
	box-shadow: 0 0 1px 0 rgba(0, 0, 0, 0.1), 0 1px 4px 0
		rgba(0, 0, 0, 0.15);
	border-radius: 2px;
	left: 845px;
}

.mrt_calendar_wrap .ly_area {
	padding: 20px 0 14px;
	height: 346px;
}

.mrt_calendar_wrap .k1_cal_wrap {
	width: 304px !important;
	padding: 0 12px;
}

.mrt_calendar_wrap .k1_cal_header {
	position: relative;
	height: 24px;
	line-height: 24px;
	margin-bottom: 24px;
	text-align: center;
	font-size: 20px;
	font-weight: 500;
}

.mrt_calendar_wrap .k1_cal_header a {
	position: absolute;
	top: -3px;
	display: block;
	width: 32px;
	height: 32px;
	font-size: 0;
	border-radius: 2px;
	transition: all ease-in-out 0.1s;
}

.mrt_calendar_wrap .k1_cal_header .btn_prev {
	left: 4px;
	background:
		url(https://flights.myrealtrip.com//air/imgs_ibe/mrt/btn/main/btn_cal_arrow_prev.png)
		no-repeat center;
	background-size: 32px;
}

.mrt_calendar_wrap .k1_cal_header .btn_next {
	right: 4px;
	background:
		url(https://flights.myrealtrip.com/air/imgs_ibe/mrt/btn/main/btn_cal_arrow_next.png)
		no-repeat center;
	background-size: 32px;
}

.mrt_calendar_wrap .ui-datepicker-calendar {
	width: 100% !important;
	table-layout: fixed;
	border: none;
}

#k1_content table th, #k1_content table td {
	vertical-align: middle;
	line-height: 1.4;
}

.mrt_calendar_wrap .ui-datepicker-calendar th {
	background-color: #fff;
	border-bottom: none;
	padding-top: 0;
	padding-bottom: 8px;
	height: 16px;
	text-align: center !important;
}

.mrt_calendar_wrap .ui-datepicker-calendar th span {
	height: 16px;
	line-height: 16px;
	font-size: 12px;
	color: #666d75 !important;
}

.mrt_calendar_wrap .ui-datepicker-calendar td span {
	display: block;
	height: 40px;
	line-height: 40px;
	font-size: 15px;
	text-align: center;
}

.mrt_calendar_wrap .ui-datepicker-calendar td {
	position: relative;
	height: 40px;
	border: none;
}

.mrt_calendar_wrap .ui-datepicker-calendar td .today+.txt {
	display: none;
}

.mrt_calendar_wrap .ui-datepicker-calendar td a {
	position: relative;
	z-index: 5;
	height: 40px;
	line-height: 40px;
	padding: 0;
	display: block;
	font-size: 15px;
	color: #495056;
	text-decoration: none;
	text-align: center;
	border-radius: 50%;
}

.mrt_calendar_wrap .ui-datepicker-calendar td .disable {
	color: #ced4da;
}

.k1_cal_wrap {
	float: left;
	padding: 12px;
	width: 304px;
	margin: 0;
	box-sizing: border-box;
}

.mrt_calendar_wrap .btn {
	clear: both;
	text-align: right;
	padding: 10px 16px 10px 16px;
	border-top: 1px solid #f1f3f5;
}

.mrt_calendar_wrap .btn a {
	display: inline-block;
	width: 72px;
	height: 32px;
	text-align: center;
	line-height: 32px;
	border-radius: 2px;
	background-color: #51abf3;
	color: #fff;
	font-size: 13px;
	font-weight: 600;
	transition: all ease-in-out 0.1s;
}

.mrt_calendar_wrap .ui-datepicker-calendar td a.middle,
	.mrt_calendar_wrap .ui-datepicker-calendar td a.start,
	.mrt_calendar_wrap .ui-datepicker-calendar td a.end {
	background-color: #51abf3;
	border-radius: 100%;
	color: #fff;
	font-weight: 600;
}

.mrt_calendar_wrap .ui-datepicker-calendar td a.middle,
	.mrt_calendar_wrap .ui-datepicker-calendar td a.start,
	.mrt_calendar_wrap .ui-datepicker-calendar td a.end {
	background-color: #51abf3;
	border-radius: 100%;
	color: #fff;
	font-weight: 600;
}

.mrt_calendar_wrap .ui-datepicker-calendar td a.selected {
	border: none;
	background-color: #e7f4fd;
	border-radius: 0;
}

.mrt_calendar_wrap .ui-datepicker-calendar td a.end+.txt {
	position: absolute;
	top: 0;
	left: 0;
	bottom: 0;
	z-index: 3;
	width: 50%;
	z-index: 3;
	height: auto;
	background-color: #e7f4fd;
	color: #fff;
	font-size: 0;
}

.mrt_calendar_wrap .ui-datepicker-calendar td a.start+.txt {
	position: absolute;
	top: 0;
	right: 0;
	left: auto;
	bottom: 0;
	z-index: 3;
	width: 50%;
	z-index: 3;
	height: auto;
	background-color: #e7f4fd;
	color: #fff;
	font-size: 0;
}

.ui-datepicker-calendar td a:hover {
	border: solid 2px #51abf3;
	border-radius: 50%;
}
/* 좌석 선택 */
.mrt_pop_type_02 {
	position: absolute;
	z-index: 6;
	background-color: #fff;
	border-radius: 3px;
}

.mrt_seat_pop {
	position: absolute;
	top: 263px;
	right: 420px;
	background-color: #fff;
	width: 344px;
	box-shadow: 0 0 1px 0 rgba(0, 0, 0, 0.1), 0 1px 4px 0
		rgba(0, 0, 0, 0.15);
}

.mrt_pers_num {
	padding: 0 24px 24px 24px;
}

.k1_clearfix {
	display: block;
}

#k1_pop_wrap {
	overflow: hidden;
	position: relative;
	border: none;
	border-radius: 2px;
	background-color: #fff;
	box-shadow: 0 0 1px 0 rgba(0, 0, 0, 0.1), 0 1px 4px 0
		rgba(0, 0, 0, 0.15);
}

.mrt_pop_type_02 .k1_pop_header {
	height: auto;
	line-height: normal;
	border-bottom: none;
	padding: 0;
}

.mrt_pop_type_02 .k1_pop_header h1 {
	line-height: 20px;
	color: #343a40;
	padding: 20px 24px 24px 24px;
	font-size: 14px;
	font-weight: 600;
	border-bottom: none;
}

.mrt_seat_pop .k1_pop_contents {
	padding: 0;
}

.mrt_pers_num {
	padding: 0 24px 24px 24px;
}

.mrt_pers_num dl:first-child {
	margin-top: 0;
}

.mrt_pers_num dl {
	height: 34px;
}

.mrt_pers_num dl dt {
	float: left;
	font-size: 16px;
	font-weight: 500;
	line-height: 16px;
}

.mrt_pers_num dl dt .mtr_sub_txt {
	display: block;
	margin-top: 4px;
	font-size: 12px;
	color: #adb5bd;
	font-weight: normal;
	line-height: 14px;
}

.mrt_pers_num dl dd {
	overflow: hidden;
	float: right;
	margin-top: 1px;
}

.mrt_pers_num dl dd button.mrt_btn_plus_gray, .mrt_pers_num dl dd button.mrt_btn_minus_gray
	{
	border-color: #ced4da;
}

.mrt_pers_num dl dd button {
	float: left;
	width: 32px;
	height: 32px;
	padding: 8px;
	border: 1px solid #ced4da;
	border-radius: 50%;
	transition: none !important;
	cursor: pointer;
}

.mrt_btn_plus_blue {
	display: inline-block;
	width: 16px;
	height: 16px;
	background:
		url(https://flights.myrealtrip.com/air/imgs_ibe/mrt/btn/main/ico_add_on.png)
		no-repeat center;
	font-size: 0;
	background-size: 16px;
}

.mrt_btn_minus_gray {
	display: inline-block;
	width: 16px;
	height: 16px;
	background:
		url(https://flights.myrealtrip.com/air/imgs_ibe/mrt/btn/main/ico_delete_gray.png)
		no-repeat center;
	font-size: 0;
	background-size: 16px;
}

.mrt_pers_num dl dd .num {
	float: left;
	width: 36px;
	height: 32px;
	line-height: 32px;
	font-size: 16px;
	text-align: center;
	font-weight: 500;
}

.mrt_pers_num dl dd button.mrt_btn_plus_blue, .mrt_pers_num dl dd button.mrt_btn_minus_blue
	{
	border-color: #51abf3;
}

.mrt_pers_num dl {
	margin-top: 16px;
}

.mrt_seat_num {
	padding: 20px 24px 24px 24px;
	border-top: 1px solid #f1f3f5;
}

.mrt_seat_num ul li:first-child {
	margin-top: 0;
}

.mrt_seat_num ul li .mrt_radio_wrap {
	float: left;
	width: 50%;
}

.mrt_radio_wrap input {
	display: none;
}

.mrt_radio_wrap label {
	display: inline-block;
	height: 20px;
	line-height: 20px;
	cursor: pointer;
}

.mrt_pop_type_02 #k1_pop_wrap .k1_btn_p_close1 {
	width: 24px;
	height: 24px;
	top: 14px;
	right: 18px;
}

.mrt_radio_wrap input:checked+label span.ico_radio {
	background:
		url(https://flights.myrealtrip.com/air/imgs_ibe/mrt/btn/main/ico_radio.png)
		no-repeat 0 0;
	border: none;
	background-size: 20px;
}

.mrt_radio_wrap label span.ico_radio {
	display: inline-block;
	vertical-align: top;
	width: 20px;
	height: 20px;
	margin-right: 8px;
	border: 1px solid #ced4da;
	box-sizing: border-box;
	border-radius: 100%;
	background-color: #fff;
	transition: all .08s ease-out;
}

.mrt_seat_num ul li {
	margin-top: 14px;
}

.k1_btn_p_close1 {
	width: 30px;
	height: 30px;
	top: 22px;
	right: 12px;
	background:
		url(https://flights.myrealtrip.com/air/imgs_ibe/mrt/btn/main/ico_close.png)
		no-repeat center;
	background-size: 20px;
	transition: background-color .08s;
}

.k1_btn_p_close1 {
	position: absolute;
	display: inline-block;
	top: 6px;
	right: 12px;
	width: 13px;
	height: 13px;
	border: 0 none;
	font-size: 0;
	cursor: pointer;
	vertical-align: middle;
}

.k1_btn_p_close1:hover {
	background-color: rgb(241, 243, 245);
}

#people_boxParent {
	display: none;
}

.mrt_home_notice {
	position: relative;
	width: 1060px;
	height: 48px;
	line-height: 16px;
	margin: 24px auto;
	background: #f6f7f7;
	border-radius: 2px;
	overflow: hidden;
}

.mrt_home_notice .more_view {
	position: absolute;
	top: 16px;
	right: 16px;
	line-height: 16px;
}

.mrt_home_notice .more_view a {
	padding-right: 16px;
	font-weight: 500;
	color: #848c94;
	background:
		url(https://flights.myrealtrip.com/air/imgs_ibe/mrt/ico/main/ico_arrow-right_xs_gray-500.png)
		no-repeat right;
	background-size: 16px 16px;
}

.swiper-containers {
	width: 950px;
	height: 35px;
	margin-top: 14px;
}

.mrt_home_notice::before {
	content: '공지';
	position: absolute;
	top: 13px;
	left: 16px;
	display: block;
	width: 36px;
	height: 22px;
	background-color: #1583db;
	font-size: 13px;
	font-weight: bold;
	color: #fff;
	text-align: center;
	line-height: 22px;
	border-radius: 2px;
}

.mrt_recent_slide.search .main_content__title {
	clear: both;
	font-size: 18px;
}

.mrt_recent_slide.search {
	margin: 48px auto;
}

.mrt_recent_slide {
	position: relative;
	width: 1060px;
	margin: 48px auto;
}

.mrt_recent_slide .main_content__title {
	color: #343a40;
	font-size: 24px;
	font-weight: 600;
	margin-bottom: 16px;
	position: relative;
	text-align: left;
}

.swiper-container {
	margin: 0 auto;
	position: relative;
	overflow: hidden;
	list-style: none;
	padding: 0;
	z-index: 1;
}

.mrt_recent_slide .swiper-wrapper {
	width: 1060px;
	margin: -20px -20px 0 0;
}

.swiper-container .swiper-notification {
	position: absolute;
	left: 0;
	top: 0;
	pointer-events: none;
	opacity: 0;
	z-index: -1000;
}

.mrt_recent_slide.promo {
	margin-bottom: 56px;
}

.swiper-container {
	margin: 0 auto;
	position: relative;
	overflow: hidden;
	list-style: none;
	padding: 0;
	z-index: 1;
}

.mrt_recent_slide .swiper-wrapper {
	width: 1060px;
	margin: -20px -20px 0 0;
}

.swiper-wrapper {
	position: relative;
	width: 100%;
	height: 100%;
	z-index: 1;
	display: -webkit-box;
	display: -webkit-flex;
	display: -ms-flexbox;
	display: flex;
	-webkit-transition-property: -webkit-transform;
	transition-property: -webkit-transform;
	-o-transition-property: transform;
	transition-property: transform;
	transition-property: transform, -webkit-transform;
	-webkit-box-sizing: content-box;
	box-sizing: content-box;
}

.mrt_recent_slide a {
	width: 100%;
	display: block;
	padding: 14px 16px;
	box-sizing: border-box;
	text-align: left;
	border-radius: 2px;
}

.mrt_recent_slide.promo .banner__item {
	background-size: cover;
	border-radius: 2px;
	box-shadow: inset 0 0 0 1px rgba(0, 0, 0, 0.05);
	height: 128px;
}

.mrt_recent_slide .swiper-slide {
	margin-top: 20px;
	background-color: transparent;
}

.mrt_recent_slide.promo .swiper-pagination {
	position: absolute;
	margin: 0 auto;
	line-height: 8px;
	left: 50%;
	right: auto;
	-moz-transform: translate(-50%, 0);
	-ms-transform: translate(-50%, 0);
	-webkit-transform: translate(-50%, 0);
	bottom: -18px;
	width: auto;
	padding: 7px 12px;
	background-color: #fff;
	border-radius: 10.5px;
	text-align: center;
	z-index: 10;
	transform: translate(-50%, 0);
}

.mrt_recent_slide.promo .swiper-pagination-bullet:first-child {
	margin-left: 0;
}

.mrt_recent_slide.promo .swiper-pagination-bullet {
	margin-left: 6px;
	background-color: #666d75;
}

.swiper-pagination-bullet-active {
	opacity: 1;
	background: #007aff;
}

.swiper-pagination-bullet {
	width: 8px;
	height: 8px;
	display: inline-block;
	border-radius: 100%;
	background: #000;
	opacity: .2;
}

.mrt_recent_slide .swiper-button-next, .swiper-container-rtl .swiper-button-prev
	{
	right: -38px;
	top: 50%;
	margin-top: -4px;
	width: 20px;
	height: 43px;
	background:
		url(https://flights.myrealtrip.com/air/imgs_ibe/mrt/btn/main/ico_swip_next.png)
		no-repeat left;
	background-size: 20px;
}

.mrt_recent_slide .swiper-button-prev, .swiper-container-rtl .swiper-button-next
	{
	left: -38px;
	top: 50%;
	margin-top: -4px;
	width: 20px;
	height: 43px;
	background:
		url(https://flights.myrealtrip.com/air/imgs_ibe/mrt/btn/main/ico_swip_prev.png)
		no-repeat left;
	background-size: 20px;
}

.mrt_recent_slide.promo .swiper-button-prev, .mrt_recent_slide.promo .swiper-container-rtl .swiper-button-next,
	.mrt_recent_slide.promo .swiper-button-next, .mrt_recent_slide.promo .swiper-container-rtl .swiper-button-prev
	{
	margin-top: -21.5px;
}

.swiper-button-next, .swiper-button-prev {
	position: absolute;
	top: 50%;
	width: 27px;
	height: 44px;
	margin-top: -22px;
	z-index: 10;
	cursor: pointer;
	background-size: 27px 44px;
	background-position: center;
	background-repeat: no-repeat;
}

.swiper-slide {
	float: left;
}

.mrt_main_notice_wrap {
	width: 1060px;
	margin: 0 auto 120px;
	overflow: hidden;
}

.mrt_main_notice {
	float: left;
	width: 672px;
	overflow: hidden;
}

.mrt_main_notice .mrt_main__title {
	float: left;
}

.mrt_main_notice .mrt_main__title, .mrt_main_help .mrt_main__title {
	margin-bottom: 24px;
	font-size: 20px;
	font-weight: 600;
	line-height: 20px;
}

.k1_h_tit1 {
	background: none;
	padding: 0;
	margin: 0;
	font-size: 16px;
	font-weight: 600;
}

.mrt_main_notice .more_view {
	float: right;
	line-height: 20px;
}

.mrt_main_notice .more_view a {
	padding-right: 16px;
	font-weight: 500;
	color: #848c94;
	background:
		url(https://flights.myrealtrip.com/air/imgs_ibe/mrt/ico/main/ico_arrow-right_xs_gray-500.png)
		no-repeat right;
	background-size: 16px 16px;
}

.mrt_main_notice .mrt_main_notice_mini .k1_bbs_board {
	border-top: 1px solid #ced4da;
}

.k1_bbs_board {
	width: 100%;
	border-top: #555 2px solid;
	font-size: 13px;
	table-layout: fixed;
}
/* 도시 검색한 표 스타일 */
.k1_mt10 {
	margin-top: 10px !important;
}

caption {
	visibility: hidden;
	overflow: hidden;
	display: none;
}

.mrt_main_notice .mrt_main_notice_mini tbody tr:nth-child(1),
	.mrt_main_notice .mrt_main_notice_mini tbody tr:nth-child(2),
	.mrt_main_notice .mrt_main_notice_mini tbody tr:nth-child(3) {
	display: block;
}

#k1_content table th, #k1_content table td {
	vertical-align: middle;
	line-height: 1.4;
}

.mrt_main_notice .mrt_main_notice_mini .k1_tal {
	width: 570px;
}

#k1_content table th, #k1_content table td {
	vertical-align: middle;
	line-height: 1.4;
}

.mrt_main_notice .mrt_main_notice_mini .k1_tal a {
	font-size: 15px;
	font-weight: 400;
	color: #495056;
}

.mrt_main_notice .mrt_main_notice_mini td a {
	display: block;
	width: 570px;
	line-height: 16px;
	overflow: hidden;
	text-overflow: ellipsis;
	white-space: nowrap;
}

.mrt_main_notice .mrt_main_notice_mini td {
	padding: 16px 0 !important;
	font-size: 15px;
	color: #495056;
	line-height: 16px !important;
	border-right: none;
	border-color: #e9ecef;
}

.mrt_main_notice .mrt_main_notice_mini .time {
	width: 102px;
	text-align: right;
	font-size: 13px;
	color: #848c94;
}

.k1_txt_tit02 {
	display: inline-block;
	width: 42px;
	height: 18px;
	font-size: 12px;
	background:
		url(https://flights.myrealtrip.com/air/imgs_ibe/mrt/bg/txt_tit02.gif)
		no-repeat;
	color: #fff;
	line-height: 19px;
	text-align: center;
}

.k1_bbs_board td {
	border-bottom: #d9d9d9 1px solid;
}

#rowlength tr:hover {
	background-color: rgb(248, 249, 250);
}

.mrt_main_help {
	float: left;
	width: 340px;
	margin-left: 48px;
}

.mrt_help__content {
	height: 122px;
	padding-top: 24px;
	border-top: 1px solid #ced4da;
	border-bottom: 1px solid #e9ecef;
}

.mrt_help__content .label {
	font-size: 14px;
	font-weight: 600;
	color: #343a40;
	line-height: 18px;
}

.mrt_help__content .tel {
	margin-top: 8px;
	margin-bottom: 10px;
	font-size: 28px;
	font-weight: bold;
}

.mrt_help__content p {
	font-size: 12px;
	color: #666d75;
	line-height: 18px;
}

.mrt_recent_slide {
	position: relative;
	width: 1060px;
	margin: 48px auto;
}

.mrt_recent_slide .main_content__title {
	color: #343a40;
	font-size: 24px;
	font-weight: 600;
	margin-bottom: 16px;
	position: relative;
	text-align: left;
}

.mrt_recent_slide .swiper-wrapper {
	width: 1060px;
	margin: -20px -20px 0 0;
}

.swiper-wrapper {
	position: relative;
	width: 100%;
	height: 100%;
	z-index: 1;
	display: -webkit-box;
	display: -webkit-flex;
	display: -ms-flexbox;
	display: flex;
	-webkit-transition-property: -webkit-transform;
	transition-property: -webkit-transform;
	-o-transition-property: transform;
	transition-property: transform;
	transition-property: transform, -webkit-transform;
	-webkit-box-sizing: content-box;
	box-sizing: content-box;
}

.mrt_recent_slide .swiper-slide {
	margin-top: 20px;
	background-color: transparent;
}

.swiper-slide {
	-webkit-flex-shrink: 0;
	-ms-flex-negative: 0;
	flex-shrink: 0;
	width: 100%;
	height: 100%;
	position: relative;
	-webkit-transition-property: -webkit-transform;
	transition-property: -webkit-transform;
	-o-transition-property: transform;
	transition-property: transform;
	transition-property: transform, -webkit-transform;
}

.swiper-slide {
	float: left;
}

.mrt_recent_slide.popular a {
	padding: 0;
	border: 0;
	position: relative;
}

.mrt_recent_slide.popular a:before {
	-webkit-box-shadow: inset 0 0 0 1px rgba(132, 140, 148, 0.3);
	/* box-shadow: inset 0 0 0 1px rgba(132, 140, 148, 0.3); */
	content: '';
	height: 100%;
	left: 0;
	position: absolute;
	top: 0;
	width: 100%;
	border-radius: 2px;
}

.mrt_recent_slide.popular a .img {
	height: 140px;
	overflow: hidden;
	border-radius: 2px 2px 0 0;
	background-color: #dee2e6;
	background-position: center;
	background-repeat: no-repeat;
	background-size: cover;
}

.mrt_recent_slide.popular a .bottom .nation {
	height: 24px;
	font-size: 15px;
	font-weight: 600;
}

.mrt_recent_slide.popular a .bottom .trip, .mrt_recent_slide.popular a .bottom .date
	{
	font-size: 12px;
	color: #848c94;
	line-height: 16px;
}

.mrt_recent_slide.popular a .bottom .trip, .mrt_recent_slide.popular a .bottom .date
	{
	font-size: 12px;
	color: #848c94;
	line-height: 16px;
}

.mrt_recent_slide.popular a .bottom .price {
	overflow: hidden;
	margin-top: 12px;
	color: #343a40 !important;
	font-size: 14px;
	line-height: 18px;
}

.mrt_recent_slide.popular a .bottom .price .airline {
	float: right;
	margin-top: 2px;
	font-weight: normal;
	font-size: 12px;
	color: #025ba5;
}

.mrt_recent_slide a span {
	display: block;
	line-height: 14px;
}

.mrt_recent_slide.popular a .bottom {
	padding: 16px;
}

em, address {
	font-style: normal;
}

.price {
	position: relative !important;
	color: #f2312c !important;
	font-weight: 600 !important;
	letter-spacing: -0.3px !important;
}

.mrt_recent_slide.popular .swiper-button-prev, .mrt_recent_slide.popular .swiper-container-rtl .swiper-button-next,
	.mrt_recent_slide.popular .swiper-button-next, .mrt_recent_slide.popular .swiper-container-rtl .swiper-button-prev
	{
	margin-top: -19px;
}

.mrt_recent_slide .swiper-button-next, .swiper-container-rtl .swiper-button-prev
	{
	right: -38px;
	top: 50%;
	margin-top: -4px;
	width: 20px;
	height: 43px;
	background:
		url(https://flights.myrealtrip.com/air/imgs_ibe/mrt/btn/main/ico_swip_next.png)
		no-repeat left;
	background-size: 20px;
}

.swiper-button-next.swiper-button-disabled, .swiper-button-prev.swiper-button-disabled
	{
	/*  opacity: .35; */
	display: none;
	cursor: auto;
	pointer-events: none;
}

.mrt_recent_slide .swiper-button-prev, .swiper-container-rtl .swiper-button-next
	{
	left: -38px;
	top: 50%;
	margin-top: -4px;
	width: 20px;
	height: 43px;
	background:
		url(https://flights.myrealtrip.com/air/imgs_ibe/mrt/btn/main/ico_swip_prev.png)
		no-repeat left;
	background-size: 20px;
}

.mrt_recent_slide.popular:last-child {
	margin-bottom: 80px;
}
.mrt_btn_minus_gray, .mrt_btn_plus_blue{
	cursor: pointer;
}
button.mrt_btn_minus_blue{
	border-color: #51abf3;
}
.mrt_calendar_wrap .ui-datepicker-calendar td .today {
    background-color: #f1f3f5;
    border-radius: 100%;
    color: #495056;
}
.mrt_calendar_wrap .ui-datepicker-calendar td a.middle, .mrt_calendar_wrap .ui-datepicker-calendar td a.start, .mrt_calendar_wrap .ui-datepicker-calendar td a.end {
    background-color: #51abf3;
    border-radius: 100%;
    color: #fff;
    font-weight: 600;
}
.mrt_calendar_wrap .ui-datepicker-calendar td a.middle + .txt {
    position: absolute;
    left: 0;
    top: 0;
    bottom: 0;
    width: 100%;
    background-color: #e7f4fd;
    font-size: 0;
}
.k1_mt10 {
    margin-top: 10px !important;
}
table.k1_tbl_basic {
    text-align: center;
    margin-bottom: 20px;
}
table.k1_tbl {
    width: 100%;
}
.k1_mb0 {
    margin-bottom: 0px !important;
}
.k1_mt10 {
    margin-top: 10px !important;
}
table {
    border-collapse: collapse;
    border-spacing: 0;
}
tr, th {
    font-weight: normal;
}
div.k1_mrtair_pop_contents table.k1_tbl_basic th {
    padding: 10px;
}
table.k1_tbl_basic th {
    padding: 14px 10px;
    color: #495056;
    border-top: 1px solid #ced4da;
    border-bottom: 1px solid #e9ecef;
}
table.k1_tbl th, table.k1_tbl td {
    line-height: 18px;
}
table th, table td {
    font-size: 13px !important;
}
.k1_gride3 {
    border-color: #ced4da !important;
}
.k1_gride3 {
    overflow-x: hidden;
    overflow-y: scroll;
    border-bottom: 1px solid #c9c9c9;
}
.k1_gh300 {
    height: 299px;
}
table.k1_tbl_basic {
    text-align: center;
    margin-bottom: 20px;
}
table.k1_tbl {
    width: 100%;
}
.k1_gride3 table {
    border-top: none 0;
}
table.k1_tbl_basic td:first-child {
    border-left: none;
}
table.k1_tbl_basic td {
    padding: 14px 12px;
    color: #495056;
    border-bottom: 1px solid #e9ecef;
}
table.k1_tbl th, table.k1_tbl td {
    line-height: 18px;
}
.k1_city_name td {
    padding-top: 8px !important;
    padding-bottom: 8px !important;
}
table th, table td {
    font-size: 13px !important;
}
.k1_city_name a {
    display: inline-block;
    padding: 2px 8px;
    font-weight: 600;
    border-radius: 2px;
    transition: all .08s;
}
#searchbox{
	display: none;
}
.citylist:hover{
	cursor: pointer;
	background-color: rgb(241, 243, 245);
}
.mrt_btn_minus_blue {
    display: inline-block;
    width: 16px;
    height: 32px;
    background: url(https://flights.myrealtrip.com/air/imgs_ibe/mrt/btn/main/ico_delete_blue.png) no-repeat center;
    font-size: 0;
    background-size: 16px;
}
</style>
<script>
var c_month = null;
var c_year = null;
var start = 0;
var end = 0;
var start2 = 0;
var end2 = 0;
var CtiySearch = null;
	$(document)
			.ready(
					function() {
						c_month = new Date().getMonth()+1;
						c_year = new Date().getYear()+1900;
						
						$(".LnbLocalNavItem-module__item--3ZodT").removeClass(
								"LnbLocalNavItem-module__active--3-BID");
						$("#topIcon02").addClass(
								"LnbLocalNavItem-module__active--3-BID");
						$(".interval_select input label").css("color", "#fff")
								.css("opacity", "0.5")
								.css("font-weight", "400");

						$("#initFormCode1 label").css("color", "#fff").css(
								"opacity", "1").css("font-weight", "bold").css(
								"	border-bottom", "2px solid #fff");

						$(".mrt_tootip_wrap").hover(function() {
							$(".txt_wrap").css("display", "block");
						}, function() {
							$(".txt_wrap").css("display", "none");
						});

						$(".mrt_toggle_wrap").click(function() {
							$("#initFormCode3").click();
						});

						$("input[name='initform']").change(
								function() {
									start = 0;
									end = 0;
									$(".ui-datepicker-calendar td a").removeClass("start");
									$(".ui-datepicker-calendar td a").removeClass("end");
									$(".ui-datepicker-calendar td a").removeClass("middle");
									$(".ui-datepicker-calendar td a").removeClass("selected");
									$("div.txt").remove();
									$("#txt_depDt_view").val("");
									$("#txt_arrDt_view").val("");
									$("#multi_depDt1_view").val("");
									$("#multi_depDt2_view").val("");
									$("#multi_depDt3_view").val("");
									$("#multi_depDt4_view").val("");
									if ($("#initFormCode3").is(":checked")) {
										$("#div_search1")
												.css("display", "none");
										$("#div_search2").css("display",
												"block");
										$("#mrt_double_toggle").css("display",
												"none");
										$("#txt_arrDt_view").css("display",
												"block");
										$(".mrt_calendar_wrap").css("display",
												"none");
										$(".hyphen").css("display", "block");
									}
									if ($("#initFormCode1").is(":checked")) {
										$("#div_search1").css("display",
												"block");
										$("#div_search2")
												.css("display", "none");
										$("#mrt_double_toggle").css("display",
												"block");
										$("#txt_arrDt_view").css("display",
												"block");
										$(".mrt_calendar_wrap").css("display",
												"none");
										$(".hyphen").css("display", "block");
									}
									if ($("#initFormCode2").is(":checked")) {
										$("#div_search1").css("display",
												"block");
										$("#div_search2")
												.css("display", "none");
										$("#mrt_double_toggle").css("display",
												"none");
										$("#txt_arrDt_view").css("display",
												"none");
										$(".mrt_calendar_wrap").css("display",
												"none");
										$(".hyphen").css("display", "none");
									}
									
								});
					
						$(".mrt_itinerary_plus")
								.click(
										function() {
											if ($("#search2_3").css("display") == "none") {
												$("#search2_3").css("display",
														"block");
											} else if ($("#search2_4").css(
													"display") == "none") {
												$("#search2_4").css("display",
														"block");
											}
										});

						$(".mrt_itinerary_delete").click(function() {
							if($("#search2_4").css("display") == "block"){
								$("#search2_4").css("display", "none");
								$("#multi_depDt4_view").val('');								
								start = 0;
								start2 = 0;
								end = 0;
								end2 = 0;
								$(".ui-datepicker-calendar td a").removeClass("start");
								$(".ui-datepicker-calendar td a").removeClass("end");
								$(".ui-datepicker-calendar td a").removeClass("middle");
								$(".ui-datepicker-calendar td a").removeClass("selected");
								$("div.txt").remove();
							}else{
								$("#search2_3").css("display", "none");
								$("#multi_depDt3_view").val('');
								start = 0;
								start2 = 0;
								end = 0;
								end2 = 0;
								$(".ui-datepicker-calendar td a").removeClass("start");
								$(".ui-datepicker-calendar td a").removeClass("end");
								$(".ui-datepicker-calendar td a").removeClass("middle");
								$(".ui-datepicker-calendar td a").removeClass("selected");
								$("div.txt").remove();
							}
							// $(this).parent().css("display", "none");
							// 지우기
						});

						$(".close_pop").click(function() {
							$("#simplemodal-container").css("display", "none");
							$("#model_back").fadeOut();
							$("#searchbox").css("display", "none");
						});
						$(".startCity").on(
								"click",
								function() {
									CtiySearch = $(this);
									$(".block").animate({
										"left" : "+=50px"
									}, "fast");

									$("#simplemodal-container").fadeIn();
									$("#simplemodal-container").css("left",
											$(this).offset().left + "px").css(
											"top",
											$(this).offset().top + 60 + "px");

									$("#model_back").fadeIn();
									$(".mrt_calendar_wrap").css("display",
											"none");
								});
						$(".endCity").on(
								"click",
								function() {
									CtiySearch = $(this);
									$("#simplemodal-container").fadeIn();
									$("#simplemodal-container").css("left",
											$(this).offset().left + "px").css(
											"top",
											$(this).offset().top + 60 + "px");
									$("#model_back").fadeIn();
									$(".mrt_calendar_wrap").css("display",
											"none");
								})
						// 도시 선택
						$(".k1_main_city td a").on("click", function() {
							// console.log($(this).text());
							// CtiySearch.val($(this).text());
							var searchCity = $(this).text();
							$.ajax({
								   	url:"<%= request.getContextPath() %>/flights/searchCity.do"
								   	,dataType:"json"
								   	,type:"get"
								   	,data: {
								   		searchCity:searchCity
								   	}
								   	,cache:false // 항상 새로 읽어오겠다.
								   	,success:function(data){
								   		//alert(data);
								   		// console.log(data.length);
								   		var dataSize = data.length;
								   			$(data).each(function (index, e){
								   				if(dataSize== 1){
										   			CtiySearch.val(e.c_name+"("+ e.ap_city+")");
										   			$("#simplemodal-container").css("display", "none");
										   			 $("#model_back").fadeOut();
										   			 $("#searchbox").css("display", "none");
										   			 return ;
										   		}
									   		});
								   	}
								   	
								       ,error:function(){
								       	alert("에러~~~~")
								       } 
								 });
							$("#simplemodal-container").css("display", "none");
							$("#model_back").fadeOut();
						});
						$("#btn_search").on("click", function(){
							$("#searchbox").css("display", "block");
							var searchCity = $("#input_search").val();
							  $.ajax({
								   	url:"<%= request.getContextPath() %>/flights/searchCity.do"
								   	,dataType:"json"
								   	,type:"get"
								   	,data: {
								   		searchCity:searchCity
								   	}
								   	,cache:false // 항상 새로 읽어오겠다.
								   	,success:function(data){
								   		//alert(data);
								   		// console.log(data.length);
								   		var tbody = $("<tbody ></tbody>");
							   			$("#table_city_list tbody").remove();
								   		var tbody = $("<tbody ></tbody>");
								   		var dataSize = data.length;
								   		
								   		if(data == ""){
								   			var tr = $("<tr></tr>");
								   			var td = $("<td class='last k1_tac' colspan='3'>검색된 결과가 없습니다.</td>");
								   			tr.append(td);
								   			tbody.append(tr);
								   		}else{
								   			$(data).each(function (index, e){
								   				if(dataSize== 1){
										   			CtiySearch.val(e.c_name+"("+ e.ap_city+")");
										   			$("#simplemodal-container").css("display", "none");
										   			 $("#model_back").fadeOut();
										   			 $("#searchbox").css("display", "none");
										   			 $("#input_search").val("");
										   			 return ;
										   		}
									   			// console.log(e.c_code);
									   			var tr = $("<tr class='citylist'></tr>");
									   			var td = $("<td></td>");
									   			var a = $("<a href='javascript:void(0);' class='' title='"+e.c_code+"'>"+e.c_name+"<br>("+e.ap_code+")</a>");
									   			td.append(a);
									   			tr.append(td);
									   			td = $("<td class='cityInfo' title='"+e.ap_city+"'>"+e.c_name+"</td>");
									   			tr.append(td);
									   			td=$("<td class='last' title='"+e.n_name+"'>"+e.n_name+"</td>");
									   			tr.append(td);
									   			tbody.append(tr);
									   			// console.log(e.c_name);
									   		});
								   		}
									   		$("#table_city_list").append(tbody);
								   		
								   	}
								   	
								       ,error:function(){
								       	alert("에러~~~~")
								       } 
								 });
						});
						
						$("#btn_arrDepChange").on(
								"click",
								function() {
									var buffer = $("#depCtyCodeSearch").val();
									$("#depCtyCodeSearch").val(
											$("#txt_arrCtyCode").val());
									$("#txt_arrCtyCode").val(buffer);
								});
						
						var toggle = false;
						$(".chooseDate").off("click").on("click", function(e) {
							$(".mrt_calendar_wrap").css("top", "262px");
							$(".mrt_calendar_wrap").fadeIn();
						});

						// 달력 출력 후 다른 곳을 클릭하면 없어지는 것 구현 안됨
						$("#calClose").on("click", function(){
							$(".mrt_calendar_wrap").css("display", "none");
						});
						
						
						
						// 달력 체크 한거 반영되게
						$("#calSelect").on("click", function(){
							var text = null;
							var weeks = "일월화수목금토";
							if ($("#initFormCode3").is(":checked")) { // 다구간
								if($("#search2_3").css("display") == "none"){ // 일정 칸 2개
									// console.log("일정 칸 2개");
									var s_year = start.substring(0, 4);
									var s_month = start.substring(4, 6);
									var s_day = start.substring(6, 8);
									var s_date = new Date(s_year, s_month-1, s_day);
									
									var e_year = end.substring(0, 4);
									var e_month = end.substring(4, 6);
									var e_day = end.substring(6, 8);
									var e_date = new Date(e_year, e_month-1, e_day);
																	
									$("#multi_depDt1").val( s_year + "/" + s_month + "/" + s_day);
									$("#multi_depDt2").val(  e_year + "/" + e_month + "/" + e_day);
									
									$("#multi_depDt1_view").val( s_month + "월 " + s_day + "일 ("+weeks[s_date.getDay()]+")");
									$("#multi_depDt2_view").val( e_month + "월 " + e_day + "일 ("+weeks[e_date.getDay()]+")");
									$("#calendarPop").css("display", "none");
								}else if($("#search2_4").css("display") == "none"){ // 일정 칸 3개
									// console.log("일정 칸 3개");
									var s_year = start.substring(0, 4);
									var s_month = start.substring(4, 6);
									var s_day = start.substring(6, 8);
									var s_date = new Date(s_year, s_month-1, s_day);
									
									var e_year = end.substring(0, 4);
									var e_month = end.substring(4, 6);
									var e_day = end.substring(6, 8);
									var e_date = new Date(e_year, e_month-1, e_day);
									
									var m_year = start2.substring(0, 4);
									var m_month = start2.substring(4, 6);
									var m_day = start2.substring(6, 8);
									var m_date = new Date(m_year, m_month-1, m_day);
									
									$("#multi_depDt1").val( s_year + "/" + s_month + "/" + s_day);
									$("#multi_depDt2").val(  m_year + "/" + m_month + "/" + m_day);
									$("#multi_depDt3").val(  e_year + "/" + e_month + "/" + e_day);
									
									$("#multi_depDt1_view").val( s_month + "월 " + s_day + "일 ("+weeks[s_date.getDay()]+")");
									$("#multi_depDt2_view").val( m_month + "월 " + m_day + "일 ("+weeks[m_date.getDay()]+")");
									$("#multi_depDt3_view").val( e_month + "월 " + e_day + "일 ("+weeks[e_date.getDay()]+")");
									$("#calendarPop").css("display", "none");
								}else{ // 일정 칸 4개
									// console.log("일정 칸 4개");
									var s_year = start.substring(0, 4);
									var s_month = start.substring(4, 6);
									var s_day = start.substring(6, 8);
									var s_date = new Date(s_year, s_month-1, s_day);
									
									var e_year = end.substring(0, 4);
									var e_month = end.substring(4, 6);
									var e_day = end.substring(6, 8);
									var e_date = new Date(e_year, e_month-1, e_day);
									
									var s2_year = start2.substring(0, 4);
									var s2_month = start2.substring(4, 6);
									var s2_day = start2.substring(6, 8);
									var s2_date = new Date(s2_year, s2_month-1, s2_day);
									
									var e2_year = end2.substring(0, 4);
									var e2_month = end2.substring(4, 6);
									var e2_day = end2.substring(6, 8);
									var e2_date = new Date(e2_year, e2_month-1, e2_day);
									
									$("#multi_depDt1").val( s_year + "/" + s_month + "/" + s_day);
									$("#multi_depDt2").val(  e_year + "/" + e_month + "/" + e_day);
									$("#multi_depDt3").val(  s2_year + "/" + s2_month + "/" + s2_day);
									$("#multi_depDt4").val(  e2_year + "/" + e2_month + "/" + e2_day);
									
									$("#multi_depDt1_view").val( s_month + "월 " + s_day + "일 ("+weeks[s_date.getDay()]+")");
									$("#multi_depDt2_view").val( e_month + "월 " + e_day + "일 ("+weeks[e_date.getDay()]+")");
									$("#multi_depDt3_view").val( s2_month + "월 " + s2_day + "일 ("+weeks[s2_date.getDay()]+")");
									$("#multi_depDt4_view").val( e2_month + "월 " + e2_day + "일 ("+weeks[e2_date.getDay()]+")");
									$("#calendarPop").css("display", "none");
								}
							}else if($("#initFormCode2").is(":checked")){ // 편도
								var s_year = start.substring(0, 4);
								var s_month = start.substring(4, 6);
								var s_day = start.substring(6, 8);
								// console.log(s_year+"/"+s_month+"/"+s_day);
								var s_date = new Date(s_year, s_month-1, s_day);
								// console.log(weeks[s_date.getDay()]);
								$("#txt_depDt").val(s_year +"/" +s_month+ "/"+s_day );
								$("#txt_depDt_view").val( s_month + "월 " + s_day + "일 ("+weeks[s_date.getDay()]+")");
								$("#calendarPop").css("display", "none");
							}else if($("#initFormCode1").is(":checked")){ // 왕복
								var s_year = start.substring(0, 4);
								var s_month = start.substring(4, 6);
								var s_day = start.substring(6, 8);
								var s_date = new Date(s_year, s_month-1, s_day);
								
								var e_year = end.substring(0, 4);
								var e_month = end.substring(4, 6);
								var e_day = end.substring(6, 8);
								var e_date = new Date(e_year, e_month-1, e_day);
								
								$("#txt_depDt").val(s_year +"/" +s_month+ "/"+s_day );
								$("#txt_arrDt").val(e_year +"/" +e_month+ "/"+e_day );
								
								$("#txt_depDt_view").val( s_month + "월 " + s_day + "일 ("+weeks[s_date.getDay()]+")");
								$("#txt_arrDt_view").val( e_month + "월 " + e_day + "일 ("+weeks[e_date.getDay()]+")");
								$("#calendarPop").css("display", "none");
							}
						});
						
						$(".k1_select_border").on("click", function() {
							$("#people_boxParent").css("display", "block");
						});
						/* 승객 선택 div 닫기 */
						$(".k1_btn_p_close1").on("click", function() {
							$("#people_boxParent").css("display", "none");
						});

						setInterval(function() {
							$(".swiper-slide:first").stop(false, true).animate(
									{
										top : "-=32px"
									}, {
										queue : false
									}) //같이 움직여야 해서 {queue:false}
							.next().stop(false, true).animate({
								top : "-=32px"
							}, function() {
								var box = $(this).prev().detach();//.detach() 제거하고난 뒤 제거한 요소를 반환
								$("#list_show").append(box)
								box.css("top", "32px");
							});
						}, 6000);
						
						var peopleCnt = 1;
						$("#btnAdultPlus, #btnChildPlus, #btnInfantPlus").on("click", function(){
								var spanValue = $(this).prev();
							if(peopleCnt < 9){
								spanValue.text(Number(spanValue.text())+1);
								peopleCnt += 1;
							}else{
								alert("총인원이 9명이 넘을수 없습니다.");
							}
							
							if($(this).is($("#btnAdultPlus"))){
								if(spanValue.text() > 1)
									$(this).prev().prev().addClass("mrt_btn_minus_blue");
							}else{
								if(spanValue.text() > 0)
									$(this).prev().prev().addClass("mrt_btn_minus_blue");
							}
							updatePeople(peopleCnt);
						});
						
						$("#btnAdultMinus, #btnChildMinus, #btnInfantMinus").on("click", function(){
							var spanValue = $(this).next();
							if($(this).is($("#btnAdultMinus"))){
								if(spanValue.text() <= 1)
									return;
							}else{
								if(spanValue.text() <= 0)
									return;
							}
							spanValue.text(Number(spanValue.text())-1);
							peopleCnt -= 1;
							if($(this).is($("#btnAdultMinus"))){
								if(spanValue.text() <= 1)
									$(this).removeClass("mrt_btn_minus_blue");
							}else{
								if(spanValue.text() <= 0)
									$(this).removeClass("mrt_btn_minus_blue");
							}
							updatePeople(peopleCnt);
						});
						
						
						
						// 승객 +- 누르면 업뎃 되게 하는 함수
						function updatePeople(cnt){
							var peopleValue = $("#bin_people").text();
							var peopleindex = peopleValue.indexOf("명");
							var suffix = peopleValue.substring(peopleindex);
							var prefix = peopleValue.substring(0, peopleindex-1);
							$("#bin_people").text(prefix + cnt + suffix);
							
							var peopleValue = $("#bin_people2").text();
							var peopleindex = peopleValue.indexOf("명");
							var suffix = peopleValue.substring(peopleindex);
							var prefix = peopleValue.substring(0, peopleindex-1);
							$("#bin_people2").text(prefix + cnt + suffix);
							
							
						};
						
						$("input[name='initForm']").on("change", function(){
							var peopleValue = $("#bin_people").text();
							var peopleindex = peopleValue.indexOf(",");
							var prefix = peopleValue.substring(0, peopleindex+2);
							$("#bin_people").text(prefix+$(this).next().text());
							
							var peopleValue = $("#bin_people2").text();
							var peopleindex = peopleValue.indexOf(",");
							var prefix = peopleValue.substring(0, peopleindex+2);
							$("#bin_people2").text(prefix+$(this).next().text());
							
						});
						
						// 달력 그리기
						
						
						// console.log(c_month + "/" + c_year);
						// 기본 달력 출력
						$.ajax({
							url:"<%= request.getContextPath()%>/flights/printCalendar.do"
							,dataType:"json"
							,type:"get"
							,data: {
								c_month: c_month,
								c_year: c_year
							}
							,cache:false // 항상 새로 읽어오겠다.
							,success:function(data){
								printCalendar(data);
							}
						    ,error:function(){
						    	alert("에러~~~~")
						    } 
						});
						
						// 항공권 검색
						$("#flightsSearchButton").on("click", function(){
							var href = $("#intfareSchForm").serialize();
							href += "&adult=" + $("#adultCount").text();
							href += "&child=" + $("#childCount").text();
							href += "&infant=" + $("#infantCount").text();
							href += "&seatLevel=" +$(".seatLevel .mrt_radio_wrap input[type='radio']:checked").next().text();
							// console.log($(".seatLevel .mrt_radio_wrap input[type='radio']:checked").next().text());
							if($("#initFormCode3").is(":checked")){
								href = "initform=MT";
								href += "&startCity=" + $("#multi_depCtyCode1").val();
								href += "&endCity="+ $("#multi_arrCtyCode1").val();
								href += "&Date1=" + $("#multi_depDt1").val();
								href += "&startCity2=" + $("#multi_depCtyCode2").val();
								href += "&endCity2=" + $("#multi_arrCtyCode2").val();
								href += "&Date2=" + $("#multi_depDt2").val();
								if($("#search2_3").css("display") == "block"){
									href += "&startCity3=" + $("#multi_depCtyCode3").val();
									href += "&endCity3=" + $("#multi_arrCtyCode3").val();
									href += "&Date3=" + $("#multi_depDt3").val();
								}
								if($("#search2_4").css("display") == "block"){
									href += "&startCity4=" + $("#multi_depCtyCode4").val();
									href += "&endCity4=" + $("#multi_arrCtyCode4").val();
									href += "&Date4=" + $("#multi_depDt4").val();
								}
								href += "&adult=" + $("#adultCount").text();
								href += "&child=" + $("#childCount").text();
								href += "&infant=" + $("#infantCount").text();
								if($("#nonStop").is(":checked"))
										href += "&nonStop=" + $("#nonStop").val();
								if($("#freebag").is(":checked"))
										href += "&freebag=" + $("#freebag").val();
								href += "&seatLevel=" +$(".seatLevel .mrt_radio_wrap input[type='radio']:checked").next().text();
							}
							console.log(href);
							location.href = $("#intfareSchForm").attr("action") +"?"+ href;

						});
						

						

			});
</script>
<script>
$(document).on("click", ".citylist",function() {
	var ap_city = $(this).find("td[class='cityInfo']").attr("title");
	var c_name = $(this).find("td[class='cityInfo']").text();
	// console.log(ap_city);
	CtiySearch.val(c_name+"("+ ap_city+")");
	$("#simplemodal-container").css("display", "none");
	 $("#model_back").fadeOut();
	 $("#searchbox").css("display", "none");
	 $("#input_search").val("");
});

	$(document).on("click", ".ui-datepicker-calendar td a",
	function() {
		if($("#initFormCode2").is(":checked")){ // 편도는 start만
			$(".ui-datepicker-calendar td a").removeClass("start");
			// console.log("편도");
			$(this).addClass("start");
			$("div.txt").remove();
			start = $(this).attr("class").substring(0 , $(this).attr("class").indexOf(" "));
		}else if ($("#search2_3").css("display") == "block" && $("#search2_4").css("display") == "none") { // 다구간 일정 3칸
			// console.log("다구간 일정 3칸");
			if(start == 0 && start2 == 0 && end == 0){
				// console.log("첫번째");
				$(this).addClass("start");
				$("div.txt").remove();
				$(this).parent().append($("<div class='txt' id='startDate1'>여정1</div>"));
				start = $(this).attr("class").substring(0 , $(this).attr("class").indexOf(" "));
			}else if($(this).attr("class") > start && start2 == 0){
				$(this).addClass("middle");
				$(this).parent()
						 .append($("<div class='txt' id='endDate1'>여정2</div>"));
				start2 = $(this).attr("class").substring(0 , $(this).attr("class").indexOf(" ")); // middle 클래스값 저장
				
			}else if(start!=0 && start2 != 0 && $(this).attr("class") > start2){
				// console.log("마지막");
				$(".ui-datepicker-calendar td a").removeClass("end");
				$(this).addClass("end");
				$(this).parent()
						 .append($("<div class='txt' id='startDate2'>여정3</div>"));
				end = $(this).attr("class").substring(0 , $(this).attr("class").indexOf(" "));
			}else{ // 모두 해제 하고 새로 start
				$("div.txt").remove();
				start = 0;
				end = 0;
				start2 = 0;
				$("div.txt").remove();
				$(".ui-datepicker-calendar td a").removeClass("start");
				$(".ui-datepicker-calendar td a").removeClass("end");
				$(".ui-datepicker-calendar td a").removeClass("middle");
				$(this).addClass("start");
				$(this).parent()
				  .append($("<div class='txt' id='startDate1'>여정1</div>"));
				start = $(this).attr("class").substring(0 , $(this).attr("class").indexOf(" "));
			}
			
			$(".ui-datepicker-calendar td a").removeClass("selected");

			// start, end 사이 td 태그들 색칠 되게
			var selecterDate = $(".ui-datepicker-calendar td a");
			var i = 0;
			for(i=0; i<selecterDate.length;i++){
				// console.log($(selecterDate[i]).attr("class").substring($(selecterDate[i]).attr("class").indexOf(" ")) );
				// console.log(start);
				
				if($(selecterDate[i]).attr("class").indexOf(" ") == -1){
					var className = $(selecterDate[i]).attr("class");
				}else{
					var className = $(selecterDate[i]).attr("class").substring(0, $(selecterDate[i]).attr("class").indexOf(" "));
				}
				// console.log(className);
				if((className>start && className< start2 )|| className > start2 && className < end ){
					$(selecterDate[i]).addClass("selected");
				}
			}
			
			return; // 다구간 일정 칸 3개 선택 완료
		}else if($("#search2_4").css("display") == "block"){ // 다구간 일정 4칸
			// console.log("다구간 일정 4칸");
			if(start == 0 && start2 == 0 && end == 0){
				// console.log("첫번째");
				$(this).addClass("start");
				$("div.txt").remove();
				$(this).parent().append($("<div class='txt' id='startDate1'>여정1</div>"));
				start = $(this).attr("class").substring(0 , $(this).attr("class").indexOf(" "));
			}else if($(this).attr("class") > start && start != 0 && end == 0){
				$(this).addClass("middle");
				$(this).parent()
						 .append($("<div class='txt' id='endDate1'>여정2</div>"));
				end = $(this).attr("class").substring(0 , $(this).attr("class").indexOf(" ")); // middle 클래스값 저장
			}else if(start!=0 && end != 0 && $(this).attr("class") > end && start2 == 0){
				console.log("중간");
				$(this).addClass("middle");
				$(this).parent()
						 .append($("<div class='txt' id='startDate2'>여정3</div>"));
				start2 = $(this).attr("class").substring(0 , $(this).attr("class").indexOf(" ")); // middle 클래스값 저장
			}else if(start!=0 && end != 0 && start2!=0 && $(this).attr("class") > start2){
				// console.log("마지막");
				$(".ui-datepicker-calendar td a").removeClass("end");
				$(this).addClass("end");
				$(this).parent()
						 .append($("<div class='txt' id='endDate2'>여정4</div>"));
				end2 = $(this).attr("class").substring(0 , $(this).attr("class").indexOf(" "));
			}else{ // 모두 해제 하고 새로 start
				$("div.txt").remove();
				start = 0;
				end = 0;
				start2 = 0;
				end2 = 0;
				$("div.txt").remove();
				$(".ui-datepicker-calendar td a").removeClass("start");
				$(".ui-datepicker-calendar td a").removeClass("end");
				$(".ui-datepicker-calendar td a").removeClass("middle");
				$(this).addClass("start");
				$(this).parent()
				  .append($("<div class='txt' id='startDate1'>여정1</div>"));
				start = $(this).attr("class").substring(0 , $(this).attr("class").indexOf(" "));
			}
			// console.log(start + "/" + end + "/" + start2 + "/" + end2);
			$(".ui-datepicker-calendar td a").removeClass("selected");

			// start, end 사이 td 태그들 색칠 되게
			var selecterDate = $(".ui-datepicker-calendar td a");
			var i = 0;
			for(i=0; i<selecterDate.length;i++){
				// console.log($(selecterDate[i]).attr("class").substring($(selecterDate[i]).attr("class").indexOf(" ")) );
				// console.log(start);
				
				if($(selecterDate[i]).attr("class").indexOf(" ") == -1){
					var className = $(selecterDate[i]).attr("class");
				}else{
					var className = $(selecterDate[i]).attr("class").substring(0, $(selecterDate[i]).attr("class").indexOf(" "));
				}
				// console.log(className);
				if((className>start && className< end )|| className > end && className < start2 || className > start2 && className < end2){
					$(selecterDate[i]).addClass("selected");
				}
			}
			
			return; // 다구간 일정 칸 4개 선택 완료

		}else { // 왕복
			// console.log("다구간 일정 2칸 + 왕복");
			if (start == 0 && end == 0) {
				$(this).addClass("start");
				$("div.txt").remove();
				$(this).parent()
						 .append($("<div class='txt'>여정1</div>"));
				start = $(this).attr("class").substring(0 , $(this).attr("class").indexOf(" "));
			} else if ($(this).attr("class") > end
					&& end != 0) {
				$(".ui-datepicker-calendar td a").removeClass("start");
				$(".ui-datepicker-calendar td a").removeClass("end");
				$(this).addClass("start");
				$("div.txt").remove();
				$(this).parent()
						  .append($("<div class='txt'>여정1</div>"));
				start = $(this).attr("class").substring(0 , $(this).attr("class").indexOf(" "));
				end = 0;
			} else if ($(this).attr("class") < start) {
				$(".ui-datepicker-calendar td a").removeClass("start");
				$(".ui-datepicker-calendar td a").removeClass("end");
				$(this).addClass("start");
				$("div.txt").remove();
				$(this).parent()
						 .append($("<div class='txt'>여정1</div>"));
				start = $(this).attr("class").substring(0 , $(this).attr("class").indexOf(" "));
				end = 0;
			} else if (start != 0 && end != 0) {
				$(".ui-datepicker-calendar td a").removeClass("start");
				$(".ui-datepicker-calendar td a").removeClass("end");
				$(this).addClass("start");
				$("div.txt").remove();
				$(this).parent()
						 .append($("<div class='txt'>여정1</div>"));
				start = $(this).attr("class").substring(0 , $(this).attr("class").indexOf(" "));
				end = 0;
			} else if ($(this).attr("class") > start) {
				$(".ui-datepicker-calendar td a").removeClass("end");
				$(this).addClass("end");
				$(this).parent()
						 .append($("<div class='txt'>여정2</div>"));
				end = $(this).attr("class").substring(0 , $(this).attr("class").indexOf(" "));
			}

			$(".ui-datepicker-calendar td a").removeClass("selected");

			// start, end 사이 td 태그들 색칠 되게
			var selecterDate = $(".ui-datepicker-calendar td a");
			var i = 0;
			for(i=0; i<selecterDate.length;i++){
				// console.log($(selecterDate[i]).attr("class").substring($(selecterDate[i]).attr("class").indexOf(" ")) );
				// console.log(start);
				
				if($(selecterDate[i]).attr("class").indexOf(" ") == -1){
					var className = $(selecterDate[i]).attr("class");
				}else{
					var className = $(selecterDate[i]).attr("class").substring(0, $(selecterDate[i]).attr("class").indexOf(" "));
				}
				// console.log(className);
				if(className>start && className< end){
					$(selecterDate[i]).addClass("selected");
				}
			}
		}
	});
</script>
<body>
	<div id="header">
		<jsp:include page="/WEB-INF/layout/top1.jsp" />
		<div class="k1_search_are_spot">
		<form action="<%= request.getContextPath() %>/flights/search.do" id="intfareSchForm" name="intfareSchForm"
					method="get" target="_blank">
			<div id="inttab">
				<ul class="k1_section_1">
					<li class="interval_select"><input type="radio"
						id="initFormCode1" name="initform" checked="checked" value="RT"
						class="input_radio" /> <label for="initFormCode1">왕복</label> <input
						type="radio" id="initFormCode2" name="initform" value="OW"
						class="input_radio" /> <label for="initFormCode2">편도</label> <input
						type="radio" id="initFormCode3" name="initform" value="MT"
						class="input_radio" /> <label for="initFormCode3">다구간</label></li>
					<li class="btn_initial" style="display: none;"><span
						class="k1_btn6"><button type="button">초기화</button></span></li>
					<li class="mrt_extra_link"><a
						href="<%=request.getContextPath()%>/flights/book/list.do"
						target="_parent" title="항공권 예약내역">항공권 에약내역</a></li>
				</ul>
				<div class="k1_section_multi" id="div_search1">
					<div id="div_search1_trip1">
						<!-- 왕복/편도 출국 귀국 선택 -->
						<ul class="k1_itinerary">
							<li class="k1_clearfix">
								<div class="mrt_city_selector k1_clearfix mrt_border_all">
									<select name="" id="depCtyCodeSelector"
										class="k1_select_border k1_ml15">
										<option value="SEL" selected="">인천/김포</option>
										<option value="ICN">인천</option>
										<option value="GMP">김포</option>
										<option value="PUS">부산</option>
										<option value="CJJ">청주</option>
										<option value="MWX">무안(광주)</option>
										<option value="KWJ">광주</option>
										<option value="RSU">여수</option>
										<option value="SHO">속초</option>
										<option value="KUV">군산</option>
										<option value="WJU">원주</option>
										<option value="KAG">강릉</option>
										<option value="YNY">양양</option>
										<option value="TAE">대구</option>
										<option value="HIN">진주</option>
										<option value="MPK">목포</option>
										<option value="KPO">포항</option>
										<option value="CJU">제주도</option>
										<option value="USN">울산</option>
									</select> <input id="depCtyCodeSearch" placeholder="출발지가 어디인가요?"
										class="k1_input_text input startCity" type="text"
										readonly="readonly" value="인천(ICN)"  name="startCity">
									<button type="button" class="mrt_btn_swapper"
										id="btn_arrDepChange" style="cursor: pointer;">도착지
										출발지 교체</button>
									<input id="txt_arrCtyCode" placeholder="도착지가 어디인가요?"
										class="k1_input_text endCity" type="text" readonly="readonly" name="endCity">
								</div>
								<div
									class="mrt_date_selector k1_clearfix mrt_border_all chooseDate"
									id="div_day_selector" role="calendarPopTxt"
									style="cursor: pointer;">
									<input id="txt_depDt" class="k1_input_text" type="hidden"
										title="가는날 선택" placeholder="가는날 선택" readonly="readonly" name="startDate">
									<input id="txt_depDt_view" class="k1_input_text" type="text"
										title="가는날 선택" placeholder="가는날 선택" readonly="readonly"
										role="calendarPopInput" style="cursor: pointer;"> <span
										class="hyphen" id="hyphen">-</span> <input id="txt_arrDt"
										class="k1_input_text" type="hidden" title="오는날 선택"
										placeholder="오는날 선택" readonly="readonly" name="endDate"> <input
										id="txt_arrDt_view" class="k1_input_text" type="text"
										title="오는날 선택" placeholder="오는날 선택" readonly="readonly"
										role="calendarPopInput" style="cursor: pointer;">
								</div>
								<div class="mrt_seat_wrap mrt_border_all">
									<a href="javascript:void(0);" class="k1_select_border"> <span
										class="txt" id="bin_people2">승객 1명, 일반석</span>
									</a>
								</div>
							</li>
						</ul>
					</div>


					<!-- //출발/도착다른구간 toggle 클릭 시 나오는 영역 -->
				</div>
				<div class="k1_section_multi mrt_multi" id="div_search2">
					<!-- fildset -->
					<!-- 조건별 검색 -->
					<ul class="k1_itinerary">
						<li class="k1_clearfix" id="search2_1"><select name=""
							class="k1_select_border k1_ml4 k1_mr22"
							id="multi_depCtyCodeSelector" title="출발지 여정1 콤보박스">
								<option value="SEL" selected="">인천/김포</option>
								<option value="ICN">인천</option>
								<option value="GMP">김포</option>
								<option value="PUS">부산</option>
								<option value="CJJ">청주</option>
								<option value="MWX">무안(광주)</option>
								<option value="KWJ">광주</option>
								<option value="RSU">여수</option>
								<option value="SHO">속초</option>
								<option value="KUV">군산</option>
								<option value="WJU">원주</option>
								<option value="KAG">강릉</option>
								<option value="YNY">양양</option>
								<option value="TAE">대구</option>
								<option value="HIN">진주</option>
								<option value="MPK">목포</option>
								<option value="KPO">포항</option>
								<option value="CJU">제주</option>
								<option value="USN">울산</option>
						</select> <input id="multi_depCtyCode1" placeholder="출발지가 어디인가요?"
							class="k1_input_text k1_w242 startCity" type="text"
							title="출발지 여정1 찾기" readonly="readonly" value="인천(ICN)">
							<input id="multi_arrCtyCode1" placeholder="도착지가 어디인가요?"
							class="k1_input_text k1_w242 k1_ml8 endCity" type="text"
							title="도착지 여정1 찾기" readonly="readonly"> <input
							id="multi_depDt1"
							class="mrt_date_selector k1_input_text k1_w246 chooseDate"
							type="hidden" placeholder="탑승일이 언제인가요?" title="날짜선택"
							readonly="readonly"> <input id="multi_depDt1_view"
							class="mrt_date_selector k1_input_text k1_w246 chooseDate"
							type="text" placeholder="탑승일이 언제인가요?" title="날짜선택"
							readonly="readonly" role="calendarPopTxt"
							style="cursor: pointer;" value="">
							<div class="mrt_seat_wrap mrt_border_all">
								<a href="javascript:void(0);" class="k1_select_border"> <span
									class="txt" id="bin_people">승객 1명, 일반석</span>
								</a>
							</div></li>

						<li class="k1_clearfix" id="search2_2"><input
							id="multi_depCtyCode2" placeholder="출발지가 어디인가요?"
							class="k1_input_text k1_w242 startCity" type="text"
							title="출발지 여정2 찾기" readonly="readonly"> <input
							id="multi_arrCtyCode2" placeholder="도착지가 어디인가요?"
							class="k1_input_text k1_w242 k1_ml8 endCity" type="text"
							title="도착지 여정2 찾기" readonly="readonly"> <input
							id="multi_depDt2"
							class="mrt_date_selector k1_input_text k1_w246 chooseDate"
							type="hidden" title="날짜선택" placeholder="탑승일이 언제인가요?"
							readonly="readonly"> <input id="multi_depDt2_view"
							class="mrt_date_selector k1_input_text k1_w246 chooseDate"
							type="text" title="날짜선택" placeholder="탑승일이 언제인가요?"
							readonly="readonly" role="calendarPopTxt"
							style="cursor: pointer;" value="">

							<div class="mrt_itinerary_plus k1_fl">
								<a href="javascript:void(0)">
									<button type="button" class="mrt_plus_white">추가</button> <span>여정추가</span>
								</a>
							</div></li>
						<li class="k1_clearfix" id="search2_3"><input
							id="multi_depCtyCode3" placeholder="출발지가 어디인가요?"
							class="k1_input_text k1_w242 startCity" type="text"
							title="출발지 여정3 찾기" readonly="readonly"> <input
							id="multi_arrCtyCode3" placeholder="도착지가 어디인가요?"
							class="k1_input_text k1_w242 k1_ml8 endCity" type="text"
							title="도착지 여정3 찾기" readonly="readonly"> <input
							id="multi_depDt3"
							class="mrt_date_selector k1_input_text k1_w246 chooseDate"
							type="hidden" title="날짜선택" placeholder="탑승일이 언제인가요?"
							readonly="readonly"> <input id="multi_depDt3_view"
							class="mrt_date_selector k1_input_text k1_w246 chooseDate"
							type="text" title="날짜선택" placeholder="탑승일이 언제인가요?"
							readonly="readonly" role="calendarPopTxt"
							style="cursor: pointer;" value="">

							<div class="mrt_itinerary_delete k1_fl">
								<a href="javascript:void(0)">
									<button type="button" class="mrt_delete_white">여정삭제</button>
								</a>
							</div></li>
						<li class="k1_clearfix" id="search2_4"><input
							id="multi_depCtyCode4" placeholder="출발지가 어디인가요?"
							class="k1_input_text k1_w242 startCity" type="text"
							title="출발지 여정4 찾기" readonly="readonly"> <input
							id="multi_arrCtyCode4" placeholder="도착지가 어디인가요?"
							class="k1_input_text k1_w242 k1_ml8 endCity" type="text"
							title="도착지 여정4 찾기" readonly="readonly"> <input
							id="multi_depDt4"
							class="mrt_date_selector k1_input_text k1_w246 chooseDate"
							type="hidden" title="날짜선택" placeholder="탑승일이 언제인가요?"
							readonly="readonly"> <input id="multi_depDt4_view"
							class="mrt_date_selector k1_input_text k1_w246 chooseDate"
							type="text" title="날짜선택" placeholder="탑승일이 언제인가요?"
							readonly="readonly" role="calendarPopTxt"
							style="cursor: pointer;" value="">

							<div class="mrt_itinerary_delete k1_fl">
								<a href="javascript:void(0)">
									<button type="button" class="mrt_delete_white">여정삭제</button>
								</a>
							</div></li>
					</ul>
					<!-- /fildset -->
				</div>
				
					<!-- 왕복/편도 검색 조건 선택 -->
					<div class="k1_tar k1_clearfix">
						<div class="mrt_condi_chk k1_fl k1_clearfix">
							<div class="mrt_check_wrap white k1_mr14">
								<input type="checkbox" id="nonStop" name="nonstop"
									class="k1_input_check" value="Y"> <label for="nonStop"><span
									class="ico_checkbox"></span>직항만</label>
							</div>
							<div class="mrt_check_wrap white k1_mr16">
								<input type="checkbox" id="freebag" name="freebag"
									class="k1_input_check" value="Y"> <label for="freebag"><span
									class="ico_checkbox"></span>무료 수하물 가능</label>
							</div>
							<div class="mrt_double_wrap k1_clearfix" id="mrt_double_toggle">
								<div class="mrt_toggle_wrap">
									<label class="switch"> <input type="checkbox"
										id="toggle1"> <!-- <span class="slider round"></span> -->
									</label> <label for="toggle1">출발/도착 다른 구간</label>
								</div>
								<a href="javascript:void(0);" class="mrt_tootip_wrap"> <span
									class="ico_info_white"></span> <span class="txt_wrap"> <span
										class="txt">출발 여정의 도착지와 귀국 여정의 출발지가 다른 경우의 여행입니다.<br>예)
											인천 &gt; 런던, 파리 &gt; 인천
									</span>
								</span>
								</a>
							</div>
						</div>
						<a href="javascript:void(0);" class="k1_btn_price_search" id="flightsSearchButton" title="검색">검색</a>
					</div>
			</div>
				</form>
		</div>
	</div>
	<div id="body"></div>


	<div id="simplemodal-container" class="simplemodal-container">
		<div class="simplemodal-wrap">
			<div id="simplemodal-data" class="simplemodal-data">
				<div id="_modal" style="overflow: hidden;">
					<div id="k1_pop_wrap" class="k1_mrtair_pop_wrap"
						style="background-color: rgb(255, 255, 255);">
						<h4>도시 선택</h4>
						<div class="k1_mrtair_pop_contents">
							<p class="k1_mrtair_srch_city">
								<input type="text" id="input_search" class="k1_input_text"
									placeholder="도시명을 입력하세요">
								<button class="k1_mrtair_btn" type="button" id="btn_search"
									style="cursor: pointer;">검색</button>
							</p>
							<div id="searchbox" class="k1_city_name k1_mt10">
								<table class="k1_tbl k1_tbl_basic k1_mt10 k1_mb0">
									<colgroup>
										<col style="width: 160px;">
										<col style="width: 140px;">
										<col style="width: 180px;">
										<col style="width: *;">
									</colgroup>
									<tbody>
										<tr>
											<th>공항(한글명)</th>
											<th>도시(한글명)</th>
											<th class="">국가</th>
										</tr>
									</tbody>
								</table>
								<!-- 검색한 도시 리스트 나오는 div -->
								<div class="k1_gride3 k1_gh300" id="div_city_list">
									<table class="k1_tbl k1_tbl_basic" id="table_city_list" xmlns="http://www.w3.org/1999/xhtml">
										<colgroup>
											<col style="width: 160px;">
											<col style="width: 140px;">
											<col style="width: 180px;">
											<col style="width: *;">
										</colgroup>
									</table>
								</div>
							</div>
							<p class="k1_title k1_mb10 k1_mt20">주요도시 바로 선택</p>
							<table class="k1_tbl k1_tbl_form k1_main_city" id="maincitylist">
								<caption>주요도시 바로 선택</caption>
								<tbody>
									<tr>
										<th scope="row">국내</th>
										<td><a href="javascript:void(0);">인천</a></td>
										<td><a href="javascript:void(0);">김포</a></td>
										<td><a href="javascript:void(0);">제주</a></td>
										<td><a href="javascript:void(0);">부산</a></td>
									</tr>
									<tr>
										<th scope="row">일본</th>
										<td><a href="javascript:void(0);">도쿄</a></td>
										<td><a href="javascript:void(0);">나고야</a></td>
										<td><a href="javascript:void(0);">후쿠오카</a></td>
										<td><a href="javascript:void(0);">오키나와</a></td>
									</tr>
									<tr>
										<th scope="row">중국</th>
										<td><a href="javascript:void(0);">베이징</a></td>
										<td><a href="javascript:void(0);">상하이</a></td>
										<td><a href="javascript:void(0);">대련</a></td>
										<td><a href="javascript:void(0);">웨이하이</a></td>
									</tr>
									<tr>
										<th scope="row" rowspan="3">아시아</th>
										<td><a href="javascript:void(0);">홍콩</a></td>
										<td><a href="javascript:void(0);">타이페이</a></td>
										<td><a href="javascript:void(0);">다낭</a></td>
										<td><a href="javascript:void(0);">방콕</a></td>
									</tr>
									<tr>
										<th scope="row" style="display: none;">아시아</th>
										<td><a href="javascript:void(0);">비엔티엔</a></td>
										<td><a href="javascript:void(0);">싱가포르</a></td>
										<td><a href="javascript:void(0);">코타키나발루</a></td>
										<td><a href="javascript:void(0);">델리</a></td>
									</tr>
									<tr>
										<th scope="row" style="display: none;">아시아</th>
										<td><a href="javascript:void(0);">울란바토르</a></td>
										<td><a href="javascript:void(0);">발리</a></td>
										<td><a href="javascript:void(0);">뭄바이</a></td>
										<td><a href="javascript:void(0);">씨엠립</a></td>
									</tr>
									<tr>
										<th scope="row" rowspan="3">미주</th>
										<td><a href="javascript:void(0);">로스엔젤레스</a></td>
										<td><a href="javascript:void(0);">라스베가스</a></td>
										<td><a href="javascript:void(0);">뉴욕</a></td>
										<td><a href="javascript:void(0);">샌프란시스코</a></td>
									</tr>
									<tr>
										<th scope="row" style="display: none;">미주</th>
										<td><a href="javascript:void(0);">하와이</a></td>
										<td><a href="javascript:void(0);">밴쿠버</a></td>
										<td><a href="javascript:void(0);">토론토</a></td>
										<td><a href="javascript:void(0);">몬트리올</a></td>
									</tr>
									<tr>
										<th scope="row" style="display: none;">미주</th>
										<td><a href="javascript:void(0);">오타와</a></td>
										<td><a href="javascript:void(0);">토론토</a></td>
										<td><a href="javascript:void(0);">보스턴</a></td>
										<td></td>
									</tr>
									<tr>
										<th scope="row">중남미</th>
										<td><a href="javascript:void(0);">상파울루</a></td>
										<td><a href="javascript:void(0);">칸쿤</a></td>
										<td><a href="javascript:void(0);">산티아고</a></td>
										<td><a href="javascript:void(0);">아바나</a></td>
									</tr>
									<tr>
										<th scope="row" rowspan="2">유럽</th>
										<td><a href="javascript:void(0);">런던</a></td>
										<td><a href="javascript:void(0);">파리</a></td>
										<td><a href="javascript:void(0);">로마</a></td>
										<td><a href="javascript:void(0);">마드리드</a></td>
									</tr>
									<tr>
										<th scope="row" style="display: none;">유럽</th>
										<td><a href="javascript:void(0);">프랑크푸르트</a></td>
										<td><a href="javascript:void(0);">암스테르담</a></td>
										<td><a href="javascript:void(0);">이스탄불</a></td>
										<td><a href="javascript:void(0);">모스크바</a></td>
									</tr>
									<tr>
										<th scope="row">대양주</th>
										<td><a href="javascript:void(0);">시드니</a></td>
										<td><a href="javascript:void(0);">멜버른</a></td>
										<td><a href="javascript:void(0);">괌</a></td>
										<td><a href="javascript:void(0);">사이판</a></td>
									</tr>
									<tr>
										<th scope="row">중동</th>
										<td><a href="javascript:void(0);">아부다비</a></td>
										<td><a href="javascript:void(0);">두바이</a></td>
										<td></td>
										<td></td>
									</tr>
									<tr>
										<th scope="row">아프리카</th>
										<td><a href="javascript:void(0);">나이로비</a></td>
										<td><a href="javascript:void(0);">케이프타운</a></td>
										<td><a href="javascript:void(0);">카이로</a></td>
										<td></td>
									</tr>
								</tbody>
							</table>
							<a href="javascript:void(0);" class="close_pop" title="닫기">닫기</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- 달력 -->
	<div class="mrt_calendar_wrap ly_wrap ly_select_date" id="calendarPop">
		<div class="ly_area" id="calendarArea">
			<div class="cal_wrap is-datepick" id="datePicker">
				<div class="k1_cal_wrap" style="width: 50%;">
					<div class="k1_cal_header cal_header1">
					</div>
					<table class="k1_cal_board ui-datepicker-calendar cal_table1"
						style="width: 30%; float: left;">
						<colgroup>
							<col style="width: 14.5%">
							<col style="width: 14.2%">
							<col style="width: 14.2%">
							<col style="width: 14.2%">
							<col style="width: 14.2%">
							<col style="width: 14.2%">
							<col style="width: 14.5%">
						</colgroup>
						<thead>
							<tr>
								<th><span class="datepick-dow-0" title="Sunday">일</span></th>
								<th><span class="datepick-dow-1" title="Monday">월</span></th>
								<th><span class="datepick-dow-2" title="Tuesday">화</span></th>
								<th><span class="datepick-dow-3" title="Wednesday">수</span></th>
								<th><span class="datepick-dow-4" title="Thursday">목</span></th>
								<th><span class="datepick-dow-5" title="Friday">금</span></th>
								<th><span class="datepick-dow-6" title="Saturday">토</span></th>
							</tr>
						</thead>
						
					</table>
				</div>
				<div class="k1_cal_wrap" style="width: 50%;">
					<div class="k1_cal_header cal_header2">
					</div>
					<table class="k1_cal_board ui-datepicker-calendar cal_table2"
						style="width: 30%; float: left;">
						<colgroup>
							<col style="width: 14.5%">
							<col style="width: 14.2%">
							<col style="width: 14.2%">
							<col style="width: 14.2%">
							<col style="width: 14.2%">
							<col style="width: 14.2%">
							<col style="width: 14.5%">
						</colgroup>
						<thead>
							<tr>
								<th><span class="datepick-dow-0" title="Sunday">일</span></th>
								<th><span class="datepick-dow-1" title="Monday">월</span></th>
								<th><span class="datepick-dow-2" title="Tuesday">화</span></th>
								<th><span class="datepick-dow-3" title="Wednesday">수</span></th>
								<th><span class="datepick-dow-4" title="Thursday">목</span></th>
								<th><span class="datepick-dow-5" title="Friday">금</span></th>
								<th><span class="datepick-dow-6" title="Saturday">토</span></th>
							</tr>
						</thead>
					</table>
				</div>
			</div>
		</div>
		<div class="btn" role="calApplyBtn">
			<a href="javascript:void(0);" id="calSelect">적용</a>
			<a href="javascript:void(0);" id="calClose">닫기</a>
		</div>
	</div>
	<div id="people_boxParent" class="mrt_seat_pop mrt_pop_type_02">
		<div id="k1_pop_wrap">
			<div class="k1_pop_header">
				<h1>인원 &amp; 좌석등급</h1>
			</div>
			<div class="k1_pop_contents">
				<div class="mrt_pers_num" style="height: 158px;">
					<dl class="k1_clearfix">
						<dt>
							성인<span class="mtr_sub_txt">만 12세 이상</span>
						</dt>
						<dd>
							<button id="btnAdultMinus" type="button"
								class="mrt_btn_minus_gray">마이너스</button>
							<span class="num" id="adultCount">1</span>
							<button id="btnAdultPlus" type="button" class="mrt_btn_plus_blue">플러스</button>
						</dd>
					</dl>
					<dl class="k1_clearfix">
						<dt>
							소아<span class="mtr_sub_txt">만 12세 미만</span>
						</dt>
						<dd>
							<button id="btnChildMinus" type="button"
								class="mrt_btn_minus_gray">마이너스</button>
							<!-- 숫자가 늘어나면  mrt_btn_minus_blue로 class변경 -->
							<span class="num" id="childCount">0</span>
							<button id="btnChildPlus" type="button" class="mrt_btn_plus_blue">플러스</button>
						</dd>
					</dl>
					<dl class="k1_clearfix">
						<dt>
							유아<span class="mtr_sub_txt">24개월 미만</span>
						</dt>
						<dd>
							<button id="btnInfantMinus" type="button"
								class="mrt_btn_minus_gray">마이너스</button>
							<span class="num" id="infantCount">0</span>
							<button id="btnInfantPlus" type="button"
								class="mrt_btn_plus_blue">플러스</button>
						</dd>
					</dl>
				</div>

				<div id="intcabinClassDiv" class="mrt_seat_num">
					<ul>
						<li class="k1_clearfix seatLevel" style="height: 20px;">
							<div class="mrt_radio_wrap">
								<input type="radio" id="radio01" name="initForm"
									checked="checked"><label
									for="radio01"><span class="ico_radio"></span>일반석</label>
							</div>
							<div class="mrt_radio_wrap">
								<input type="radio" id="radio02" name="initForm"><label
									for="radio02"><span class="ico_radio"></span>프리미엄 일반석</label>
							</div>
						</li>
						<li class="k1_clearfix seatLevel" style="height: 20px;">
							<div class="mrt_radio_wrap">
								<input type="radio" id="radio03" name="initForm"><label
									for="radio03"><span class="ico_radio"></span>비지니스석</label>
							</div>
							<div class="mrt_radio_wrap">
								<input type="radio" id="radio04" name="initForm"><label
									for="radio04"><span class="ico_radio"></span>일등석</label>
							</div>
						</li>
					</ul>
				</div>

			</div>
			<a href="javascript:void(0);" class="k1_btn_p_close1" title="닫기">닫기</a>
		</div>
	</div>
	<div class="mrt_home_notice" id="mrt_home_notice">
		<div class="more_view">
			<a
				href="<%=request.getContextPath()%>/myRealTrip/flights/notice/list.do">모두보기</a>
		</div>
		<div
			class="swiper-containers swiper-list-container swiper-container-vertical">
			<div class="swiper-wrapper" id="list_show"
				style="position: relative; width: 100%;">
				<c:forEach items="${ flightNoticeRankFive }" var="dto" varStatus="s">
					<div class="swiper-slide"
						style="height:35px;width:100%;margin-bottom: 1px;position:absolute;top:${s.index==0?0:32}px;left:0px;">
						<a
							href="<%=request.getContextPath() %>/myRealTrip/flights/notice/view.do?num=${ dto.num }&page=1">
							<span style="margin-left: 60px;">${ dto.subject } | ${ dto.regdate }</span>
						</a>
					</div>
				</c:forEach>
			</div>
		</div>
	</div>
	<div class="mrt_recent_slide search" id="recent_search_div"
		style="display: block;">
		<h3 class="main_content__title">최근 검색한 항공권</h3>
	</div>
	<div class="mrt_recent_slide promo" id="top_banners_div"
		style="display: block;">
		<div
			class="swiper-container swiper-top-banners swiper-container-horizontal">
			<div class="swiper-wrapper" id="top_banners"
				style="transition-duration: 0ms; transform: translate3d(0px, 0px, 0px);">

				<div
					class="swiper-slide swiper-slide-duplicate swiper-slide-active siper-slide01"
					onclick="airfn_mrt_cms_link('https://www.myrealtrip.com/campaigns/koreanairspring'); return false;"
					style="width: 520px; margin-right: 20px; float: left;"
					data-swiper-slide-index="0">
					<a href="#"><div class="banner__item"
							style="background-image: url(https://d2ur7st6jjikze.cloudfront.net/cms/532_original_1557449930.jpg?1557449930)"></div></a>
				</div>
				<div
					class="swiper-slide swiper-slide-duplicate swiper-slide-next siper-slide01"
					onclick="airfn_mrt_cms_link('https://www.myrealtrip.com/campaigns/turkishairlines2'); return false;"
					style="width: 520px;" data-swiper-slide-index="1">
					<a href="#"><div class="banner__item"
							style="background-image: url(https://d2ur7st6jjikze.cloudfront.net/cms/736_original_1554087939.jpg?1554087939)"></div></a>
				</div>
			</div>
		</div>
	</div>
	<div id="tickets_div">
	<!-- 인기 여행지 -->
	<div class="mrt_recent_slide popular" id="popular_destination_div0">
		<h3 class="main_content__title">인기 여행지</h3>
		<div
			class="swiper-container swiper-popular-destination0 swiper-container-horizontal">
			<div class="swiper-wrapper" id="popular_destination0">
				<!-- 데이터 연결해서 넣어야할 것 -->
				<div class="swiper-slide swiper-slide-active"
					style="width: 250px; margin-right: 20px;">
					<a href="javascript:void(0);"><div class="img"
							style="background-image: url(https://d2ur7st6jjikze.cloudfront.net/flight_cms_desktop/6_medium_1555396882.jpg?1555396882)"></div>
						<div class="bottom">
							<span class="nation">밴쿠버</span> <span class="trip">인천 -
								밴쿠버</span> <span class="date">1월 1일 - 12월 31일</span> <span
								class="price">612,100원 ~ <em class="airline">1회경유~</em></span>
						</div></a>
				</div>
				<div class="swiper-slide swiper-slide-next"
					style="width: 250px; margin-right: 20px;">
					<a href="javascript:void(0);"><div class="img"
							style="background-image: url(https://d2ur7st6jjikze.cloudfront.net/flight_cms_desktop/13_medium_1555396596.jpg?1555396596)"></div>
						<div class="bottom">
							<span class="nation">세부</span> <span class="trip">인천 - 세부</span>
							<span class="date">1월 1일 - 12월 31일</span> <span class="price">195,600원
								~ <em class="airline">직항</em>
							</span>
						</div></a>
				</div>
				<div class="swiper-slide" style="width: 250px; margin-right: 20px;">
					<a href="javascript:void(0);"><div class="img"
							style="background-image: url(https://d2ur7st6jjikze.cloudfront.net/flight_cms_desktop/11_medium_1550467545.jpg?1550467545)"></div>
						<div class="bottom">
							<span class="nation">도쿄</span> <span class="trip">인천 - 도쿄</span>
							<span class="date">1월 1일 - 12월 31일</span> <span class="price">155,500원
								~ <em class="airline">직항</em>
							</span>
						</div></a>
				</div>
				<div class="swiper-slide" style="width: 250px; margin-right: 20px;">
					<a href="javascript:void(0);"><div class="img"
							style="background-image: url(https://d2ur7st6jjikze.cloudfront.net/flight_cms_desktop/8_medium_1550467547.jpg?1550467547)"></div>
						<div class="bottom">
							<span class="nation">하와이/호놀룰루</span> <span class="trip">인천
								- 하와이/호놀룰루</span> <span class="date">1월 1일 - 12월 31일</span> <span
								class="price">606,800원 ~ <em class="airline">직항</em></span>
						</div></a>
				</div>
				<div class="swiper-slide" style="width: 250px; margin-right: 20px;">
					<a href="javascript:void(0);"><div class="img"
							style="background-image: url(https://d2ur7st6jjikze.cloudfront.net/flight_cms_desktop/5_medium_1555398060.jpg?1555398060)"></div>
						<div class="bottom">
							<span class="nation">로마</span> <span class="trip">인천 - 로마</span>
							<span class="date">1월 1일 - 12월 31일</span> <span class="price">567,600원
								~ <em class="airline">1회경유~</em>
							</span>
						</div></a>
				</div>
				<div class="swiper-slide" style="width: 250px; margin-right: 20px;">
					<a href="javascript:void(0);"><div class="img"
							style="background-image: url(https://d2ur7st6jjikze.cloudfront.net/flight_cms_desktop/3_medium_1550467547.jpg?1550467547)"></div>
						<div class="bottom">
							<span class="nation">사이판</span> <span class="trip">인천 -
								사이판</span> <span class="date">1월 1일 - 12월 31일</span> <span
								class="price">178,500원 ~ <em class="airline">직항</em></span>
						</div></a>
				</div>
				<div class="swiper-slide" style="width: 250px; margin-right: 20px;">
					<a href="javascript:void(0);"><div class="img"
							style="background-image: url(https://d2ur7st6jjikze.cloudfront.net/flight_cms_desktop/2_medium_1550467546.jpg?1550467546)"></div>
						<div class="bottom">
							<span class="nation">파리</span> <span class="trip">인천 - 파리</span>
							<span class="date">1월 1일 - 12월 31일</span> <span class="price">621,300원
								~ <em class="airline">1회경유~</em>
							</span>
						</div></a>
				</div>
				<div class="swiper-slide" style="width: 250px; margin-right: 20px;">
					<a href="javascript:void(0);"><div class="img"
							style="background-image: url(https://d2ur7st6jjikze.cloudfront.net/flight_cms_desktop/12_medium_1550467547.jpg?1550467547)"></div>
						<div class="bottom">
							<span class="nation">이스탄불</span> <span class="trip">인천 -
								이스탄불</span> <span class="date">1월 1일 - 12월 31일</span> <span
								class="price">664,400원 ~ <em class="airline">1회경유~</em></span>
						</div></a>
				</div>
			</div>
		</div>
		<!-- 여기까지 인기상품 데이터베이스에서 가져와야하는 것 -->
		<div
			class="swiper-button-next swiper-popular-destination0-button-next"
			tabindex="0" role="button" aria-label="Next slide"
			aria-disabled="false"></div>
		<div
			class="swiper-button-prev swiper-popular-destination0-button-prev swiper-button-disabled"
			tabindex="0" role="button" aria-label="Previous slide"
			aria-disabled="true"></div>
	</div>
	<!-- 인기상품 끝 -->
	<!-- 특가상품 시작 -->
	<div class="mrt_recent_slide popular" id="popular_destination_div1">
		<h3 class="main_content__title">특가 항공권</h3>
		<div
			class="swiper-container swiper-popular-destination1 swiper-container-horizontal">
			<div class="swiper-wrapper" id="popular_destination1">
				<div class="swiper-slide swiper-slide-active"
					onclick="airfn_mrt_cms_link('https://flights.myrealtrip.com/air/b2c/AIR/INT/AIRINTSCH0100100010.k1?initform=RT&amp;domintgubun=I&amp;depctycd=SEL&amp;depctycd=FUK&amp;depctycd=&amp;depctycd=&amp;depctynm=인천&amp;depctynm=후쿠오카&amp;depctynm=&amp;depctynm=&amp;arrctycd=FUK&amp;arrctycd=SEL&amp;arrctycd=&amp;arrctycd=&amp;arrctynm=후쿠오카&amp;arrctynm=인천&amp;arrctynm=&amp;arrctynm=&amp;depdt=2019-05-28&amp;depdt=2019-05-29&amp;depdt=&amp;depdt=&amp;opencase=N&amp;opencase=N&amp;opencase=N&amp;openday=&amp;openday=&amp;openday=&amp;depdomintgbn=I&amp;secrchType=FARE&amp;maxprice=&amp;availcount=250&amp;tasktype=B2C&amp;adtcount=1&amp;chdcount=0&amp;infcount=0&amp;cabinclass=Y&amp;nonstop=&amp;freebag=&amp;preferaircd=&amp;KSESID=air%3Ab2c%3ASELK138RB%3ASELK138RB%3A%3A00'); return false;"
					style="width: 250px; margin-right: 20px;">
					<a href="javascript:void(0);"><div class="img"
							style="background-image: url(https://d2ur7st6jjikze.cloudfront.net/flight_cms_desktop/1_medium_1555397424.jpg?1555397424)"></div>
						<div class="bottom">
							<span class="nation">후쿠오카</span> <span class="trip">인천 -
								후쿠오카</span> <span class="date">1월 1일 - 12월 31일</span> <span
								class="price">88,200원 ~ <em class="airline">직항</em></span>
						</div></a>
				</div>
				<div class="swiper-slide swiper-slide-next"
					onclick="airfn_mrt_cms_link('https://flights.myrealtrip.com/air/b2c/AIR/INT/AIRINTSCH0100100010.k1?initform=RT&amp;domintgubun=I&amp;depctycd=SEL&amp;depctycd=LON&amp;depctycd=&amp;depctycd=&amp;depctynm=%EC%84%9C%EC%9A%B8&amp;depctynm=%EB%9F%B0%EB%8D%98&amp;depctynm=&amp;depctynm=&amp;arrctycd=LON&amp;arrctycd=SEL&amp;arrctycd=&amp;arrctycd=&amp;arrctynm=%EB%9F%B0%EB%8D%98&amp;arrctynm=%EC%84%9C%EC%9A%B8&amp;arrctynm=&amp;arrctynm=&amp;depdt=2019-05-21&amp;depdt=2019-05-28&amp;depdt=&amp;depdt=&amp;opencase=N&amp;opencase=N&amp;opencase=N&amp;openday=&amp;openday=&amp;openday=&amp;depdomintgbn=I&amp;secrchType=FARE&amp;maxprice=&amp;availcount=250&amp;tasktype=B2C&amp;adtcount=1&amp;chdcount=0&amp;infcount=0&amp;cabinclass=Y&amp;nonstop=&amp;freebag=&amp;preferaircd=&amp;KSESID=air%3Ab2c%3ASELK138RB%3ASELK138RB%3A%3A00'); return false;"
					style="width: 250px; margin-right: 20px;">
					<a href="javascript:void(0);"><div class="img"
							style="background-image: url(https://d2ur7st6jjikze.cloudfront.net/flight_cms_desktop/15_medium_1550465510.jpg?1550465510)"></div>
						<div class="bottom">
							<span class="nation">런던</span> <span class="trip">인천 - 런던</span>
							<span class="date">1월 1일 - 12월 31일</span> <span class="price">690,700원
								~ <em class="airline">1회경유 ~</em>
							</span>
						</div></a>
				</div>
				<div class="swiper-slide"
					onclick="airfn_mrt_cms_link('https://flights.myrealtrip.com/air/b2c/AIR/INT/AIRINTSCH0100100010.k1?initform=RT&amp;domintgubun=I&amp;depctycd=SEL&amp;depctycd=DAD&amp;depctycd=&amp;depctycd=&amp;depctynm=%EC%84%9C%EC%9A%B8&amp;depctynm=%EB%8B%A4%EB%82%AD&amp;depctynm=&amp;depctynm=&amp;arrctycd=DAD&amp;arrctycd=SEL&amp;arrctycd=&amp;arrctycd=&amp;arrctynm=%EB%8B%A4%EB%82%AD&amp;arrctynm=%EC%84%9C%EC%9A%B8&amp;arrctynm=&amp;arrctynm=&amp;depdt=2019-05-21&amp;depdt=2019-05-24&amp;depdt=&amp;depdt=&amp;opencase=N&amp;opencase=N&amp;opencase=N&amp;openday=&amp;openday=&amp;openday=&amp;depdomintgbn=I&amp;secrchType=FARE&amp;maxprice=&amp;availcount=250&amp;tasktype=B2C&amp;adtcount=1&amp;chdcount=0&amp;infcount=0&amp;cabinclass=Y&amp;nonstop=Y&amp;freebag=&amp;preferaircd=&amp;KSESID=air%3Ab2c%3ASELK138RB%3ASELK138RB%3A%3A00'); return false;"
					style="width: 250px; margin-right: 20px;">
					<a href="javascript:void(0);"><div class="img"
							style="background-image: url(https://d2ur7st6jjikze.cloudfront.net/flight_cms_desktop/7_medium_1550465510.jpg?1550465510)"></div>
						<div class="bottom">
							<span class="nation">다낭</span> <span class="trip">인천 - 다낭</span>
							<span class="date">1월 1일 - 12월 31일</span> <span class="price">212,400원
								~ <em class="airline">직항</em>
							</span>
						</div></a>
				</div>
				<div class="swiper-slide"
					onclick="airfn_mrt_cms_link('https://flights.myrealtrip.com/air/b2c/AIR/INT/AIRINTSCH0100100010.k1?initform=RT&amp;domintgubun=I&amp;depctycd=SEL&amp;depctycd=OKA&amp;depctycd=&amp;depctycd=&amp;depctynm=%EC%84%9C%EC%9A%B8&amp;depctynm=%EC%98%A4%ED%82%A4%EB%82%98%EC%99%80&amp;depctynm=&amp;depctynm=&amp;arrctycd=OKA&amp;arrctycd=SEL&amp;arrctycd=&amp;arrctycd=&amp;arrctynm=%EC%98%A4%ED%82%A4%EB%82%98%EC%99%80&amp;arrctynm=%EC%84%9C%EC%9A%B8&amp;arrctynm=&amp;arrctynm=&amp;depdt=2019-05-21&amp;depdt=2019-05-23&amp;depdt=&amp;depdt=&amp;opencase=N&amp;opencase=N&amp;opencase=N&amp;openday=&amp;openday=&amp;openday=&amp;depdomintgbn=I&amp;secrchType=FARE&amp;maxprice=&amp;availcount=250&amp;tasktype=B2C&amp;adtcount=1&amp;chdcount=0&amp;infcount=0&amp;cabinclass=Y&amp;nonstop=&amp;freebag=&amp;preferaircd=&amp;KSESID=air%3Ab2c%3ASELK138RB%3ASELK138RB%3A%3A00'); return false;"
					style="width: 250px; margin-right: 20px;">
					<a href="javascript:void(0);"><div class="img"
							style="background-image: url(https://d2ur7st6jjikze.cloudfront.net/flight_cms_desktop/9_medium_1550465510.jpg?1550465510)"></div>
						<div class="bottom">
							<span class="nation">오키나와</span> <span class="trip">인천 -
								오키나와</span> <span class="date">1월 1일 - 12월 31일</span> <span
								class="price">129,200원 ~ <em class="airline">직항</em></span>
						</div></a>
				</div>
				<div class="swiper-slide"
					onclick="airfn_mrt_cms_link('https://flights.myrealtrip.com/air/b2c/AIR/INT/AIRINTSCH0100100010.k1?initform=RT&amp;domintgubun=I&amp;depctycd=SEL&amp;depctycd=HKG&amp;depctycd=&amp;depctycd=&amp;depctynm=%EC%84%9C%EC%9A%B8&amp;depctynm=%ED%99%8D%EC%BD%A9&amp;depctynm=&amp;depctynm=&amp;arrctycd=HKG&amp;arrctycd=SEL&amp;arrctycd=&amp;arrctycd=&amp;arrctynm=%ED%99%8D%EC%BD%A9&amp;arrctynm=%EC%84%9C%EC%9A%B8&amp;arrctynm=&amp;arrctynm=&amp;depdt=2019-06-16&amp;depdt=2019-06-19&amp;depdt=&amp;depdt=&amp;opencase=N&amp;opencase=N&amp;opencase=N&amp;openday=&amp;openday=&amp;openday=&amp;depdomintgbn=I&amp;secrchType=FARE&amp;maxprice=&amp;availcount=250&amp;tasktype=B2C&amp;adtcount=1&amp;chdcount=0&amp;infcount=0&amp;cabinclass=Y&amp;nonstop=&amp;freebag=&amp;preferaircd=&amp;KSESID=air%3Ab2c%3ASELK138RB%3ASELK138RB%3A%3A00'); return false;"
					style="width: 250px; margin-right: 20px;">
					<a href="javascript:void(0);"><div class="img"
							style="background-image: url(https://d2ur7st6jjikze.cloudfront.net/flight_cms_desktop/14_medium_1555400239.jpg?1555400239)"></div>
						<div class="bottom">
							<span class="nation">홍콩</span> <span class="trip">인천 - 홍콩</span>
							<span class="date">1월 1일 - 12월 31일</span> <span class="price">204,300원
								~ <em class="airline">직항</em>
							</span>
						</div></a>
				</div>
				<div class="swiper-slide"
					onclick="airfn_mrt_cms_link('https://flights.myrealtrip.com/air/b2c/AIR/INT/AIRINTSCH0100100010.k1?initform=RT&amp;domintgubun=I&amp;depctycd=SEL&amp;depctycd=OSA&amp;depctycd=&amp;depctycd=&amp;depctynm=%EC%84%9C%EC%9A%B8&amp;depctynm=%EC%98%A4%EC%82%AC%EC%B9%B4&amp;depctynm=&amp;depctynm=&amp;arrctycd=OSA&amp;arrctycd=SEL&amp;arrctycd=&amp;arrctycd=&amp;arrctynm=%EC%98%A4%EC%82%AC%EC%B9%B4&amp;arrctynm=%EC%84%9C%EC%9A%B8&amp;arrctynm=&amp;arrctynm=&amp;depdt=2019-05-28&amp;depdt=2019-05-30&amp;depdt=&amp;depdt=&amp;opencase=N&amp;opencase=N&amp;opencase=N&amp;openday=&amp;openday=&amp;openday=&amp;depdomintgbn=I&amp;secrchType=FARE&amp;maxprice=&amp;availcount=250&amp;tasktype=B2C&amp;adtcount=1&amp;chdcount=0&amp;infcount=0&amp;cabinclass=Y&amp;nonstop=&amp;freebag=&amp;preferaircd=&amp;KSESID=air%3Ab2c%3ASELK138RB%3ASELK138RB%3A%3A00'); return false;"
					style="width: 250px; margin-right: 20px;">
					<a href="javascript:void(0);"><div class="img"
							style="background-image: url(https://d2ur7st6jjikze.cloudfront.net/flight_cms_desktop/4_medium_1550465509.jpg?1550465509)"></div>
						<div class="bottom">
							<span class="nation">오사카</span> <span class="trip">인천 -
								오사카</span> <span class="date">1월 1일 - 12월 31일</span> <span
								class="price">132,400원 ~ <em class="airline">직항</em></span>
						</div></a>
				</div>
				<div class="swiper-slide"
					onclick="airfn_mrt_cms_link('https://flights.myrealtrip.com/air/b2c/AIR/INT/AIRINTSCH0100100010.k1?initform=RT&amp;domintgubun=I&amp;depctycd=SEL&amp;depctycd=TPE&amp;depctycd=&amp;depctycd=&amp;depctynm=%EC%84%9C%EC%9A%B8&amp;depctynm=%ED%83%80%EC%98%A4%EC%9C%84%EC%95%88&amp;depctynm=&amp;depctynm=&amp;arrctycd=TPE&amp;arrctycd=SEL&amp;arrctycd=&amp;arrctycd=&amp;arrctynm=%ED%83%80%EC%98%A4%EC%9C%84%EC%95%88&amp;arrctynm=%EC%84%9C%EC%9A%B8&amp;arrctynm=&amp;arrctynm=&amp;depdt=2019-05-29&amp;depdt=2019-05-31&amp;depdt=&amp;depdt=&amp;opencase=N&amp;opencase=N&amp;opencase=N&amp;openday=&amp;openday=&amp;openday=&amp;depdomintgbn=I&amp;secrchType=FARE&amp;maxprice=&amp;availcount=250&amp;tasktype=B2C&amp;adtcount=1&amp;chdcount=0&amp;infcount=0&amp;cabinclass=Y&amp;nonstop=Y&amp;freebag=&amp;preferaircd=&amp;KSESID=air%3Ab2c%3ASELK138RB%3ASELK138RB%3A%3A00'); return false;"
					style="width: 250px; margin-right: 20px;">
					<a href="javascript:void(0);"><div class="img"
							style="background-image: url(https://d2ur7st6jjikze.cloudfront.net/flight_cms_desktop/10_medium_1550465510.jpg?1550465510)"></div>
						<div class="bottom">
							<span class="nation">대만</span> <span class="trip">인천 - 대만</span>
							<span class="date">1월 1일 - 12월 31일</span> <span class="price">164,400원
								~ <em class="airline">직항</em>
							</span>
						</div></a>
				</div>
				<div class="swiper-slide"
					onclick="airfn_mrt_cms_link('https://flights.myrealtrip.com/air/b2c/AIR/INT/AIRINTSCH0100100010.k1?initform=RT&amp;domintgubun=I&amp;depctycd=SEL&amp;depctycd=SIN&amp;depctycd=&amp;depctycd=&amp;depctynm=%EC%84%9C%EC%9A%B8&amp;depctynm=%EC%8B%B1%EA%B0%80%ED%8F%AC%EB%A5%B4&amp;depctynm=&amp;depctynm=&amp;arrctycd=SIN&amp;arrctycd=SEL&amp;arrctycd=&amp;arrctycd=&amp;arrctynm=%EC%8B%B1%EA%B0%80%ED%8F%AC%EB%A5%B4&amp;arrctynm=%EC%84%9C%EC%9A%B8&amp;arrctynm=&amp;arrctynm=&amp;depdt=2019-06-18&amp;depdt=2019-06-23&amp;depdt=&amp;depdt=&amp;opencase=N&amp;opencase=N&amp;opencase=N&amp;openday=&amp;openday=&amp;openday=&amp;depdomintgbn=I&amp;secrchType=FARE&amp;maxprice=&amp;availcount=250&amp;tasktype=B2C&amp;adtcount=1&amp;chdcount=0&amp;infcount=0&amp;cabinclass=Y&amp;nonstop=&amp;freebag=&amp;preferaircd=&amp;KSESID=air%3Ab2c%3ASELK138RB%3ASELK138RB%3A%3A00'); return false;"
					style="width: 250px; margin-right: 20px;">
					<a href="javascript:void(0);"><div class="img"
							style="background-image: url(https://d2ur7st6jjikze.cloudfront.net/flight_cms_desktop/16_medium_1555462437.jpg?1555462437)"></div>
						<div class="bottom">
							<span class="nation">싱가포르</span> <span class="trip">인천 -
								싱가포르</span> <span class="date">1월 1일 - 12월 31일</span> <span
								class="price">328,800원 ~ <em class="airline">1회경유</em></span>
						</div></a>
				</div>
			</div>
			<span class="swiper-notification" aria-live="assertive"
				aria-atomic="true"></span>
		</div>
		<div class="swiper-button-next swiper-popular-destination1-button-next" tabindex="0" role="button" aria-label="Next slide" aria-disabled="false"></div>
		<div class="swiper-button-prev swiper-popular-destination1-button-prev swiper-button-disabled" tabindex="0" role="button" aria-label="Previous slide" aria-disabled="true"></div>
	</div>
	<!-- 특가 항공 끝 -->
	</div>
	<!-- 항공권 공지사항 -->
	<div class="mrt_main_notice_wrap">
		<div id="notice">
			<div class="mrt_main_notice" id="notice">
				<h2 class="k1_h_tit1 mrt_main__title">항공권 공지사항</h2>
				<div class="more_view">
					<a href="/myRealTrip/myRealTrip/flights/notice/list.do">더보기</a>
				</div>

				<div class="mrt_main_notice_mini" id="list">
					<table class="k1_bbs_board k1_mt10" id="trlength"
						style="table-layout: auto;">
						<caption>항공권 공지사항</caption>
						<tbody id="rowlength">
							<c:forEach items="${ flightNoticeRankFive }" var="dto"
								varStatus="s" begin="0" end="2">
								<tr>
									<td class="k1_tal k1_bold"><a
										href="<%=request.getContextPath() %>/myRealTrip/flights/notice/view.do?num=${ dto.num }&page=1">${ dto.subject }</a></td>
									<td class="time">${ dto.regdate }</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
			<div class="mrt_main_help">
				<h4 class="mrt_main__title">실시간 항공권 문의</h4>
				<div class="mrt_help__content">
					<div class="label">항공권 문의 전화번호</div>
					<div class="tel">
						1670-8208 <span style="font-size: 17px">(내선 2번)</span>
					</div>
					<p>
						365일 09:00~18:00 연중무휴, 점심시간 12:00~13:00 <br> ※상담 시간 외에는 변경 및
						환불 처리가 불가합니다.
					</p>
				</div>
			</div>
		</div>

	</div>

	<!-- 모달창 -->
	<div id="model_back" style="background-color: rgba(0, 0, 0, 0.2);"></div>
	<!-- 달력 ajax -->
<script>
function printCalendar(data){ // callback
	var title = $("<a href='javascript:void(0);' class='btn_prev' role='moveToPrev' id='btn_prev' onclick='prevMonth()'>이전달</a>"+ data.c_year +". " + (data.c_month < 10? "0"+data.c_month : data.c_month )+"<a href='javascript:void(0);' class='btn_next' role='moveToNext' style='display: none;' onclick='nextMonth()'>다음달</a>");
	$(".cal_header1").append(title);
	var weeks = Math.ceil((data.c_firstweek + data.c_lastDay)/7);
	var day = 1;
	var month = data.c_month;
	var tbody = $("<tbody></tbody>")
	// console.log(data.c_firstweek);
	for (var i = 0; i < weeks; i++) {
		var tr = $("<tr></tr>");
		if(i == 0){
			for (var j = 0; j < data.c_firstweek; j++) {
				var td = $("<td></td>");
				var span = $("<span class='dp00000000  disable'>&nbsp;</span>");
				td.append(span);
				tr.append(td);
			}
			for (var j = 0; j < 7-data.c_firstweek; j++) {
				var td = $("<td></td>");
				var span = $("<span></span>");
				
				var buffer = data.c_year+ "" + (data.c_month<10?"0"+data.c_monthr:data.c_month) + "" + (day<10?"0"+day:day);
				td.addClass(buffer);
				if(c_year < data.t_year || (c_year == data.t_year &&(month < data.t_month || ( month == data.t_month && day < data.t_day+3)))){
					span.text(day)
					span.addClass("disable");
				}else{
					var a = $("<a href='javascript:void(0)' title='"+ buffer +" '>"+day+"</a>");
					a.addClass(buffer);
					span.append(a);
				}
				if(month == data.t_month && day == data.t_day && c_year == data.t_year){
					span.addClass("today");
				}
				td.append(span);
				tr.append(td);
				day++;
			}
			
			tbody.append(tr);
		}else{
			tr = $("<tr></tr>");
			for (var j = 0; j < 7; j++) {
				var buffer = data.c_year+ "" + (data.c_month<10?"0"+data.c_month:data.c_month) + "" + (day<10?"0"+day:day);
				var td = $("<td></td>");
				var span = $("<span></span>");

				span.addClass(buffer);
				if(c_year < data.t_year || (c_year == data.t_year &&(month < data.t_month || ( month == data.t_month && day < data.t_day+3)))){
					span.text(day)
					span.addClass("disable");
				}else{
					var a = $("<a href='javascript:void(0)' title='"+ buffer +" '>"+day+"</a>");
					a.addClass(buffer);
					span.append(a);
				}
				if(month == data.t_month && day == data.t_day&& c_year == data.t_year){
					span.addClass("today");
				}
				td.append(span);
				tr.append(td);
				day++;
			if(day > data.c_lastDay)
				break;
			}
			tbody.append(tr);
		}
	}
	$(".cal_table1").append(tbody);
	
	
	var title = $("<a href='javascript:void(0);' class='btn_prev' role='moveToPrev' style='display: none;' onclick='prevMonth()'>이전달</a>"+ data.n_year +". " + (data.n_month < 10? "0"+data.n_month : data.n_month )+"<a href='javascript:void(0);' class='btn_next' role='moveToNext' onclick='nextMonth()'>다음달</a>");
	$(".cal_header2").append(title);
	
	var weeks = Math.ceil((data.n_firstweek + data.n_lastDay)/7);
	var day = 1;
	var month = data.n_month;
	// console.log(c_year + "/" +data.t_year)
	// console.log(data.n_firstweek);
	var tbody = $("<tbody></tbody>")
	for (var i = 0; i < weeks; i++) {
		var tr = $("<tr></tr>");
		if(i == 0){
			for (var j = 0; j < data.n_firstweek; j++) {
				var td = $("<td></td>");
				var span = $("<span class='dp00000000  disable'>&nbsp;</span>");
				td.append(span);
				tr.append(td);
			}
			for (var j = 0; j < 7-data.n_firstweek; j++) {
				var td = $("<td></td>");
				var span = $("<span></span>");
				var buffer = data.c_year+ "" + (data.n_month<10?"0"+data.n_month:data.n_month) + "" + (day<10?"0"+day:day);
				td.addClass(buffer);
				if(c_year < data.t_year || (c_year+1 == data.t_year &&(month < data.t_month || ( month == data.t_month && day < data.t_day+3)))){
					span.text(day)
					span.addClass("disable");
				}else{
					var a = $("<a href='javascript:void(0)' title='"+ buffer +" '>"+day+"</a>");
					a.addClass(buffer);
					span.append(a);
				}
				if(month == data.t_month && day == data.t_day && c_year == data.t_year){
					span.addClass("today");
				}
				td.append(span);
				tr.append(td);
				day++;
			}
			
			tbody.append(tr);
		}else{
			tr = $("<tr></tr>");
			for (var j = 0; j < 7; j++) {
				var buffer = data.c_year+ "" + (data.n_month<10?"0"+data.n_month:data.n_month) + "" + (day<10?"0"+day:day);
				var td = $("<td></td>");
				var span = $("<span></span>");

				span.addClass(buffer);
				if(c_year < data.t_year || (c_year+1 == data.t_year &&(month < data.t_month || ( month == data.t_month && day < data.t_day+3)))){
					span.text(day)
					span.addClass("disable");
				}else{
					var a = $("<a href='javascript:void(0)' title='"+ buffer +" '>"+day+"</a>");
					a.addClass(buffer);
					span.append(a);
				}
				if(month == data.t_month && day == data.t_day && c_year == data.t_year){
					span.addClass("today");
				}
				td.append(span);
				tr.append(td);
				day++;
			if(day > data.n_lastDay)
				break;
			}
			tbody.append(tr);
		}
	}
	$(".cal_table2").append(tbody);
	
}; // 달력 그리는 함수

 function prevMonth(){
	// console.log("이전달");
	
	if(c_month == new Date().getMonth()+1){
		return;
	}
	c_month  = c_month-1;
	if(c_month == 0){
		c_month = 12;
		c_year = c_year-1;
	}
	$(".cal_header1").html("");
	$(".cal_header2").html("");
	$(".cal_table1 tbody").remove();
	$(".cal_table2 tbody").remove();
	$.ajax({
		url:"<%= request.getContextPath()%>/flights/printCalendar.do"
		,dataType:"json"
		,type:"get"
		,data: {
			c_month: c_month,
			c_year: c_year
		}
		,cache:false // 항상 새로 읽어오겠다.
		,success:function(data){
			printCalendar(data);
		}
	    ,error:function(){
	    	alert("에러~~~~")
	    } 
	});
}

function nextMonth(){
	// console.log("다음달");
	
	if(c_year == new Date().getYear()+1900+1 && c_month == new Date().getMonth()){
		return;
	}
	
	c_month  = c_month+1;
	if(c_month == 13){
		c_month = 1;
		c_year = c_year+1;
	}
	$(".cal_header1").html("");
	$(".cal_header2").html("");
	$(".cal_table1 tbody").remove();
	$(".cal_table2 tbody").remove();
	$.ajax({
		url:"<%= request.getContextPath()%>/flights/printCalendar.do"
		,dataType:"json"
		,type:"get"
		,data: {
			c_month: c_month,
			c_year: c_year
		}
		,cache:false // 항상 새로 읽어오겠다.
		,success:function(data){
			printCalendar(data);
		}
	    ,error:function(){
	    	alert("에러~~~~")
	    } 
	});
}

</script>
	<jsp:include page="/WEB-INF/layout/bottom.jsp" />
</body>
</html>