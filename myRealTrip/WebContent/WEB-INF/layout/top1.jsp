<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<style>
.Header-module__header--1QMJB {
	height: auto;
	position: relative;
	width: 100%;
	z-index: 100;
}

.Header-module__gnb--1yrf7 {
	width: 100%;
	display: flex;
	justify-content: flex-end;
}

.mrt-logo-container .mrt-logo-img {
	width: 128px;
}

.mrt-logo-container img {
	vertical-align: middle;
}

.Header-module__lnb--2J09H {
	/* 안의 요소들 생겨서 height 자동으로 잡히면 height 수치 적용해준거 지우기 */
	height: 50px;
	width: 100%;
}

.mrt-logo-container>a {
	display: inline-block;
}

.mrt-logo-container img {
	vertical-align: middle;
}

.GlobalNavBar {
	max-width: 1060px;
	height: 73px;
	position: relative;
	margin: 0 auto;
	display: flex;
	align-items: center;
	justify-content: space-between;
}

.GlobalNavItems {
	height: 100%;
	flex-grow: 1;
	display: flex;
	justify-content: flex-end;
	align-items: center;
}

.GlobalNavItems__item {
	height: 36px;
	position: relative;
	margin-right: 8px;
}

.GnbItemButton-module__item--2ELl4.GnbItemButton-module__transparent--2pmYk,
	.GnbItemButton-module__item--2ELl4.GnbItemButton-module__transparent--2pmYk:link,
	.GnbItemButton-module__item--2ELl4.GnbItemButton-module__transparent--2pmYk:visited
	{
	color: #fff;
}

.GnbItemButton-module__item--2ELl4.GnbItemButton-module__link--1xzy3 {
	display: inline-block;
}

.GnbItemButton-module__item--2ELl4 {
	height: 100%;
	padding: 6px 12px;
	border: 0;
	border-radius: 3px;
	font-size: 15px;
	font-weight: 600;
	background-color: rgba(0, 0, 0, 0);
	transition: background-color .2s ease;
}

.GnbItemButton-module__item--2ELl4.GnbItemButton-module__outline--wF4j1.GnbItemButton-module__transparent--2pmYk
	{
	border: 1px solid #fff;
}

.GnbItemButton-module__item--2ELl4.GnbItemButton-module__outline--wF4j1
	{
	padding-left: 32px;
	padding-right: 32px;
	border-radius: 2px;
	font-size: 14px;
	font-weight: 700;
	margin-left: 12px;
	transition: background-color .15s ease;
}

.Logo {
	width: 128px;
}

.GlobalNavItems {
	width: 932px;
}

.LnbLocalNavBar-module__container--tA5q- {
	max-width: 1060px;
	height: 50px;
	position: relative;
	margin: 0 auto;
}

.LnbLocalNavBar-module__wrapper--3fC-F {
	height: 100%;
	position: relative;
}

.lnb-menu {
	height: inherit;
	width: auto;
	z-index: inherit;
}

.LnbLocalNavItem-module__container--msPys {
	display: inline-block;
	left: -12px;
	margin-top: 6px;
	margin-right: 8px;
	position: relative;
}

.LnbLocalNavItem-module__item--3ZodT.LnbLocalNavItem-module__transparent--13Vhz
	{
	opacity: .7;
	background-color: rgba(0, 0, 0, 0);
}

.LnbLocalNavItem-module__item--3ZodT {
	border-radius: 3px;
	display: inline-block;
	height: 36px;
	padding: 6px 12px;
	transition: all .2s ease;
}

.LnbLocalNavItem-module__icon--Z6YDQ {
	margin-right: 3px;
}

.Icon-module__layout--1eFuX.Icon-module__tour-white--2wXSL {
	width: 24px;
	height: 24px;
	background-position: -146px -1px;
}

