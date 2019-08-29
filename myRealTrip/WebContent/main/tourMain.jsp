<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>jsp/servlet class - LJE (2019. 5. 15.-오후 5:10:37)</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<link rel="stylesheet" type="text/css" href="">
<style>
*{
	box-sizing: border-box;
	outline: none; /* 없어도 큰 이상 없음 */
	padding: 0;
	margin: 0;
}
body, th, td, li, div, span, p, form, label, select, input, textarea, button{
	font-family: -apple-system, BlinkMacSystemFont, "Malgun Gothic", "맑은 고딕", Roboto, Helvetica, Arial, sans-serif;
    font-size: 14px;
    color: #343a40;
    letter-spacing: -0.2px;
    -webkit-font-smoothing: antialiased;
}
input, select, textarea, label, button{
	vertical-align: middle;
}
#header{
	background-color: #2b96ed;
}
a, a:active, a:hover, a:link, a:visited{
	text-decoration: none;
}
img{
	border-width: 0;
	border: 0;
}
.LnbLocalNavItem-module__item--3ZodT.LnbLocalNavItem-module__active--3-BID{
	opacity: 1!important;
}
.Header-module__lnb--2J09H{
	border-bottom: 0.3px solid rgba(0, 0, 0, 0.4);
}
main{
	position: relative;
}
.ExperienceHeader-module__container--3_PB4{
	background-color: #2b96ed;
    border-top: 1px solid #1583db;
    height: 310px;
    margin-bottom: 76px;
    text-align: center;
    width: 100%;
}
.ExperienceHeader-module__headline--1zg0d{
	color: #fff;
	font-size: 36px;
	font-weight: 600;
	line-height: 1.39;
	margin-bottom: 16px;
	margin-top: 56px;
}
.ExperienceHeader-module__search--2HA67{
	margin: 0 auto;
	width: 430px;
}
.SearchFormInput-module__container--2Zmo8{
	position: relative;
    width: 100%;
}
.SearchBar-module__container--1PUCY.SearchBar-module__tour--eRiyw{
	height: 56px;
}
.SearchBar-module__container--1PUCY{
	height: 48px;
    -ms-flex-positive: 1;
    flex-grow: 1;
    position: relative;
}
.SearchBar-module__icon--BioYf.SearchBar-module__tour--eRiyw.SearchBar-module__window--F_Dqd{
	left: 90px;
}
.SearchBar-module__icon--BioYf.SearchBar-module__tour--eRiyw{
	height: 24px;
    left: 100px;
    opacity: .8;
    width: 24px;
}
.SearchBar-module__icon--BioYf{
	left: 16px;
    position: absolute;
    top: 50%;
    -ms-transform: translateY(-50%);
    transform: translateY(-50%);
    width: 20px;
    height: 20px;
}
.SearchBar-module__tour--eRiyw>.SearchBar-module__input--1Wvjj{
	background-color: hsla(0,0%,100%,.1);
    border: 1px solid hsla(0,0%,100%,.4);
    color: #fff;
    font-size: 16px;
    height: 56px;
    padding-left: 32px;
    padding-right: 0;
    text-align: center;
}
.SearchBar-module__input--1Wvjj{
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
.SearchFormInput-module__popup--1CQ20{
	margin-top: 8px;
	width: 100%;
}
.Popup-module__bottomLeft--1S42K{
	left: 0;
    top: 100%;
    -ms-transform-origin: left top;
    transform-origin: left top;
}
.Popup-module__container--3IA26{
	border-radius: 2px;
    background-color: #fff;
    box-shadow: 0 0 0 1px rgba(0,0,0,.1), 0 5px 10px 0 rgba(0,0,0,.12);
    display: none; 
    opacity: 0;
    -ms-transform: scale(.5);
    transform: scale(.5);
    position: absolute;
    -ms-transform-origin: top;
    transform-origin: top;
    transition: transform .12s ease,opacity .12s ease;
    z-index: 100;
}
.SearchFormAutoComplete-module__container--1t34j{
	padding: 4px 0;
	width: 100%;
}
ul{
	list-style: none;
}
.SearchEmptyRecent-module__popup--2RbGP{
	border-bottom: none;
    padding-bottom: 4px;
    padding-top: 12px;
}
.SearchEmptyRecent-module__container--2EfKo{
	border-bottom: 1px solid #dee2e6;
    padding-bottom: 30px;
}
.SearchEmptyRecent-module__popup--2RbGP .SearchEmptyRecent-module__header--2SIfk{
	margin-bottom: 8px;
	padding: 0 12px;
}
.SearchEmptyRecent-module__header--2SIfk{
	margin-bottom: 26px;
	position: relative;
	width: 100%;
}
.SearchEmptyRecent-module__header--2SIfk h4{
	color: #343a40;
    font-size: 14px;
    font-weight: 700;
    margin: 0;
    text-align: left;
}
.SearchEmptyRecent-module__popup--2RbGP .SearchEmptyRecent-module__header--2SIfk button{
	right: 12px;
}
.SearchEmptyRecent-module__header--2SIfk button{
	background-color: #fff;
    border: 0;
    color: #848c94;
    font-size: 13px;
    padding: 0;
    position: absolute;
    right: 0;
    bottom: 0;
}
.SearchEmptyRecent-module__keyword--HwN50, .SearchEmptyRecent-module__list--21QDs{
	width: 100%;
}
.SearchEmptyRecent-module__popup--2RbGP .SearchEmptyRecent-module__button--_1YkK{
	padding: 12px;
}
.SearchEmptyRecent-module__button--_1YkK{
	-ms-flex-align: center;
    align-items: center;
    background-color: #fff;
    border: 0;
    display: -ms-flexbox;
    display: flex;
    height: 40px;
    -ms-flex-pack: start;
    justify-content: flex-start;
    line-height: 1;
    padding: 12px 0;
    width: 100%;
}
.SearchEmptyRecent-module__image--2IaDT{
	height: 16px;
	width: 16px;
}
.SearchEmptyRecent-module__label--3Pzsh{
	color: #495056;
    font-size: 15px;
    margin-left: 6px;
    vertical-align: middle;
    text-align: left;
    width: 100%;
}
.text-module__text-ellipsis--3yK2y{
	overflow: hidden;
    text-overflow: ellipsis;
    white-space: nowrap;
}
.Grid-module__container--2YY6K{
	position: relative;
	width: 100%;
}
.SearchBar-module__container--1PUCY>.SearchBar-module__input--1Wvjj:focus {
		background-color: #fff;
		color: #495056;
	}
.activeSearchBox{
	display: block; 
    opacity: 1;
    transform: scale(1);
}
</style>
<script>
   $(document).ready(function (){
	   $(".LnbLocalNavItem-module__item--3ZodT").removeClass("LnbLocalNavItem-module__active--3-BID");
		$("#topIcon01").addClass("LnbLocalNavItem-module__active--3-BID");
		$(".GnbHeaderSearchBar-module__container--azIKz .SearchFormInput-module__container--2Zmo8").css("display", "none");
		
		$(".SearchBar-module__tour--eRiyw").focus(function(){
			$(".Popup-module__container--3IA26").addClass("activeSearchBox");
		});
		$(".SearchBar-module__tour--eRiyw").blur(function(){
			$(".Popup-module__container--3IA26").removeClass("activeSearchBox");
		});
   });
</script>
</head>
<body>
<div id="header" >
<jsp:include page="/WEB-INF/layout/top1.jsp"/>
<div>
<!-- 각 페이지별로 검색 창 있는 부분까지 헤더(배경색/이미지 들어가는) -->
<!-- 검색창 넣으면 저절로 height잡히니 header의 height 임의로 지정해준거 수정해주세요 -->
</div>
</div>
<main>
	<div class="Experience-react-component-db2689c9-22e9-46fe-8d78-c014b17e1119">
		<div>
			<section class="ExperienceHeader-module__container--3_PB4">
				<h2 class="ExperienceHeader-module__headline--1zg0d">어디로 떠나세요?</h2>
				<div class="ExperienceHeader-module__search--2HA67">
					<div class="SearchFormInput-module__container--2Zmo8">
						<div class="SearchBar-module__container--1PUCY SearchBar-module__tour--eRiyw">
							<img class="SearchBar-module__icon--BioYf SearchBar-module__tour--eRiyw SearchBar-module__window--F_Dqd" src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDIwIDIwIj4KICAgIDxnIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCIgc3Ryb2tlPSIjRkZGIiBzdHJva2Utd2lkdGg9IjEuNSI+CiAgICAgICAgPHBhdGggZD0iTTguNjY3IDE0LjU4M2E1LjkxNSA1LjkxNSAwIDAgMCA1LjkxNi01LjkxNkE1LjkxNSA1LjkxNSAwIDAgMCA4LjY2NyAyLjc1IDUuOTE1IDUuOTE1IDAgMCAwIDIuNzUgOC42NjdhNS45MTUgNS45MTUgMCAwIDAgNS45MTcgNS45MTZ6Ii8+CiAgICAgICAgPHBhdGggc3Ryb2tlLWxpbmVjYXA9InJvdW5kIiBkPSJNMTMuMTExIDEzLjExMWw0LjQ0NSA0LjQ0NSIvPgogICAgPC9nPgo8L3N2Zz4K" alt="검색" />
							<input type="search" id="SearchBar__input" class="SearchBar-module__input--1Wvjj SearchBar-module__tour--eRiyw" placeholder="여행지나 상품을 검색해보세요!" spellcheck="false" autocomplete="off"/>
						</div>
						<div class="Popup-module__container--3IA26 Popup-module__bottomLeft--1S42K SearchFormInput-module__popup--1CQ20">
							<ul class="SearchFormAutoComplete-module__container--1t34j"></ul>
							<div class="SearchEmptyRecent-module__container--2EfKo SearchEmptyRecent-module__popup--2RbGP">
								<header class="SearchEmptyRecent-module__header--2SIfk">
									<h4>최근 검색어</h4>
									<button type="button">전체삭제</button>
								</header>
								<ul class="SearchEmptyRecent-module__list--21QDs">
									<li class="SearchEmptyRecent-module__keyword--HwN50">
										<button class="SearchEmptyRecent-module__button--_1YkK" type="button">
											<img class="SearchEmptyRecent-module__image--2IaDT" src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxNiIgaGVpZ2h0PSIxNiIgdmlld0JveD0iMCAwIDE2IDE2Ij4KICAgIDxnIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCIgc3Ryb2tlPSIjODQ4Qzk0IiBzdHJva2Utd2lkdGg9IjEuNSI+CiAgICAgICAgPHBhdGggZD0iTTggMTMuMjVjMi45IDAgNS4yNS0yLjM1IDUuMjUtNS4yNVMxMC45IDIuNzUgOCAyLjc1IDIuNzUgNS4xIDIuNzUgOCA1LjEgMTMuMjUgOCAxMy4yNXoiLz4KICAgICAgICA8cGF0aCBzdHJva2UtbGluZWNhcD0icm91bmQiIGQ9Ik04IDloMS45OE04IDlWNS43NjMiLz4KICAgIDwvZz4KPC9zdmc+Cg==" alt="최근 검색어" />
											<span class="SearchEmptyRecent-module__label--3Pzsh text-module__text-ellipsis--3yK2y">검색어</span>
										</button>
									</li>
								</ul>
							</div>
						</div>
					</div>
				</div>
				<div class="Grid-module__container--2YY6K">
				</div>
			</section>
		</div>
	</div>
</main>
<!-- <div id="body">
</div> -->
<jsp:include page="/WEB-INF/layout/bottom.jsp"/>
</body>
</html>