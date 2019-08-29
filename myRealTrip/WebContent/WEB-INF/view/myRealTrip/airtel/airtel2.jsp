<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jsp/servlet class  (2019. 5. 17. - 오후 4:19:23)</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<link rel="stylesheet" type="text/css" href="" />
<style>
.Header-module__header--1QMJB.Header-module__blue--2H5LD {
    background-color: #2b96ed;
    color: #fff;
}
* {
    box-sizing: border-box;
    outline: none;
    padding: 0;
    margin: 0;
}
a, a:active, a:hover, a:link, a:visited {
    text-decoration: none;
}

.carousel-inner {
    max-height: 360px;
    width: 100%;
    position: relative;
    overflow: hidden;
}
.carousel .carousel-img {
    height: 100%;
    width: 100%;
}
.carousel {
    height: auto;
    background-color: #e9ecef;
    border-radius: 2px;
    -webkit-box-shadow: inset 0 0 0 1px rgba(0,0,0,0.05);
    box-shadow: inset 0 0 0 1px rgba(0,0,0,0.05);
    width: 700px;
}
.carousel-indicators {
	margin : 0 auto;
    position: absolute;
    bottom: 10px;
    left: 50%;
    z-index: 15;
    width: 420px;
    padding-left: 0;
    margin-left: -35%;
    text-align: center;
    list-style: none;
}
.carousel-indicators li {
    display: inline-block;
    text-indent: -999px;
    cursor: pointer;
   }
.carousel-indicators li {
    background-color: #fff;
    border: 0;
    border-radius: 50%;
    
    height: 8px;
    margin: 0 4px;
    opacity: .5;
    width: 8px;
}

.carousel-inner {
    height: 280px;
    width: 100%;
    position: relative;
    overflow: hidden;
}
.carousel-inner .item {
    height: 280px;
}
.carousel .carousel-indicators {
    bottom: 12px;
}
.fixed-banner img {
    height: auto;
    width: 100%;
}
.banner-container {
    margin-bottom: 40px;
    position: relative;
    z-index: 11;
}
.fixed-banner {
    height: auto;
    background-color: #e9ecef;
    border-radius: 2px;
    -webkit-box-shadow: inset 0 0 0 1px rgba(0,0,0,0.05);
    box-shadow: inset 0 0 0 1px rgba(0,0,0,0.05);
    position: absolute;
    right: 0;
    top: 0;
    width: 340px;
 }
 .hot-deal-container {
    width: 1060px;
    margin: 0 auto;
    width: 1060px;
}
.hot-deal-container .header-subtitle-container .dropdown-btn {
    background-color: #e9ecef;
    border-radius: 2px;
    color: #495056;
    font-weight: 700;
    letter-spacing: -.3px;
    margin-left: 16px;
    padding: 6px 7px;
    text-align: center;
    -webkit-transition: all .1s ease;
    transition: all .1s ease;
 }
 .hot-deal-container .hot-deal-header-container {
    margin: 44px 0 24px;
}
.hot-deal-container .header-title {
    color: #343a40;
    display: inline-block;
    font-size: 28px;
    font-weight: 700;
    letter-spacing: -.3px;
    margin-bottom: 5px;
}
.hot-deal-container .header-subtitle:last-child {
    color: #343a40;
    font-weight: 700;
    letter-spacing: -.3px;
}
.hot-deal-container .link-container {
    display: inline-block;
}
.hot-deal-container .header-subtitle-container {
    font-size: 14px;
    font-weight: 500;
    letter-spacing: -.3px;
    margin-bottom: 24px;
}
.header__locations-dropdown {
    cursor: default;
    position: relative;
}
.header__locations-dropdown .header-dropdown-container {
    -webkit-box-shadow: 0 1px 3px 0 rgba(0,0,0,0.3), 0 1px 4px 0 rgba(0,0,0,0.15);
    box-shadow: 0 1px 3px 0 rgba(0,0,0,0.3), 0 1px 4px 0 rgba(0,0,0,0.15);
    background-color: #fff;
    border-radius: 2px;
    left: 0;
    position: absolute;
    top: 4px;
    width: 880px;
    z-index: 37;
}
.header__locations-dropdown .header-dropdown-wrapper {
    display: -webkit-box;
    display: flex;
    display: -ms-flexbox;
    display: -webkit-flex;
    -webkit-box-orient: horizontal;
    -webkit-box-direction: normal;
    -ms-flex-flow: row wrap;
    flex-flow: row wrap;
    padding: 8px 8px 16px;
    position: relative;
}

.header__locations-dropdown .header-dropdown-header {
    border-bottom: 1px solid #f1f3f5;
    color: #343a40;
    font-size: 16px;
    font-weight: 600;
    height: 48px;
    line-height: 1;
    padding: 16px 24px;
    position: relative;
}
.header__locations-dropdown .areas-dropdown-close {
    border-radius: 2px;
    cursor: pointer;
    position: absolute;
    right: 12px;
    top: 12px;
    transition: background .1s ease;
}
.header__locations-dropdown .header-dropdown-item {
	width : 16.6%;
    display: inline-block;
    margin: 0;
    padding: 8px;
    vertical-align: top;
}
.header__locations-dropdown .header-dropdown-item .sub-item {
    white-space: nowrap;
    overflow: hidden;
    text-overflow: ellipsis;
    max-width: 100%;
    border-radius: 2px;
    color: #666d75;
    display: block;
    font-size: 13px;
    font-weight: 400;
    line-height: 2;
    padding: 0 8px;
    -webkit-transition: all .1s;
    transition: all .1s;
}

.header__locations-dropdown .header-dropdown-item .top-item {
    white-space: nowrap;
    overflow: hidden;
    text-overflow: ellipsis;
    max-width: 100%;
    border-radius: 2px;
    color: #343a40;
    display: block;
    font-size: 14px;
    font-weight: 600;
    line-height: 2;
    padding: 0 8px;
    -webkit-transition: all .1s ease;
    transition: all .1s ease;
}
a {
    cursor: pointer;
}

/* content */
.hot-deal-container .hot-deal-category-container {
    color: #848c94;
    font-size: 14px;
    margin-bottom: 24px;
    padding-right: 100px;
}

/* 
.hot-deal-container .hot-deal-category.active {
    color: #2b96ed;
    font-weight: 600;
}

 */

