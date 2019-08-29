<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<style>
*{
box-sizing: border-box;
margin: 0;
padding: 0;
}
.topbar {
    margin-bottom: 26px;
    width: 100%;
    background-color: #fff;
    color: inherit;
    font-size: 16px;
}
.topbar__head {
    padding-top: 14px;
    padding-bottom: 14px;
    border-bottom: 1px solid #dee2e6;
}
.topbar__bottom {
    border-bottom: 1px solid #dee2e6;
}
.topbar-categories {
    display: block;
}
.topbar-categories {
    display: -webkit-box;
    display: -ms-flexbox;
    display: flex;
    -webkit-box-pack: center;
    -ms-flex-pack: center;
    justify-content: center;
    width: 100%;
    overflow-x: auto;
}
.topbar ul {
    margin-inline-start: 0px;
    margin-inline-end: 0px;
    padding-inline-start: 40px;
}
.topbar-categories__list {
    display: -webkit-box;
    display: -ms-flexbox;
    display: flex;
    list-style: none;
    margin-bottom: 0;
    -ms-flex-wrap: nowrap;
    flex-wrap: nowrap;
}
.topbar li {
    display: list-item;
    text-align: -webkit-match-parent;
    line-height: 1.5;
    padding-right: 20px;
    padding-left: 20px;
}
.topbar img{
	max-width: 100%;
    height: auto;
    vertical-align: middle;
}
.topbar-categories__item:first-child {
    padding-left: 0;
}
.topbar-categories__link {
    display: block;
    color: #666d75;
    padding-top: 13px;
    padding-bottom: 12px;
    border-bottom: 3px solid transparent;
    text-align: center;
    white-space: nowrap;
    letter-spacing: normal;
}
.topbar a{
text-decoration: none !important;
}
h1, h2, h3, h4, h5, h6, .h1, .h2, .h3, .h4, .h5, .h6, p, ul, ol {
    margin: 0 0 24px;
}
/**/
.topbar__head {
    padding: 14px 16px;
}
.topbar__nav {
	margin : 0 auto;
	width: 1060px;
    position: relative;
    display: -webkit-box;
    display: -ms-flexbox;
    display: flex;
    -webkit-box-align: center;
    -ms-flex-align: center;
    align-items: center;
    -ms-flex-wrap: wrap;
    flex-wrap: wrap;
    -webkit-box-pack: justify;
    -ms-flex-pack: justify;
    justify-content: space-between;
}
.logo {
    -ms-flex-negative: 0;
    flex-shrink: 0;
    float: none;
    margin: 0 20px 0 0;
}
.logo, .portal-logo {
    display: inline;
    float: left;
    margin: -3px 10px 0 -5px;
    text-align: center;
    width: auto;
}

.topbar__controls>b>a{
    color: #2b96ed !important;
    background-color: #e7f4fd !important;
    border-color: #e7f4fd !important;
}

 .topbar__controls>b>a{
    padding: 12px 16px 12px 16px;
    font-size: 14px;
    line-height: 1;
    border-radius: 4px;
    display: inline-block;
    margin-bottom: 0;
    border: 1px solid transparent;
    background-image: none;
    font-family: -apple-system, BlinkMacSystemFont, Malgun Gothic, "맑은고딕", Roboto, Helvetica, Arial, sans-serif;
    vertical-align: middle;
    text-align: center;
    letter-spacing: -0.2px;
    text-transform: uppercase;
    text-shadow: none !important;
    white-space: nowrap;
    font-weight: 700;
    cursor: pointer;
    transition: all 0.3s ease;
    -webkit-user-select: none;
    -moz-user-select: none;
    -ms-user-select: none;
    user-select: none;
    -ms-touch-action: manipulation;
    touch-action: manipulation;
    color: #fff;
}
.topbar__controls--logged-in{
background-color: rgb(231, 244, 253);
background-image: none;
border-bottom-color: rgb(231, 244, 253);
border-bottom-left-radius: 4px;
border-bottom-right-radius: 4px;
border-bottom-style: solid;
border-bottom-width: 1px;
border-image-outset: 0px;
border-image-repeat: stretch;
border-image-slice: 100%;
border-image-source: none;
border-image-width: 1;
border-left-color: rgb(231, 244, 253);
border-left-style: solid;
border-left-width: 1px;
border-right-color: rgb(231, 244, 253);
border-right-style: solid;
border-right-width: 1px;
border-top-color: rgb(231, 244, 253);
border-top-left-radius: 4px;
border-top-right-radius: 4px;
border-top-style: solid;
border-top-width: 1px;
box-sizing: border-box;
color: rgb(43, 150, 237);
cursor: pointer;
display: inline-block;
font-family: -apple-system, system-ui, "Malgun Gothic", 맑은고딕, Roboto, Helvetica, Arial, sans-serif;
font-size: 14px;
font-weight: 700;
height: 40px;
letter-spacing: -0.2px;
line-height: 14px;
margin-bottom: 0px;
padding-bottom: 12px;
padding-left: 16px;
padding-right: 16px;
padding-top: 12px;
text-align: center;
text-decoration-color: rgb(43, 150, 237);
text-decoration-line: none;
text-decoration-style: solid;
text-shadow: none;
text-size-adjust: 100%;
text-transform: uppercase;
touch-action: manipulation;
transition-delay: 0s;
transition-duration: 0.3s;
transition-property: all;
transition-timing-function: ease;
user-select: none;
vertical-align: middle;
white-space: nowrap;
/* width: 69.7344px; */
-webkit-box-direction: normal;
-webkit-font-smoothing: antialiased;
-webkit-tap-highlight-color: rgba(0, 0, 0, 0);
}
.topbar__controls--Question{
background-color: rgb(231, 244, 253);
background-image: none;
border-bottom-color: rgb(231, 244, 253);
border-bottom-left-radius: 4px;
border-bottom-right-radius: 4px;
border-bottom-style: solid;
border-bottom-width: 1px;
border-image-outset: 0px;
border-image-repeat: stretch;
border-image-slice: 100%;
border-image-source: none;
border-image-width: 1;
border-left-color: rgb(231, 244, 253);
border-left-style: solid;
border-left-width: 1px;
border-right-color: rgb(231, 244, 253);
border-right-style: solid;
border-right-width: 1px;
border-top-color: rgb(231, 244, 253);
border-top-left-radius: 4px;
border-top-right-radius: 4px;
border-top-style: solid;
border-top-width: 1px;
box-sizing: border-box;
color: rgb(43, 150, 237);
cursor: pointer;
display: inline-block;
font-family: -apple-system, system-ui, "Malgun Gothic", 맑은고딕, Roboto, Helvetica, Arial, sans-serif;
font-size: 14px;
font-weight: 700;
height: 40px;
letter-spacing: -0.2px;
line-height: 14px;
margin-bottom: 0px;
padding-bottom: 12px;
padding-left: 16px;
padding-right: 16px;
padding-top: 12px;
text-align: center;
text-decoration-color: rgb(43, 150, 237);
text-decoration-line: none;
text-decoration-style: solid;
text-shadow: none;
text-size-adjust: 100%;
text-transform: uppercase;
touch-action: manipulation;
transition-delay: 0s;
transition-duration: 0.3s;
transition-property: all;
transition-timing-function: ease;
user-select: none;
vertical-align: middle;
white-space: nowrap;
/* width: 69.7344px; */
-webkit-box-direction: normal;
-webkit-font-smoothing: antialiased;
-webkit-tap-highlight-color: rgba(0, 0, 0, 0);
}
</style>
<header class="topbar  topbar--no-search" data-topbar="">

  <div class="topbar__head">
    <div class="topbar__container">
      <div class="topbar__nav"> 
        <div class="topbar__wrapper">
          <a class="logo" href="<%= request.getContextPath()%>/myrealtrip/support/home.do">
            <img src="https://d2ur7st6jjikze.cloudfront.net/freshdesk_myrealtrip/Color.png" srcset="https://d2ur7st6jjikze.cloudfront.net/freshdesk_myrealtrip/Color.png 1x, https://d2ur7st6jjikze.cloudfront.net/freshdesk_myrealtrip/Color%402x.png 2x"
                    alt="">
          </a>
          <div class="topbar__search" data-topbar-search="">
            <form class="hc-search-form" autocomplete="off" action="/support/search" id="hc-search-form">
