<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<style>
* {
	box-sizing: border-box;
	padding: 0;
	margin: 0;
}

.Header-module__header--1QMJB {
	height: auto;
	position: relative;
	width: 100%;
	z-index: 100;
}

.Drawer--flight *, .Header--flight * {
	box-sizing: border-box;
	outline: none;
}

.Header-module__gnb--1yrf7 {
	width: 100%;
}

.GlobalNavBar {
	max-width: 1060px;
	height: 48px;
	position: relative;
	margin: 0 auto;
	display: flex;
	align-items: center;
	justify-content: space-between;
}

a {
	text-decoration: none;
}

img {
	border-width: 0;
}

.mrt-logo-container .mrt-logo-img {
	width: 128px;
}

.mrt-logo-container img {
	vertical-align: middle;
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

.SearchBar-module__icon--BioYf {
	left: 16px;
	position: absolute;
	top: 50%;
	transform: translateY(-50%);
	width: 20px;
	height: 20px;
}

.SearchBar-module__white--11s2C>.SearchBar-module__input--1Wvjj {
	background-color: #f5f6f7;
	color: #495056;
}

.SearchBar-module__input--1Wvjj {
	border: 0;
	border-radius: 4px;
	width: 100%;
	height: 100%;
	padding-left: 48px;
	padding-right: 16px;
	transition: all .2s ease;
	outline: none;
	font-size: 15px;
	font-weight: 500;
}

.SearchFormInput-module__popup--1CQ20 {
	margin-top: 8px;
	width: 100%;
}

.SearchBar-module__white--11s2C>.SearchBar-module__input--1Wvjj:focus {
	background-color: #fff;
	box-shadow: 0 1px 4px 0 rgba(52, 58, 64, .15), 0 0 1px 0
		rgba(52, 58, 64, .2);
	color: #495056;
}

.Popup-module__bottomLeft--1S42K {
	left: 0;
	top: 100%;
	transform-origin: left top;
}

.Popup-module__show--1-3kB {
	display: block;
}

.Popup-module__container--3IA26 {
	border-radius: 2px;
	background-color: #fff;
	box-shadow: 0 0 0 1px rgba(0, 0, 0, .1), 0 5px 10px 0 rgba(0, 0, 0, .12);
	display: none; /*관련검색어 뜨는거 숨기기 */
	opacity: 0; /*관련검색어 뜨는거 숨기기 */
	position: absolute;
	/* transform: scale(.5); */
	transition: transform .12s ease, opacity .12s ease;
	z-index: 100;
}

.SearchEmptyRecent-module__popup--2RbGP {
	border-bottom: none;
	padding-bottom: 4px;
	padding-top: 12px;
}

.SearchEmptyRecent-module__popup--2RbGP .SearchEmptyRecent-module__header--2SIfk
	{
	margin-bottom: 8px;
	padding: 0 12px;
}

.SearchEmptyRecent-module__header--2SIfk {
	position: relative;
	width: 100%;
}

.SearchEmptyRecent-module__header--2SIfk h4 {
	color: #343a40;
	font-size: 14px;
	font-weight: 700;
	margin: 0;
	text-align: left;
}

.SearchEmptyRecent-module__popup--2RbGP .SearchEmptyRecent-module__header--2SIfk button
	{
	right: 12px;
}

.SearchEmptyRecent-module__header--2SIfk button {
	background-color: #fff;
	border: 0;
	color: #848c94;
	font-size: 13px;
	padding: 0;
	position: absolute;
	rigth: 0;
	bottom: 0;
}

.SearchFormAutoComplete-module__container--1t34j {
	padding: 4px 0;
	width: 100%;
}

ul {
	list-style: none;
}

.SearchEmptyRecent-module__keyword--HwN50,
	.SearchEmptyRecent-module__list--21QDs {
	width: 100%;
}

.SearchEmptyRecent-module__popup--2RbGP .SearchEmptyRecent-module__button--_1YkK
	{
	padding: 12px;
}

.SearchEmptyRecent-module__button--_1YkK {
	align-items: center;
	background-color: #fff;
	border: 0;
	display: flex;
	height: 40px;
	justify-content: flex-start;
	line-height: 1;
	padding: 12px 0;
	width: 100%;
}

.SearchEmptyRecent-module__image--2IaDT {
	height: 16px;
	width: 16px;
}

.SearchEmptyRecent-module__label--3Pzsh {
	color: #495056;
	font-size: 15px;
	margin-left: 6px;
	vertical-align: middle;
	text-align: left;
	width: 100%;
}

.mrt-notify-popup .mrt-notify__content .mrt-notify__content--body .notify-list .notify-list__item
	{
	font-size: 14px;
}

.text-module_ {
	overflow: hidden;
	text-overflow: ellipsis;
	white-space: nowrap;
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

.GnbItemButton-module__item--2ELl4.GnbItemButton-module__white--39f2S,
	.GnbItemButton-module__item--2ELl4.GnbItemButton-module__white--39f2S:link,
	.GnbItemButton-module__item--2ELl4.GnbItemButton-module__white--39f2S:visited
	{
	color: #666d75;
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
	background-color: rbga(0, 0, 0, 0);
	transition: background-color .2s ease;
}

a {
	cursor: pointer;
}

.GlobalNavItems__item:last-child {
	margin-right: 20px;
}

.GnbItemButton-module__item--2ELl4.GnbItemButton-module__outline--wF4j1.GnbItemButton-module__white--39f2S:link,
	.GnbItemButton-module__item--2ELl4.GnbItemButton-module__outline--wF4j1.GnbItemButton-module__white--39f2S:visited
	{
	color: #2b96ed;
}

.GnbItemButton-module__item--2ELl4.GnbItemButton-module__outline--wF4j1.GnbItemButton-module__white--39f2S
	{
	border: 1px solid #a7d4f9;
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

.SearchEmptyRecent-module__button--_1YkK:hover {
	cursor: pointer;
	background-color: rgb(241, 243, 245);
}

.GlobalNavItems__item:hover {
	cursor: pointer;
	background-color: rgb(241, 243, 245);
	border-radius: 3px;
}

.GlobalNavBar--white {
	height: 73px;
}

.Header-module__lnb--2J09H.Header-module__white--33sfe {
	border-bottom: 1px solid #dee2e6;
}

.Header-module__lnb--2J09H {
	width: 100%;
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

.LnbLocalNavItem-module__item--3ZodT {
	border-radius: 3px;
	display: inline-block;
	height: 36px;
	padding: 6px 7px;
	transition: all .2s ease;
}

.Icon-module__layout--1eFuX {
	background:
		url(https://www.myrealtrip.com//webpack/e78f52c98d7fa4c4a50c96ef91c96164.svg)
		no-repeat 0 0/278px 88px;
}

.LnbLocalNavItem-module__icon--Z6YDQ {
	display: inline-block;
	vertical-align: middle;
}

.Icon-module__layout--1eFuX.Icon-module__tour-gray--1AvjA {
	width: 24px;
	height: 24px;
	background-position: -118px -1px;
}

.LnbLocalNavItem-module__icon--Z6YDQ {
	height: 24px;
	margin-right: 3px;
	width: 24px;
}

.LnbLocalNavItem-module__item--3ZodT.LnbLocalNavItem-module__white--2Chk_>.LnbLocalNavItem-module__label--3BISS
	{
	color: #666d75;
}

.LnbLocalNavItem-module__label--3BISS {
	font-size: 15px;
	font-weight: 700;
	vertical-align: middle;
}

.Icon-module__layout--1eFuX.Icon-module__flight-gray--3RLv5 {
	width: 25px;
	height: 24px;
	background-position: -4px -2px;
}

.Icon-module__layout--1eFuX.Icon-module__hotel-gray--31cmA {
	width: 24px;
	height: 24px;
	background-position: -62px -2px;
}

.Icon-module__layout--1eFuX.Icon-module__airtel-gray--gMROU {
	width: 20px;
	height: 24px;
	background-position: -230px -4px;
}

.Icon-module__layout--1eFuX.Icon-module__checklist-gray--CrZ1T {
	width: 24px;
	height: 24px;
	background-position: -174px -3px;
}

.LnbLocalNavItem-module__item--3ZodT.LnbLocalNavItem-module__white--2Chk_:hover
	{
	background-color: rgb(245, 246, 247);
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
	color: #666d75;
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
	transition: visibility .15s ease, opacity .15s ease, transform .15s ease;
}

.mrt-notify-popup .mrt-notify-popup--arrow:before {
	border-color: rgba(0, 0, 0, 0) rgba(0, 0, 0, 0) #dee2e6;
	border-width: 6px;
	right: 74.5px;
	top: -13px;
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
	transition: visibility .15s ease, opacity .15s ease, transform .15s ease;
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
}

.ProfileCard__button:hover, .GnbItemButton-module__transparent--2pmYk:hover
	{
	cursor: pointer;
}

.GnbProfilePhoto-module__container--4FpTO:hover {
	border: solid 2px rgb(233, 236, 239);
}

button:focus {
	outline: 0;
}

.activeSearchBox2 {
	display: block;
	opacity: 1;
	transform: scale(1);
}

.togglebutton {
	visibility: visible;
	opacity: 1;
	trnsform: scale(1);
}
</style>
<header class="Header-module__header--1QMJB Header-module__white--33sfe">
	<div class="Header-module__gnb--1yrf7 Header-module__white--33sfe">
		<nav class="GlobalNavBar GlobalNavBar--white">
			<div class="Logo mrt-logo-container gtm-gnb-logo">
				<a href="<%= request.getContextPath()%>/myRealTrip.do"> <img
					class="mrt-logo-img"
					src="<%= request.getContextPath() %>/imgages/top_logo2.png" />
				</a>
			</div>
			<div class="GnbHeaderSearchBar-module__container--azIKz">
				<div class="SearchFormInput-module__container--2Zmo8">
					<div
						class="SearchBar-module__container--1PUCY SearchBar-module__white--11s2C">
						<img
							class="SearchBar-module__icon--BioYf SearchBar-module__window--F_Dqd"
							src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDIwIDIwIj4KICAgIDxnIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCIgc3Ryb2tlPSIjODQ4Qzk0IiBzdHJva2Utd2lkdGg9IjEuNSI+CiAgICAgICAgPHBhdGggZD0iTTguNjY3IDE0LjU4M2E1LjkxNSA1LjkxNSAwIDAgMCA1LjkxNi01LjkxNkE1LjkxNSA1LjkxNSAwIDAgMCA4LjY2NyAyLjc1IDUuOTE1IDUuOTE1IDAgMCAwIDIuNzUgOC42NjdhNS45MTUgNS45MTUgMCAwIDAgNS45MTcgNS45MTZ6Ii8+CiAgICAgICAgPHBhdGggc3Ryb2tlLWxpbmVjYXA9InJvdW5kIiBkPSJNMTMuMTExIDEzLjExMWw0LjQ0NSA0LjQ0NSIvPgogICAgPC9nPgo8L3N2Zz4K"
							alt="검색" /> <input id="SearchBar__input"
							class="SearchBar-module__input--1Wvjj SearchBar-module__white--11s2C"
							type="search" placeholder="여행지나 상품을 검색해보세요!" spellcheck="false"
							autocomplete="off" />
					</div>
					<div
						class="Popup-module__container--3IA26 Popup-module__bottomLeft--1S42K Popup-module__animation--ajg1n SearchFormInput-module__popup--1CQ20 SearchFormInput-module__white--3U00c Popup-module__show--1-3kB searchTextBox">
						<ul class="SearchFormAutoComplete-module__container--1t34j"></ul>
						<div
							class="SearchEmptyRecent-module__container--2EfKo SearchEmptyRecent-module__popup--2RbGP">
							<header class="SearchEmptyRecent-module__header--2SIfk">
								<h4>최근 검색어</h4>
								<button type="button" style="cursor: pointer">전체삭제</button>
							</header>
							<ul class="SearchEmptyRecent-module__list--21QDs">
								<li class="SearchEmptyRecent-module__keyword--HwN50">
									<button class="SearchEmptyRecent-module__button--_1YkK">
										<img class="SearchEmptyRecent-module__image--2IaDT"
											src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxNiIgaGVpZ2h0PSIxNiIgdmlld0JveD0iMCAwIDE2IDE2Ij4KICAgIDxnIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCIgc3Ryb2tlPSIjODQ4Qzk0IiBzdHJva2Utd2lkdGg9IjEuNSI+CiAgICAgICAgPHBhdGggZD0iTTggMTMuMjVjMi45IDAgNS4yNS0yLjM1IDUuMjUtNS4yNVMxMC45IDIuNzUgOCAyLjc1IDIuNzUgNS4xIDIuNzUgOCA1LjEgMTMuMjUgOCAxMy4yNXoiLz4KICAgICAgICA8cGF0aCBzdHJva2UtbGluZWNhcD0icm91bmQiIGQ9Ik04IDloMS45OE04IDlWNS43NjMiLz4KICAgIDwvZz4KPC9zdmc+Cg=="
											alt="최근 검색어" /> <span
											class="SearchEmptyRecent-module__label--3Pzsh text-module__text-ellipsis--3yK2y">검색어</span>
									</button>
								</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
			<c:if test="${ empty authUser }">
				<div class="GlobalNavItems GlobalNavItems--white">
					<div class="GlobalNavItems__item gtm-gnb-becomeguide-before-login">
						<a href="<%= request.getContextPath() %>/partner/new_partner.do"
							class="GnbItemButton-module__item--2ELl4 GnbItemButton-module__link--1xzy3 GnbItemButton-module__white--39f2S">파트너
							등록하기</a>
					</div>
					<div class="GlobalNavItems__item gtm-gnb-signin">
						<a href="<%= request.getContextPath() %>/login.do"
							class="GnbItemButton-module__item--2ELl4 GnbItemButton-module__link--1xzy3 GnbItemButton-module__white--39f2S">로그인</a>
					</div>
					<div class="GlobalNavItems__item gtm-gnb-signup">
						<a href="<%= request.getContextPath() %>/member/regist_member.do"
							class="GnbItemButton-module__item--2ELl4 GnbItemButton-module__link--1xzy3 GnbItemButton-module__white--39f2S GnbItemButton-module__outline--wF4j1">회원가입</a>
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
												href="<%= request.getContextPath() %>/member/profileManagement.do"
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
												href="<%= request.getContextPath() %>/partner/dashboard.do"
												class="ProfilePopupItem__link" data-turbolinks="false">파트너
												페이지</a>
										</c:if> <c:if test="${authUser.partner_yn ne 'y'}">
											<a
												href="<%= request.getContextPath() %>/partner/new_partner.do"
												class="ProfilePopupItem__link" data-turbolinks="false">파트너
												등록하기</a>
										</c:if>
									</li>
									<li class="ProfilePopupItem gtm-gnb-signout"><a
										href="<%= request.getContextPath() %>/logout.do"
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
	<div class="Header-module__lnb--2J09H Header-module__white--33sfe">
		<nav class="LnbLocalNavBar-module__container--tA5q-">
			<div class="LnbLocalNavBar-module__wrapper--3fC-F">
				<ul class="lnb-menu">
					<li class="LnbLocalNavItem-module__container--msPys"><a
						href="<%= request.getContextPath() %>/myRealTrip.do"
						class="LnbLocalNavItem-module__item--3ZodT LnbLocalNavItem-module__white--2Chk_">
							<span
							class="Icon-module__icon--1KmZ- Icon-module__layout--1eFuX Icon-module__tour-gray--1AvjA LnbLocalNavItem-module__icon--Z6YDQ"></span>
							<span class="LnbLocalNavItem-module__label--3BISS">투어&티켓</span>
					</a></li>
					<li class="LnbLocalNavItem-module__container--msPys"><a
						href="<%= request.getContextPath() %>/flights.do"
						class="LnbLocalNavItem-module__item--3ZodT LnbLocalNavItem-module__white--2Chk_">
							<span
							class="Icon-module__icon--1KmZ- Icon-module__layout--1eFuX Icon-module__flight-gray--3RLv5 LnbLocalNavItem-module__icon--Z6YDQ"></span>
							<span class="LnbLocalNavItem-module__label--3BISS">항공권</span>
					</a></li>
					<li class="LnbLocalNavItem-module__container--msPys"><a
						href="<%= request.getContextPath() %>/hotel.do"
						class="LnbLocalNavItem-module__item--3ZodT LnbLocalNavItem-module__white--2Chk_">
							<span
							class="Icon-module__icon--1KmZ- Icon-module__layout--1eFuX Icon-module__hotel-gray--31cmA LnbLocalNavItem-module__icon--Z6YDQ"></span>
							<span class="LnbLocalNavItem-module__label--3BISS">숙소</span>
					</a></li>
					<li class="LnbLocalNavItem-module__container--msPys"><a
						href="<%= request.getContextPath() %>/airtellist.do"
						class="LnbLocalNavItem-module__item--3ZodT LnbLocalNavItem-module__white--2Chk_">
							<span
							class="Icon-module__icon--1KmZ- Icon-module__layout--1eFuX Icon-module__airtel-gray--gMROU LnbLocalNavItem-module__icon--Z6YDQ"></span>
							<span class="LnbLocalNavItem-module__label--3BISS">에어텔</span>
					</a></li>
					<li class="LnbLocalNavItem-module__container--msPys"><a
						href="<%= request.getContextPath() %>/readyTrip.do"
						class="LnbLocalNavItem-module__item--3ZodT LnbLocalNavItem-module__white--2Chk_">
							<span
							class="Icon-module__icon--1KmZ- Icon-module__layout--1eFuX Icon-module__checklist-gray--CrZ1T LnbLocalNavItem-module__icon--Z6YDQ"></span>
							<span class="LnbLocalNavItem-module__label--3BISS">여행준비</span>
					</a></li>
				</ul>
			</div>
		</nav>
	</div>
</header>
<script>
	$(".ProfileCard").click(function(){
		console.log("클릭");
		$(".ProfilePopup").toggleClass("togglebutton");
		$(".NotificationPopup").removeClass("togglebutton");
	});
	$(".GnbItemButton-module__transparent--2pmYk").click(function(){
		$(".NotificationPopup").toggleClass("togglebutton");
		$(".ProfilePopup").removeClass("togglebutton");
	});
	$(".SearchBar-module__white--11s2C").focus(function(){
		$(".searchTextBox").addClass("activeSearchBox2");
	});
	$(".SearchBar-module__white--11s2C").blur(function(){
		$(".searchTextBox").removeClass("activeSearchBox2");
	});
	
</script>