.Icon-module__layout--1eFuX {
	background:
		url(https://www.myrealtrip.com//webpack/e78f52c98d7fa4c4a50c96ef91c96164.svg)
		no-repeat 0 0/278px 88px;
}

.Icon-module__icon--1KmZ- {
	display: inline-block;
	vertical-align: middle;
}

.LnbLocalNavItem-module__item--3ZodT.LnbLocalNavItem-module__transparent--13Vhz>.LnbLocalNavItem-module__label--3BISS
	{
	color: #fff;
}

.LnbLocalNavItem-module__label--3BISS {
	font-size: 15px;
	font-weight: 700;
	vertical-align: middle;
}

.Icon-module__layout--1eFuX.Icon-module__flight-white--1ifxJ {
	width: 25px;
	height: 24px;
	background-position: -33px -2px;
}

.Icon-module__layout--1eFuX.Icon-module__hotel-white--2pp54 {
	width: 24px;
	height: 24px;
	background-position: -90px -2px;
}

.Icon-module__layout--1eFuX.Icon-module__airtel-white--b4swA {
	width: 20px;
	height: 24px;
	background-position: -254px -4px;
}

.Icon-module__layout--1eFuX.Icon-module__checklist-white--1CKEa {
	width: 24px;
	height: 24px;
	background-position: -202px -3px;
}

.LnbLocalNavItem-module__item--3ZodT.LnbLocalNavItem-module__transparent--13Vhz:hover
	{
	background-color: hsla(0, 0%, 100%, .2);
}

.GnbHeaderSearchBar-module__container--azIKz {
	width: 340px;
	height: 48px;
	position: relative;
	margin-left: 24px;
}

.SearchFormInput-module__container--2Zmo8 {
	position: relative;
	width: 100%;
}

.SearchBar-module__container--1PUCY {
	height: 48px;
	flex-grow: 1;
	position: relative;
}

.Drawer--flight img, .Header--flight img {
	border-width: 0;
	vertical-align: middle;
}

.SearchBar-module__icon--BioYf {
	left: 16px;
	position: absolute;
	top: 50%;
	transform: translateY(-50%);
	width: 20px;
	height: 20px;
}

fieldset, img {
	border: 0 none;
}

.SearchBar-module__transparent--2i1IJ>.SearchBar-module__input--1Wvjj {
	color: white;
	background-color: rgba(254, 246, 247, 0.15);
	border: 0;
}

.SearchBar-module__input--1Wvjj {
	border-radius: 4px;
	width: 100%;
	height: 100%;
	padding-left: 48px;
	padding-right: 16px;
	transition: all .2s ease;
	font-size: 15px;
	font-weight: 500;
}

.GnbHeaderSearchBar-module__container--azIKz #SearchBar__input {
	width: 340px;
}

.SearchBar-module__transparent--2i1IJ>.SearchBar-module__input--1Wvjj:focus
	{
	background-color: #fff;
	color: #495056;
	text-align: left;
}

.GnbItemButton-module__item--2ELl4:hover {
	background-color: hsla(0, 0%, 100%, .2);
}

::-webkit-input-placeholder { /* Chrome/Opera/Safari */
	color: rgba(255, 255, 255, 0.8);
}

.SearchFormInput-module__popup--1CQ20 {
	margin-top: 8px;
	width: 100%;
}

.Popup-module__bottomLeft--1S42K {
	left: 0;
	top: 100%;
	transform-origin: left top;
}

.Popup-module__animation--ajg1n {
	opacity: 1;
	transform: sclae(1);
}

.Popup-module__show--1-3kB {
	display: block;
}

.searchTextBox {
	border-radius: 2px;
	background-color: #fff;
	box-shadow: 0 0 0 1px rgba(0, 0, 0, .1), 0 5px 10px 0 rgba(0, 0, 0, .12);
	display: none; /*관련검색어 뜨는거 숨기기 */
	opacity: 0; /*관련검색어 뜨는거 숨기기 */
	position: absolute;
	transform: sclae(.5);
	transform-origin: top;
	transition: transform .12s ease, opacity .12s ease;
	z-index: 100;
}

.Drawer--flight ul, .Header--flight ul {
	list-style: none;
	margin: 0;
	padding-left: 0;
}

.SearchFormAutoComplete-module__container--1t34j {
	padding: 4px 0;
	width: 100%;
}

.SearchFormAutoComplete-module__row--3Cjjm {
	width: 100%;
}

.SearchFormAutoComplete-module__item--3f_Jk {
	align-items: center;
	background-color: #fff;
	border: 0;
	display: flex;
	height: 40px;
	padding: 10px 12px;
	text-align: left;
	width: 100%;
}

.SearchFormAutoComplete-module__icon--eq1P- {
	height: 16px;
	width: 16px;
}

.SearchFormAutoComplete-module__item--3f_Jk span {
	display: inline-block;
	font-size: 15px;
	margin-left: 6px;
	vertical-align: middle;
}

.SearchFormAutoComplete-module__location--1nz12 {
	color: #343a40;
	font-weight: 700;
}

.SearchFormAutoComplete-module__search--2LPul em {
	color: #1583db;
	font-style: normal;
	font-weight: 400;
}

.SearchFormAutoComplete-module__item--3f_Jk:hover {
	cursor: pointer;
	background-color: rgb(241, 243, 245);
}

.mrt-notify-popup .mrt-notify__content .mrt-notify__content--body .notify-list .notify-list__item
	{
	font-size: 14px;
}

.GlobalNavItems__item {
	height: 36px;
	position: relative;
	margin-right: 8px;
}