<input type="hidden" name="authenticity_token" value="GJvgU+9cfwNEKR8n+vejV+tIcsbh5BP+Cb8PboQ9fbQ="></form>
          </div>
        </div>
        <div class="topbar__controls">
         <div class="topbar__controls topbar__controls--Question">
         <a href="<%= request.getContextPath()%>/myRealTrip/support/solution/qnaList.do?cq_email=${ authUser.member_email }">문의내역</a>
         </div><div data-menu="" class="topbar__controls topbar__controls--logged-in">
          <!--20190516 by WeDoSoft -->
          <!--a class="btn btn-topbar" href="/support/tickets">문의 내역</a-->
         <c:if test="${ authUser eq null }">
           <a href="<%= request.getContextPath() %>/login.do">로그인</a>
         </c:if>
         <c:if test="${ authUser ne null }">
           <a href="<%= request.getContextPath() %>/logout.do">로그아웃</a>
         </c:if>
        </div>
        </div>
        
        
      </div>
    </div>
  </div>
  <div class="topbar__bottom">
    <div class="topbar__container">
      <nav class="topbar-categories">
        <ul class="topbar-categories__list">

          <li class="topbar-categories__item topbar-categories__item--">
            <a class="topbar-categories__link js-topbar-categories-link" href="<%=request.getContextPath() %>/myrealtrip/support/home.do?key=solution" data-category="0" id="10">자주 묻는 질문
            </a>
          </li>
            <li class="topbar-categories__item topbar-categories__item--43000360286" >
              <a class="topbar-categories__link js-topbar-categories-link" data-category="43000360286" href="<%=request.getContextPath() %>/myrealtrip/support/solution.do?ac_code=20" id="20">예약·변경·취소</a>
            </li>
            <li class="topbar-categories__item topbar-categories__item--43000360287">
              <a class="topbar-categories__link js-topbar-categories-link" data-category="43000360287" href="<%=request.getContextPath() %>/myrealtrip/support/solution.do?ac_code=30" id="30">가입·변경·탈퇴</a>
            </li>
            <li class="topbar-categories__item topbar-categories__item--43000360288">
              <a class="topbar-categories__link js-topbar-categories-link" data-category="43000360288" href="<%=request.getContextPath() %>/myrealtrip/support/solution.do?ac_code=40" id="40">이용·후기·혜택</a>
            </li>
            <li class="topbar-categories__item topbar-categories__item--43000360290">
              <a class="topbar-categories__link js-topbar-categories-link" data-category="43000360290" href="<%=request.getContextPath() %>/myrealtrip/support/solution.do?ac_code=50" id="50">실시간 항공</a>
            </li>
            <li class="topbar-categories__item topbar-categories__item--43000360289">
              <a class="topbar-categories__link js-topbar-categories-link" data-category="43000360289" href="<%=request.getContextPath() %>/myrealtrip/support/solution.do?ac_code=60" id="60">파트너</a>
            </li>
        </ul>
      </nav>
    </div>
  </div>
</header>