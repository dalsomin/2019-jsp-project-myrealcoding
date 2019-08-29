<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jsp/servlet class - LJE (2019. 6. 3.-오전 11:13:12)</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<link rel="stylesheet" type="text/css" href="">
<style>
* {
	box-sizing: border-box;
	padding: 0;
	margin: 0;
}

.k1_left_type2 {
	background-color: #51abf3;
	z-index: 70;
}

.k1_left_type2 {
	width: 100%;
	position: relative;
}

.k1_left_type2 .list_search_wrap {
	position: relative;
	width: 1064px;
	margin: 0 auto;
	overflow: -webkit-paged-x;
}

.k1_left_type2 .k1_h_tit2 {
	width: 1064px;
	padding-top: 2px;
	margin: 0 auto;
	height: 32px;
	line-height: 32px;
	margin-bottom: 0;
	color: #fff;
	font-size: 13px;
}

.k1_left_type2 .cont {
	padding: 0;
	background-color: transparent;
	border: none;
	overflow: -webkit-paged-x;
}

.k1_left_type2 .cont {
	border-top: 0 none;
}

#basetrip .k1_plancode2 {
	height: 100%;
}

.k1_clearfix {
	display: block;
	overflow: -webkit-paged-x;
}

.k1_plancode2 li {
	float: left;
	padding: 0;
}

#search2_1 {
	overflow: -webkit-paged-x;
}
/* 다구간 클릭시 나오는 것 */
#multitrip {
	display: none;
}

.k1_plancode2 li {
	padding: 2px 0;
	line-height: 1.2em;
}

.k1_plancode2 li .mrt_city_selector {
	border: none;
	width: 422px;
	height: 40px;
}

.mrt_border_all {
	border-radius: 2px;
	border: none;
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

.k1_plancode2 li .mrt_city_selector input[type="text"] {
	height: 40px;
	line-height: 40px;
	font-size: 14px;
}

.k1_plancode2 li input[type=text] {
	width: 197px;
	height: 40px;
	padding-top: 0;
	padding-bottom: 0;
	line-height: 40px;
	font-weight: bold;
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

input[type=text].k1_input_text {
	height: 48px;
	padding: 10px 12px;
	border: none;
	box-sizing: border-box;
	font-size: 14px;
	border-radius: 2px;
	color: #343a40;
	transition: all .08s ease-out;
}

.k1_plancode2 li .mrt_city_selector .mrt_btn_swapper {
	width: 28px;
	height: 28px;
	margin-top: 6px;
	background-size: 20px !important;
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

ul, ol, dl {
	list-style: none;
}

.k1_plancode2 li .mrt_date_selector {
	border: none;
	height: 40px;
	width: 290px !important;
}

.mrt_border_all {
	border-radius: 2px;
	border: 1px solid #dee2e6;
	box-sizing: border-box;
}

element.style {
	
}

.k1_plancode2 li .mrt_date_selector {
	border: none;
	height: 40px;
	width: 290px !important;
}

.k1_plancode2 li .mrt_date_selector {
	border: none;
	height: 40px;
	width: 290px !important;
}

.mrt_border_all {
	border-radius: 2px;
	border: 1px solid #dee2e6;
	box-sizing: border-box;
}

.mrt_city_selector, .mrt_date_selector, .mrt_seat_wrap {
	border: none !important;
}

.k1_plancode2 li .mrt_date_selector input[type="text"] {
	width: 92px !important;
	height: 40px;
	line-height: 40px;
}

.k1_plancode2 li .mrt_date_selector .hyphen {
	line-height: 40px;
}

.mrt_date_selector .hyphen {
	float: left;
	display: inline-block;
	margin: 0 6px;
	text-align: center;
	line-height: 48px;
}

.mrt_date_selector input[type="text"] {
	float: left;
	width: 106px !important;
	height: 48px;
	line-height: 48px;
	padding: 0;
	border: none;
}

input:focus, button:focus {
	outline: none;
}

.k1_plancode2 li .mrt_seat_wrap {
	border: none;
	width: 270px;
	height: 40px;
}

.mrt_seat_wrap {
	float: left;
	margin-left: 4px;
	width: 270px;
	height: 48px;
	transition: all .2s ease;
}

.k1_plancode2 li .mrt_seat_wrap a {
	height: 40px;
	line-height: 40px;
	border-radius: 2px;
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

.k1_plancode2 li .mrt_seat_wrap a span {
	height: 40px;
	font-size: 14px;
}

a:link, a:visited, a:hover, a:active {
	text-decoration: none;
	color: black;
}

.k1_left_type2 .k1_btn_price_search {
	top: 34px;
	height: 40px;
	line-height: 40px;
	color: #2b96ed !important;
	background-color: #e7f4fd;
	box-shadow: none;
}

.k1_btn_price_search {
	position: absolute;
	top: 47px;
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
	transition: background-color ease-in-out 0.25s, box-shadow ease-in-out
		0.25s;
}

.k1_btn_price_search {
	display: inline-block;
	height: 35px;
	margin: 0 auto;
	border: 0 none;
	vertical-align: middle;
	cursor: pointer;
}

#multitrip .k1_plancode2 {
	height: 100%;
	padding-top: 0;
}

#multitrip .k1_plancode2 li:first-child {
	margin-top: 0;
}

#multitrip .k1_plancode2 li {
	float: none;
	margin-top: 4px;
	font-size: 14px;
}

.k1_plancode2 li {
	float: left;
	padding: 0;
}

.k1_plancode2 li {
	padding: 2px 0;
	line-height: 1.2em;
}

#multitrip .k1_plancode2 li input[type="text"]:first-child {
	margin-left: 0;
}

#multitrip .k1_plancode2 li input[type=text] {
	float: left;
	width: 236px !important;
	padding: 0 0 0 16px;
	border-radius: 2px;
	margin-left: 4px;
	font-size: 14px !important;
	border: none;
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

.k1_plancode2 li .mrt_seat_wrap a span {
	height: 40px;
	font-size: 14px;
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

#multitrip .k1_plancode2 li .mrt_itinerary_plus {
	height: 40px;
	line-height: 40px;
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

#multitrip .k1_plancode2 li .mrt_itinerary_plus span {
	color: #fff;
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

.k1_ml14 {
	margin-left: 14px !important;
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
}

#multitrip .k1_plancode2 {
	height: 100%;
	padding-top: 0;
}

.k1_left_type2 {
	width: 100%;
	position: relative;
}

.k1_search_area {
	width: 100%;
	min-height: 16px;
	z-index: 66;
	display: block !important;
}

.k1_tar {
	text-align: right !important;
}

.k1_search_area .k1_width_fixed {
	position: relative;
}

.k1_search_area .mrt_condi_chk {
	margin-top: 10px;
	margin-bottom: 14px;
}

.k1_fl {
	float: left;
}

.k1_clearfix {
	display: block;
}

.mrt_condi_chk .mrt_check_wrap {
	float: left;
}

.mrt_check_wrap.white input {
	display: none;
}

label, input[type="checkbox"], input[type="radio"], button, select {
	cursor: pointer;
}

.k1_search_area .mrt_check_wrap.white label {
	color: #fff !important;
}

.k1_left_type2 .k1_search_area .mrt_check_wrap label {
	height: 16px;
	font-size: 13px;
	line-height: 16px;
}

.k1_search_area .mrt_check_wrap.white label .ico_checkbox,
	.k1_search_area .mrt_check_wrap.white label .ico_checkbox:hover {
	border-color: #fff;
}

.k1_left_type2 .k1_search_area .mrt_check_wrap label .ico_checkbox {
	width: 16px;
	height: 16px;
	margin-right: 6px;
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
	transition: all .08s ease-out;
}

.k1_mr12 {
	margin-right: 12px;
}

.k1_left_type2 .k1_search_area .mrt_check_wrap label {
	height: 16px;
	font-size: 13px;
	line-height: 16px;
}

.mrt_check_wrap.white label {
	display: inline-block;
	height: 20px;
	line-height: 20px;
	cursor: pointer;
}

.k1_left_type2 .k1_search_area .mrt_check_wrap input:checked+label .ico_checkbox
	{
	width: 16px;
	height: 16px;
	margin-right: 6px;
	background-size: 16px;
}

.mrt_check_wrap.white input:checked+label span.ico_checkbox {
	background:
		url(https://flights.myrealtrip.com/air/imgs_ibe/mrt/btn/main/ico_checkbox_white.png)
		no-repeat 0 0px;
	border: none;
	background-size: 20px;
}

.mrt_con_section {
	width: 1064px;
	margin: 0 auto;
	padding: 24px 0 48px 0;
}

#k1_pop_wrap.mrt_refresh {
	position: fixed;
	top: 50%;
	left: 50%;
	z-index: 666;
	width: 320px;
	margin-left: -160px;
	margin-top: -136.5px;
	text-align: center;
	border-radius: 2px;
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

#k1_pop_wrap.mrt_refresh .k1_pop_contents {
	padding-top: 16px;
}

.k1_pop_contents {
	padding: 24px 24px 32px;
	padding-top: 0;
	background: #fff;
}

.k1_pop_contents {
	overflow-y: auto;
	background: #fff;
}

.ico_alarm {
	display: inline-block;
	height: 56px;
	width: 56px;
	font-size: 0;
	background:
		url(https://flights.myrealtrip.com/air/imgs_ibe/mbl/ico/ico_alarm.png)
		no-repeat center;
	background-size: 56px;
}

#k1_pop_wrap.mrt_refresh h3 {
	margin: 20px 0 8px 0;
	font-weight: bold;
	font-size: 18px;
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

#k1_pop_wrap.mrt_refresh p {
	margin-bottom: 16px;
	line-height: 19px;
	font-size: 13px;
}

#k1_pop_wrap.mrt_refresh button {
	width: 80px;
}

.mrt_btn_blue {
	background-color: #51abf3;
	color: #fff !important;
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

.k1_h_tit_sub {
	font-size: 12px;
	color: #848c94;
}

#k1_pop_wrap {
	display: none;
}

.mrt_not_scdul {
	margin-top: 56px;
	text-align: center;
}

.ico_warning {
	display: inline-block;
	width: 56px;
	height: 56px;
	font-size: 0;
	background:
		url(https://flights.myrealtrip.com/air/imgs_ibe/mbl/ico/ico_warning.png)
		no-repeat center;
	background-size: 56px;
}

.mrt_not_scdul h3 {
	margin: 24px 0 10px 0;
	font-weight: bold;
	font-size: 20px;
}

.mrt_not_scdul p {
	margin-bottom: 24px;
	font-size: 13px;
	line-height: 1.5;
}

.mrt_con_left {
	float: left;
	width: 240px;
	margin-right: 40px;
}

.mrt_transit_btn {
	padding-bottom: 24px;
}

.k1_h_tit2 {
	background: none;
	padding: 0;
	font-size: 14px;
	color: #343a40;
	font-weight: 600;
	line-height: 14px;
}

.mrt_transit_btn ul {
	overflow: hidden;
}

.k1_mt12 {
	margin-top: 12px !important;
}

.mrt_transit_btn ul li {
	float: left;
	margin-right: 6px;
}

.mrt_btn_wrap input {
	display: none;
}

.mrt_btn_wrap input:checked+label {
	background-color: #51abf3;
	color: #fff;
	transition: all 0.1s;
}

div#k1_content {
	width: 100%;
	background: #f5f6f7;
}

#k1_content {
	float: right;
	width: 730px;
}

.mrt_btn_wrap label {
	display: inline-block;
	min-width: 48px;
	height: 32px;
	line-height: 32px;
	background-color: #fff;
	padding: 0 10px;
	box-sizing: border-box;
	color: #495056;
	font-size: 13px;
	font-weight: 600;
	text-align: center;
	border-radius: 50px;
}

