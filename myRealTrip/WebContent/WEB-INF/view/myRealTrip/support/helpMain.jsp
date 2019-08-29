<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jsp/servlet class  (2019. 5. 17. - 오후 3:01:23)</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<link rel="stylesheet" type="text/css" href="" />
<style>
.hero-unit {
    position: relative;
    margin-top: -26px;
    margin-bottom: 48px;
}
.hero-unit__bg {
    background-image: url(https://d2ur7st6jjikze.cloudfront.net/freshdesk_myrealtrip/helpcenter_illustration_v2.png);
    background-repeat: no-repeat;
    background-size: auto 300px;
    background-position: 34% 100%;
    padding-top: 80px;
    padding-bottom: 100px;
    padding-left: 15px;
    padding-right: 15px;
    margin-left: auto;
    margin-right: auto;
}
.search-box--hero-unit {
    z-index: 2;
    margin: 0 auto;
    max-width: 580px;
}
.search-box {
    position: relative;
}
.intro-title {
    margin-bottom: 36px;
    text-align: center;
    font-weight: 700;
    font-size: 40px;
    line-height: 1.1;
}
.hc-search-input {
    width: 480px;
    float: left;
}
label {
    display: inline-block;
    margin-bottom: 12px;
    max-width: 100%;
    font-weight: 800;
}
.search-box--hero-unit .hc-search-input input[type="text"] {
    display: inline-block;
    padding: 0 55px !important;
    height: 48px;
    border: none !important;
    border-radius: 4px;
    transition: all 0.3s ease;
    box-shadow: 0 1px 4px 0 rgba(52,58,64,0.15), 0 0 1px 0 rgba(52,58,64,0.2);
}
.hc-search-input:before {
    position: absolute;
    top: 50%;
    left: 10px;
    -webkit-transform: translateY(-50%);
    transform: translateY(-50%);
    content: "";
    width: 24px;
    height: 24px;
    background-image: url(https://d2ur7st6jjikze.cloudfront.net/freshdesk_myrealtrip/gray-700%402x.png);
    background-repeat: no-repeat;
    background-size: 24px;
    margin: 0;
}
.search-box--hero-unit .hc-search-button {
    float: right;
}
.hc-search-input {
    position: relative;
}
input {
    text-rendering: auto;
    letter-spacing: normal;
    word-spacing: normal;
    text-transform: none;
    text-indent: 0px;
    text-shadow: none;
    text-align: start;
    cursor: text;
    width: 100%;
}
button.btn.btn-primary, .btn.btn-primary{
    color: #fff !important;
    background-color: #51abf3 !important;
    border-color: #51abf3 !important;
}
.hc-search-button .btn.btn-primary {
    border: 0;
    width: 100
    %;
    padding: 0;
    background-color: white;
}
.search-box--hero-unit .hc-search-button .btn {
    padding-right: 16px;
    padding-left: 16px;
    height: 48px;
    border-radius: 4px;
}
</style>
<script>
   $(document).ready(function (){
      
   });
</script>
</head>
<body>
<jsp:include page="/WEB-INF/layout/helpTop.jsp"></jsp:include>
<section class="hero-unit" data-hero-unit="">
          <div class="hero-unit__bg">
            <div class=" search-box search-box--hero-unit" data-search-box="">
              <div class="intro-title">무엇을 도와드릴까요?</div>
              <form class="hc-search-form" autocomplete="off" action="/support/search" id="hc-search-form">
	<div class="hc-search-input">
		<input placeholder="궁금한 내용, 질문, 오류상황 등 검색어를 입력하세요." type="text" name="term" class="special ui-autocomplete-input" value="" rel="page-search" data-max-matches="10" id="support-search-input" autocomplete="off">
	</div>
	<div class="hc-search-button">
		<button class="btn btn-primary" type="submit" autocomplete="off">
			<i class="mobile-icon-search hide-tablet"></i>
			<span class="hide-in-mobile">
				검색
			</span>
		</button>	
	</div>
<input type="hidden" name="authenticity_token" value="MxVlCBd47I4f8yzXedCxhkAovf0r0WIih/vpyTpSFAg="></form>
</div>
</div>
</section>
<!-- 
<div id="layout__content" style="height: 700px"></div>
 -->
 
</body>
</html>