.GnbItemButton-module__item--2ELl4.GnbItemButton-module__transparent--2pmYk,
	.GnbItemButton-module__item--2ELl4.GnbItemButton-module__transparent--2pmYk:link,
	.GnbItemButton-module__item--2ELl4.GnbItemButton-module__transparent--2pmYk:visited
	{
	color: #fff;
}

.GnbItemButton-module__item--2ELl4.GnbItemButton-module__link--1xzy3 {
	display: inline-block;
}

.GnbItemButton-module__item--2ELl4 {
	height: 100%;
	padding: 6px 12px;
	border: 0;
	border-radius: 3px;
	font-size: 15px;
	font-weight: 600;
	background-color: rgba(0, 0, 0, 0);
	transition: background-color .2s ease;
}

.mrt-notify-popup {
	background-color: #fff;
	border: 1px solid #e9ecef;
	box-shadow: 0 1px 1px 0 rgba(0, 0, 0, .2);
	height: 410px;
	line-height: 1.5;
	position: absolute;
	right: -56px;
	top: 45px;
	width: 375px;
	z-index: 200;
}

.NotificationPopup {
	display: block !important;
	z-index: 110;
	visibility: hidden; /* 메시지 창 안 보이게 하기 */
	opacity: 0; /* 메시지 창 안 보이게 하기 */
	transition: visibility .20s ease, opacity .20s ease, transform .20s ease;
}

.mrt-notify-popup .mrt-notify-popup--arrow:before {
	border-color: rgba(0, 0, 0, 0) rgba(0, 0, 0, 0) #dee2e6;
	border-width: 6px;
	right: 74.5px;
	top: -13px;
}

.mrt-notify-popup .mrt-notify-popup--arrow:after {
	border-color: rgba(0, 0, 0, 0) rgba(0, 0, 0, 0) #fff;
	border-width: 6px;
	right: 74px;
	top: -12px;
}

.mrt-notify-popup .mrt-notify-popup--arrow:after, .mrt-notify-popup .mrt-notify-popup--arrow:before
	{
	border-style: solid;
	content: "";
	display: block;
	height: 0;
	position: absolute;
	top: 0;
	width: 0
}

.mrt-notify-popup .mrt-notify-popup--arrow:after, .mrt-notify-popup .mrt-notify-popup--arrow:before
	{
	border-style: solid;
	content: "";
	display: block;
	height: 0;
	position: absolute;
	top: 0;
	width: 0;
}

.mrt-notify-popup .mrt-notify__content {
	color: #343a40;
	font-size: 14px;
	font-weight: 600;
}

.mrt-notify-popup .mrt-notify__content .mrt-notify__content--heading {
	border-bottom: 1px solid #e9ecef;
	padding: 16px 14px;
}

.NotificationPopup__close {
	position: absolute;
	z-index: 20;
	padding: 0;
	border: 0;
	background-color: rgba(0, 0, 0, 0);
}

.NotificationPopup__close>img {
	width: 32px;
	height: 32px;
}

.mrt-notify-popup .mrt-notify__content .mrt-notify__content--body {
	height: 353px;
	overflow-y: scroll;
	position: relative;
}

.mrt-notify-popup .mrt-notify__content .mrt-notify__content--body .notify-list .notify-list__item
	{
	font-size: 14px;
	min-height: 87px;
	padding: 0 15px;
}

.mrt-notify-popup .mrt-notify__content .mrt-notify__content--body .notify-list .notify-list__item .notify-list__item--wrapper
	{
	border-bottom: 1px solid #e9ecef;
	display: block;
	min-height: inherit;
	padding: 10px 0 15px;
}

.mrt-notify-popup .mrt-notify__content .mrt-notify__content--body .notify-list .notify-list__item .item-title
	{
	color: #79bef5;
	display: inline-block;
	font-weight: 500;
	position: relative;
}

.mrt-notify-popup .mrt-notify__content .mrt-notify__content--body .notify-list .notify-list__item.unread-item .item-title:after
	{
	background-color: #a7d4f9;
	border-radius: 3px;
	content: "";
	display: inline-block;
	height: 6px;
	margin: 7px 0 0 5px;
	position: absolute;
	width: 6px;
}

.mrt-notify-popup .mrt-notify__content .mrt-notify__content--body .notify-list .notify-list__item .item-date
	{
	color: #848c94;
	float: right;
	font-size: 12px;
	font-weight: 400;
}

.mrt-notify-popup .mrt-notify__content .mrt-notify__content--body .notify-list .notify-list__item .notify-list__item--content
	{
	color: #495056;
	font-weight: 400;
}