.hot-deal-container .hot-deal-category:first-child {
    margin-left: 0;
    padding-left: 0;
}
.hot-deal-container .hot-deal-category {
    color: #848c94;
    margin: 0 6px;
    padding: 0 8px;
}
.hot-deal-select .select-wrapper {
    border: 1px solid #e9ecef;
    color: #848c94;
    font-size: 12px;
    height: 28px;
    line-height: 26px;
    padding-left: 16px;
    position: relative;
}
.hot-deal-select .select-wrapper .arrow-img {
    position: absolute;
    right: 10px;
    top: 11px;
}
img {
    border-width: 0;
    vertical-align: middle;
}
ul {
    list-style: none;
    margin: 0;
    padding: 0;
}
.hot-deal-select .select-list {
    -webkit-box-shadow: 0 1px 2px 0 rgba(0,0,0,0.2);
    box-shadow: 0 1px 2px 0 rgba(0,0,0,0.2);
    background-color: #fff;
    border: 1px solid #e9ecef;
    border-top: 0;
    display: none;
    padding: 4px 0;
}
.hot-deal-select .select-item {
    color: #848c94;
    display: block;
    font-size: 12px;
    line-height: 26px;
    padding-left: 16px;
    cursor: pointer;
}
.hot-deal-select .select-item.active {
    background-color: #f5f6f7;
    color: #495056;
}
.hot-deal-select {
    position: absolute;
    right: 0;
    top: 0;
    width: 84px;
    z-index: 36;
}
.hot-deal-container .hot-deal-content {
    margin: 0 0 96px;
    position: relative;
}
.offer-container.card-type.card-hot-deal .item-container {
    margin: -10px;
}
.offer-container.card-type.card-hot-deal {
    margin-bottom: 75px;
    padding: 0;
}
.offer-container.card-type.card-hot-deal .item {
    border-radius: 2px;
    height: 332px;
    margin: 7px;
    width: 250px;
}
.item-container .item {
    color: #fff;
    cursor: pointer;
    display: inline-block;
    margin: 10px;
    overflow: hidden;
    position: relative;
    vertical-align: middle;
}
.offer-container.card-type.card-hot-deal .img-container {
    background-color: #e9ecef;
    height: 187px;
    position: relative;
    z-index: -1;
}
.offer-container.card-type .img-container {
    height: 345px;
    overflow: hidden;
}
.offer-container.card-type.card-hot-deal .img-container img {
    width: 100%;
}
.offer-container.card-type.card-hot-deal .content-box {
    border: 0;
    height: 145px;
    padding: 8px 16px;
}
.offer-container.card-type.card-hot-deal .expiry-date {
    background-color: #025ba5;
    bottom: 0;
    color: #fff;
    display: inline-block;
    font-size: 12px;
    font-weight: 500;
    height: 28px;
    left: 0;
    line-height: 28px;
    padding: 0 16px;
    position: absolute;
    z-index: 10;
}
.offer-container.card-type.card-hot-deal .content-box .city-name {
    color: #848c94;
    font-size: 12px;
    height: 16px;
    letter-spacing: -.2px;
    margin-bottom: 2px;
}
.offer-container.card-type.card-hot-deal .content-box .name {
    color: #343a40;
    font-size: 15px;
    font-weight: 600;
    line-height: 20px;
    max-height: 40px;
}
.offer-container.card-type.card-hot-deal .content-box .review .text {
    display: inline-block;
    line-height: 18px;
    margin-left: 1px;
    vertical-align: middle;
}
.offer-container.card-type.card-hot-deal .content-box .price {
    bottom: auto;
    color: #666d75;
    font-size: 14px;
    font-weight: 500;
    position: relative;
    right: auto;
    line-height: 19px;
}
.offer-container.card-type.card-hot-deal .content-box .price .unit {
    float: none;
    margin-right: 1px;
}
.offer-container.card-type.card-hot-deal .content-box .review {
    color: #848c94;
    display: block;
    font-size: 12px;
    line-height: 19px;
    margin-bottom: 2px;
    position: relative;
}
.offer-container.card-type.card-hot-deal .content-box .inner-container {
    bottom: 12px;
    left: 16px;
    position: absolute;
    right: 16px;
}
.offer-container.card-type.card-hot-deal .content-box .review .rating-box {
    display: inline-block;
    vertical-align: middle;
}
.offer-container.card-type.card-hot-deal .content-box .review .icon {
    display: inline-block;
}
.rating-box .icon {
    background: url("//d2yoing0loi5gh.cloudfront.net/assets/kitty/offer/ic_star_list_set@2x-ec085f511f22c87de2b43c38a897cf854271b927e80d01ca9532daf644fb1506.png") no-repeat;
    background-position: 0 -22px;
    background-size: 12px 33px;
    display: block;
    float: left;
    height: 11px;
    margin: 0 .5px;
    padding: 0;
    width: 12px;
}
.rating-box .active {
    background-position: 0 0;
}
.rating-box .half {
    background-position: 0 -11px;
}
.offer-container.card-type.card-hot-deal .offer-link:before {
    -webkit-box-shadow: inset 0 0 0 1px rgba(0,0,0,0.16);
    box-shadow: inset 0 0 0 1px rgba(0,0,0,0.16);
    content: '';
    height: 100%;
    left: 0;
    position: absolute;
    top: 0;
    width: 100%;
}
.offer-container.card-type .name {
    color: #343a40;
    font-size: 16px;
    font-weight: 600;
    line-height: 20px;
    display: -webkit-box;
    text-overflow: ellipsis;
    -webkit-line-clamp: 2;
    -webkit-box-orient: vertical;
    word-wrap: break-word;
    overflow: hidden;
}
/* paging*/
.paging-list {
    display: table;
    margin: 75px auto 0;
    text-align: center;
    height: 42px;
}
.paging-list a:first-child, .paging-list .dot:first-child {
    border-left: 1px solid #e9ecef;
}
.paging-list a, .paging-list .dot {
    border: 1px solid #e9ecef;
    border-left: 0;
    color: #495056;
    display: table-cell;
    font-size: 14px;
    font-weight: 400;
    height: 40px;
    line-height : 40px;
    width: 42px;
}
.paging-list .page.active {
    background-color: #79bef5;
    color: #fff;
}
.paging-list .prev span, .paging-list .next span, .paging-list .first span, .paging-list .last span {
    display: block;
    height: 0;
    overflow: hidden;
}
.paging-list .page.active {
    background-color: #79bef5;
    color: #fff;
}
.paging-list .next.inactive {
    background: url(https://d2yoing0loi5gh.cloudfront.net/assets/kitty/paging/ic_first@2x-2c1475acf33c368f7a3f3a8872f927f1309ed66adc6991ac42e74b5f38cd7c00.png) no-repeat center center;
    background-size: 5px 7px;
}
.paging-list .first.active {
    background: url(https://d2yoing0loi5gh.cloudfront.net/assets/kitty/paging/ic_first@2x-2c1475a….png) no-repeat center center;
    background-size: 8px 7px;
}
.paging-list .last.active {
    background: url(https://d2yoing0loi5gh.cloudfront.net/assets/kitty/paging/ic_last@2x-5a3c496….png) no-repeat center center;
    background-size: 8px 7px;
}

.LnbLocalNavItem-module__item--3ZodT.LnbLocalNavItem-module__active--3-BID {
    opacity: 1!important;
}
</style>
<script>

var index = 0;   //이미지에 접근하는 인덱스
window.onload = function(){
    slideShow();
}

function slideShow() {
	var i;
	var x = document.getElementsByClassName("carousel-item");  
	for (i = 0; i < x.length; i++) {
	   x[i].style.display = "none";   //처음에 전부 display를 none으로 한다.
	}
	index++;
	if (index > x.length) {
	    index = 1;  //인덱스가 초과되면 1로 변경
	}   
	x[index-1].style.display = "block";  //해당 인덱스는 block으로
	setTimeout(slideShow, 3000); 

}


function changeSlide(n){
	slideIndex += n;
	slideIndex = slideIndex==0? 3
						:(slideIndex==4?1:slideIndex);
	showSlides(slideIndex);
}

function clickChange(n){
	slideIndex = n;
	showSlides(slideIndex);
}


</script>
<script>
   $(document).ready(
         function() {
            $(".LnbLocalNavItem-module__item--3ZodT").removeClass(
                  "LnbLocalNavItem-module__active--3-BID");
            $("#topIcon04").addClass(
                  "LnbLocalNavItem-module__active--3-BID");
            
         });
</script>
</head>
<body>
<jsp:include page="/WEB-INF/layout/top1.jsp"></jsp:include>


<div class="hot-deal-container">
<div class="hot-deal-header-container">
<a class="header-title" href="/offers/hot-deal">에어텔</a>
<div class="header-subtitle-container">
<div class="link-container"><a class="header-subtitle" href="/offers/hot-deal">에어텔 홈</a></div><a class="dropdown-btn" onclick="$('.header-dropdown').toggle();" id="areasDropdownOpen">
지역 선택
<img class="dropdown-img" height="16" src="https://d2yoing0loi5gh.cloudfront.net/assets/kitty/button/ic-rightarrow-small-gray-300-a90117c530d901fb4b3a7be42dd7bb56f6d66eca29daf6839ba26ca8a742c45f.svg" width="16">
</a>
<div class="header__locations-dropdown header-dropdown" id="areasDropdown" style="display:none">
<div class="header-dropdown-container hide-on-mobile">
<div class="header-dropdown-header">
<div class="title">방문할 도시 또는 나라를 선택하세요.</div>
<img class="areas-dropdown-close" onclick="$('.header-dropdown').hide();" data-box-close="" src="https://d2yoing0loi5gh.cloudfront.net/assets/kitty/accommodations/ic-close-darkgray-b2a78c549cbd189ea0a1f61b85d446e089438104a7d20125fe83a149254a1e2d.svg" width="24">
</div>
<div class="header-dropdown-wrapper"><div class="header-dropdown-item">
<a class="top-item" country-cities-bali-kotakinabalu-key-names="[&quot;Bali&quot;, &quot;KotaKinabalu&quot;]" country-cities-bali-kotakinabalu-name="코타키나발루/발리" country-cities-bali-kotakinabalu-type="CITY" country-cities-bangkok-pattaya-key-names="[&quot;Bangkok&quot;, &quot;Pattaya&quot;]" country-cities-bangkok-pattaya-name="방콕/파타야" country-cities-bangkok-pattaya-type="CITY" country-cities-boracay-key-names="[&quot;Boracay&quot;]" country-cities-boracay-name="보라카이" country-cities-boracay-type="CITY" country-cities-cebu-manila-key-names="[&quot;Cebu&quot;, &quot;Manila&quot;]" country-cities-cebu-manila-name="세부/마닐라" country-cities-cebu-manila-type="CITY" country-cities-danang-nhatrang-key-names="[&quot;Da Nang&quot;, &quot;Nha trang&quot;]" country-cities-danang-nhatrang-name="다낭/나트랑" country-cities-danang-nhatrang-type="CITY" country-cities-east-asia-etc-key-names="[&quot;Ko Samui&quot;, &quot;Khao Lak&quot;, &quot;Jakarta&quot;, &quot;Myanmar&quot;, &quot;Laos&quot;, &quot;Palawan&quot;, &quot;Penang&quot;, &quot;Langkawi&quot;, &quot;Johor Bahru&quot;, &quot;Angkor&quot;]" country-cities-east-asia-etc-name="기타" country-cities-east-asia-etc-type="CITY" country-cities-hanoi-hochimin-key-names="[&quot;Hanoi&quot;, &quot;Ho chi min&quot;]" country-cities-hanoi-hochimin-name="하노이/호치민" country-cities-hanoi-hochimin-type="CITY" country-cities-phuket-krabi-key-names="[&quot;Phuket&quot;, &quot;Krabi&quot;]" country-cities-phuket-krabi-name="푸켓/끄라비" country-cities-phuket-krabi-type="CITY" country-key-names="South-Eastern Asia" country-name="동남아" country-type="REGION" data-gtm-action="드롭다운 지역선택" data-gtm-category="에어텔_홈" data-gtm-label="동남아" href="/offers/hot-deal?area=east_asia">동남아</a>
<a city-key-names="[&quot;Bangkok&quot;, &quot;Pattaya&quot;]" city-name="방콕/파타야" city-type="CITY" class="sub-item" country-cities-bali-kotakinabalu-key-names="[&quot;Bali&quot;, &quot;KotaKinabalu&quot;]" country-cities-bali-kotakinabalu-name="코타키나발루/발리" country-cities-bali-kotakinabalu-type="CITY" country-cities-bangkok-pattaya-key-names="[&quot;Bangkok&quot;, &quot;Pattaya&quot;]" country-cities-bangkok-pattaya-name="방콕/파타야" country-cities-bangkok-pattaya-type="CITY" country-cities-boracay-key-names="[&quot;Boracay&quot;]" country-cities-boracay-name="보라카이" country-cities-boracay-type="CITY" country-cities-cebu-manila-key-names="[&quot;Cebu&quot;, &quot;Manila&quot;]" country-cities-cebu-manila-name="세부/마닐라" country-cities-cebu-manila-type="CITY" country-cities-danang-nhatrang-key-names="[&quot;Da Nang&quot;, &quot;Nha trang&quot;]" country-cities-danang-nhatrang-name="다낭/나트랑" country-cities-danang-nhatrang-type="CITY" country-cities-east-asia-etc-key-names="[&quot;Ko Samui&quot;, &quot;Khao Lak&quot;, &quot;Jakarta&quot;, &quot;Myanmar&quot;, &quot;Laos&quot;, &quot;Palawan&quot;, &quot;Penang&quot;, &quot;Langkawi&quot;, &quot;Johor Bahru&quot;, &quot;Angkor&quot;]" country-cities-east-asia-etc-name="기타" country-cities-east-asia-etc-type="CITY" country-cities-hanoi-hochimin-key-names="[&quot;Hanoi&quot;, &quot;Ho chi min&quot;]" country-cities-hanoi-hochimin-name="하노이/호치민" country-cities-hanoi-hochimin-type="CITY" country-cities-phuket-krabi-key-names="[&quot;Phuket&quot;, &quot;Krabi&quot;]" country-cities-phuket-krabi-name="푸켓/끄라비" country-cities-phuket-krabi-type="CITY" country-key-names="South-Eastern Asia" country-name="동남아" country-type="REGION" data-gtm-action="드롭다운 지역선택" data-gtm-category="에어텔_홈" data-gtm-label="방콕/파타야" href="/offers/hot-deal?area=bangkok_pattaya">방콕/파타야</a>
<a city-key-names="[&quot;Phuket&quot;, &quot;Krabi&quot;]" city-name="푸켓/끄라비" city-type="CITY" class="sub-item" country-cities-bali-kotakinabalu-key-names="[&quot;Bali&quot;, &quot;KotaKinabalu&quot;]" country-cities-bali-kotakinabalu-name="코타키나발루/발리" country-cities-bali-kotakinabalu-type="CITY" country-cities-bangkok-pattaya-key-names="[&quot;Bangkok&quot;, &quot;Pattaya&quot;]" country-cities-bangkok-pattaya-name="방콕/파타야" country-cities-bangkok-pattaya-type="CITY" country-cities-boracay-key-names="[&quot;Boracay&quot;]" country-cities-boracay-name="보라카이" country-cities-boracay-type="CITY" country-cities-cebu-manila-key-names="[&quot;Cebu&quot;, &quot;Manila&quot;]" country-cities-cebu-manila-name="세부/마닐라" country-cities-cebu-manila-type="CITY" country-cities-danang-nhatrang-key-names="[&quot;Da Nang&quot;, &quot;Nha trang&quot;]" country-cities-danang-nhatrang-name="다낭/나트랑" country-cities-danang-nhatrang-type="CITY" country-cities-east-asia-etc-key-names="[&quot;Ko Samui&quot;, &quot;Khao Lak&quot;, &quot;Jakarta&quot;, &quot;Myanmar&quot;, &quot;Laos&quot;, &quot;Palawan&quot;, &quot;Penang&quot;, &quot;Langkawi&quot;, &quot;Johor Bahru&quot;, &quot;Angkor&quot;]" country-cities-east-asia-etc-name="기타" country-cities-east-asia-etc-type="CITY" country-cities-hanoi-hochimin-key-names="[&quot;Hanoi&quot;, &quot;Ho chi min&quot;]" country-cities-hanoi-hochimin-name="하노이/호치민" country-cities-hanoi-hochimin-type="CITY" country-cities-phuket-krabi-key-names="[&quot;Phuket&quot;, &quot;Krabi&quot;]" country-cities-phuket-krabi-name="푸켓/끄라비" country-cities-phuket-krabi-type="CITY" country-key-names="South-Eastern Asia" country-name="동남아" country-type="REGION" data-gtm-action="드롭다운 지역선택" data-gtm-category="에어텔_홈" data-gtm-label="푸켓/끄라비" href="/offers/hot-deal?area=phuket_krabi">푸켓/끄라비</a>
<a city-key-names="[&quot;Boracay&quot;]" city-name="보라카이" city-type="CITY" class="sub-item" country-cities-bali-kotakinabalu-key-names="[&quot;Bali&quot;, &quot;KotaKinabalu&quot;]" country-cities-bali-kotakinabalu-name="코타키나발루/발리" country-cities-bali-kotakinabalu-type="CITY" country-cities-bangkok-pattaya-key-names="[&quot;Bangkok&quot;, &quot;Pattaya&quot;]" country-cities-bangkok-pattaya-name="방콕/파타야" country-cities-bangkok-pattaya-type="CITY" country-cities-boracay-key-names="[&quot;Boracay&quot;]" country-cities-boracay-name="보라카이" country-cities-boracay-type="CITY" country-cities-cebu-manila-key-names="[&quot;Cebu&quot;, &quot;Manila&quot;]" country-cities-cebu-manila-name="세부/마닐라" country-cities-cebu-manila-type="CITY" country-cities-danang-nhatrang-key-names="[&quot;Da Nang&quot;, &quot;Nha trang&quot;]" country-cities-danang-nhatrang-name="다낭/나트랑" country-cities-danang-nhatrang-type="CITY" country-cities-east-asia-etc-key-names="[&quot;Ko Samui&quot;, &quot;Khao Lak&quot;, &quot;Jakarta&quot;, &quot;Myanmar&quot;, &quot;Laos&quot;, &quot;Palawan&quot;, &quot;Penang&quot;, &quot;Langkawi&quot;, &quot;Johor Bahru&quot;, &quot;Angkor&quot;]" country-cities-east-asia-etc-name="기타" country-cities-east-asia-etc-type="CITY" country-cities-hanoi-hochimin-key-names="[&quot;Hanoi&quot;, &quot;Ho chi min&quot;]" country-cities-hanoi-hochimin-name="하노이/호치민" country-cities-hanoi-hochimin-type="CITY" country-cities-phuket-krabi-key-names="[&quot;Phuket&quot;, &quot;Krabi&quot;]" country-cities-phuket-krabi-name="푸켓/끄라비" country-cities-phuket-krabi-type="CITY" country-key-names="South-Eastern Asia" country-name="동남아" country-type="REGION" data-gtm-action="드롭다운 지역선택" data-gtm-category="에어텔_홈" data-gtm-label="보라카이" href="/offers/hot-deal?area=boracay">보라카이</a>
<a city-key-names="[&quot;Cebu&quot;, &quot;Manila&quot;]" city-name="세부/마닐라" city-type="CITY" class="sub-item" country-cities-bali-kotakinabalu-key-names="[&quot;Bali&quot;, &quot;KotaKinabalu&quot;]" country-cities-bali-kotakinabalu-name="코타키나발루/발리" country-cities-bali-kotakinabalu-type="CITY" country-cities-bangkok-pattaya-key-names="[&quot;Bangkok&quot;, &quot;Pattaya&quot;]" country-cities-bangkok-pattaya-name="방콕/파타야" country-cities-bangkok-pattaya-type="CITY" country-cities-boracay-key-names="[&quot;Boracay&quot;]" country-cities-boracay-name="보라카이" country-cities-boracay-type="CITY" country-cities-cebu-manila-key-names="[&quot;Cebu&quot;, &quot;Manila&quot;]" country-cities-cebu-manila-name="세부/마닐라" country-cities-cebu-manila-type="CITY" country-cities-danang-nhatrang-key-names="[&quot;Da Nang&quot;, &quot;Nha trang&quot;]" country-cities-danang-nhatrang-name="다낭/나트랑" country-cities-danang-nhatrang-type="CITY" country-cities-east-asia-etc-key-names="[&quot;Ko Samui&quot;, &quot;Khao Lak&quot;, &quot;Jakarta&quot;, &quot;Myanmar&quot;, &quot;Laos&quot;, &quot;Palawan&quot;, &quot;Penang&quot;, &quot;Langkawi&quot;, &quot;Johor Bahru&quot;, &quot;Angkor&quot;]" country-cities-east-asia-etc-name="기타" country-cities-east-asia-etc-type="CITY" country-cities-hanoi-hochimin-key-names="[&quot;Hanoi&quot;, &quot;Ho chi min&quot;]" country-cities-hanoi-hochimin-name="하노이/호치민" country-cities-hanoi-hochimin-type="CITY" country-cities-phuket-krabi-key-names="[&quot;Phuket&quot;, &quot;Krabi&quot;]" country-cities-phuket-krabi-name="푸켓/끄라비" country-cities-phuket-krabi-type="CITY" country-key-names="South-Eastern Asia" country-name="동남아" country-type="REGION" data-gtm-action="드롭다운 지역선택" data-gtm-category="에어텔_홈" data-gtm-label="세부/마닐라" href="/offers/hot-deal?area=cebu_manila">세부/마닐라</a>
<a city-key-names="[&quot;Da Nang&quot;, &quot;Nha trang&quot;]" city-name="다낭/나트랑" city-type="CITY" class="sub-item" country-cities-bali-kotakinabalu-key-names="[&quot;Bali&quot;, &quot;KotaKinabalu&quot;]" country-cities-bali-kotakinabalu-name="코타키나발루/발리" country-cities-bali-kotakinabalu-type="CITY" country-cities-bangkok-pattaya-key-names="[&quot;Bangkok&quot;, &quot;Pattaya&quot;]" country-cities-bangkok-pattaya-name="방콕/파타야" country-cities-bangkok-pattaya-type="CITY" country-cities-boracay-key-names="[&quot;Boracay&quot;]" country-cities-boracay-name="보라카이" country-cities-boracay-type="CITY" country-cities-cebu-manila-key-names="[&quot;Cebu&quot;, &quot;Manila&quot;]" country-cities-cebu-manila-name="세부/마닐라" country-cities-cebu-manila-type="CITY" country-cities-danang-nhatrang-key-names="[&quot;Da Nang&quot;, &quot;Nha trang&quot;]" country-cities-danang-nhatrang-name="다낭/나트랑" country-cities-danang-nhatrang-type="CITY" country-cities-east-asia-etc-key-names="[&quot;Ko Samui&quot;, &quot;Khao Lak&quot;, &quot;Jakarta&quot;, &quot;Myanmar&quot;, &quot;Laos&quot;, &quot;Palawan&quot;, &quot;Penang&quot;, &quot;Langkawi&quot;, &quot;Johor Bahru&quot;, &quot;Angkor&quot;]" country-cities-east-asia-etc-name="기타" country-cities-east-asia-etc-type="CITY" country-cities-hanoi-hochimin-key-names="[&quot;Hanoi&quot;, &quot;Ho chi min&quot;]" country-cities-hanoi-hochimin-name="하노이/호치민" country-cities-hanoi-hochimin-type="CITY" country-cities-phuket-krabi-key-names="[&quot;Phuket&quot;, &quot;Krabi&quot;]" country-cities-phuket-krabi-name="푸켓/끄라비" country-cities-phuket-krabi-type="CITY" country-key-names="South-Eastern Asia" country-name="동남아" country-type="REGION" data-gtm-action="드롭다운 지역선택" data-gtm-category="에어텔_홈" data-gtm-label="다낭/나트랑" href="/offers/hot-deal?area=danang_nhatrang">다낭/나트랑</a>
<a city-key-names="[&quot;Hanoi&quot;, &quot;Ho chi min&quot;]" city-name="하노이/호치민" city-type="CITY" class="sub-item" country-cities-bali-kotakinabalu-key-names="[&quot;Bali&quot;, &quot;KotaKinabalu&quot;]" country-cities-bali-kotakinabalu-name="코타키나발루/발리" country-cities-bali-kotakinabalu-type="CITY" country-cities-bangkok-pattaya-key-names="[&quot;Bangkok&quot;, &quot;Pattaya&quot;]" country-cities-bangkok-pattaya-name="방콕/파타야" country-cities-bangkok-pattaya-type="CITY" country-cities-boracay-key-names="[&quot;Boracay&quot;]" country-cities-boracay-name="보라카이" country-cities-boracay-type="CITY" country-cities-cebu-manila-key-names="[&quot;Cebu&quot;, &quot;Manila&quot;]" country-cities-cebu-manila-name="세부/마닐라" country-cities-cebu-manila-type="CITY" country-cities-danang-nhatrang-key-names="[&quot;Da Nang&quot;, &quot;Nha trang&quot;]" country-cities-danang-nhatrang-name="다낭/나트랑" country-cities-danang-nhatrang-type="CITY" country-cities-east-asia-etc-key-names="[&quot;Ko Samui&quot;, &quot;Khao Lak&quot;, &quot;Jakarta&quot;, &quot;Myanmar&quot;, &quot;Laos&quot;, &quot;Palawan&quot;, &quot;Penang&quot;, &quot;Langkawi&quot;, &quot;Johor Bahru&quot;, &quot;Angkor&quot;]" country-cities-east-asia-etc-name="기타" country-cities-east-asia-etc-type="CITY" country-cities-hanoi-hochimin-key-names="[&quot;Hanoi&quot;, &quot;Ho chi min&quot;]" country-cities-hanoi-hochimin-name="하노이/호치민" country-cities-hanoi-hochimin-type="CITY" country-cities-phuket-krabi-key-names="[&quot;Phuket&quot;, &quot;Krabi&quot;]" country-cities-phuket-krabi-name="푸켓/끄라비" country-cities-phuket-krabi-type="CITY" country-key-names="South-Eastern Asia" country-name="동남아" country-type="REGION" data-gtm-action="드롭다운 지역선택" data-gtm-category="에어텔_홈" data-gtm-label="하노이/호치민" href="/offers/hot-deal?area=hanoi_hochimin">하노이/호치민</a>
<a city-key-names="[&quot;Bali&quot;, &quot;KotaKinabalu&quot;]" city-name="코타키나발루/발리" city-type="CITY" class="sub-item" country-cities-bali-kotakinabalu-key-names="[&quot;Bali&quot;, &quot;KotaKinabalu&quot;]" country-cities-bali-kotakinabalu-name="코타키나발루/발리" country-cities-bali-kotakinabalu-type="CITY" country-cities-bangkok-pattaya-key-names="[&quot;Bangkok&quot;, &quot;Pattaya&quot;]" country-cities-bangkok-pattaya-name="방콕/파타야" country-cities-bangkok-pattaya-type="CITY" country-cities-boracay-key-names="[&quot;Boracay&quot;]" country-cities-boracay-name="보라카이" country-cities-boracay-type="CITY" country-cities-cebu-manila-key-names="[&quot;Cebu&quot;, &quot;Manila&quot;]" country-cities-cebu-manila-name="세부/마닐라" country-cities-cebu-manila-type="CITY" country-cities-danang-nhatrang-key-names="[&quot;Da Nang&quot;, &quot;Nha trang&quot;]" country-cities-danang-nhatrang-name="다낭/나트랑" country-cities-danang-nhatrang-type="CITY" country-cities-east-asia-etc-key-names="[&quot;Ko Samui&quot;, &quot;Khao Lak&quot;, &quot;Jakarta&quot;, &quot;Myanmar&quot;, &quot;Laos&quot;, &quot;Palawan&quot;, &quot;Penang&quot;, &quot;Langkawi&quot;, &quot;Johor Bahru&quot;, &quot;Angkor&quot;]" country-cities-east-asia-etc-name="기타" country-cities-east-asia-etc-type="CITY" country-cities-hanoi-hochimin-key-names="[&quot;Hanoi&quot;, &quot;Ho chi min&quot;]" country-cities-hanoi-hochimin-name="하노이/호치민" country-cities-hanoi-hochimin-type="CITY" country-cities-phuket-krabi-key-names="[&quot;Phuket&quot;, &quot;Krabi&quot;]" country-cities-phuket-krabi-name="푸켓/끄라비" country-cities-phuket-krabi-type="CITY" country-key-names="South-Eastern Asia" country-name="동남아" country-type="REGION" data-gtm-action="드롭다운 지역선택" data-gtm-category="에어텔_홈" data-gtm-label="코타키나발루/발리" href="/offers/hot-deal?area=bali_kotakinabalu">코타키나발루/발리</a>
<a city-key-names="[&quot;Ko Samui&quot;, &quot;Khao Lak&quot;, &quot;Jakarta&quot;, &quot;Myanmar&quot;, &quot;Laos&quot;, &quot;Palawan&quot;, &quot;Penang&quot;, &quot;Langkawi&quot;, &quot;Johor Bahru&quot;, &quot;Angkor&quot;]" city-name="기타" city-type="CITY" class="sub-item" country-cities-bali-kotakinabalu-key-names="[&quot;Bali&quot;, &quot;KotaKinabalu&quot;]" country-cities-bali-kotakinabalu-name="코타키나발루/발리" country-cities-bali-kotakinabalu-type="CITY" country-cities-bangkok-pattaya-key-names="[&quot;Bangkok&quot;, &quot;Pattaya&quot;]" country-cities-bangkok-pattaya-name="방콕/파타야" country-cities-bangkok-pattaya-type="CITY" country-cities-boracay-key-names="[&quot;Boracay&quot;]" country-cities-boracay-name="보라카이" country-cities-boracay-type="CITY" country-cities-cebu-manila-key-names="[&quot;Cebu&quot;, &quot;Manila&quot;]" country-cities-cebu-manila-name="세부/마닐라" country-cities-cebu-manila-type="CITY" country-cities-danang-nhatrang-key-names="[&quot;Da Nang&quot;, &quot;Nha trang&quot;]" country-cities-danang-nhatrang-name="다낭/나트랑" country-cities-danang-nhatrang-type="CITY" country-cities-east-asia-etc-key-names="[&quot;Ko Samui&quot;, &quot;Khao Lak&quot;, &quot;Jakarta&quot;, &quot;Myanmar&quot;, &quot;Laos&quot;, &quot;Palawan&quot;, &quot;Penang&quot;, &quot;Langkawi&quot;, &quot;Johor Bahru&quot;, &quot;Angkor&quot;]" country-cities-east-asia-etc-name="기타" country-cities-east-asia-etc-type="CITY" country-cities-hanoi-hochimin-key-names="[&quot;Hanoi&quot;, &quot;Ho chi min&quot;]" country-cities-hanoi-hochimin-name="하노이/호치민" country-cities-hanoi-hochimin-type="CITY" country-cities-phuket-krabi-key-names="[&quot;Phuket&quot;, &quot;Krabi&quot;]" country-cities-phuket-krabi-name="푸켓/끄라비" country-cities-phuket-krabi-type="CITY" country-key-names="South-Eastern Asia" country-name="동남아" country-type="REGION" data-gtm-action="드롭다운 지역선택" data-gtm-category="에어텔_홈" data-gtm-label="기타" href="/offers/hot-deal?area=east_asia_etc">기타</a>
</div><div class="header-dropdown-item">
<a class="top-item" country-cities-fukuoka-kyushu-key-names="[&quot;Fukuoka&quot;, &quot;Kyushu&quot;]" country-cities-fukuoka-kyushu-name="후쿠오카/큐슈" country-cities-fukuoka-kyushu-type="CITY" country-cities-japan-etc-key-names="[&quot;Tsushima&quot;, &quot;Nagoya&quot;, &quot;Nagasaki&quot;, &quot;Yokohama&quot;]" country-cities-japan-etc-name="대마도/기타" country-cities-japan-etc-type="CITY" country-cities-okinawa-key-names="okinawa" country-cities-okinawa-name="오키나와" country-cities-okinawa-type="CITY" country-cities-osaka-key-names="Osaka" country-cities-osaka-name="오사카" country-cities-osaka-type="CITY" country-cities-sapporo-key-names="Sapporo" country-cities-sapporo-name="북해도" country-cities-sapporo-type="CITY" country-cities-tokyo-key-names="Tokyo" country-cities-tokyo-name="도쿄" country-cities-tokyo-type="CITY" country-key-names="Japan" country-name="일본" country-type="COUNTRY" data-gtm-action="드롭다운 지역선택" data-gtm-category="에어텔_홈" data-gtm-label="일본" href="/offers/hot-deal?area=japan">일본</a>
<a city-key-names="Tokyo" city-name="도쿄" city-type="CITY" class="sub-item" country-cities-fukuoka-kyushu-key-names="[&quot;Fukuoka&quot;, &quot;Kyushu&quot;]" country-cities-fukuoka-kyushu-name="후쿠오카/큐슈" country-cities-fukuoka-kyushu-type="CITY" country-cities-japan-etc-key-names="[&quot;Tsushima&quot;, &quot;Nagoya&quot;, &quot;Nagasaki&quot;, &quot;Yokohama&quot;]" country-cities-japan-etc-name="대마도/기타" country-cities-japan-etc-type="CITY" country-cities-okinawa-key-names="okinawa" country-cities-okinawa-name="오키나와" country-cities-okinawa-type="CITY" country-cities-osaka-key-names="Osaka" country-cities-osaka-name="오사카" country-cities-osaka-type="CITY" country-cities-sapporo-key-names="Sapporo" country-cities-sapporo-name="북해도" country-cities-sapporo-type="CITY" country-cities-tokyo-key-names="Tokyo" country-cities-tokyo-name="도쿄" country-cities-tokyo-type="CITY" country-key-names="Japan" country-name="일본" country-type="COUNTRY" data-gtm-action="드롭다운 지역선택" data-gtm-category="에어텔_홈" data-gtm-label="도쿄" href="/offers/hot-deal?area=tokyo">도쿄</a>
<a city-key-names="Osaka" city-name="오사카" city-type="CITY" class="sub-item" country-cities-fukuoka-kyushu-key-names="[&quot;Fukuoka&quot;, &quot;Kyushu&quot;]" country-cities-fukuoka-kyushu-name="후쿠오카/큐슈" country-cities-fukuoka-kyushu-type="CITY" country-cities-japan-etc-key-names="[&quot;Tsushima&quot;, &quot;Nagoya&quot;, &quot;Nagasaki&quot;, &quot;Yokohama&quot;]" country-cities-japan-etc-name="대마도/기타" country-cities-japan-etc-type="CITY" country-cities-okinawa-key-names="okinawa" country-cities-okinawa-name="오키나와" country-cities-okinawa-type="CITY" country-cities-osaka-key-names="Osaka" country-cities-osaka-name="오사카" country-cities-osaka-type="CITY" country-cities-sapporo-key-names="Sapporo" country-cities-sapporo-name="북해도" country-cities-sapporo-type="CITY" country-cities-tokyo-key-names="Tokyo" country-cities-tokyo-name="도쿄" country-cities-tokyo-type="CITY" country-key-names="Japan" country-name="일본" country-type="COUNTRY" data-gtm-action="드롭다운 지역선택" data-gtm-category="에어텔_홈" data-gtm-label="오사카" href="/offers/hot-deal?area=osaka">오사카</a>
<a city-key-names="[&quot;Fukuoka&quot;, &quot;Kyushu&quot;]" city-name="후쿠오카/큐슈" city-type="CITY" class="sub-item" country-cities-fukuoka-kyushu-key-names="[&quot;Fukuoka&quot;, &quot;Kyushu&quot;]" country-cities-fukuoka-kyushu-name="후쿠오카/큐슈" country-cities-fukuoka-kyushu-type="CITY" country-cities-japan-etc-key-names="[&quot;Tsushima&quot;, &quot;Nagoya&quot;, &quot;Nagasaki&quot;, &quot;Yokohama&quot;]" country-cities-japan-etc-name="대마도/기타" country-cities-japan-etc-type="CITY" country-cities-okinawa-key-names="okinawa" country-cities-okinawa-name="오키나와" country-cities-okinawa-type="CITY" country-cities-osaka-key-names="Osaka" country-cities-osaka-name="오사카" country-cities-osaka-type="CITY" country-cities-sapporo-key-names="Sapporo" country-cities-sapporo-name="북해도" country-cities-sapporo-type="CITY" country-cities-tokyo-key-names="Tokyo" country-cities-tokyo-name="도쿄" country-cities-tokyo-type="CITY" country-key-names="Japan" country-name="일본" country-type="COUNTRY" data-gtm-action="드롭다운 지역선택" data-gtm-category="에어텔_홈" data-gtm-label="후쿠오카/큐슈" href="/offers/hot-deal?area=fukuoka_kyushu">후쿠오카/큐슈</a>
<a city-key-names="okinawa" city-name="오키나와" city-type="CITY" class="sub-item" country-cities-fukuoka-kyushu-key-names="[&quot;Fukuoka&quot;, &quot;Kyushu&quot;]" country-cities-fukuoka-kyushu-name="후쿠오카/큐슈" country-cities-fukuoka-kyushu-type="CITY" country-cities-japan-etc-key-names="[&quot;Tsushima&quot;, &quot;Nagoya&quot;, &quot;Nagasaki&quot;, &quot;Yokohama&quot;]" country-cities-japan-etc-name="대마도/기타" country-cities-japan-etc-type="CITY" country-cities-okinawa-key-names="okinawa" country-cities-okinawa-name="오키나와" country-cities-okinawa-type="CITY" country-cities-osaka-key-names="Osaka" country-cities-osaka-name="오사카" country-cities-osaka-type="CITY" country-cities-sapporo-key-names="Sapporo" country-cities-sapporo-name="북해도" country-cities-sapporo-type="CITY" country-cities-tokyo-key-names="Tokyo" country-cities-tokyo-name="도쿄" country-cities-tokyo-type="CITY" country-key-names="Japan" country-name="일본" country-type="COUNTRY" data-gtm-action="드롭다운 지역선택" data-gtm-category="에어텔_홈" data-gtm-label="오키나와" href="/offers/hot-deal?area=okinawa">오키나와</a>
<a city-key-names="Sapporo" city-name="북해도" city-type="CITY" class="sub-item" country-cities-fukuoka-kyushu-key-names="[&quot;Fukuoka&quot;, &quot;Kyushu&quot;]" country-cities-fukuoka-kyushu-name="후쿠오카/큐슈" country-cities-fukuoka-kyushu-type="CITY" country-cities-japan-etc-key-names="[&quot;Tsushima&quot;, &quot;Nagoya&quot;, &quot;Nagasaki&quot;, &quot;Yokohama&quot;]" country-cities-japan-etc-name="대마도/기타" country-cities-japan-etc-type="CITY" country-cities-okinawa-key-names="okinawa" country-cities-okinawa-name="오키나와" country-cities-okinawa-type="CITY" country-cities-osaka-key-names="Osaka" country-cities-osaka-name="오사카" country-cities-osaka-type="CITY" country-cities-sapporo-key-names="Sapporo" country-cities-sapporo-name="북해도" country-cities-sapporo-type="CITY" country-cities-tokyo-key-names="Tokyo" country-cities-tokyo-name="도쿄" country-cities-tokyo-type="CITY" country-key-names="Japan" country-name="일본" country-type="COUNTRY" data-gtm-action="드롭다운 지역선택" data-gtm-category="에어텔_홈" data-gtm-label="북해도" href="/offers/hot-deal?area=sapporo">북해도</a>
<a city-key-names="[&quot;Tsushima&quot;, &quot;Nagoya&quot;, &quot;Nagasaki&quot;, &quot;Yokohama&quot;]" city-name="대마도/기타" city-type="CITY" class="sub-item" country-cities-fukuoka-kyushu-key-names="[&quot;Fukuoka&quot;, &quot;Kyushu&quot;]" country-cities-fukuoka-kyushu-name="후쿠오카/큐슈" country-cities-fukuoka-kyushu-type="CITY" country-cities-japan-etc-key-names="[&quot;Tsushima&quot;, &quot;Nagoya&quot;, &quot;Nagasaki&quot;, &quot;Yokohama&quot;]" country-cities-japan-etc-name="대마도/기타" country-cities-japan-etc-type="CITY" country-cities-okinawa-key-names="okinawa" country-cities-okinawa-name="오키나와" country-cities-okinawa-type="CITY" country-cities-osaka-key-names="Osaka" country-cities-osaka-name="오사카" country-cities-osaka-type="CITY" country-cities-sapporo-key-names="Sapporo" country-cities-sapporo-name="북해도" country-cities-sapporo-type="CITY" country-cities-tokyo-key-names="Tokyo" country-cities-tokyo-name="도쿄" country-cities-tokyo-type="CITY" country-key-names="Japan" country-name="일본" country-type="COUNTRY" data-gtm-action="드롭다운 지역선택" data-gtm-category="에어텔_홈" data-gtm-label="대마도/기타" href="/offers/hot-deal?area=japan_etc">대마도/기타</a>
</div><div class="header-dropdown-item">
<a class="top-item" country-cities-guam-key-names="Guam" country-cities-guam-name="괌" country-cities-guam-type="COUNTRY" country-cities-saipan-palau-key-names="[&quot;Northern Mariana Islands&quot;, &quot;Palau&quot;]" country-cities-saipan-palau-name="사이판/팔라우" country-cities-saipan-palau-type="COUNTRY" country-cities-south-pacific-etc-key-names="[&quot;Australia&quot;, &quot;New Zealand&quot;]" country-cities-south-pacific-etc-name="호주/뉴질랜드/기타" country-cities-south-pacific-etc-type="COUNTRY" country-key-names="[&quot;Guam&quot;, &quot;Northern Mariana Islands&quot;, &quot;Palau&quot;, &quot;Australia&quot;, &quot;New Zealand&quot;]" country-name="괌/사이판/남태평양" country-type="COUNTRY" data-gtm-action="드롭다운 지역선택" data-gtm-category="에어텔_홈" data-gtm-label="괌/사이판/남태평양" href="/offers/hot-deal?area=guam_saipan_south_pacific">괌/사이판/남태평양</a>
<a city-key-names="Guam" city-name="괌" city-type="COUNTRY" class="sub-item" country-cities-guam-key-names="Guam" country-cities-guam-name="괌" country-cities-guam-type="COUNTRY" country-cities-saipan-palau-key-names="[&quot;Northern Mariana Islands&quot;, &quot;Palau&quot;]" country-cities-saipan-palau-name="사이판/팔라우" country-cities-saipan-palau-type="COUNTRY" country-cities-south-pacific-etc-key-names="[&quot;Australia&quot;, &quot;New Zealand&quot;]" country-cities-south-pacific-etc-name="호주/뉴질랜드/기타" country-cities-south-pacific-etc-type="COUNTRY" country-key-names="[&quot;Guam&quot;, &quot;Northern Mariana Islands&quot;, &quot;Palau&quot;, &quot;Australia&quot;, &quot;New Zealand&quot;]" country-name="괌/사이판/남태평양" country-type="COUNTRY" data-gtm-action="드롭다운 지역선택" data-gtm-category="에어텔_홈" data-gtm-label="괌" href="/offers/hot-deal?area=guam">괌</a>
<a city-key-names="[&quot;Northern Mariana Islands&quot;, &quot;Palau&quot;]" city-name="사이판/팔라우" city-type="COUNTRY" class="sub-item" country-cities-guam-key-names="Guam" country-cities-guam-name="괌" country-cities-guam-type="COUNTRY" country-cities-saipan-palau-key-names="[&quot;Northern Mariana Islands&quot;, &quot;Palau&quot;]" country-cities-saipan-palau-name="사이판/팔라우" country-cities-saipan-palau-type="COUNTRY" country-cities-south-pacific-etc-key-names="[&quot;Australia&quot;, &quot;New Zealand&quot;]" country-cities-south-pacific-etc-name="호주/뉴질랜드/기타" country-cities-south-pacific-etc-type="COUNTRY" country-key-names="[&quot;Guam&quot;, &quot;Northern Mariana Islands&quot;, &quot;Palau&quot;, &quot;Australia&quot;, &quot;New Zealand&quot;]" country-name="괌/사이판/남태평양" country-type="COUNTRY" data-gtm-action="드롭다운 지역선택" data-gtm-category="에어텔_홈" data-gtm-label="사이판/팔라우" href="/offers/hot-deal?area=saipan_palau">사이판/팔라우</a>
<a city-key-names="[&quot;Australia&quot;, &quot;New Zealand&quot;]" city-name="호주/뉴질랜드/기타" city-type="COUNTRY" class="sub-item" country-cities-guam-key-names="Guam" country-cities-guam-name="괌" country-cities-guam-type="COUNTRY" country-cities-saipan-palau-key-names="[&quot;Northern Mariana Islands&quot;, &quot;Palau&quot;]" country-cities-saipan-palau-name="사이판/팔라우" country-cities-saipan-palau-type="COUNTRY" country-cities-south-pacific-etc-key-names="[&quot;Australia&quot;, &quot;New Zealand&quot;]" country-cities-south-pacific-etc-name="호주/뉴질랜드/기타" country-cities-south-pacific-etc-type="COUNTRY" country-key-names="[&quot;Guam&quot;, &quot;Northern Mariana Islands&quot;, &quot;Palau&quot;, &quot;Australia&quot;, &quot;New Zealand&quot;]" country-name="괌/사이판/남태평양" country-type="COUNTRY" data-gtm-action="드롭다운 지역선택" data-gtm-category="에어텔_홈" data-gtm-label="호주/뉴질랜드/기타" href="/offers/hot-deal?area=south_pacific_etc">호주/뉴질랜드/기타</a>
</div><div class="header-dropdown-item">
<a class="top-item" country-cities-hongkong-key-names="Hong Kong" country-cities-hongkong-name="홍콩" country-cities-hongkong-type="COUNTRY" country-cities-macao-key-names="Macao" country-cities-macao-name="마카오" country-cities-macao-type="COUNTRY" country-cities-singapore-key-names="Singapore" country-cities-singapore-name="싱가포르" country-cities-singapore-type="COUNTRY" country-cities-taiwan-key-names="Taiwan, Province of China" country-cities-taiwan-name="대만" country-cities-taiwan-type="COUNTRY" country-key-names="[&quot;Hong Kong&quot;, &quot;Macao&quot;, &quot;Taiwan, Province of China&quot;, &quot;Singapore&quot;]" country-name="홍콩/대만/싱가포르" country-type="COUNTRY" data-gtm-action="드롭다운 지역선택" data-gtm-category="에어텔_홈" data-gtm-label="홍콩/대만/싱가포르" href="/offers/hot-deal?area=hongkong_taiwan">홍콩/대만/싱가포르</a>
<a city-key-names="Hong Kong" city-name="홍콩" city-type="COUNTRY" class="sub-item" country-cities-hongkong-key-names="Hong Kong" country-cities-hongkong-name="홍콩" country-cities-hongkong-type="COUNTRY" country-cities-macao-key-names="Macao" country-cities-macao-name="마카오" country-cities-macao-type="COUNTRY" country-cities-singapore-key-names="Singapore" country-cities-singapore-name="싱가포르" country-cities-singapore-type="COUNTRY" country-cities-taiwan-key-names="Taiwan, Province of China" country-cities-taiwan-name="대만" country-cities-taiwan-type="COUNTRY" country-key-names="[&quot;Hong Kong&quot;, &quot;Macao&quot;, &quot;Taiwan, Province of China&quot;, &quot;Singapore&quot;]" country-name="홍콩/대만/싱가포르" country-type="COUNTRY" data-gtm-action="드롭다운 지역선택" data-gtm-category="에어텔_홈" data-gtm-label="홍콩" href="/offers/hot-deal?area=hongkong">홍콩</a>
<a city-key-names="Macao" city-name="마카오" city-type="COUNTRY" class="sub-item" country-cities-hongkong-key-names="Hong Kong" country-cities-hongkong-name="홍콩" country-cities-hongkong-type="COUNTRY" country-cities-macao-key-names="Macao" country-cities-macao-name="마카오" country-cities-macao-type="COUNTRY" country-cities-singapore-key-names="Singapore" country-cities-singapore-name="싱가포르" country-cities-singapore-type="COUNTRY" country-cities-taiwan-key-names="Taiwan, Province of China" country-cities-taiwan-name="대만" country-cities-taiwan-type="COUNTRY" country-key-names="[&quot;Hong Kong&quot;, &quot;Macao&quot;, &quot;Taiwan, Province of China&quot;, &quot;Singapore&quot;]" country-name="홍콩/대만/싱가포르" country-type="COUNTRY" data-gtm-action="드롭다운 지역선택" data-gtm-category="에어텔_홈" data-gtm-label="마카오" href="/offers/hot-deal?area=macao">마카오</a>
<a city-key-names="Taiwan, Province of China" city-name="대만" city-type="COUNTRY" class="sub-item" country-cities-hongkong-key-names="Hong Kong" country-cities-hongkong-name="홍콩" country-cities-hongkong-type="COUNTRY" country-cities-macao-key-names="Macao" country-cities-macao-name="마카오" country-cities-macao-type="COUNTRY" country-cities-singapore-key-names="Singapore" country-cities-singapore-name="싱가포르" country-cities-singapore-type="COUNTRY" country-cities-taiwan-key-names="Taiwan, Province of China" country-cities-taiwan-name="대만" country-cities-taiwan-type="COUNTRY" country-key-names="[&quot;Hong Kong&quot;, &quot;Macao&quot;, &quot;Taiwan, Province of China&quot;, &quot;Singapore&quot;]" country-name="홍콩/대만/싱가포르" country-type="COUNTRY" data-gtm-action="드롭다운 지역선택" data-gtm-category="에어텔_홈" data-gtm-label="대만" href="/offers/hot-deal?area=taiwan">대만</a>
<a city-key-names="Singapore" city-name="싱가포르" city-type="COUNTRY" class="sub-item" country-cities-hongkong-key-names="Hong Kong" country-cities-hongkong-name="홍콩" country-cities-hongkong-type="COUNTRY" country-cities-macao-key-names="Macao" country-cities-macao-name="마카오" country-cities-macao-type="COUNTRY" country-cities-singapore-key-names="Singapore" country-cities-singapore-name="싱가포르" country-cities-singapore-type="COUNTRY" country-cities-taiwan-key-names="Taiwan, Province of China" country-cities-taiwan-name="대만" country-cities-taiwan-type="COUNTRY" country-key-names="[&quot;Hong Kong&quot;, &quot;Macao&quot;, &quot;Taiwan, Province of China&quot;, &quot;Singapore&quot;]" country-name="홍콩/대만/싱가포르" country-type="COUNTRY" data-gtm-action="드롭다운 지역선택" data-gtm-category="에어텔_홈" data-gtm-label="싱가포르" href="/offers/hot-deal?area=singapore">싱가포르</a>
</div><div class="header-dropdown-item">
<a class="top-item" country-cities-beijing-key-names="Beijing" country-cities-beijing-name="북경" country-cities-beijing-type="CITY" country-cities-china-etc-key-names="[&quot;Hangzhou&quot;, &quot;Qingdao&quot;, &quot;Zhangjiajie&quot;, &quot;Xian&quot;, &quot;Huangshan&quot;, &quot;Guilin&quot;, &quot;Xiamen&quot;, &quot;Ulaanbaatar&quot;]" country-cities-china-etc-name="기타" country-cities-china-etc-type="CITY" country-cities-hainan-key-names="Hainan" country-cities-hainan-name="하이난" country-cities-hainan-type="CITY" country-cities-shanghai-key-names="Shanghai" country-cities-shanghai-name="상해" country-cities-shanghai-type="CITY" country-key-names="China" country-name="중국" country-type="COUNTRY" data-gtm-action="드롭다운 지역선택" data-gtm-category="에어텔_홈" data-gtm-label="중국" href="/offers/hot-deal?area=china">중국</a>
<a city-key-names="Beijing" city-name="북경" city-type="CITY" class="sub-item" country-cities-beijing-key-names="Beijing" country-cities-beijing-name="북경" country-cities-beijing-type="CITY" country-cities-china-etc-key-names="[&quot;Hangzhou&quot;, &quot;Qingdao&quot;, &quot;Zhangjiajie&quot;, &quot;Xian&quot;, &quot;Huangshan&quot;, &quot;Guilin&quot;, &quot;Xiamen&quot;, &quot;Ulaanbaatar&quot;]" country-cities-china-etc-name="기타" country-cities-china-etc-type="CITY" country-cities-hainan-key-names="Hainan" country-cities-hainan-name="하이난" country-cities-hainan-type="CITY" country-cities-shanghai-key-names="Shanghai" country-cities-shanghai-name="상해" country-cities-shanghai-type="CITY" country-key-names="China" country-name="중국" country-type="COUNTRY" data-gtm-action="드롭다운 지역선택" data-gtm-category="에어텔_홈" data-gtm-label="북경" href="/offers/hot-deal?area=beijing">북경</a>
<a city-key-names="Shanghai" city-name="상해" city-type="CITY" class="sub-item" country-cities-beijing-key-names="Beijing" country-cities-beijing-name="북경" country-cities-beijing-type="CITY" country-cities-china-etc-key-names="[&quot;Hangzhou&quot;, &quot;Qingdao&quot;, &quot;Zhangjiajie&quot;, &quot;Xian&quot;, &quot;Huangshan&quot;, &quot;Guilin&quot;, &quot;Xiamen&quot;, &quot;Ulaanbaatar&quot;]" country-cities-china-etc-name="기타" country-cities-china-etc-type="CITY" country-cities-hainan-key-names="Hainan" country-cities-hainan-name="하이난" country-cities-hainan-type="CITY" country-cities-shanghai-key-names="Shanghai" country-cities-shanghai-name="상해" country-cities-shanghai-type="CITY" country-key-names="China" country-name="중국" country-type="COUNTRY" data-gtm-action="드롭다운 지역선택" data-gtm-category="에어텔_홈" data-gtm-label="상해" href="/offers/hot-deal?area=shanghai">상해</a>
<a city-key-names="Hainan" city-name="하이난" city-type="CITY" class="sub-item" country-cities-beijing-key-names="Beijing" country-cities-beijing-name="북경" country-cities-beijing-type="CITY" country-cities-china-etc-key-names="[&quot;Hangzhou&quot;, &quot;Qingdao&quot;, &quot;Zhangjiajie&quot;, &quot;Xian&quot;, &quot;Huangshan&quot;, &quot;Guilin&quot;, &quot;Xiamen&quot;, &quot;Ulaanbaatar&quot;]" country-cities-china-etc-name="기타" country-cities-china-etc-type="CITY" country-cities-hainan-key-names="Hainan" country-cities-hainan-name="하이난" country-cities-hainan-type="CITY" country-cities-shanghai-key-names="Shanghai" country-cities-shanghai-name="상해" country-cities-shanghai-type="CITY" country-key-names="China" country-name="중국" country-type="COUNTRY" data-gtm-action="드롭다운 지역선택" data-gtm-category="에어텔_홈" data-gtm-label="하이난" href="/offers/hot-deal?area=hainan">하이난</a>
<a city-key-names="[&quot;Hangzhou&quot;, &quot;Qingdao&quot;, &quot;Zhangjiajie&quot;, &quot;Xian&quot;, &quot;Huangshan&quot;, &quot;Guilin&quot;, &quot;Xiamen&quot;, &quot;Ulaanbaatar&quot;]" city-name="기타" city-type="CITY" class="sub-item" country-cities-beijing-key-names="Beijing" country-cities-beijing-name="북경" country-cities-beijing-type="CITY" country-cities-china-etc-key-names="[&quot;Hangzhou&quot;, &quot;Qingdao&quot;, &quot;Zhangjiajie&quot;, &quot;Xian&quot;, &quot;Huangshan&quot;, &quot;Guilin&quot;, &quot;Xiamen&quot;, &quot;Ulaanbaatar&quot;]" country-cities-china-etc-name="기타" country-cities-china-etc-type="CITY" country-cities-hainan-key-names="Hainan" country-cities-hainan-name="하이난" country-cities-hainan-type="CITY" country-cities-shanghai-key-names="Shanghai" country-cities-shanghai-name="상해" country-cities-shanghai-type="CITY" country-key-names="China" country-name="중국" country-type="COUNTRY" data-gtm-action="드롭다운 지역선택" data-gtm-category="에어텔_홈" data-gtm-label="기타" href="/offers/hot-deal?area=china_etc">기타</a>
</div><div class="header-dropdown-item">
<a class="top-item" country-cities-jeju-key-names="Jeju" country-cities-jeju-name="제주" country-cities-jeju-type="CITY" country-key-names="Korea, Republic of" country-name="대한민국" country-type="COUNTRY" data-gtm-action="드롭다운 지역선택" data-gtm-category="에어텔_홈" data-gtm-label="대한민국" href="/offers/hot-deal?area=korea">대한민국</a>
<a city-key-names="Jeju" city-name="제주" city-type="CITY" class="sub-item" country-cities-jeju-key-names="Jeju" country-cities-jeju-name="제주" country-cities-jeju-type="CITY" country-key-names="Korea, Republic of" country-name="대한민국" country-type="COUNTRY" data-gtm-action="드롭다운 지역선택" data-gtm-category="에어텔_홈" data-gtm-label="제주" href="/offers/hot-deal?area=jeju">제주</a>
</div><div class="header-dropdown-item">
<a class="top-item" country-cities-europe-key-names="[&quot;Eastern Europe / the Balkans&quot;, &quot;Northern Europe&quot;, &quot;Southern Europe / Turkey&quot;, &quot;Western Europe&quot;]" country-cities-europe-name="유럽" country-cities-europe-type="REGION" country-key-names="[&quot;Eastern Europe / the Balkans&quot;, &quot;Northern Europe&quot;, &quot;Southern Europe / Turkey&quot;, &quot;Western Europe&quot;]" country-name="유럽/미주/기타" country-type="REGION" data-gtm-action="드롭다운 지역선택" data-gtm-category="에어텔_홈" data-gtm-label="유럽/미주/기타" href="/offers/hot-deal?area=europe_america">유럽/미주/기타</a>
<a city-key-names="[&quot;Eastern Europe / the Balkans&quot;, &quot;Northern Europe&quot;, &quot;Southern Europe / Turkey&quot;, &quot;Western Europe&quot;]" city-name="유럽" city-type="REGION" class="sub-item" country-cities-europe-key-names="[&quot;Eastern Europe / the Balkans&quot;, &quot;Northern Europe&quot;, &quot;Southern Europe / Turkey&quot;, &quot;Western Europe&quot;]" country-cities-europe-name="유럽" country-cities-europe-type="REGION" country-key-names="[&quot;Eastern Europe / the Balkans&quot;, &quot;Northern Europe&quot;, &quot;Southern Europe / Turkey&quot;, &quot;Western Europe&quot;]" country-name="유럽/미주/기타" country-type="REGION" data-gtm-action="드롭다운 지역선택" data-gtm-category="에어텔_홈" data-gtm-label="유럽" href="/offers/hot-deal?area=europe">유럽</a>
</div></div>
</div>
</div>

</div>
</div>
<div class="banner-container">
<div class="carousel slide" data-ride="carousel" id="image-carousel">
<ol class="carousel-indicators">
<li class="" data-slide-to="0" data-target="#image-carousel"></li>
<li data-slide-to="1" data-target="#image-carousel" class=""></li>
<li data-slide-to="2" data-target="#image-carousel" class=""></li>
<li data-slide-to="3" data-target="#image-carousel" class=""></li>
<li data-slide-to="4" data-target="#image-carousel" class=""></li>
<li data-slide-to="5" data-target="#image-carousel" class=""></li>
<li data-slide-to="6" data-target="#image-carousel" class=""></li>
<li data-slide-to="7" data-target="#image-carousel" class="active"></li>
</ol>
<div class="carousel-inner" role="listbox">
<div class="carousel-item item">
<a data-gtm-action="롤링배너" data-gtm-category="에어텔_홈" data-gtm-label="default-1" href="https://www.myrealtrip.com/campaigns/airtelswisscoupon">
<img class="carousel-img hide-on-mobile" src="https://d2ur7st6jjikze.cloudfront.net/cms/191_original_1556525172.jpg?1556525172">
</a>
</div>
<div class="item carousel-item">
<a data-gtm-action="롤링배너" data-gtm-category="에어텔_홈" data-gtm-label="default-2" href="https://www.myrealtrip.com/offers/58191">
<img class="carousel-img hide-on-mobile" src="https://d2ur7st6jjikze.cloudfront.net/cms/203_original_1557480365.jpg?1557480365">
</a>
</div>
<div class="item carousel-item">
<a data-gtm-action="롤링배너" data-gtm-category="에어텔_홈" data-gtm-label="default-3" href="https://www.myrealtrip.com/offers/58188">
<img class="carousel-img hide-on-mobile" src="https://d2ur7st6jjikze.cloudfront.net/cms/679_original_1557735316.jpg?1557735316">
</a>
</div>
<div class="item carousel-item">
<a data-gtm-action="롤링배너" data-gtm-category="에어텔_홈" data-gtm-label="default-4" href="https://www.myrealtrip.com/offers/22579">
<img class="carousel-img hide-on-mobile" src="https://d2ur7st6jjikze.cloudfront.net/cms/570_original_1555057557.jpg?1555057557">
</a>
</div>
<div class="item carousel-item">
<a data-gtm-action="롤링배너" data-gtm-category="에어텔_홈" data-gtm-label="default-5" href="https://www.myrealtrip.com/offers/47132">
<img class="carousel-img hide-on-mobile" src="https://d2ur7st6jjikze.cloudfront.net/cms/759_original_1557299656.jpg?1557299656">
</a>
</div>
<div class="item carousel-item">
<a data-gtm-action="롤링배너" data-gtm-category="에어텔_홈" data-gtm-label="default-6" href="https://www.myrealtrip.com/offers/55273">
<img class="carousel-img hide-on-mobile" src="https://d2ur7st6jjikze.cloudfront.net/cms/572_original_1557807242.jpg?1557807242">
</a>
</div>
<div class="item carousel-item">
<a data-gtm-action="롤링배너" data-gtm-category="에어텔_홈" data-gtm-label="default-7" href="https://www.myrealtrip.com/offers/56984">
<img class="carousel-img hide-on-mobile" src="https://d2ur7st6jjikze.cloudfront.net/cms/564_original_1555915471.jpg?1555915471">
</a>
</div>
<div class="item carousel-item active">
<a data-gtm-action="롤링배너" data-gtm-category="에어텔_홈" data-gtm-label="default-8" href="https://www.myrealtrip.com/offers/31450">
<img class="carousel-img hide-on-mobile" src="https://d2ur7st6jjikze.cloudfront.net/cms/677_original_1557469570.jpg?1557469570">
</a>
</div>
</div>
<a class="left-release carousel-control" data-slide="prev" href="#image-carousel" role="button"></a>
<a class="right-release carousel-control" data-slide="next" href="#image-carousel" role="button"></a>
</div>

<div class="fixed-banner">
<a class="hide-on-tablet gtm-hot-deal-fixed" data-gtm-action="고정배너" data-gtm-category="에어텔_홈" href="https://www.myrealtrip.com/campaigns/airtelswisscoupon">
<img src="https://d2ur7st6jjikze.cloudfront.net/cms/68_original_1532314757.jpg?1532314757">
</a>
</div>
</div>


<div class="hot-deal-content">
<div class="hot-deal-category-container hide-on-mobile"><a class="hot-deal-category" id="all" href="<%=request.getContextPath() %>/airtellist.do?category=all">
전체
</a><a class="hot-deal-category" id="package" href="<%=request.getContextPath() %>/airtellist.do?category=package">
패키지 
</a><a class="hot-deal-category" id="airtel" href="<%=request.getContextPath() %>/airtellist.do?category=airtel">
에어텔
</a><a class="hot-deal-category" id="transport" href="<%=request.getContextPath() %>/airtellist.do?category=transport">
항공권/승선권
</a><a class="hot-deal-category" id="rentacar" href="<%=request.getContextPath() %>/airtellist.do?category=rentacar">
렌터카
</a><a class="hot-deal-category" id="accommodation" href="<%=request.getContextPath() %>/airtellist.do?category=accommodation">
숙박특가
</a></div>

<script>
	$(document).ready(function (){
	//	$('.select-wrapper').prepend( $('.select-list .active').text());
		$('option[value='+"${ param.order==null ? 'popular' : param.order }"+']').prop("selected","selected");
		$('.hot-deal-category[id=' + "${ param.category==null || param.category=='null' ? 'all' : param.category }"+']').css("color","#2b96ed");
		$('.hot-deal-category[id=' + "${ param.category==null || param.category=='null' ? 'all' : param.category }"+']').css("font-weight","600");
		$('.paging-list a[id='+"${ param.currentPage==null ? 1 : param.currentPage }"+']').addClass("active");
		
	});
</script>

<div class="hot-deal-select">
<select class="select-wrapper" name="select-type" onchange="location.href = '<%=request.getContextPath() %>/airtellist.do?category=<%=request.getParameter("category") %>&order=' + $('.select-wrapper').val()" >
<option selected="selected" value="popular">인기순</option>
<option value="reviews">후기순</option>
<option value="price">가격순</option>
<option value="recent">신상품순</option>
</select>
</div>
<div class="offer-container card-type card-hot-deal">
<ul class="item-container offer-item-container">

<!-- 상품 뿌리기!!!!!!!!!!!!!!!!!!!!!! -->

<c:forEach  items="${list}" var="dto">
<li class="item card-type-a" data-gtm-action="상품 리스트" data-gtm-category="에어텔_홈" data-gtm-label="35776" data-offer-id="35776" data-offer-type="HotDeal">
	<a class="wish" data-offer-id="35776" data-remote="true" rel="nofollow" data-method="put" href="/wishlists/35776.js"><div class="icon"></div>
	</a><div class="card-cover">
	<a class="offer-link" href="/offers/35776">
		<div class="img-container">
			<div class="expiry-date">사용 기간: ${dto.a_period_start } ~ ${dto.a_period_end }</div>
			<div class="img-placeholder">
				<img class="MRT-LazyImageLoader__indicator--kitty visible" data-src="https://d2ur7st6jjikze.cloudfront.net/offer_photos/35776/222076_medium_1548826114.jpg?1548826114" src="${dto.pic }">
			</div>
		</div>
		<div class="content-box">
			<div class="city-name">${ dto.typename} • ${dto.city_code }</div>
			<div class="name">${dto.p_name }</div>
			<div class="inner-container">
				<div class="review">
				 	<c:if test="${dto.count eq 0}">
					<img alt="review" class="icon" src="https://d2yoing0loi5gh.cloudfront.net/assets/kitty/offer/ic_reviewevent@2x-e0cd14bb5a469b7f06ef7a64136d6565713702aa206716d6c8bbacd00e71ef09.png" width="14">
					<div class="text font-blue">후기 이벤트</div>
				 	</c:if>
				 	<c:if test="${dto.count ne 0}">
					<div class="rating-box">
					<c:forEach begin="1" end="${dto.score }"><span class="icon active"></span></c:forEach>
					<c:if test="${ 0 < (dto.score % 1) && (dto.score % 1) <= 0.5}"><span class="icon half"></span></c:if>
					<c:if test="${ 0.5 < (dto.score % 1) }"><span class="icon active"></span></c:if>
					<c:if test="${ 0 eq dto.score % 1 &&  dto.score ne 5 }"><span class="icon"></span></c:if>
					<c:forEach begin="${dto.score+1 }" end="4"><span class="icon"></span></c:forEach>
					</div>
					<div class="text">후기 ${dto.count }개</div>
					</c:if>
				</div>
				<div class="price" data-offer-price="209,000원" itemprop="offers" itemscope="true" itemtype="http://schema.org/Offer">
					<span>${ dto.p_price }원</span>
					<span class="unit">/ 1인</span>
				</div>
			</div>
		</div>
	</a>
	</div>
</li>
</c:forEach>
</ul>
</div>
<c:if test="${ pages[2] ge 2}"> 			<!-- 수정해야함!!!!!!!!!!!!!!!!!!!!!!!  -->
<div class="paging-list">
<a class="inactive first" href="<%=request.getContextPath() %>/airtellist.do?category=<%=request.getParameter("category") %>&order=<%=request.getParameter("order") %>&currentPage=1">
<span>처음</span>
</a>
<a class="inactive prev">
<span>이전</span>
</a>
<c:forEach begin="${ pages[0] }" end="${ pages[1] }" varStatus="i">
<a class="page" id="${ i.index }" href="<%=request.getContextPath() %>/airtellist.do?category=<%=request.getParameter("category") %>&order=<%=request.getParameter("order") %>&currentPage=${i.count+pages[0]-1 }">${i.count+pages[0]-1 }</a>
</c:forEach>
<a class="next inactive" href="<%=request.getContextPath() %>/airtellist.do?category=<%=request.getParameter("category") %>&order=<%=request.getParameter("order") %>&currentPage=${(param.currentPage==null? 1 : param.currentPage) +1 }"><span>다음</span>
</a>
<a class="last" href="<%=request.getContextPath() %>/airtellist.do?category=<%=request.getParameter("category") %>&order=<%=request.getParameter("order") %>&currentPage=${pages[2] }"><span>마지막</span>
</a>
</div>
</c:if>
</div>
</div>
<jsp:include page="/WEB-INF/layout/bottom.jsp"></jsp:include>
</body>
</html>