.mrt_condi_box .mrt_list_wrap {
	padding: 8px 0;
	border-top: 1px solid #dee2e6;
}

.mrt_condi_box .k1_h_tit2 {
	height: 34px;
	margin-bottom: 0;
	line-height: 18px;
	overflow: hidden;
	padding: 8px;
	margin-left: -8px;
	margin-right: -8px;
	border-radius: 2px;
	-webkit-transition: background-color ease-in-out 0.1s;
	transition: background-color ease-in-out 0.1s;
}

.mrt_condi_box .k1_h_tit2 a {
	display: block;
	color: #343a40;
}

.mrt_condi_box .k1_h_tit2 a.active:before {
	background:
		url(https://flights.myrealtrip.com/air/imgs_ibe/mrt/ico/main/ico_arrow_lg.png)
		no-repeat right center;
	background-size: 20px;
	transform: rotate(180deg);
}

.mrt_condi_box .k1_h_tit2 a:before {
	float: right;
	display: inline-block;
	content: "";
	width: 20px;
	height: 20px;
	margin-right: -3px;
	background:
		url(https://flights.myrealtrip.com/air/imgs_ibe/mrt/ico/main/ico_arrow_lg.png)
		no-repeat right center;
	background-size: 20px;
}

.mrt_condi_box .mrt_list_wrap .mrt_list {
	margin-top: 12px !important;
}

.mrt_condi_box .k1_h_tit3 {
	margin: 0 0 14px 0 !important;
	font-weight: 500;
}

.k1_h_tit3 {
	font-size: 13px;
}

.mrt_condi_box ul {
	font-size: 13px;
}

.mrt_condi_box ul li:first-child {
	margin-top: 0;
}

.mrt_check_wrap input {
	display: none;
}

.mrt_check_wrap label span.ico_checkbox {
	display: inline-block;
	vertical-align: top;
	width: 20px;
	height: 20px;
	margin-right: 10px;
	border: 1px solid #ced4da;
	border-radius: 2px;
	box-sizing: border-box;
	background-color: #fff;
	transition: all .08s ease-out;
}

.mrt_condi_box ul li {
	margin-top: 14px;
	font-size: 13px;
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

.mrt_condi_box ul+.k1_h_tit3 {
	margin-top: 24px !important;
}

input:checked+label span.ico_checkbox {
	background:
		url(https://flights.myrealtrip.com/air/imgs_ibe/mrt/btn/main/ico_checkbox.png)
		no-repeat 0 0px;
	border: none;
	background-size: 20px;
}

.mrt_condi_box ul:last-child {
	margin-bottom: 16px;
}

.mrt_condi_box .mrt_select_all li button {
	cursor: default;
}

.mrt_select_all li button {
	background-color: transparent;
	color: #ced4da;
	font-weight: 600;
	font-size: 13px;
}

.mrt_select_all li:first-child:after {
	content: "";
	display: inline-block;
	width: 1px;
	height: 10px;
	margin: 0 8px;
	vertical-align: middle;
	background-color: #adb5bd;
	visibility: inherit;
}

.mrt_select_all {
	font-size: 13px;
	overflow: hidden;
	margin-bottom: 20px;
}

.mrt_select_all li {
	font-size: 13px;
	margin-top: 0 !important;
	float: left;
}

.mrt_select_all li button.active {
	color: #2b96ed;
	cursor: pointer !important;
}

.k1_pt16 {
	padding-top: 16px;
}

.k1_mt16 {
	margin-top: 16px !important;
}

.mrt_condi_box .mrt_list_wrap .btn_more_airline {
	display: inline-block;
	padding-right: 19px;
	margin-bottom: 12px;
	line-height: 22px;
	color: #495056;
}

.mrt_condi_box .mrt_list_wrap .btn_more_airline:before {
	display: inline-block;
	content: "";
	float: right;
	width: 16px;
	height: 16px;
	margin: 3px;
	background:
		url(https://flights.myrealtrip.com/air/imgs_ibe/mrt/ico/main/ico_arrow_sm.png)
		no-repeat right center;
	background-size: 16px;
}

.mrt_condi_box .mrt_list_wrap .btn_more_airline.active:before {
	transform: rotate(180deg);
}

.mrt_condi_box .mrt_list_wrap .mrt_list#divPrice li {
	margin-bottom: 24px;
}

.mrt_slide_wrap {
	position: relative;
	padding-right: 24px;
}

.mrt_slide_wrap .bar {
	display: block;
	height: 4px;
	background-color: #ced4da;
	border-radius: 2px !important;
	border: none;
}

.ui-slider {
	position: relative;
	text-align: left;
}

.mrt_slide_wrap .bar_active {
	position: absolute;
	top: 0;
	left: 0;
	right: 0%;
	display: block;
	height: 4px;
	background-color: #51abf3;
	border-radius: 2px;
}

.mrt_slide_wrap .ui-slider-horizontal .ui-slider-range-max {
	right: -24px;
	background-color: #ced4da;
	border-radius: 2px;
}

.mrt_slide_wrap .dot {
	position: absolute;
	top: -10px;
	right: 0;
	z-index: 99 !important;
	display: block;
	height: 24px;
	width: 24px;
	background-color: #fff;
	border: 1px solid #ced4da;
	border-radius: 100%;
	box-shadow: 0 1px 4px 0 rgba(0, 0, 0, 0.2);
	-ms-touch-action: none;
	touch-action: none;
}

.ui-slider-horizontal .ui-slider-range {
	top: 0;
	height: 100%;
}

.ui-slider .ui-slider-range {
	position: absolute;
	z-index: 1;
	font-size: .7em;
	display: block;
	border: 0;
	background-position: 0 0;
}

.mrt_con_right {
	float: right;
	width: 784px;
}

.mrt_search_result .k1_h_tit2 {
	line-height: 18px;
}

.mrt_search_result .k1_h_tit_sub {
	margin-top: 5px;
	line-height: 16px;
}

.k1_h_tit_sub {
	font-size: 12px;
	color: #848c94;
}

.k1_mt5 {
	margin-top: 5px !important;
}

.k1_fr {
	float: right;
}

.mrt_select_sort {
	width: 190px;
	height: 40px;
	padding-left: 12px;
	font-size: 14px;
	line-height: normal;
	border: 1px solid #dee2e6;
	border-radius: 2px;
	box-sizing: border-box;
	background:
		url(https://flights.myrealtrip.com/air/imgs_ibe/mrt/ico/main/ico_sortarrow.png)
		no-repeat right 12px center #fff;
	background-size: 8px;
}

select {
	-moz-appearance: none;
	-webkit-appearance: none;
	appearance: none;
	pointer: cursor;
	transition: all .08s ease-out;
}

.mrt_result_list {
	margin-top: 16px;
}

.mrt_scdul_srch_foreign ul li:first-child {
	margin-top: 0;
}

.mrt_scdul_srch_foreign ul li.active, .mrt_scdul_srch_foreign ul li:hover
	{
	box-shadow: 0 0 1px 0 rgba(0, 0, 0, 0.25), 0 2px 8px 0
		rgba(0, 0, 0, 0.1);
	border-radius: 2px;
}

.mrt_scdul_srch_foreign ul li {
	background-color: #fff;
	border-radius: 2px;
	margin-top: 8px;
	box-sizing: border-box;
	box-shadow: 0 0 1px 0 rgba(0, 0, 0, 0.15);
	-webkit-transition: box-shadow ease-in-out 0.15s;
	transition: box-shadow ease-in-out 0.15s;
}

.mrt_scdul_srch_foreign ul li .mrt_foreign_wrap {
	position: relative;
	padding: 24px;
	box-sizing: border-box;
	cursor: pointer;
}

.mrt_scdul_srch_foreign ul li .mrt_foreign_list {
	float: left;
	width: 514px;
}

.mrt_scdul_srch_foreign ul li .mrt_foreign_list .list:first-child {
	margin-top: 0;
}

.mrt_scdul_srch_foreign ul li .mrt_foreign_list .list {
	min-height: 36px;
	margin-top: 28px;
}

.mrt_scdul_srch_foreign ul li .mrt_foreign_list span.ico_airline {
	display: block;
	float: left;
	width: 32px;
	margin: 2px 14px 2px 4px;
	text-align: center;
}

.mrt_scdul_srch_foreign ul li .mrt_foreign_list span {
	display: inline-block;
	vertical-align: middle;
	line-height: 16px;
	font-size: 16px;
}

.ico_airline img {
	width: 32px;
	height: 32px;
}

.mrt_scdul_srch_foreign ul li .mrt_foreign_list .airline_name {
	min-width: 94px;
	max-width: 94px;
	margin-right: 10px;
	font-size: 13px;
	vertical-align: middle;
}

.mrt_scdul_srch_foreign .airline_name em {
	margin-top: 0;
	max-height: 32px;
	overflow: hidden;
}

.airline_name em {
	min-width: 89px;
	display: block;
	margin-top: 1px;
	font-size: 13px;
}

em, address {
	font-style: normal;
}

.mrt_scdul_srch_foreign ul li .mrt_foreign_list .mrt_time {
	height: 36px;
	margin-right: 12px;
	overflow: visible;
}

.mrt_scdul_srch_foreign ul li .mrt_foreign_list .mrt_time .time {
	color: #495056;
}

.mrt_time .dep_time {
	text-align: right;
}

.mrt_time .dep_time, .mrt_time .arr_time {
	width: 47px;
}

.mrt_time .time {
	font-size: 16px;
	font-weight: 600;
	margin-right: 16px;
	line-height: 18px;
}

.mrt_time span {
	float: left;
}

.mrt_scdul_srch_foreign ul li .mrt_foreign_list .mrt_time .time em {
	margin-top: 4px;
}

.mrt_time .time em {
	cursor: pointer;
	position: relative;
	display: inline-block;
	margin-top: 6px;
	font-size: 13px;
	color: #666d75;
	font-weight: normal;
	text-align: right;
	line-height: 16px;
	letter-spacing: 0;
}

.time .mrt_tootip_wrap {
	display: none !important;
	position: static;
}

.time .mrt_tootip_wrap .txt_wrap {
	top: 28px;
	left: 50%;
	width: 100px;
	margin-left: -50px;
	bottom: auto;
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

.mrt_scdul_srch_foreign ul li .mrt_foreign_list .from_to {
	line-height: 13px;
	height: 16px;
}

.mrt_scdul_srch_foreign ul li .mrt_foreign_list span {
	display: inline-block;
	vertical-align: middle;
	line-height: 16px;
	font-size: 16px;
}

.mrt_time .from_to {
	display: block;
	background: none;
	text-indent: 0px;
	width: auto;
	height: 18px;
	margin: 0;
	line-height: 18px;
	margin-right: 16px;
}

.mrt_scdul_srch_foreign ul li .mrt_foreign_list .from_to .ico {
	margin-top: 4px;
	margin-bottom: 4px;
}

.mrt_time .from_to .ico {
	float: none;
	margin-top: 5px;
	margin-bottom: 5px;
}

.ico_itinerary_lg {
	display: inline-block;
	width: 76px;
	height: 8px;
	background:
		url(https://flights.myrealtrip.com/air/imgs_ibe/mrt/ico/main/ico_fromto_line.png)
		no-repeat center;
	font-size: 0px;
	background-size: 76px;
}

.mrt_scdul_srch_foreign ul li .mrt_foreign_list .from_to .time {
	margin-top: 4px;
	line-height: 16px;
}

element.style {
	
}

.mrt_scdul_srch_foreign ul li .mrt_foreign_list .from_to .time {
	margin-top: 4px;
	line-height: 16px;
}

.mrt_scdul_srch_foreign ul li .mrt_foreign_list .mrt_time .time {
	color: #495056;
}

.mrt_scdul_srch_foreign ul li .mrt_foreign_list .from_to .time {
	margin-top: 4px;
	line-height: 16px;
}

.mrt_scdul_srch_foreign ul li .mrt_foreign_list .mrt_time .time {
	color: #495056;
}

.mrt_time .from_to .time {
	display: block;
	margin-top: 2px;
	margin-right: 0;
	text-align: center;
	font-size: 13px;
	color: #848c94;
	font-weight: normal;
	line-height: 16px;
}

.mrt_scdul_srch_foreign ul li .mrt_foreign_list span.via {
	font-size: 13px;
	line-height: 16px;
}

.mrt_foreign_total {
	float: right;
}

.mrt_foreign_total a.mart_total_btn {
	position: relative;
	display: block;
	width: 208px;
	height: 68px;
	padding: 11px 14px;
	background-color: #fff;
	box-sizing: border-box;
	border: 1px solid #dee2e6;
	border-radius: 2px;
	-webkit-transition: border ease-in-out 0.15s;
	transition: border ease-in-out 0.15s;
}

.mrt_foreign_total a.mart_total_btn .top {
	overflow: hidden;
}

.mrt_foreign_total a.mart_total_btn span {
	/* display: inline-block; */
	
}

.mrt_foreign_total a.mart_total_btn .mrt_credit_age {
	float: left;
	width: 100%;
	overflow: hidden;
	display: inline-block;
	line-height: 16px;
}

.mrt_foreign_total a.mart_total_btn .credit_card.ellipsis {
	max-width: 88px;
	margin-right: 4px;
	overflow: hidden;
	text-overflow: ellipsis;
	white-space: nowrap;
}

.mrt_foreign_total a.mart_total_btn .mrt_credit_age span {
	float: left;
	font-size: 12px;
}

a.mart_total_btn .seat {
	position: absolute;
	top: 11px;
	right: 14px;
	color: #ec4937;
	font-size: 12px;
	line-height: 16px;
}

.mrt_foreign_total a.mart_total_btn .bottom {
	position: relative;
	display: inline-block;
	overflow: hidden;
	height: 24px;
	margin-top: 4px;
}

.mrt_foreign_total a.mart_total_btn .fare_total {
	font-size: 20px;
}

.fare_total {
	font-size: 24px;
	font-weight: bold;
	line-height: 24px;
	margin-bottom: 2px;
}

.mrt_foreign_total a.mart_total_btn .fare_total span {
	font-weight: normal;
	font-size: 14px;
	font-weight: 600;
}

.mrt_foreign_total .fare_rules {
	float: right;
	position: absolute;
	right: 22px;
	bottom: 24px;
}

.mrt_foreign_total .fare_rules ul {
	height: 24px;
	margin: 12px 0 -4px 0;
}

.mrt_select_all {
	font-size: 13px;
	overflow: hidden;
	margin-bottom: 20px;
}

.mrt_foreign_total .fare_rules ul li button {
	height: 24px;
	line-height: 18px;
	padding: 0 6px;
	color: #666d75;
	font-weight: normal;
	font-size: 13px;
	border-radius: 2px;
	-webkit-transition: background-color ease-in-out 0.15s;
	transition: background-color ease-in-out 0.15s;
}

.mrt_select_all li button {
	background-color: transparent;
	color: #ced4da;
	font-weight: 600;
	font-size: 13px;
}

.mrt_scdul_srch_foreign ul li:after {
	content: ".";
	display: block;
	height: 0;
	clear: both;
	visibility: hidden;
}

.mrt_scdul_srch_foreign ul li.active button.detail {
	background-image:
		url(https://flights.myrealtrip.com/air/imgs_ibe/mrt/ico/main/ico_arrow_sm_up.png);
}

.mrt_foreign_total .fare_rules ul li button.detail {
	color: #495056;
	font-weight: 500;
	background:
		url(https://flights.myrealtrip.com/air/imgs_ibe/mrt/ico/main/ico_arrow_sm.png)
		no-repeat right 2px center;
	background-size: 16px;
	padding-right: 20px;
}

.mrt_fare_total {
	display: none;
	position: absolute;
	left: 0;
	right: 0;
	bottom: -28px;
	z-index: 5;
	padding: 2px 24px;
	text-align: right;
	background-color: #f8f9fa;
	box-shadow: 0 2px 2px 0 rgba(0, 0, 0, 0.2);
	-webkit-transition: all .08s ease-out;
	transition: all .08s ease-out;
}

.mrt_scdul_srch_foreign .fare_detail {
	clear: both;
	padding-top: 0px;
	padding-bottom: 0;
}

.mrt_scdul_srch_foreign .fare_detail .mrt_srch_result_bar {
	padding: 12px 24px;
	box-shadow: none;
	font-size: 14px;
	height: 48px;
	background-color: #fafbfc;
	border: none;
	border-top: 1px solid #dee2e6;
}

.mrt_srch_result_bar {
	overflow: hidden;
	height: 56px;
	padding: 16px;
	background-color: #fff;
	border-radius: 2px;
	box-sizing: border-box;
	box-shadow: 0 0 1px 0 rgba(0, 0, 0, 0.15);
}

.mrt_srch_result_bar .label_box {
	float: left;
	font-size: 13px;
}

.label_box.label_blue {
	background-color: #1583db;
	color: #fff;
}

.label_box {
	display: inline-block;
	min-width: 44px;
	height: 24px;
	padding: 0 5px;
	line-height: 24px;
	font-size: 12px;
	border-radius: 2px;
	box-sizing: border-box;
	text-align: center;
	font-weight: bold;
}

.mrt_srch_result_bar .mrt_select_way {
	float: left;
}

.mrt_select_way {
	overflow: hidden;
	margin-left: 10px;
	margin-right: 16px;
	margin-bottom: 0;
}

.mrt_scdul_srch_foreign .fare_detail .mrt_srch_result_bar .mrt_date {
	float: right;
	text-align: right;
}

.mrt_srch_result_bar .mrt_date {
	float: left;
	height: 24px;
	line-height: 24px;
	font-weight: normal;
}

.mrt_date {
	min-width: 97px;
	font-size: 14px;
	color: #343a40;
	font-weight: bold;
}

.mrt_scdul_srch_foreign .fare_detail .detail_list {
	padding: 24px;
}

.mrt_scdul_srch_foreign .fare_detail .detail_list div.airline .list_01 {
	width: 148px;
	margin-right: 48px;
}

.mrt_scdul_srch_foreign .fare_detail .detail_list div div {
	padding: 0;
	box-shadow: none;
	float: left;
	margin-top: 0;
}

.mrt_scdul_srch_foreign .fare_detail .detail_list div.airline .list_01 span
	{
	font-size: 13px;
	height: 20px;
	font-weight: 500;
	margin-bottom: 4px;
	line-height: 20px;
}

.mrt_scdul_srch_foreign .fare_detail .detail_list div span {
	display: block;
	float: none;
}

.mrt_scdul_srch_foreign .fare_detail .detail_list div.airline .list_02 .mrt_date
	{
	min-width: 64px;
	margin-right: 8px;
	font-size: 14px;
	font-weight: 500;
	line-height: 20px;
}

.mrt_scdul_srch_foreign .fare_detail .detail_list div.airline .list_03 {
	margin-top: 4px;
	margin-right: 14px;
}

.ico_from_to {
	display: inline-block;
	width: 10px;
	height: 64px;
	background:
		url(https://flights.myrealtrip.com/air/imgs_ibe/mrt/ico/main/ico_from_to.png)
		no-repeat center;
	font-size: 0px !important;
	background-size: 10px;
}

.mrt_scdul_srch_foreign .fare_detail .detail_list .mrt_time .dep_time {
	text-align: left;
}

.mrt_scdul_srch_foreign .fare_detail .detail_list .mrt_time .dep_time,
	.mrt_scdul_srch_foreign .fare_detail .detail_list .mrt_time .arr_time {
	width: auto;
}

.mrt_time .time {
	font-size: 16px;
	font-weight: 600;
	margin-right: 16px;
	line-height: 18px;
}

.mrt_scdul_srch_foreign .fare_detail .detail_list div.airline .list_04 .time em
	{
	cursor: text;
	display: inline-block;
	margin-top: 0;
	margin-left: 6px;
	color: #343a40;
	font-size: 14px;
	font-weight: normal;
	line-height: 20px;
}

.mrt_scdul_srch_foreign .fare_detail .detail_list div.airline .list_04 .from_to
	{
	height: auto;
}

.time {
	font-size: 16px;
	font-weight: 600;
	margin-right: 16px;
	line-height: 18px;
}

.mrt_scdul_srch_foreign .fare_detail .detail_list div.airline .list_04 .from_to .time
	{
	margin: 8px 0;
	text-align: left;
	font-size: 13px;
	line-height: 16px;
}

.mrt_select_way .ico_itinerary, .mrt_select_way .ico_itinerary_02 {
	float: left;
	margin: 0 8px;
	margin-top: 4px;
}

.ico_itinerary {
	display: inline-block;
	width: 20px;
	height: 20px;
	background:
		url(https://flights.myrealtrip.com/air/imgs_ibe/mrt/ico/main/ico_fromto_line.png)
		no-repeat right center;
	font-size: 0px;
	text-indent: -9999px;
	background-size: 76px;
}

.mrt_select_way strong {
	float: left;
	font-size: 16px;
	font-weight: 600;
	line-height: 24px;
}

.mrt_scdul_srch_foreign ul li.active .mrt_foreign_total a.mart_total_btn,
	.mrt_foreign_total a.mart_total_btn.active, .mrt_foreign_total a.mart_total_btn.active:hover
	{
	border: 1px solid #51abf3;
	box-sizing: border-box;
	box-shadow: 0 0 0 1px #51abf3, 0 1px 4px 0 rgba(0, 0, 0, 0.15);
}

.mrt_scdul_srch_foreign ul li .mrt_total_scdul {
	margin-top: 0;
	padding: 20px 24px 24px;
	border-top: 1px solid #e9ecef;
	border-radius: 0 0 2px 2px;
	box-shadow: none;
}

.mrt_total_scdul {
	clear: both;
	padding: 24px;
	margin-top: 16px;
	background-color: #fff;
	border-radius: 2px;
	box-shadow: 0 0 1px 0 rgba(0, 0, 0, 0.15);
}

.mrt_total_scdul .k1_h_tit1 {
	margin-bottom: 16px;
}

.k1_h_tit1 {
	background: none;
	padding: 0;
	margin: 0;
	font-size: 16px;
	font-weight: 600;
}

.mrt_basic_view {
	border-top: 1px solid #e9ecef;
}

caption {
	visibility: hidden;
	overflow: hidden;
	display: none;
}

.mrt_basic_view table {
	width: 100%;
	table-layout: fixed;
}

table {
	border-collapse: collapse;
	border-spacing: 0;
}

tr, th {
	font-weight: normal;
}

#k1_content table th, #k1_content table td {
	vertical-align: middle;
	line-height: 1.4;
}

.mrt_total_scdul .mrt_basic_view table thead th:first-child,
	.mrt_total_scdul .mrt_basic_view table tbody td:first-child {
	padding-left: 0;
}

.mrt_total_scdul .mrt_basic_view table thead th {
	padding-top: 8px;
	padding-bottom: 8px;
	font-size: 12px !important;
	text-align: left;
}

.mrt_basic_view table thead tr th {
	padding: 12px 8px;
	border-bottom: 1px solid #e9ecef;
	font-size: 13px;
	color: #495056;
}

.mrt_basic_view table tbody {
	border-bottom: 1px solid #e9ecef;
}

.mrt_basic_view table tbody tr:last-child td {
	padding-bottom: 16px;
}

.mrt_basic_view table tbody tr:first-child td {
	padding-top: 16px;
}

.mrt_total_scdul .mrt_basic_view table tbody td {
	line-height: 1.25 !important;
	font-size: 13px !important;
}

.mrt_basic_view table tbody tr td {
	padding: 4px 8px;
	font-size: 14px;
	font-weight: 500;
}

.mrt_total_scdul .mrt_basic_view table thead th:last-child,
	.mrt_total_scdul .mrt_basic_view table tbody td:last-child {
	padding-right: 0;
}

.mrt_total_scdul .mrt_basic_view table tfoot .mrt_total {
	font-size: 16px;
}

.mrt_total_scdul .mrt_basic_view table tfoot td {
	padding: 16px 0 0 0;
	line-height: 24px !important;
}

.mrt_basic_view table tfoot tr td {
	padding: 6px 8px;
	font-weight: bold;
}

.fare_total {
	font-size: 24px;
	font-weight: bold;
	line-height: 24px;
	margin-bottom: 2px;
}

.fare_total span.k1_h_tit_sub {
	margin-right: 10px;
	font-size: 13px;
	font-weight: normal;
}

.fare_total span {
	font-size: 20px;
	font-weight: 600;
	vertical-align: 1px;
}

.k1_h_tit_sub {
	font-size: 12px;
	color: #848c94;
}
/* 도시스타일 */
#simplemodal-container2 {
	border: 0px;
	width: 745px;
}

#k1_pop_wrap2 {
	overflow: hidden;
	position: relative;
}

div.k1_mrtair_pop_wrap2 {
	position: relative;
	border-radius: 2px;
	box-shadow: 0 1px 4px 0 rgba(0, 0, 0, 0.15);
}

div.k1_mrtair_pop_wrap2 h4 {
	padding: 28px 32px 0;
	font-size: 18px;
	font-weight: 600;
	color: #343a40;
	line-height: 24px;
}

div.k1_mrtair_pop_contents2 {
	padding: 28px 32px 32px;
}

div.k1_mrtair_pop_wrap2 p {
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

div.k1_mrtair_pop_contents2 table.k1_tbl_form {
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

div.k1_mrtair_pop_contents2 table.k1_tbl_form th, div.k1_mrtair_pop_contents2 table.k1_tbl_form td
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

div.k1_mrtair_pop_wrap2 a.close_pop {
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

#simplemodal-container2 {
	display: none;
}

div.k1_mrtair_pop_wrap2 a.close_pop:hover {
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
	z-index: 555;
}
/* 도시검색한거 스타일 */
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

.mrt_btn_minus_gray, .mrt_btn_plus_blue {
	cursor: pointer;
}

button.mrt_btn_minus_blue {
	border-color: #51abf3;
}

.mrt_calendar_wrap .ui-datepicker-calendar td .today {
	background-color: #f1f3f5;
	border-radius: 100%;
	color: #495056;
}

.mrt_calendar_wrap .ui-datepicker-calendar td a.middle,
	.mrt_calendar_wrap .ui-datepicker-calendar td a.start,
	.mrt_calendar_wrap .ui-datepicker-calendar td a.end {
	background-color: #51abf3;
	border-radius: 100%;
	color: #fff;
	font-weight: 600;
}

.mrt_calendar_wrap .ui-datepicker-calendar td a.middle+.txt {
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

#searchbox {
	display: none;
}

.citylist:hover {
	cursor: pointer;
	background-color: rgb(241, 243, 245);
}
/* 달력스타일 */
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
/* 좌석 선택 스타일 */
.mrt_pop_type_02 {
	position: absolute;
	z-index: 6;
	background-color: #fff;
	border-radius: 3px;
}

.mrt_seat_pop {
	position: absolute;
	top: 206px;
	right: 420px;
	background-color: #fff;
	width: 344px;
	box-shadow: 0 0 1px 0 rgba(0, 0, 0, 0.1), 0 1px 4px 0
		rgba(0, 0, 0, 0.15);
	z-index: 999;
}

.mrt_pers_num {
	padding: 0 24px 24px 24px;
}

.k1_clearfix {
	display: block;
}

#k1_pop_wrap3 {
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

.mrt_seat_pop .k1_pop_contents3 {
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
	overflow: visible;
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
	top: 23px;
	right: 20px;
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
.mrt_foreign_total a.mart_total_btn:hover {
    border: 1px solid #848c94;
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
function printCalendar(data) { // callback
	var title = $("<a href='javascript:void(0);' class='btn_prev' role='moveToPrev' id='btn_prev' onclick='prevMonth()'>이전달</a>"
			+ data.c_year
			+ ". "
			+ (data.c_month < 10 ? "0" + data.c_month : data.c_month)
			+ "<a href='javascript:void(0);' class='btn_next' role='moveToNext' style='display: none;' onclick='nextMonth()'>다음달</a>");
	$(".cal_header1").append(title);
	var weeks = Math.ceil((data.c_firstweek + data.c_lastDay) / 7);
	var day = 1;
	var month = data.c_month;
	var tbody = $("<tbody></tbody>")
	// console.log(data.c_firstweek);
	for (var i = 0; i < weeks; i++) {
		var tr = $("<tr></tr>");
		if (i == 0) {
			for (var j = 0; j < data.c_firstweek; j++) {
				var td = $("<td></td>");
				var span = $("<span class='dp00000000  disable'>&nbsp;</span>");
				td.append(span);
				tr.append(td);
			}
			for (var j = 0; j < 7 - data.c_firstweek; j++) {
				var td = $("<td></td>");
				var span = $("<span></span>");

				var buffer = data.c_year
						+ ""
						+ (data.c_month < 10 ? "0" + data.c_monthr
								: data.c_month) + ""
						+ (day < 10 ? "0" + day : day);
				td.addClass(buffer);
				if (c_year < data.t_year
						|| (c_year == data.t_year && (month < data.t_month || (month == data.t_month && day < data.t_day + 3)))) {
					span.text(day)
					span.addClass("disable");
				} else {
					var a = $("<a href='javascript:void(0)' title='"
							+ buffer + " '>" + day + "</a>");
					a.addClass(buffer);
					span.append(a);
				}
				if (month == data.t_month && day == data.t_day
						&& c_year == data.t_year) {
					span.addClass("today");
				}
				td.append(span);
				tr.append(td);
				day++;
			}

			tbody.append(tr);
		} else {
			tr = $("<tr></tr>");
			for (var j = 0; j < 7; j++) {
				var buffer = data.c_year
						+ ""
						+ (data.c_month < 10 ? "0" + data.c_month
								: data.c_month) + ""
						+ (day < 10 ? "0" + day : day);
				var td = $("<td></td>");
				var span = $("<span></span>");

				span.addClass(buffer);
				if (c_year < data.t_year
						|| (c_year == data.t_year && (month < data.t_month || (month == data.t_month && day < data.t_day + 3)))) {
					span.text(day)
					span.addClass("disable");
				} else {
					var a = $("<a href='javascript:void(0)' title='"
							+ buffer + " '>" + day + "</a>");
					a.addClass(buffer);
					span.append(a);
				}
				if (month == data.t_month && day == data.t_day
						&& c_year == data.t_year) {
					span.addClass("today");
				}
				td.append(span);
				tr.append(td);
				day++;
				if (day > data.c_lastDay)
					break;
			}
			tbody.append(tr);
		}
	}
	$(".cal_table1").append(tbody);

	var title = $("<a href='javascript:void(0);' class='btn_prev' role='moveToPrev' style='display: none;' onclick='prevMonth()'>이전달</a>"
			+ data.n_year
			+ ". "
			+ (data.n_month < 10 ? "0" + data.n_month : data.n_month)
			+ "<a href='javascript:void(0);' class='btn_next' role='moveToNext' onclick='nextMonth()'>다음달</a>");
	$(".cal_header2").append(title);

	var weeks = Math.ceil((data.n_firstweek + data.n_lastDay) / 7);
	var day = 1;
	var month = data.n_month;
	// console.log(c_year + "/" +data.t_year)
	// console.log(data.n_firstweek);
	var tbody = $("<tbody></tbody>")
	for (var i = 0; i < weeks; i++) {
		var tr = $("<tr></tr>");
		if (i == 0) {
			for (var j = 0; j < data.n_firstweek; j++) {
				var td = $("<td></td>");
				var span = $("<span class='dp00000000  disable'>&nbsp;</span>");
				td.append(span);
				tr.append(td);
			}
			for (var j = 0; j < 7 - data.n_firstweek; j++) {
				var td = $("<td></td>");
				var span = $("<span></span>");
				var buffer = data.c_year
						+ ""
						+ (data.n_month < 10 ? "0" + data.n_month
								: data.n_month) + ""
						+ (day < 10 ? "0" + day : day);
				td.addClass(buffer);
				if (c_year < data.t_year
						|| (c_year + 1 == data.t_year && (month < data.t_month || (month == data.t_month && day < data.t_day + 3)))) {
					span.text(day)
					span.addClass("disable");
				} else {
					var a = $("<a href='javascript:void(0)' title='"
							+ buffer + " '>" + day + "</a>");
					a.addClass(buffer);
					span.append(a);
				}
				if (month == data.t_month && day == data.t_day
						&& c_year == data.t_year) {
					span.addClass("today");
				}
				td.append(span);
				tr.append(td);
				day++;
			}

			tbody.append(tr);
		} else {
			tr = $("<tr></tr>");
			for (var j = 0; j < 7; j++) {
				var buffer = data.c_year
						+ ""
						+ (data.n_month < 10 ? "0" + data.n_month
								: data.n_month) + ""
						+ (day < 10 ? "0" + day : day);
				var td = $("<td></td>");
				var span = $("<span></span>");

				span.addClass(buffer);
				if (c_year < data.t_year
						|| (c_year + 1 == data.t_year && (month < data.t_month || (month == data.t_month && day < data.t_day + 3)))) {
					span.text(day)
					span.addClass("disable");
				} else {
					var a = $("<a href='javascript:void(0)' title='"
							+ buffer + " '>" + day + "</a>");
					a.addClass(buffer);
					span.append(a);
				}
				if (month == data.t_month && day == data.t_day
						&& c_year == data.t_year) {
					span.addClass("today");
				}
				td.append(span);
				tr.append(td);
				day++;
				if (day > data.n_lastDay)
					break;
			}
			tbody.append(tr);
		}
	}
	$(".cal_table2").append(tbody);

}; // 달력 그리는 함수
$(document).ready(function() {
		c_month = new Date().getMonth()+1;
		c_year = new Date().getYear()+1900;
		$(".close_pop").click(function() {
			$("#simplemodal-container2").css("display", "none");
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

					$("#simplemodal-container2").fadeIn();
					$("#simplemodal-container2").css("left",
							$(this).offset().left + "px").css(
							"top",
							$(this).offset().top + 46 + "px");

					$("#model_back").fadeIn();
					$(".mrt_calendar_wrap").css("display",
							"none");
				});
		$(".endCity").on(
				"click",
				function() {
					CtiySearch = $(this);
					$("#simplemodal-container2").fadeIn();
					$("#simplemodal-container2").css("left",
							$(this).offset().left + "px").css(
							"top",
							$(this).offset().top + 46 + "px");
					$("#model_back").fadeIn();
					$(".mrt_calendar_wrap").css("display",
							"none");
				})
				
				$(".k1_main_city td a").on("click", function() {
					// console.log($(this).text());
					// CtiySearch.val($(this).text());
					var searchCity = $(this).text();
					$.ajax({
						   	url:"<%=request.getContextPath()%>/flights/searchCity.do"
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
								   			$("#simplemodal-container2").css("display", "none");
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
					$("#simplemodal-container2").css("display", "none");
					$("#model_back").fadeOut();
				});
		
		$("#btn_search").on("click", function(){
			$("#searchbox").css("display", "block");
			var searchCity = $("#input_search").val();
			  $.ajax({
				   	url:"<%=request.getContextPath()%>/flights/searchCity.do"
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
						   			$("#simplemodal-container2").css("display", "none");
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
		// 기본 달력 출
		$.ajax({
			url:"<%=request.getContextPath()%>/flights/printCalendar.do"
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
		$(".chooseDate").off("click").on("click", function(e) {
			$(".mrt_calendar_wrap").css("top", "206px");
			$(".mrt_calendar_wrap").fadeIn();
		});
		
		$("#calClose").on("click", function(){
			$(".mrt_calendar_wrap").css("display", "none");
		});
		
		// 달력 체크 한거 반영되게
		$("#calSelect").on("click", function(){
			var text = null;
			var weeks = "일월화수목금토";
			if ("${ param.initform}" == "MT") { // 다구간
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
			}else if("${ param.initform}" == "OW"){ // 편도
				var s_year = start.substring(0, 4);
				var s_month = start.substring(4, 6);
				var s_day = start.substring(6, 8);
				// console.log(s_year+"/"+s_month+"/"+s_day);
				var s_date = new Date(s_year, s_month-1, s_day);
				// console.log(weeks[s_date.getDay()]);
				$("#depdt1").val(s_year +"/" +s_month+ "/"+s_day );
				$("#depdt1_view").val( s_month + "월 " + s_day + "일 ("+weeks[s_date.getDay()]+")");
				$("#calendarPop").css("display", "none");
			}else if("${ param.initform}" == "RT"){ // 왕복
				var s_year = start.substring(0, 4);
				var s_month = start.substring(4, 6);
				var s_day = start.substring(6, 8);
				var s_date = new Date(s_year, s_month-1, s_day);
				
				var e_year = end.substring(0, 4);
				var e_month = end.substring(4, 6);
				var e_day = end.substring(6, 8);
				var e_date = new Date(e_year, e_month-1, e_day);
				
				$("#depdt1").val(s_year +"/" +s_month+ "/"+s_day );
				$("#arrdt1").val(e_year +"/" +e_month+ "/"+e_day );
				
				$("#depdt1_view").val( s_month + "월 " + s_day + "일 ("+weeks[s_date.getDay()]+")");
				$("#arrdt1_view").val( e_month + "월 " + e_day + "일 ("+weeks[e_date.getDay()]+")");
				$("#calendarPop").css("display", "none");
			}
		});
		$("#btn_arrDepChange").on(
				"click",
				function() {
					var buffer = $("#depcity1").val();
					$("#depcity1").val(
							$("#arrcity1").val());
					$("#arrcity1").val(buffer);
				});
		
		$(".k1_select_border").on("click", function() {
			console.log("클릭");
			$("#people_boxParent").css("display", "block");
		});
		
		$(".k1_btn_p_close1").on("click", function() {
			$("#people_boxParent").css("display", "none");
		});
		
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
		
		$("#flightsSearchButton").on("click", function(){
			var href = $("#intfareSchForm").serialize();
			href += "&initform=" + "${ param.initform}";
			href += "&adult=" + $("#adultCount").text();
			href += "&child=" + $("#childCount").text();
			href += "&infant=" + $("#infantCount").text();
			href += "&seatLevel=" +$(".seatLevel .mrt_radio_wrap input[type='radio']:checked").next().text();
			// console.log($(".seatLevel .mrt_radio_wrap input[type='radio']:checked").next().text());
			if("${ param.initform}" == "MT"){
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
			// console.log(href);
			location.href = $("#intfareSchForm").attr("action") +"?"+ href;

		});
		
		$(".mrt_list_wrap h2").on("click", function(){
			$(this).children("a").toggleClass("active");
			$(this).next().slideToggle("slow");
		});
		
		$("#airNoneCheck, #airAllCheck").on("click", function(){
			if($("#airNoneCheck").is($(".active"))){
				// console.log("모두 해제");
				$("#airNoneCheck").removeClass("active");
				$("#airAllCheck").addClass("active");
				$(".k1_input_check").attr("checked", false);
			}else if($("#airAllCheck").is($(".active"))){
				//  console.log("모두 선택");
				$("#airAllCheck").removeClass("active");
				$("#airNoneCheck").addClass("active");
				$(".k1_input_check").attr("checked", true);
			}
		});
		
		$("#moreAllAir").on("click", function(){
			$("#div_moreairline").slideToggle("slow");
			$(this).toggleClass("active");
		});
});
</script>
<script>
/* ajax로 생긴 것들 이벤트 */
$(document).on("click", ".citylist",function() {
	var ap_city = $(this).find("td[class='cityInfo']").attr("title");
	var c_name = $(this).find("td[class='cityInfo']").text();
	// console.log(ap_city);
	CtiySearch.val(c_name+"("+ ap_city+")");
	$("#simplemodal-container2").css("display", "none");
	 $("#model_back").fadeOut();
	 $("#searchbox").css("display", "none");
	 $("#input_search").val("");
});

$(document).on("click", ".ui-datepicker-calendar td a",
		function() {
	console.log("${ praram.initform}");
			if("${ param.initform}" == "OW"){ // 편도는 start만
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
				} else if ($(this).attr("class") > start ) {
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
</head>
<body>
<jsp:include page="/WEB-INF/layout/top2.jsp"></jsp:include>
	<form action="<%=request.getContextPath()%>/flights/search.do"
		id="intfareSchForm" name="intfareSchForm" method="get" target="_blank">
		<div class="k1_left_type2" id="div_main_search">
			<div class="list_search_wrap">
				<h2 id="initFromSrt" class="k1_h_tit2">
				편도
				</h2>
				<div class="cont">
					<div class="basetrip">
						<ul class="k1_plancode2 k1_clearfix">
							<li>
								<div class="mrt_city_selector k1_clearfix mrt_border_all">
									<input id="depcity1" class="k1_input_text startCity"
										type="text" readonly="readonly" title="출발도시 선택"
										placeholder="출발지가 어디인가요?" value="인천(ICN)" name="startCity">
									<button type="button" class="mrt_btn_swapper"
										id="btn_arrDepChange">도착지 출발지 교체</button>
									<input id="arrcity1" class="k1_input_text endCity" type="text"
										readonly="readonly" title="도착도시 선택" placeholder="도착지가 어디인가요?"
										value="밴쿠버(YVR)" name="endCity">
								</div>
							</li>
							<li>
								<div
									class="mrt_date_selector k1_clearfix mrt__all k1_ml8 chooseDate">
									<input id="depdt1" class="k1_input_text" type="hidden"
										readonly="readonly" title="출발일자 선택" value="2019/06/12" name="startDate">
									<input id="depdt1_view" class="k1_input_text" type="text"
										readonly="readonly" title="출발일자 선택" role="calendarPopInput"
										value="07월 18일 (목)"> <span class="hyphen" id="hyphen">-</span>
									<span id="oneway"> <input id="arrdt1"
										class="k1_input_text" type="hidden" readonly="readonly"
										title="도착일자 선택" value="2019/06/18" name="endDate"> <input
										id="arrdt1_view" class="k1_input_text" type="text"
										readonly="readonly" title="도착일자 선택" role="calendarPopInput"
										value="06월 18일 (화)">
									</span>
								</div>
							</li>
							<li>
								<div class="mrt_seat_wrap mrt_border_all">
									<a href="javascript:void(0);" class="k1_select_border"><span
										class="txt" id="bin_people">승객 1명, 일반석</span></a>
								</div>
							</li>
						</ul>
					</div>
					<a href="#" class="k1_btn_price_search" id="flightsSearchButton" title="검색">검색</a>
				</div>
				<div id="multitrip">
					<ul class="k1_plancode2">
						<li class="k1_clearfix" id="search2_1"><input
							id="multi_depCtyCode1" placeholder="출발지가 어디인가요?"
							class="k1_input_text startCity" type="text" title="출발지 여정1 찾기"
							readonly="readonly"> <input id="multi_arrCtyCode1"
							placeholder="도착지가 어디인가요?" class="k1_input_text endCity"
							type="text" title="도착지 여정1 찾기" readonly="readonly"> <input
							id="multi_depDt1" class="k1_input_text mrt_date_selector"
							type="hidden" placeholder="탑승일이 언제인가요?" title="날짜선택"
							readonly="readonly" value="2019-06-12"> <input
							id="multi_depDt1_view"
							class="k1_input_text mrt_date_selector chooseDate" type="text"
							placeholder="탑승일이 언제인가요?" title="날짜선택" role="calendarPopTxt"
							readonly="readonly">
							<div class="mrt_seat_wrap mrt_border_all">
								<a href="javascript:void(0);" class="mrt_select_border"><span
									class="txt" id="bin_people">승객 1명, 일반석</span></a>
							</div></li>
						<li class="k1_clearfix" id="search2_2" data-type="toggleSearch">
							<input id="multi_depCtyCode2" placeholder="출발지가 어디인가요?"
							class="k1_input_text startCity" type="text" title="출발지 여정2 찾기"
							readonly="readonly"> <input id="multi_arrCtyCode2"
							placeholder="도착지가 어디인가요?" class="k1_input_text endCity"
							type="text" title="도착지 여정2 찾기" readonly="readonly"> <input
							id="multi_depDt2" class="k1_input_text mrt_date_selector"
							type="hidden" title="날짜선택" placeholder="탑승일이 언제인가요?"
							readonly="readonly" value="2019-06-18"> <input
							id="multi_depDt2_view"
							class="k1_input_text mrt_date_selector chooseDate" type="text"
							title="날짜선택" placeholder="탑승일이 언제인가요?" role="calendarPopTxt"
							readonly="readonly">
							<div class="mrt_itinerary_plus k1_ml14 k1_fl">
								<a href="#"><button type="button" class="mrt_plus_white">추가</button>
									<span>여정추가</span></a>
							</div>
						</li>
						<li class="k1_clearfix" id="search2_3" data-type="toggleSearch" style="display:none;">
							<input id="multi_depCtyCode3" placeholder="출발지가 어디인가요?"
							class="k1_input_text startCity" type="text" title="출발지 여정3 찾기"
							readonly="readonly"> <input id="multi_arrCtyCode3"
							placeholder="도착지가 어디인가요?" class="k1_input_text endCity"
							type="text" title="도착지 여정3 찾기" readonly="readonly"> <input
							id="multi_depDt3" class="k1_input_text mrt_date_selector"
							type="hidden" title="날짜선택" placeholder="탑승일이 언제인가요?"
							readonly="readonly" value=""> <input
							id="multi_depDt3_view"
							class="k1_input_text mrt_date_selector chooseDate" type="text"
							title="날짜선택" placeholder="탑승일이 언제인가요?" role="calendarPopTxt"
							readonly="readonly">
							<div class="mrt_itinerary_plus k1_ml14 k1_fl">
								<a href="#"><button type="button" class="mrt_delete_white">여정삭제</button></a>
							</div>
						</li>
						<li class="k1_clearfix" id="search2_4" data-type="toggleSearch" style="display:none;">
							<input id="multi_depCtyCode4" placeholder="출발지가 어디인가요?"
							class="k1_input_text startCity" type="text" title="출발지 여정4 찾기"
							readonly="readonly"> <input id="multi_arrCtyCode4"
							placeholder="도착지가 어디인가요?" class="k1_input_text endCity"
							type="text" title="도착지 여정4 찾기" readonly="readonly"> <input
							id="multi_depDt4" class="k1_input_text mrt_date_selector"
							type="hidden" title="날짜선택" placeholder="탑승일이 언제인가요?"
							readonly="readonly" value=""> <input
							id="multi_depDt4_view"
							class="k1_input_text mrt_date_selector chooseDate" type="text"
							title="날짜선택" placeholder="탑승일이 언제인가요?" role="calendarPopTxt"
							readonly="readonly">
							<div class="mrt_itinerary_plus k1_ml14 k1_fl">
								<a href="#"><button type="button" class="mrt_delete_white">여정삭제</button></a>
							</div>
						</li>
					</ul>
				</div>
				<div class="k1_search_area k1_tar k1_clearfix open"
					id="mrt_toggle_search">
					<div class="k1_tar k1_clearfix">
						<div class="mrt_condi_chk k1_fl k1_clearfix" id="nonstopDiv">
							<div class="mrt_check_wrap white k1_mr12">
								<input type="checkbox" id="nonStop" name="nonstop"
									class="k1_input_check" value="Y"> <label for="nonStop"><span
									class="ico_checkbox"></span>직항만</label>
							</div>
							<div class="mrt_check_wrap white k1_mr12">
								<input type="checkbox" id="freebag" name="freebag"
									class="k1_input_check" value="Y"> <label for="freebag"><span
									class="ico_checkbox"></span>무료 수하물 가능</label>
							</div>
						</div>
					</div>
				</div>
			</div>

		</div>
		<div id="simplemodal-container2" class="simplemodal-container2"
			style="left: 419.5px; top: 270px; display: none; position: absolute; z-index: 999;">
			<div class="simplemodal-wrap2">
				<div id="simplemodal-data2" class="simplemodal-data2">
					<div id="_modal" style="overflow: hidden;">
						<div id="k1_pop_wrap2" class="k1_mrtair_pop_wrap2"
							style="background-color: rgb(255, 255, 255);">
							<h4>도시 선택</h4>
							<div class="k1_mrtair_pop_contents2">
								<p class="k1_mrtair_srch_city">
									<input type="text" id="input_search" class="k1_input_text"
										placeholder="도시명을 입력하세요">
									<button class="k1_mrtair_btn" type="button" id="btn_search"
										style="cursor: pointer;">검색</button>
								</p>
								<div id="searchbox" class="k1_city_name k1_mt10"
									style="display: none;">
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
										<table class="k1_tbl k1_tbl_basic" id="table_city_list"
											xmlns="http://www.w3.org/1999/xhtml">
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
		<div class="mrt_calendar_wrap ly_wrap ly_select_date" id="calendarPop"
			style="top: 262px; display: none;">
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
				<a href="javascript:void(0);" id="calSelect">적용</a> <a
					href="javascript:void(0);" id="calClose">닫기</a>
			</div>
		</div>
		</form>
		<!-- 승객 선택 -->
		<div id="people_boxParent" class="mrt_seat_pop mrt_pop_type_02" style="display: none;">
		<div id="k1_pop_wrap3">
			<div class="k1_pop_header">
				<h1>인원 &amp; 좌석등급</h1>
			</div>
			<div class="k1_pop_contents3">
				<div class="mrt_pers_num" style="height: 158px;">
					<dl class="k1_clearfix">
						<dt>
							성인<span class="mtr_sub_txt">만 12세 이상</span>
						</dt>
						<dd>
							<button id="btnAdultMinus" type="button" class="mrt_btn_minus_gray">마이너스</button>
							<span class="num" id="adultCount">1</span>
							<button id="btnAdultPlus" type="button" class="mrt_btn_plus_blue">플러스</button>
						</dd>
					</dl>
					<dl class="k1_clearfix">
						<dt>
							소아<span class="mtr_sub_txt">만 12세 미만</span>
						</dt>
						<dd>
							<button id="btnChildMinus" type="button" class="mrt_btn_minus_gray">마이너스</button>
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
							<button id="btnInfantMinus" type="button" class="mrt_btn_minus_gray">마이너스</button>
							<span class="num" id="infantCount">0</span>
							<button id="btnInfantPlus" type="button" class="mrt_btn_plus_blue">플러스</button>
						</dd>
					</dl>
				</div>

				<div id="intcabinClassDiv" class="mrt_seat_num">
					<ul>
						<li class="k1_clearfix seatLevel" style="height: 20px;">
							<div class="mrt_radio_wrap">
								<input type="radio" id="radio01" name="initForm" checked="checked"><label for="radio01"><span class="ico_radio"></span>일반석</label>
							</div>
							<div class="mrt_radio_wrap">
								<input type="radio" id="radio02" name="initForm"><label for="radio02"><span class="ico_radio"></span>프리미엄 일반석</label>
							</div>
						</li>
						<li class="k1_clearfix" style="height: 20px;">
							<div class="mrt_radio_wrap">
								<input type="radio" id="radio03" name="initForm"><label for="radio03"><span class="ico_radio"></span>비지니스석</label>
							</div>
							<div class="mrt_radio_wrap">
								<input type="radio" id="radio04" name="initForm"><label for="radio04"><span class="ico_radio"></span>일등석</label>
							</div>
						</li>
					</ul>
				</div>

			</div>
			<a href="javascript:void(0);" class="k1_btn_p_close1" title="닫기">닫기</a>
		</div>
	</div>
	

	<div id="k1_content">
		<div class="mrt_con_section">
			<!-- 검색어 새로고침 팝업 -->
			<div id="k1_pop_wrap" class="mrt_refresh">
				<div class="k1_pop_contents">
					<i class="ico_alarm">알람</i>
					<h3>검색 결과 새로고침</h3>
					<p class="k1_h_tit_sub">최신 가격과 예약 가능 여부를 확인하기 위해 검색 결과를 새로고침해야
						합니다.</p>
					<button type="button" class="mrt_btn_s mrt_btn_blue" title="새로고침"
						role="expireBtn">새로고침</button>
				</div>
			</div>
			<!-- 검색 결과가 없을 때 -->
			<div class="mrt_not_scdul" id="searchNon" style="display: none">
				<i class="ico_warning">경고</i>
				<h3>검색된 항공권이 없습니다.</h3>
				<p class="k1_h_tit_sub">
					선택하신 조건으로 예약할 수 있는 항공권이 없습니다. <br> 다른 조건으로 다시 시도해주세요.
				</p>
			</div>
			<!-- 왼쪽 선택들 -->
			<div class="mrt_con_left">
				<div class="mrt_transit_btn">
					<h2 class="k1_h_tit2">경유</h2>
					<ul class="k1_mt12" id="noOfFlightFUl">
						<li>
							<div class="mrt_btn_wrap">
								<input type="checkbox" id="noOfFlight_0" class="k1_input_btn"
									value="0"> <label for="noOfFlight_0">직항</label>
							</div>
						</li>
						<li>
							<div class="mrt_btn_wrap">
								<input type="checkbox" id="noOfFlight_1" class="k1_input_btn"
									value="1"> <label for="noOfFlight_1">1회 경유</label>
							</div>
						</li>
						<li style="display: none;">
							<div class="mrt_btn_wrap">
								<input type="checkbox" id="noOfFlight_2" class="k1_input_btn"
									value="2"> <label for="noOfFlight_2">2회이상 경유</label>
							</div>
						</li>
					</ul>
				</div>
				<!-- 선택지들 -->
				<div class="mrt_condi_box">
					<!-- 출발시간 -->
					<div class="mrt_list_wrap">
						<h2 class="k1_h_tit2">
							<a href="javascript:void(0);" class="active">출발시간</a>
						</h2>
						<!-- 출발시간들 toggle -->
						<div class="mrt_list" id="divDeptDt" style="display: block;">
							<h2 class="k1_h_tit3 k1_mt16">가는날</h2>
							<ul data-name="depDt1" data-type="cks">
								<li><div class="mrt_check_wrap">
										<input type="checkbox" id="ckDep0_1" value="06"
											class="k1_input_check" checked="checked"><label
											for="ckDep0_1"><span class="ico_checkbox"></span>새벽
											00:00~06:00</label>
									</div></li>
								<li><div class="mrt_check_wrap">
										<input type="checkbox" id="ckDep0_2" value="12"
											class="k1_input_check" checked="checked"><label
											for="ckDep0_2"><span class="ico_checkbox"></span>오전
											06:00~12:00</label>
									</div></li>
								<li><div class="mrt_check_wrap">
										<input type="checkbox" id="ckDep0_3" value="18"
											class="k1_input_check" checked="checked"><label
											for="ckDep0_3"><span class="ico_checkbox"></span>오후
											12:00~18:00</label>
									</div></li>
								<li><div class="mrt_check_wrap">
										<input type="checkbox" id="ckDep0_4" value="24"
											class="k1_input_check" checked="checked"><label
											for="ckDep0_4"><span class="ico_checkbox"></span>야간
											18:00~24:00</label>
									</div></li>
							</ul>


							<h2 class="k1_h_tit3 k1_mt16">오는날</h2>
							<ul data-name="depDt2" data-type="cks">
								<li><div class="mrt_check_wrap">
										<input type="checkbox" id="ckDep1_1" value="06"
											class="k1_input_check" checked="checked"><label
											for="ckDep1_1"><span class="ico_checkbox"></span>새벽
											00:00~06:00</label>
									</div></li>
								<li><div class="mrt_check_wrap">
										<input type="checkbox" id="ckDep1_2" value="12"
											class="k1_input_check" checked="checked"><label
											for="ckDep1_2"><span class="ico_checkbox"></span>오전
											06:00~12:00</label>
									</div></li>
								<li><div class="mrt_check_wrap">
										<input type="checkbox" id="ckDep1_3" value="18"
											class="k1_input_check" checked="checked"><label
											for="ckDep1_3"><span class="ico_checkbox"></span>오후
											12:00~18:00</label>
									</div></li>
								<li><div class="mrt_check_wrap">
										<input type="checkbox" id="ckDep1_4" value="24"
											class="k1_input_check" checked="checked"><label
											for="ckDep1_4"><span class="ico_checkbox"></span>야간
											18:00~24:00</label>
									</div></li>
							</ul>

						</div>
					</div>
					<!-- 도착시간 -->
					<div class="mrt_list_wrap">
						<h2 class="k1_h_tit2">
							<a href="javascript:void(0);" class="active">도착시간</a>
						</h2>
						<div class="mrt_list" id="divArrDt">
							<h2 class="k1_h_tit3 k1_mt16">가는날</h2>
							<ul data-name="arrDt1" data-type="cks">
								<li><div class="mrt_check_wrap">
										<input type="checkbox" id="ckArr0_1" value="06"
											class="k1_input_check" checked="checked"><label
											for="ckArr0_1"><span class="ico_checkbox"></span>새벽
											00:00~06:00</label>
									</div></li>
								<li><div class="mrt_check_wrap">
										<input type="checkbox" id="ckArr0_2" value="12"
											class="k1_input_check" checked="checked"><label
											for="ckArr0_2"><span class="ico_checkbox"></span>오전
											06:00~12:00</label>
									</div></li>
								<li><div class="mrt_check_wrap">
										<input type="checkbox" id="ckArr0_3" value="18"
											class="k1_input_check" checked="checked"><label
											for="ckArr0_3"><span class="ico_checkbox"></span>오후
											12:00~18:00</label>
									</div></li>
								<li><div class="mrt_check_wrap">
										<input type="checkbox" id="ckArr0_4" value="24"
											class="k1_input_check" checked="checked"><label
											for="ckArr0_4"><span class="ico_checkbox"></span>야간
											18:00~24:00</label>
									</div></li>
							</ul>


							<h2 class="k1_h_tit3 k1_mt16">오는날</h2>
							<ul data-name="arrDt2" data-type="cks">
								<li><div class="mrt_check_wrap">
										<input type="checkbox" id="ckArr1_1" value="06"
											class="k1_input_check" checked="checked"><label
											for="ckArr1_1"><span class="ico_checkbox"></span>새벽
											00:00~06:00</label>
									</div></li>
								<li><div class="mrt_check_wrap">
										<input type="checkbox" id="ckArr1_2" value="12"
											class="k1_input_check" checked="checked"><label
											for="ckArr1_2"><span class="ico_checkbox"></span>오전
											06:00~12:00</label>
									</div></li>
								<li><div class="mrt_check_wrap">
										<input type="checkbox" id="ckArr1_3" value="18"
											class="k1_input_check" checked="checked"><label
											for="ckArr1_3"><span class="ico_checkbox"></span>오후
											12:00~18:00</label>
									</div></li>
								<li><div class="mrt_check_wrap">
										<input type="checkbox" id="ckArr1_4" value="24"
											class="k1_input_check" checked="checked"><label
											for="ckArr1_4"><span class="ico_checkbox"></span>야간
											18:00~24:00</label>
									</div></li>
							</ul>

						</div>
					</div>
					<!-- 항공사 선택 -->
					<div class="mrt_list_wrap">
						<h2 class="k1_h_tit2">
							<a href="javascript:void(0);" class="active">항공사</a>
						</h2>
						<div class="mrt_list" id="divAir">
							<ul class="mrt_select_all">
								<li><button type="button" id="airAllCheck" title="모두선택">모두
										선택</button></li>
								<li><button type="button" id="airNoneCheck" class="active"
										title="모두해제">모두 해제</button></li>
							</ul>
							<ul role="allianceCkChkBox">
								<li>
									<div class="mrt_check_wrap">
										<input type="checkbox" class="k1_input_check"
											role="allianceCk" id="airlineSCkAll" data-alliance="K"
											checked="checked"><label for="airlineSCkAll"><span
											class="ico_checkbox"></span>스카이팀</label>
									</div>
								</li>
								<li>
									<div class="mrt_check_wrap">
										<input type="checkbox" class="k1_input_check"
											role="allianceCk" id="airlineKCkAll" data-alliance="S"
											checked="checked"><label for="airlineKCkAll"><span
											class="ico_checkbox"></span>스타얼라이언스</label>
									</div>
								</li>
								<li>
									<div class="mrt_check_wrap">
										<input type="checkbox" class="k1_input_check"
											role="allianceCk" id="airlineOCkAll" data-alliance="O"
											checked="checked"><label for="airlineOCkAll"><span
											class="ico_checkbox"></span>원월드</label>
									</div>
								</li>
								<li>
									<div class="mrt_check_wrap">
										<input type="checkbox" class="k1_input_check"
											role="allianceCk" id="airlineXCkAll" data-alliance="X"
											checked="checked"><label for="airlineXCkAll"><span
											class="ico_checkbox"></span>기타</label>
									</div>
								</li>
							</ul>
							<ul class="k1_mt16 k1_pt16" style="border-top: 1px solid #ddd;"
								id="airlineFUl" data-name="airlines" data-type="cks">

								<li style="display: list-item;">
									<div class="mrt_check_wrap">
										<input type="checkbox" class="k1_input_check"
											id="airline_ck_1" data-alliance="X" value="TW" checked="checked"><label
											for="airline_ck_1"><span class="ico_checkbox"></span>티웨이항공</label>
									</div>
								</li>
								<li style="display: list-item;">
									<div class="mrt_check_wrap">
										<input type="checkbox" class="k1_input_check"
											id="airline_ck_2" data-alliance="X" value="ZE" checked="checked"><label
											for="airline_ck_2"><span class="ico_checkbox"></span>이스타항공</label>
									</div>
								</li>
								<li style="display: list-item;">
									<div class="mrt_check_wrap">
										<input type="checkbox" class="k1_input_check"
											id="airline_ck_3" data-alliance="X" value="7C" checked="checked"><label
											for="airline_ck_3"><span class="ico_checkbox"></span>제주항공</label>
									</div>
								</li>
								<li style="display: list-item;">
									<div class="mrt_check_wrap">
										<input type="checkbox" class="k1_input_check"
											id="airline_ck_4" data-alliance="X" value="LJ" checked="checked"><label
											for="airline_ck_4"><span class="ico_checkbox"></span>진에어</label>
									</div>
								</li>
								<li style="display: list-item;">
									<div class="mrt_check_wrap">
										<input type="checkbox" class="k1_input_check"
											id="airline_ck_5" data-alliance="K" value="KE" checked="checked"><label
											for="airline_ck_5"><span class="ico_checkbox"></span>대한항공</label>
									</div>
								</li>
							</ul>
							<div class="airline_more k1_pt16" id="div_moreairline"
								style="display: none;">
								<!-- 항공사 모두보기 누르면 나오는 내용 -->
								<ul id="airlineFUl2" data-name="airlines" data-type="cks">

									<li style="display: list-item;">
										<div class="mrt_check_wrap">
											<input type="checkbox" class="k1_input_check"
												id="airline_ck_6" data-alliance="S" value="OZ" checked="checked"><label
												for="airline_ck_6"><span class="ico_checkbox"></span>아시아나항공</label>
										</div>
									</li>
									<li style="display: list-item;">
										<div class="mrt_check_wrap">
											<input type="checkbox" class="k1_input_check"
												id="airline_ck_7" data-alliance="S" value="ET" checked="checked"><label
												for="airline_ck_7"><span class="ico_checkbox"></span>에티오피아항공</label>
										</div>
									</li>
									<li style="display: list-item;">
										<div class="mrt_check_wrap">
											<input type="checkbox" class="k1_input_check"
												id="airline_ck_8" data-alliance="O" value="JL" checked="checked"><label
												for="airline_ck_8"><span class="ico_checkbox"></span>일본항공</label>
										</div>
									</li>
									<li style="display: list-item;">
										<div class="mrt_check_wrap">
											<input type="checkbox" class="k1_input_check"
												id="airline_ck_9" data-alliance="X" value="UO" checked="checked"><label
												for="airline_ck_9"><span class="ico_checkbox"></span>홍콩익스프레스</label>
										</div>
									</li>
									<li style="display: list-item;">
										<div class="mrt_check_wrap">
											<input type="checkbox" class="k1_input_check"
												id="airline_ck_10" data-alliance="K" value="MF" checked="checked"><label
												for="airline_ck_10"><span class="ico_checkbox"></span>중국하문항공</label>
										</div>
									</li>
									<li style="display: list-item;">
										<div class="mrt_check_wrap">
											<input type="checkbox" class="k1_input_check"
												id="airline_ck_11" data-alliance="K" value="MU" checked="checked"><label
												for="airline_ck_11"><span class="ico_checkbox"></span>중국동방항공</label>
										</div>
									</li>
									<li style="display: list-item;">
										<div class="mrt_check_wrap">
											<input type="checkbox" class="k1_input_check"
												id="airline_ck_12" data-alliance="S" value="CA" checked="checked"><label
												for="airline_ck_12"><span class="ico_checkbox"></span>중국국제항공</label>
										</div>
									</li>
									<li style="display: list-item;">
										<div class="mrt_check_wrap">
											<input type="checkbox" class="k1_input_check"
												id="airline_ck_13" data-alliance="X" value="SC" checked="checked"><label
												for="airline_ck_13"><span class="ico_checkbox"></span>산동항공</label>
										</div>
									</li>
									<li style="display: list-item;">
										<div class="mrt_check_wrap">
											<input type="checkbox" class="k1_input_check"
												id="airline_ck_14" data-alliance="K" value="CZ" checked="checked"><label
												for="airline_ck_14"><span class="ico_checkbox"></span>중국남방항공</label>
										</div>
									</li>
									<li style="display: list-item;">
										<div class="mrt_check_wrap">
											<input type="checkbox" class="k1_input_check"
												id="airline_ck_15" data-alliance="S" value="BR" checked="checked"><label
												for="airline_ck_15"><span class="ico_checkbox"></span>에바항공</label>
										</div>
									</li>
									<li style="display: list-item;">
										<div class="mrt_check_wrap">
											<input type="checkbox" class="k1_input_check"
												id="airline_ck_16" data-alliance="X" value="HX" checked="checked"><label
												for="airline_ck_16"><span class="ico_checkbox"></span>홍콩항공</label>
										</div>
									</li>
								</ul>
							</div>
							<a href="javascript:void(0);" id="moreAllAir"
								class="btn_more_airline k1_mt16">항공사 모두보기</a>
							<!-- 클릭했을 때 active class 추가 -->

						</div>
					</div>
					<!-- 탑승객 조건 -->
					<div class="mrt_list_wrap">
						<h2 class="k1_h_tit2">
							<a href="javascript:void(0);" class="active">탑승객조건</a>
						</h2>
						<div class="mrt_list k1_mt16" id="divPassger">
							<ul>
								<li>
									<div class="mrt_check_wrap">
										<input type="checkbox" id="passger_1" checked="checked"
											class="k1_input_check"><label for="passger_1"><span
											class="ico_checkbox"></span>성인</label>
									</div>
								</li>
								<li>
									<div class="mrt_check_wrap">
										<input type="checkbox" id="passger_3"
											class="k1_input_check"><label for="passger_3"><span
											class="ico_checkbox"></span>학생</label>
									</div>
								</li>
							</ul>
						</div>
					</div>
					<!-- 할인 카드 -->
					<div class="mrt_list_wrap">
						<h2 class="k1_h_tit2">
							<a href="javascript:void(0);" class="active">할인카드</a>
						</h2>
						<div class="mrt_list k1_mt16" id="divDiscountCard">
							<ul id="condFUl" data-name="conditions" data-type="cks">

								<li style="display: list-item;">
									<div class="mrt_check_wrap">
										<input type="checkbox" class="k1_input_check"
											id="condition_ck_1" value="성인" checked="checked"><label
											for="condition_ck_1"><span class="ico_checkbox"></span>성인</label>
									</div>
								</li>
							</ul>
						</div>
					</div>
					<!-- 가격대 -->
					<div class="mrt_list_wrap">
						<h2 class="k1_h_tit2">
							<a href="javascript:void(0);" class="active">가격대</a>
						</h2>
						<div class="mrt_list" id="divPrice">
							<ul>
								<li>2,399,600원 미만</li>
								<li>
									<div class="mrt_slide_wrap">
										<span
											class="bar ui-slider ui-slider-horizontal ui-widget ui-widget-content ui-corner-all"
											id="totalPriceSrchSlider"> <!-- 밑의 2개의 width, left를 통해서 슬라이드 조절 -->
											<div
												class="ui-slider-range ui-widget-header ui-slider-range-max"
												style="width: 0%;"></div> <a class="dot" href="#"
											style="left: 100%; z-index: 99999;"></a></span> <span
											class="bar_active"></span>
									</div>
								</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
			<!-- 왼쪽 선택들 끝 -->
			<div class="mrt_con_right">
				<div class="mrt_search_result k1_clearfix">
					<div class="k1_fl">
						<h2 class="k1_h_tit2">
							검색결과 총 <span class="num" role="resultCount">209</span>개
						</h2>
						<p class="k1_h_tit_sub k1_mt5">성인 기준 1인 왕복 요금입니다. (세금 및 수수료 모두
							포함)</p>
					</div>
					<div class="k1_fr ">
						<select class="mrt_select_sort" name="sortSelect" id="sortSelect">
							<option value="lowfare">가격 낮은 순</option>
							<option value="lessDuration">비행 시간 짧은 순</option>
							<option value="depDt" data-idx="0">가는날 출발 시간 빠른 순</option>
							<option value="depDt" data-idx="1">오는날 출발 시간 빠른 순</option>
							<option value="arrDt" data-idx="0">가는날 도착 시간 빠른 순</option>
							<option value="arrDt" data-idx="1">오는날 도착 시간 빠른 순</option>
						</select>
					</div>
				</div>
				<div class="mrt_result_list">
					<div class="mrt_scdul_srch_foreign">
						<ul class="resultList">
							<li role="resultLi" style="display: list-item;"
								class="resultItem">
								<div class="mrt_foreign_wrap k1_clearfix">
									<div class="mrt_foreign_list" role="airTimeDiv">
										<div class="list">
											<span class="ico_airline"><img
												src="https://flights.myrealtrip.com/air/wfw/imgs/mbl/logo/air/TW.png"
												alt="항공사 명"></span> <span class="airline_name"><em>티웨이항공</em></span>
											<span class="mrt_time k1_clearfix"> <span
												class="dep_time time"><span>15:15<em>ICN<span
															class="mrt_tootip_wrap"><span class="txt_wrap"><span
																	class="txt">서울</span></span></span></em></span></span> <span class="from_to"><span
													class="ico_itinerary_lg ico"></span><em class="time">02시간
														15분</em></span> <span class="arr_time"><span
													class="plus_day time"><span>17:30</span></span><span
													class="time"><em>NRT<span
															class="mrt_tootip_wrap"><span class="txt_wrap"><span
																	class="txt">도쿄</span></span></span></em></span></span>
											</span> <span class="via">직항</span>
										</div>
										<div class="list">
											<span class="ico_airline"><img
												src="https://flights.myrealtrip.com/air/wfw/imgs/mbl/logo/air/TW.png"
												alt="항공사 명"></span> <span class="airline_name"><em>티웨이항공</em></span>
											<span class="mrt_time k1_clearfix"> <span
												class="dep_time time"><span>19:40<em>NRT<span
															class="mrt_tootip_wrap"><span class="txt_wrap"><span
																	class="txt">도쿄</span></span></span></em></span></span> <span class="from_to"><span
													class="ico_itinerary_lg ico"></span><em class="time">03시간
														00분</em></span> <span class="arr_time"><span
													class="plus_day time"><span>22:40</span></span><span
													class="time"><em>ICN<span
															class="mrt_tootip_wrap"><span class="txt_wrap"><span
																	class="txt">서울</span></span></span></em></span></span>
											</span> <span class="via">직항</span>
										</div>
									</div>

									<!-- 요금 -->
									<div class="mrt_foreign_total k1_clearfix" role="creditCard"
										data-id="KjCCISTrYAWsUs/L5ntOTuVSTCU=" class="detailTicket">
										<a href="javascript:void(0);" class="mart_total_btn">
											<span class="top"> <span class="mrt_credit_age">
													<span class="credit_card ellipsis" title="성인/삼성글로벌카드">성인</span><span></span>
													<!-- 남은 좌석 표시가 안될 때는 ellipsis class 제거 -->
											</span> <span class="seat">1석 남음</span>
										</span> <span class="bottom close" id="bottomClose"> <span
												class="fare_total">106,400<span>원</span></span>
										</span>
										</a>

										<!-- 요금선택 -->
										<div class="mrt_card_pop mrt_pop_type_02">
											<!-- 요금선택 버튼 누르면 나오는 레이어팝업 -->
											<div id="k1_pop_wrap">
												<div class="k1_pop_header">
													<h1>
														요금선택<span class="k1_h_tit_sub k1_ml5">성인 1인 요금</span>
													</h1>
												</div>
												<div class="k1_pop_contents">
													<ul role="popup_fare">
														<li id="KjCCISTrYAWsUs/L5ntOTuVSTCU=">
															<div class="mrt_radio_wrap">
																<input type="radio"
																	id="WJfZdSUgi7xBHTPXnI0nLJB+bE0=KjCCISTrYAWsUs/L5ntOTuVSTCU="
																	name="WJfZdSUgi7xBHTPXnI0nLJB+bE0="><label
																	for="WJfZdSUgi7xBHTPXnI0nLJB+bE0=KjCCISTrYAWsUs/L5ntOTuVSTCU="><span
																	class="ico_radio"></span>성인</label>
															</div>
															<div class="fare_total">106,400원</div>
														</li>
													</ul>
													<button type="button" class="mrt_btn_m mrt_btn_blue"
														title="선택">선택</button>
												</div>
												<a href="#" class="k1_btn_p_close1" title="닫기">닫기</a>
											</div>
										</div>
										<!-- 운임규정 / 상세정보보기 -->
										<div class="fare_rules">
											<ul class="mrt_select_all">
												<li><button type="button" title="운임규정">운임규정</button></li>
												<li><button type="button" class="detail"
														role="detailButton" title="상세 정보 보기">상세 정보 보기</button></li>
											</ul>
										</div>
										<!-- //운임규정 / 상세정보보기 -->
									</div>
									<!-- //요금 -->
									<div class="mrt_fare_total" role="totalTooltip">
										<span class="k1_h_tit_sub">승객1명 총 예상요금 : 106,400원 (성인)</span>
									</div>
								</div> <!-- 상세 비행 일정 레이어  -->
								<div role="detailInfoDiv">
									<div class="fare_detail" style="display: block;">
										<!-- 가는 편  -->
										<div class="fare_detail_del" role="flightSchRow">
											<div class="mrt_srch_result_bar k1_clearfix"
												role="routingTitleArea">
												<span class="label_blue label_box">가는편</span>
												<div class="mrt_select_way">
													<strong class="city_from">서울 (ICN)</strong> <span
														class="ico_itinerary">여정</span> <strong class="city_to">도쿄
														(NRT)</strong>
												</div>
												<span class="mrt_date">02시간 15분</span>
											</div>
											<!-- 가는편 상세 -->
											<div class="detail_list" role="routingContArea">
												<!-- 여정1 -->
												<div class="airline k1_clearfix" role="segLi">
													<div class="list_01">
														<span class="name">티웨이항공 0213</span>
													</div>
													<div class="list_02">
														<span class="mrt_date">06월 12일</span>
													</div>
													<div class="list_03">
														<span class="ico_from_to">여정</span>
													</div>
													<div class="list_04 mrt_time">
														<span class="dep_time time">15:15<em>서울 ICN</em></span> <span
															class="from_to"><span class="time">02시간 15분</span></span>
														<span class="arr_time time">17:30<em>도쿄 NRT</em></span>
													</div>
													<div class="list_05 mrt_time">
														<span class="bag_info_mrt">무료수화물 0kg</span> <span
															class="from_wait"> </span>
													</div>
												</div>
											</div>
											<!-- //가는편 상세 -->
										</div>
										<!-- //가는 편 -->
										<div class="fare_detail_del" role="flightSchRow">
											<div class="mrt_srch_result_bar k1_clearfix"
												role="routingTitleArea">
												<span class="label_blue label_box">오는편</span>
												<div class="mrt_select_way">
													<strong class="city_from">도쿄 (NRT)</strong> <span
														class="ico_itinerary">여정</span> <strong class="city_to">서울
														(ICN)</strong>
												</div>
												<span class="mrt_date">03시간 00분</span>
											</div>
											<!-- 가는편 상세 -->
											<div class="detail_list" role="routingContArea">
												<!-- 여정1 -->
												<div class="airline k1_clearfix" role="segLi">
													<div class="list_01">
														<span class="name">티웨이항공 0214</span> <span
															class="seat_class" style="display: none;"></span>
														<div class="possess" style="display: none">
															<span class="ico ico_vod" title="VOD 엔터테인먼트">VOD
																엔터테인먼트</span> <span class="ico ico_usb" title="USB 포트 이용 가능">USB
																포트 이용 가능</span> <span class="ico ico_wifi" title="wifi 지원">wifi
																지원</span> <span class="ico ico_power" title="전원 콘센트 지원">전원
																콘센트 지원</span> <span class="mrt_tootip_wrap"> <span
																class="txt_wrap"> <span class="txt"> VDO
																		엔터네인먼트<br> USB 포트 이용 가능<br> Wi-Fi 지원
																</span>
															</span>
															</span>
														</div>
													</div>
													<div class="list_02">
														<span class="mrt_date">06월 18일</span>
													</div>
													<div class="list_03">
														<span class="ico_from_to">여정</span>
													</div>
													<div class="list_04 mrt_time">
														<span class="dep_time time">19:40<em>도쿄 NRT</em></span> <span
															class="from_to"><span class="time">03시간 00분</span></span>
														<span class="arr_time time">22:40<em>서울 ICN</em></span>
													</div>
													<div class="list_05 mrt_time">
														<span class="bag_info_mrt">무료수화물 0kg</span> <span
															class="from_wait"> </span>
													</div>
												</div>
											</div>
											<!-- //가는편 상세 -->
										</div>
									</div>
									<div class="mrt_total_scdul" style="display: block;"
										role="segLiScdul">
										<h3 class="k1_h_tit1">상세요금</h3>
										<div class="mrt_basic_view">
											<table>
												<caption>내가 선택한 항공권 전체 내역 및 가격</caption>
												<colgroup>
													<col style="width: 16%;">
													<col style="width: 16%;">
													<col style="width: 16%;">
													<col style="width: 16%;">
													<col style="width: 16%;">
													<col style="width: 16%;">
													<col style="width: 18%;">
												</colgroup>
												<thead>
													<tr>
														<th>항목</th>
														<th>항공요금</th>
														<th>유류할증료</th>
														<th>제세공과금</th>
														<th>발권수수료</th>
														<th>인원</th>
														<th class="k1_tar">총요금</th>
													</tr>
												</thead>
												<tbody>
													<tr>
														<td>성인</td>
														<td>15,600원</td>
														<td>23,500원</td>
														<td>67,300원</td>
														<td>0원</td>
														<td>1명</td>
														<td class="k1_tar">106,400원</td>
													</tr>


												</tbody>
												<tfoot>
													<tr>
														<td colspan="2" class="mrt_total">총 예상요금</td>
														<td colspan="5" class="fare_total k1_tar"><span
															class="k1_h_tit_sub">성인 조건 가격</span>106,400<span>원</span></td>
														<td class="k1_tar" style="display: none">
															<button type="button" title="선택"
																class="mrt_btn_blue mrt_btn_s">선택</button>
														</td>
													</tr>
												</tfoot>
											</table>
										</div>
									</div>
								</div>


							</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div id="model_back" style="background-color: rgba(0, 0, 0, 0.2);"></div>
	<!-- 풋터는 나중에 추가할 것 -->
<%-- <div class="footer" style="height: 466px">
	<jsp:include page="/WEB-INF/layout/bottom.jsp"></jsp:include>
</div> --%>
<!-- 달력 ajax -->
<script>
		function prevMonth() {
			// console.log("이전달");

			if (c_month == new Date().getMonth() + 1) {
				return;
			}
			c_month = c_month - 1;
			if (c_month == 0) {
				c_month = 12;
				c_year = c_year - 1;
			}
			$(".cal_header1").html("");
			$(".cal_header2").html("");
			$(".cal_table1 tbody").remove();
			$(".cal_table2 tbody").remove();
			$
					.ajax({
						url : "<%= request.getContextPath()%>/flights/printCalendar.do"
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
</body>
</html>