.NotificationPopup__button--hidden {
	height: 0;
	margin: 0;
	border: 0;
	-ms-transform: scaleY(0);
	transform: scaleY(0);
}

.NotificationPopup__button--outline {
	border: 1px solid #ced4da;
	border-radius: 2px;
}

.NotificationPopup__button {
	width: 130px;
	height: 40px;
	display: block;
	margin: 14px auto;
	padding: 0;
	background-color: rgba(0, 0, 0, 0);
	color: #495056;
	font-size: 14px;
	font-weight: 700;
	text-align: center;
}

.ProfileNavItems {
	height: 40px;
	display: -ms-flexbox;
	display: flex;
	-ms-flex-pack: end;
	justify-content: flex-end;
}

.ProfileCard {
	display: -ms-flexbox;
	display: flex;
	-ms-flex-pack: start;
	justify-content: flex-start;
	-ms-flex-align: center;
	align-items: center;
}

.ProfileCard__button {
	padding: 0;
	border: 0;
	background-color: rgba(0, 0, 0, 0);
}

.GnbProfilePhoto-module__container--4FpTO.GnbProfilePhoto-module__transparent--uUzmM
	{
	border-color: hsla(0, 0%, 100%, .3);
}

.GnbProfilePhoto-module__container--4FpTO {
	width: 36px;
	height: 36px;
	border: 2px solid #fff;
	border-radius: 50%;
	margin-left: 12px;
	transition: border-color .2s ease;
}

.ProfilePopup {
	width: 230px;
	position: absolute;
	right: 0;
	top: 65px;
	background-color: #fff;
	border: 1px solid #e9ecef;
	border-radius: 1px;
	box-shadow: 0 1px 1px 0 rgba(0, 0, 0, .2);
	z-index: 110;
	visibility: hidden; /* 프로필 보이지 않게 하지 */
	opacity: 0; /* 프로필 보이지 않게 하지 */
	-ms-transform: scale(.95);
	transform: scale(.95);
	-ms-transform-origin: top right;
	transform-origin: top right;
	transition: visibility .20s ease, opacity .20s ease, transform .20s ease;
}

.ProfilePopup__arrow:before {
	border-color: rgba(0, 0, 0, 0) rgba(0, 0, 0, 0) #dee2e6;
	border-width: 6px;
	right: 12.5px;
	top: -13px;
}

.ProfilePopup__arrow:after, .ProfilePopup__arrow:before {
	border-style: solid;
	content: "";
	display: block;
	height: 0;
	position: absolute;
	top: 0;
	width: 0;
}

.ProfilePopup__arrow:after {
	border-color: rgba(0, 0, 0, 0) rgba(0, 0, 0, 0) #fff;
	border-width: 6px;
	right: 12px;
	top: -12px;
}

.ProfilePopup__arrow:after, .ProfilePopup__arrow:before {
	border-style: solid;
	content: "";
	display: block;
	height: 0;
	position: absolute;
	top: 0;
	width: 0;
}

.ProfilePopup__section:not (:last-child ){
	border-bottom: 1px solid #e9ecef;
}

.ProfilePopup__section {
	padding: 8px 0;
}

.ProfilePopup__section--wide {
	padding: 20px 16px;
}

.ProfileCard__detail {
	display: -ms-flexbox;
	display: flex;
	-ms-flex-direction: column;
	flex-direction: column;
	-ms-flex-pack: center;
	justify-content: center;
	-ms-flex-align: start;
	align-items: flex-start;
	margin-left: 16px;
}

.ProfileCard__detail-text {
	margin-bottom: 0;
	font-size: 17px;
	font-weight: 600;
	color: #495056;
	white-space: nowrap;
	overflow: hidden;
	text-overflow: ellipsis;
	max-width: 140px;
}

.ProfileCard__detail-link:link, .ProfileCard__detail-link:visited {
	color: #2b96ed;
}

.ProfilePopupItem {
	width: 100%;
	height: 48px;
	padding: 0 16px;
	cursor: pointer;
}

.ProfilePopupItem__link:link, .ProfilePopupItem__link:visited {
	color: #495056;
}

.ProfilePopupItem__link, .ProfilePopupItem__text {
	margin-bottom: 0;
	font-size: 15px;
	font-weight: 500;
	color: #495056;
	line-height: 48px;
}

.ProfilePopupItem__link>.ProfilePopupItem__icon, .ProfilePopupItem__text>.ProfilePopupItem__icon
	{
	margin-right: 16px;
}

.Icon-module__layout--1eFuX.Icon-module__point--15ju9 {
	width: 20px;
	height: 20px;
	background-position: -4px -32px;
}

.Icon-module__icon--1KmZ- {
	display: inline-block;
	vertical-align: middle;
}

