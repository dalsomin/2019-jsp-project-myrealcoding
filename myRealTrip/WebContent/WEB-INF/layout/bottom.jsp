<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<style>
	.mrt-footer ul, .mrt-footer li{
		list-style: none;
		font-size: 0;
	}
	.mrt-footer a, .mrt-footer a:active, .mrt-footer a:hover, .mrt-footer a:link, .mrt-footer a:visited{
		text-decoration: none;
		color: #fff;
	}
	.mrt-footer .footer-copyright {
		color: #666d75;
		font-size:  12px;
		letter-spacing: normal;
		line-height: 1.5;
		margin: 0 15px;
		text-align: center;
	}
	.mrt-sitemap--desktop .sitemap__group{
		float: left;
		height: 100%;
		margin-right:  88px;
		text-align: left;
	}
	.mrt-sitemap--desktop .sitemap__group .sitemap__group--title{
		color: #fff;
		font-size: 14px;
		font-weight: 500;
		margin-bottom: 20px;
		opacity: .3;	
	}
	.mrt-sitemap--desktop{
		display: inline-block;
		margin-bottom: 40px;
	}
	.mrt-footer{
		background-color: #343a40;
		padding: 60px 0 20px;
		text-align: center;
		width: 100%;
		position: relative;
		text-align: center;
	}
	.Icon-module__layout--1eFuX{
		background: url(https://www.myrealtrip.com/webpack/e78f52c98d7fa4c4a50c96ef91c96164.svg) no-repeat 0 0/278px 88px;
	}
	.Icon-module__layout--1eFuX.Icon-module__facebook--2gpGc{
		width: 15px;
		height: 15px;
		background-position: -39px -60px;
	}
	.sitemap__group li{
		font-size: 14px;
		margin-bottom: 9px;
	}
	.SNSList-module__item--10PI-{
		margin: 0 3px;
		padding: 0 10px;
	}
	.mrt-footer .footer-copyright .tel-connect{
		color: #848c94;
		font-size: 12px;
	}
	.Icon-module__icon--1KmZ-{
		display: inline-block;
		vertical-align: middle;
	}
	.SNSList-module__list--HmjpK{
		width: 100%;
		display: flex;
		justify-content: center;
		align-items: center;
		margin-bottom: 40px;
	}
	.Icon-module__layout--1eFuX.Icon-module__instagram--1lOmp{
		width: 15px;
		height: 15px;
		background-position: -58px -60px;
	}
	.Icon-module__layout--1eFuX.Icon-module__naver--PViyp{
		width: 15px;
		height: 15px;
		background-position: -20px -60px;
	}
	.Icon-module__layout--1eFuX.Icon-module__email--34Tiv{
		width: 15px;
		height: 15px;
		background-position: -78px -60px;
	}
</style>
<div class="mrt-footer">
<div class="mrt-sitemap--desktop hide-on-mobile">
	<div class="sitemap__group">
		<h4 class="sitemap__group--title">ABOUT</h4>
		<ul class="site-map__item__container">
			<li class="site-map__item__box">
				<a href="#">회사소개</a>
			</li>
			<li class="site-map__item__box">
				<a href="#">채용</a>
			</li>
			<li class="site-map__item__box">
				<a href="#">이용방법</a>
			</li>
		</ul>
	</div>
	<div class="sitemap__group">
		<h4 class="sitemap__group--title">PARTNERSHIP</h4>
		<ul class="site-map__item__container">
			<li class="site-map__item__box">
				<a href="#">파트너 등록하기</a>
			</li>
			<li class="site-map__item__box">
				<a href="#">B2B 제휴 (여행사 전용)</a>
			</li>
			<li class="site-map__item__box">
				<a href="#">리얼가이드</a>
			</li>
			<li class="site-map__item__box">
				<a href="#">가이드 블로그</a>
			</li>
		</ul>
	</div>
	<div class="sitemap__group">
		<h4 class="sitemap__group--title">HELP</h4>
		<ul class="site-map__item__container">
			<li class="site-map__item__box">
				<a href="<%= request.getContextPath()%>/myrealtrip/support/home.do" target="_blank">고객 센터</a>
			</li>
			<li class="site-map__item__box">
				<a href="#">이용 약관</a>
			</li>
			<li class="site-map__item__box">
				<a href="#">개인정보 취급방침</a>
			</li>
			<li class="site-map__item__box">
				<a href="#">취소 및 환불 정책</a>
			</li>
			<li class="site-map__item__box">
				<a href="#">최저가 보장제</a>
			</li>
		</ul>
	</div>
</div>
<ul class="SNSList-module__list--HmjpK">
<li class="SNSList-module__item--10PI-">
	<a href="#" target="_blank" rel="noopener noreferrer">
		<span class="Icon-module__icon--1KmZ- Icon-module__layout--1eFuX Icon-module__facebook--2gpGc"></span>
	</a>
</li>
<li class="SNSList-module__item--10PI-">
	<a href="#" target="_blank" rel="noopener noreferrer">
		<span class="Icon-module__icon--1KmZ- Icon-module__layout--1eFuX Icon-module__instagram--1lOmp"></span>
	</a>
</li>
<li class="SNSList-module__item--10PI-">
	<a href="#" target="_blank" rel="noopener noreferrer">
		<span class="Icon-module__icon--1KmZ- Icon-module__layout--1eFuX Icon-module__naver--PViyp"></span>
	</a>	
</li>
<li class="SNSList-module__item--10PI-">
	<a href="#" target="_blank" rel="noopener noreferrer">
		<span class="Icon-module__icon--1KmZ- Icon-module__layout--1eFuX Icon-module__email--34Tiv"></span>
	</a>	
</li>
</ul>                                
<p class="footer-copyright">
	상호명 마이리얼트립 | 대표 : 이동건 | 개인정보책임자 : 류종민<br>
	사업자등록번호 : 209-81-55339 | 통신판매업신고번호 : 2019-서울서초-0260 | <a href="#" target="_blank" style="color: #666d75;">사업자정보확인</a><br>
	서울특별시 서초구 강남대로 327(서초동), 대륭서초타워 18층 (주)마이리얼트립<br>
	<span class="tel-connect">일반 전화문의 : 1670-8208</span> | 일반 이메일문의 : help@myrealtrip.com 운영시간(한국) 09:00 ~ 22:00, 주말/공휴일 포함.<br>
	<span class="tel-connect">항공권 전화문의 : 1670-8208</span> | 항공권 이메일문의 : flights@myrealtrip.com 운영시간(한국) 09:00 ~ 18:00, 주말/공휴일 포함.<br>
	<span class="tel-connect">마케팅/제휴 이메일문의</span> : marketing@myrealtrip.com 운영시간(한국) 09:00 ~ 18:00, 주말/공휴일 휴무<br>
	자사는 서울특별시관광협회 공제영업보증보험에 가입이 되어 있습니다.<br>
     마이리얼트립은 통신판매중개자이며 통신판매의 당사자가 아닙니다. 따라서 마이리얼트립은 상품·거래정보 및 거래에 대하여 책임을 지지 않습니다.<br>
</p>
</div>