.ProfilePopupItem__text--blue {
	float: right;
	color: #2b96ed;
}

.Icon-module__layout--1eFuX.Icon-module__coupon--offSP {
	width: 20px;
	height: 20px;
	background-position: -100px -29px;
}

.Icon-module__layout--1eFuX.Icon-module__gift--2j5fk {
	width: 20px;
	height: 20px;
	background-position: -28px -31px;
}

ul {
	list-style: none;
}

.togglebutton {
	visibility: visible;
	opacity: 1;
	trnsform: scale(1);
}

.ProfileCard__button:hover, .GnbItemButton-module__transparent--2pmYk:hover
	{
	cursor: pointer;
}

.GnbProfilePhoto-module__container--4FpTO:hover {
	border: solid 2px rgb(170, 213, 248);
}

.activeSearchBox2 {
	display: block;
	opacity: 1;
	transform: scale(1);
}
</style>
<div class="Header-module__header--1QMJB Header-module__blue--2H5LD">
	<div class="Header-module__gnb--1yrf7 Header-module__blue--2H5LD">
		<nav class="GlobalNavBar GlobalNavBar--transparent">
			<div class="Logo mrt-logo-container gtm-gnb-logo">
				<a href="<%=request.getContextPath()%>/myRealTrip.do"><img
					class="mrt-logo-img"
					src="<%=request.getContextPath()%>/imgages/top_logo.png" alt="" /></a>
			</div>
			<div class="GnbHeaderSearchBar-module__container--azIKz">
				<div class="SearchFormInput-module__container--2Zmo8">
					<div
						class="SearchBar-module__container--1PUCY SearchBar-module__transparent--2i1IJ">
						<img
							src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDIwIDIwIj4KICAgIDxnIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCIgc3Ryb2tlPSIjRkZGIiBzdHJva2Utd2lkdGg9IjEuNSI+CiAgICAgICAgPHBhdGggZD0iTTguNjY3IDE0LjU4M2E1LjkxNSA1LjkxNSAwIDAgMCA1LjkxNi01LjkxNkE1LjkxNSA1LjkxNSAwIDAgMCA4LjY2NyAyLjc1IDUuOTE1IDUuOTE1IDAgMCAwIDIuNzUgOC42NjdhNS45MTUgNS45MTUgMCAwIDAgNS45MTcgNS45MTZ6Ii8+CiAgICAgICAgPHBhdGggc3Ryb2tlLWxpbmVjYXA9InJvdW5kIiBkPSJNMTMuMTExIDEzLjExMWw0LjQ0NSA0LjQ0NSIvPgogICAgPC9nPgo8L3N2Zz4K"
							class="SearchBar-module__icon--BioYf SearchBar-module__window--F_Dqd" />
						<input id="SearchBar__input"
							class="SearchBar-module__input--1Wvjj SearchBar-module__transparent--2i1IJ SearchBar-module__valid--51yf1"
							type="search" placeholder="여행지나 상품을 검색해보세요!" spellcheck="false"
							autocomplete="off" />
					</div>
					<!-- 관련 검색어 뜨는 창: 후에 동적으로 만들어줘야함 -->
					<div
						class="Popup-module__container--3IA26 Popup-module__bottomLeft--1S42K Popup-module__animation--ajg1n SearchFormInput-module__popup--1CQ20 SearchFormInput-module__transparent--2Wev4 Popup-module__show--1-3kB searchTextBox">
						<ul class="SearchFormAutoComplete-module__container--1t34j">
							<li class="SearchFormAutoComplete-module__row--3Cjjm">
								<button type="button"
									class="SearchFormAutoComplete-module__item--3f_Jk">
									<img
										src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxNiIgaGVpZ2h0PSIxNiIgdmlld0JveD0iMCAwIDE2IDE2Ij4KICAgIDxwYXRoIGZpbGw9IiMyQjk2RUQiIGZpbGwtcnVsZT0iZXZlbm9kZCIgZD0iTTYuMjE0IDdhMS43ODYgMS43ODYgMCAxIDEgMy41NzMuMDAxQTEuNzg2IDEuNzg2IDAgMCAxIDYuMjE0IDd6TTMgN2MwIDMuNzUgNSA3LjUgNSA3LjVzNS0zLjc1IDUtNy41YzAtMi43NjQtMi4yMzYtNS01LTVTMyA0LjIzNiAzIDd6Ii8+Cjwvc3ZnPgo="
										class="SearchFormAutoComplete-module__icon--eq1P-" /> <span
										class="SearchFormAutoComplete-module__location--1nz12 undefined">나라</span>
								</button>
							</li>
							<li class="SearchFormAutoComplete-module__row--3Cjjm">
								<button type="button"
									class="SearchFormAutoComplete-module__item--3f_Jk">
									<img
										src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxNiIgaGVpZ2h0PSIxNiIgdmlld0JveD0iMCAwIDE2IDE2Ij4KICAgIDxnIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCIgc3Ryb2tlPSIjODQ4Qzk0IiBzdHJva2Utd2lkdGg9IjEuNSI+CiAgICAgICAgPHBhdGggZD0iTTcgMTEuMjVBNC4yNDkgNC4yNDkgMCAwIDAgMTEuMjUgNyA0LjI0OSA0LjI0OSAwIDAgMCA3IDIuNzUgNC4yNDkgNC4yNDkgMCAwIDAgMi43NSA3IDQuMjQ5IDQuMjQ5IDAgMCAwIDcgMTEuMjV6Ii8+CiAgICAgICAgPHBhdGggc3Ryb2tlLWxpbmVjYXA9InJvdW5kIiBkPSJNMTAuMzMzIDEwLjMzM2wzLjMzNCAzLjMzNCIvPgogICAgPC9nPgo8L3N2Zz4K"
										class="SearchFormAutoComplete-module__icon--eq1P-" /> <span
										class="SearchFormAutoComplete-module__search--2LPul undefined">
										<em>검색어</em> 부가 단어
									</span>
								</button>
							</li>
						</ul>
					</div>
				</div>
			</div>
			<c:if test="${ empty authUser }">
				<div class="GlobalNavItems GlobalNavItems--transparent">
					<div class="GlobalNavItems__item gtm-gnb-becomeguide-before-login">
						<a href="<%= request.getContextPath() %>/partner/new_partner.do"
							class="GnbItemButton-module__item--2ELl4 GnbItemButton-module__link--1xzy3 GnbItemButton-module__transparent--2pmYk">
							파트너등록하기 </a>
					</div>
					<div class="GlobalNavItems__item gtm-gnb-signin">
						<a href="<%=request.getContextPath()%>/login.do"
							class="GnbItemButton-module__item--2ELl4 GnbItemButton-module__link--1xzy3 GnbItemButton-module__transparent--2pmYk">
							로그인 </a>
					</div>
					<div class="GlobalNavItems__item gtm-gnb-signup">
						<a href="<%=request.getContextPath()%>/member/regist_member.do"
							class="GnbItemButton-module__item--2ELl4 GnbItemButton-module__link--1xzy3 GnbItemButton-module__transparent--2pmYk GnbItemButton-module__outline--wF4j1">
							회원가입 </a>
					</div>
				</div>
			</c:if>
			<c:if test="${ not empty authUser }">
				<div class="GlobalNavItems GlobalNavItems--transparent">
					<div class="GlobalNavItems__item gtm-gnb-wishlist">
						<a href="위시리스트#"
							class="GnbItemButton-module__item--2ELl4 GnbItemButton-module__link--1xzy3 GnbItemButton-module__transparent--2pmYk">위시리스트</a>
					</div>
					<div class="GlobalNavItems__item gtm-gnb-traveler">
						<a href="예약내역#"
							class="GnbItemButton-module__item--2ELl4 GnbItemButton-module__link--1xzy3 GnbItemButton-module__transparent--2pmYk">예약내역</a>
					</div>
					<div class="GlobalNavItems__item gtm-gnb-messenger">
						<a href="메시지#"
							class="GnbItemButton-module__item--2ELl4 GnbItemButton-module__link--1xzy3 GnbItemButton-module__transparent--2pmYk">메시지</a>
					</div>
					<div class="GlobalNavItems__item gtm-gnb-alarm">
						<button type="button"
							class="GnbItemButton-module__item--2ELl4 GnbItemButton-module__transparent--2pmYk">알림</button>
						<!-- 메시지 창 -->
						<div class="NotificationPopup  mrt-notify-popup">
							<div class="mrt-notify-popup--arrow"></div>
							<div class="mrt-notify__content">
								<div class="mrt-notify__content--heading">
									<span>알림</span>
									<!-- 홈페이지에 보이지는 않지만 왜 코드에 넣어놓은 것인지 모르겠음 
					<button type="button" class="NotificationPopup__close show-on-tablet">
					<img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAEAAAABACAMAAACdt4HsAAAAYFBMVEUAAABhYWFlZWVra2thYWFhYWFkZGRiYmJkZGRkZGRycnJiYmJiYmJhYWFiYmJiYmJiYmJjY2NjY2NhYWFhYWFhYWFhYWFiYmJiYmJiYmJiYmJkZGRubm5jY2NhYWFhYWFgDpVSAAAAH3RSTlMA+xcN9NsfqUAoBeTTybSdj0w47um/hV1vZVUwCHZ9ag0QdwAAAQJJREFUWMPtlcuSgjAQRZuEyMMHDwVEx+n//8u52VCjLWXTVe5yliHnJCRVQIlEIvFF+pHe4xun8cuc2/f+wEFTaJh5JMnPgAeTIlAXmPgr/ROGr6ShjlMfikGBWExuS1sYXgvRH0mPj4X52W9pC/74/8gb4esK2ST8rYUbgRZ+Q9txBxS6xTcXRvgF2XABBbsPdoHBqSYzcf9ZafevHMl7qz/DPu6Zz73dH3x1QeFu8acM63uipWDzwf3MfKm2+jf4B/jWQhd9t3ync+b9zuJbCyX84J5GUAiKgpgtmlpf7rfTFOT7ynP5TAG/WrvZWfVfWblzFB6koV497YoSiURinT93GBjpyu+H5QAAAABJRU5ErkJggg==" alt="알림 창 닫기" />
					</button>
					 -->
								</div>
								<div class="mrt-notify__content--body">
									<ul class="notify-list">
										<li
											class="notify-list__item gtm-notification-item noti-item unread-item ">
											<a href="메시지#" class="notify-list__item--wrapper"
											data-turbolinks="true">
												<div class="notify-list__item--heading">
													<div class="item-title">예약</div>
													<time class="item-date">메시지날짜</time>
												</div>
												<div class="notify-list__item--content">
													<p>2019-07-01(예약날짜), 메시지 내용</p>
												</div>
										</a>
										</li>
									</ul>
									<button type="button"
										class="NotificationPopup__button NotificationPopup__button--outline NotificationPopup__button--hidden">
										더보기</button>
								</div>
							</div>
						</div>
					</div>
					<div class="ProfileNavItems ProfileNavItems--transparent">
						<div class="ProfileCard">
							<button type="button" class="ProfileCard__button">
								<img
									src="//d2yoing0loi5gh.cloudfront.net/assets/default/user_profile_image-414acc60b27f0a258bec14c82b70dc361fc6768da9289f924f887bec1fc33849.png"
									alt="ooo님의 프로필 사진"
									class="GnbProfilePhoto-module__container--4FpTO GnbProfilePhoto-module__transparent--uUzmM" />
							</button>
						</div>
						<div class="ProfilePopup ">
							<span class="ProfilePopup__arrow"> </span>
							<div class="ProfilePopup__wrapper">
								<div class="ProfilePopup__section ProfilePopup__section--wide">
									<div class="ProfileCard">
										<button class="ProfileCard__button" type="button">
											<img
												src="//d2yoing0loi5gh.cloudfront.net/assets/default/user_profile_image-414acc60b27f0a258bec14c82b70dc361fc6768da9289f924f887bec1fc33849.png"
												alt="ooo님의 프로필 사진"
												class="GnbProfilePhoto-module__container--4FpTO" />
										</button>
										<div class="ProfileCard__detail">
											<p class="ProfileCard__detail-text">${ authUser.member_name }님</p>
											<a
												href="<%=request.getContextPath()%>/member/profileManagement.do"
												class="ProfileCard__detail-link gtm-gnb-account">프로필 관리</a>
										</div>
									</div>
								</div>
								<ul class="ProfilePopup__section">
									<li class="ProfilePopupItem "><a href="포인트#"
										class="ProfilePopupItem__link"> <span
											class="Icon-module__icon--1KmZ- Icon-module__layout--1eFuX Icon-module__point--15ju9 ProfilePopupItem__icon"></span>
											포인트 <span
											class="ProfilePopupItem__text ProfilePopupItem__text--blue">0원</span>
									</a></li>
									<li class="ProfilePopupItem"><a href="쿠폰#"
										class="ProfilePopupItem__link"> <span
											class="Icon-module__icon--1KmZ- Icon-module__layout--1eFuX Icon-module__coupon--offSP ProfilePopupItem__icon"></span>
											쿠폰 <span
											class="ProfilePopupItem__text ProfilePopupItem__text--blue">0장</span>
									</a></li>
								</ul>
								<ul class="ProfilePopup__section">
									<li class="ProfilePopupItem gtm-gnb-invite-friend"><a
										href="친구초대#" class="ProfilePopupItem__link"> <span
											class="Icon-module__icon--1KmZ- Icon-module__layout--1eFuX Icon-module__gift--2j5fk ProfilePopupItem__icon">
										</span> 친구 초대
									</a></li>
								</ul>
								<ul class="ProfilePopup__section">
									<li class="ProfilePopupItem gtm-gnb-becomeguide-after-login">
										<c:if test="${authUser.partner_yn eq 'y'}">
											<a
												href="<%=request.getContextPath()%>/partner/dashboard.do"
												class="ProfilePopupItem__link" data-turbolinks="false">파트너
												페이지</a>
										</c:if> <c:if test="${ authUser.partner_yn eq 'n'}">
											<a
												href="<%=request.getContextPath()%>/partner/new_partner.do"
												class="ProfilePopupItem__link" data-turbolinks="false">파트너
												등록하기</a>
										</c:if>
									</li>
									<li class="ProfilePopupItem gtm-gnb-signout"><a
										href="<%=request.getContextPath()%>/logout.do"
										class="ProfilePopupItem__link" data-turbolinks="false">로그아웃</a>
									</li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</c:if>
		</nav>
	</div>
	<div class="Header-module__lnb--2J09H Header-module__blue--2H5LD">
		<nav class="LnbLocalNavBar-module__container--tA5q-">
			<div class="LnbLocalNavBar-module__wrapper--3fC-F">
				<ul class="lnb-menu">
					<li class="LnbLocalNavItem-module__container--msPys"><a
						href="<%=request.getContextPath()%>/myRealTrip.do"
						id="topIcon01"
						class="LnbLocalNavItem-module__item--3ZodT LnbLocalNavItem-module__transparent--13Vhz">
							<span
							class="Icon-module__icon--1KmZ- Icon-module__layout--1eFuX Icon-module__tour-white--2wXSL LnbLocalNavItem-module__icon--Z6YDQ">
						</span> <span class="LnbLocalNavItem-module__label--3BISS">투어&티켓</span>
					</a></li>
					<li class="LnbLocalNavItem-module__container--msPys"><a
						href="<%=request.getContextPath()%>/flights.do" id="topIcon02"
						class="LnbLocalNavItem-module__item--3ZodT LnbLocalNavItem-module__transparent--13Vhz">
							<span
							class="Icon-module__icon--1KmZ- Icon-module__layout--1eFuX Icon-module__flight-white--1ifxJ LnbLocalNavItem-module__icon--Z6YDQ">
						</span> <span class="LnbLocalNavItem-module__label--3BISS">항공권</span>
					</a></li>
					<li class="LnbLocalNavItem-module__container--msPys"><a
						href="<%=request.getContextPath()%>/hotel.do" id="topIcon03"
						class="LnbLocalNavItem-module__item--3ZodT LnbLocalNavItem-module__transparent--13Vhz">
							<span
							class="Icon-module__icon--1KmZ- Icon-module__layout--1eFuX Icon-module__hotel-white--2pp54 LnbLocalNavItem-module__icon--Z6YDQ">
						</span> <span class="LnbLocalNavItem-module__label--3BISS">숙소 </span>
					</a></li>
					<li class="LnbLocalNavItem-module__container--msPys"><a
						href="<%=request.getContextPath()%>/airtellist.do"
						id="topIcon04"
						class="LnbLocalNavItem-module__item--3ZodT LnbLocalNavItem-module__transparent--13Vhz">
							<span
							class="Icon-module__icon--1KmZ- Icon-module__layout--1eFuX Icon-module__airtel-white--b4swA LnbLocalNavItem-module__icon--Z6YDQ">
						</span> <span class="LnbLocalNavItem-module__label--3BISS">에어텔</span>
					</a></li>
					<li class="LnbLocalNavItem-module__container--msPys"><a
						href="<%=request.getContextPath()%>/readyTrip.do" id="topIcon05"
						class="LnbLocalNavItem-module__item--3ZodT LnbLocalNavItem-module__transparent--13Vhz">
							<span
							class="Icon-module__icon--1KmZ- Icon-module__layout--1eFuX Icon-module__checklist-white--1CKEa LnbLocalNavItem-module__icon--Z6YDQ"></span>
							<span class="LnbLocalNavItem-module__label--3BISS">여행준비</span>
					</a></li>
				</ul>
			</div>
		</nav>
	</div>
</div>
<script>
	$(".ProfileCard__button").click(function() {
		$(".ProfilePopup").toggleClass("togglebutton");
		$(".NotificationPopup").removeClass("togglebutton");
	});
	$(".GnbItemButton-module__transparent--2pmYk").click(function() {
		$(".NotificationPopup").toggleClass("togglebutton");
		$(".ProfilePopup").removeClass("togglebutton");
	});
	$(".SearchBar-module__valid--51yf1").focus(function() {
		$(".searchTextBox").addClass("activeSearchBox2");
	});
	$(".SearchBar-module__valid--51yf1").blur(function() {
		$(".searchTextBox").removeClass("activeSearchBox2");
	});
</script>