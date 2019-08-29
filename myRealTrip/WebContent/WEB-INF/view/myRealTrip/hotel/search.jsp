<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>Insert title here</title>
<!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script> -->
 <!-- <link rel="stylesheet" href="//code.jquery.com/ui/1.11.0/themes/smoothness/jquery-ui.css"> -->
    <script src="//code.jquery.com/jquery-1.10.2.js"></script>
    <script src="//code.jquery.com/ui/1.11.0/jquery-ui.js"></script>
 <link rel="stylesheet" href="//code.jquery.com/ui/1.11.0/themes/smoothness/jquery-ui.css">
 <link rel="stylesheet" media="screen" href="https://d2yoing0loi5gh.cloudfront.net/webpack/0.06708f03e97ff8f5e67b.css" /> 
 <link rel="stylesheet" media="all" href="https://d2yoing0loi5gh.cloudfront.net/assets/kitty/application_template-5da62e3a802820a73815ac9769d004d04db514aa47276f57320c206cc043d2ac.css" />
 <link rel="stylesheet" media="all" href="https://d2yoing0loi5gh.cloudfront.net/assets/kitty/application-528570dd3e09ef23a61d6632bb99ce541f5d7126b025ea8a59f3e9a53c394359.css" />
 <link rel="stylesheet" media="screen" href="https://d2yoing0loi5gh.cloudfront.net/webpack/application.06708f03e97ff8f5e67b.css" />

</head>
<style>
.star:hover{
 background-color: :blue;
}
.mapsection{
    left: 265px;
    top: 0px;
    position: absolute;
    width: 100%;
    height: 100%;
} 
aside{
background-color: rgb(255, 255, 255);
box-shadow: rgba(33, 37, 41, 0.1) 1px 0px 2px 0px;	
box-sizing: border-box;
color: rgb(55, 58, 60);
display: block;
font-family: -apple-system, system-ui, "Malgun Gothic", "맑은 고딕", Roboto, Helvetica, Arial, sans-serif;
font-size: 10px;
height: 829px;
letter-spacing: -0.2px;
line-height: 15px;
outline-color: rgb(55, 58, 60);
outline-style: none;
outline-width: 0px;
overflow-y: auto;
padding-bottom: 24px;
padding-left: 24px;
padding-right: 24px;
padding-top: 24px;
text-size-adjust: 100%;
width: 265px;
-webkit-font-smoothing: antialiased;
-webkit-tap-highlight-color: rgba(0, 0, 0, 0);}
.Button-module__gray--1xOBg {
align-items: flex-start;
background-color: rgb(233, 236, 239);
border-bottom-color: rgb(73, 80, 86);
border-bottom-left-radius: 2px;
border-bottom-right-radius: 2px;
border-bottom-style: none;
border-bottom-width: 0px;
border-image-outset: 0px;
border-image-repeat: stretch;
border-image-slice: 100%;
border-image-source: none;
border-image-width: 1;
border-left-color: rgb(73, 80, 86);
border-left-style: none;
border-left-width: 0px;
border-right-color: rgb(73, 80, 86);
border-right-style: none;
border-right-width: 0px;
border-top-color: rgb(73, 80, 86);
border-top-left-radius: 2px;
border-top-right-radius: 2px;
border-top-style: none;
border-top-width: 0px;
box-sizing: border-box;
color: rgb(73, 80, 86);
cursor: pointer;
display: inline-block;
font-family: -apple-system, system-ui, "Malgun Gothic", "맑은 고딕", Roboto, Helvetica, Arial, sans-serif;
font-size: 14px;
font-stretch: 100%;
font-style: normal;
font-variant-caps: normal;
font-variant-east-asian: normal;
font-variant-ligatures: normal;
font-variant-numeric: normal;
font-weight: 700;
height: 40px;
letter-spacing: normal;
line-height: 40px;
margin-bottom: 0px;
margin-left: 0px;
margin-right: 0px;
margin-top: 0px;
outline-color: rgb(73, 80, 86);
outline-style: none;
outline-width: 0px;
overflow-x: visible;
overflow-y: visible;
padding-bottom: 0px;
padding-left: 16px;
padding-right: 16px;
padding-top: 0px;
position: relative;
text-align: center;
text-indent: 0px;
text-rendering: auto;
text-shadow: none;
text-size-adjust: 100%;
text-transform: none;
touch-action: manipulation;
transition-delay: 0s, 0s, 0s, 0s;
transition-duration: 0.1s, 0.1s, 0.1s, 0.1s;
transition-property: box-shadow, background-color, color, border-bottom;
transition-timing-function: ease-out, ease-out, ease-out, ease-out;
width: 217px;
word-spacing: 0px;
writing-mode: horizontal-tb;
-webkit-appearance: none;
-webkit-font-smoothing: antialiased;
-webkit-tap-highlight-color: rgba(0, 0, 0, 0);
-webkit-border-image: none;
}
h3{
font-size: 18px;
}
.star{
width: 40px;
height: 40px;
}
</style>
 <style>

.ui-state-default {
    border: 1px solid #d3d3d3;
    background: #e6e6e6 url(images/ui-bg_glass_75_e6e6e6_1x400.png) 50% 50% repeat-x;
    font-weight: normal;
    color: #555555;
}
.ui-slider-handle{
  background-color: red;
  width: 24px !important;
  height: 24px !important;
      margin-top: -8px;
        border: 1px solid #ced4da;
    box-shadow: 0 1px 4px 0 rgba(0,0,0,.1);
}
.ui-slider-range{
background: #51abf3 !inmportant;
}
.ui-state-default{
 background: white !important;
 border-radius: 50%;
}
#slider-range ,#slider-range-max{
   border: 0.1px solid #aaa !important ; 
width:100%;
height:4px;
background-color:#51abf3 !inmportant;
}
.ui-widget-header {
    border: 1px solid #51abf3 !important;
    background: #51abf3 !important ;
    color: #222222;
    font-weight: bold;
}
#amount2 ,#amount{

    font-size: 13px  !important;
    line-height: 16px  !important;
    margin-top: 8px  !important;
    font-weight:normal  !important;
    color: #848c94 !important;
}
.ui-widget-content {
    border: solid #aaa !important;
    background: #aaa;
    color: #222;
}
 </style>
 <style>
form{
 font-size: 16px;
 }
 .confac{
 
 padding: 6px;
 }
.gradeptag {
  font-size: 13px;
  font-color:#848c94 ;
  margin-top:10px;
}



 </style>

 <script>

 var minp = 0;
 var maxp = 400000;
 var min2=0;
 var max2=400000;
//
 var maxs=maxp; // 슬라이드 바 최소, 최고 맞춰주기 양 끝에 
 var mins=minp;

 var cnt=0;
 var locations;

    </script>
<body>
<!-- /jspPRO/myrealtrip/searchcity2.jsp -->

<aside class="" style="height: 878px;">
<!-- <form action="" >
<input type="text" name="search" />
<input type="submit" />
</form> -->

<header>
<h3>필터</h3>
<br />
<a href="">전체 초기화</a>
<br />
</header>
<br />
<hr>
<br />
<header>
<h3>평점</h3>
    <p class="scorep">
        <input type="text" id="amount" readonly style="border:0; color:#f6931f; font-weight:bold;" >
    </p>
  
</header>
<br />
<br />
    <div id="slider-range-max"></div>
<br />
<br />
<hr>
<br />
<header>
<h3>호텔 등급</h3>
<p  class="gradeptag">전체 등급</p>
</header><br>
<img  src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSI2MCIgaGVpZ2h0PSI1OCIgdmlld0JveD0iMCAwIDYwIDU4Ij4KICAgIDxnIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICAgICAgPHBhdGggc3Ryb2tlPSIjREVFMkU2IiBzdHJva2Utd2lkdGg9IjIiIGQ9Ik0xNS4xOTQgNTUuMjEzTDMwIDQ1LjcyMmwxNC44MDYgOS40OWExIDEgMCAwIDAgMS41MDgtMS4wOWwtNC4zOTUtMTcuMDg4TDU1LjQgMjYuMDcxYTEgMSAwIDAgMC0uNTY5LTEuNzc0bC0xNy4yOTQtMS4wOC02LjYwNC0xNy4wNDNhMSAxIDAgMCAwLTEuODY0IDBsLTYuNjA0IDE3LjA0My0xNy4yOTQgMS4wOGExIDEgMCAwIDAtLjU2OSAxLjc3NGwxMy40OCAxMC45NjMtNC4zOTUgMTcuMDg4YTEgMSAwIDAgMCAxLjUwOCAxLjA5eiIvPgogICAgICAgIDx0ZXh0IGZpbGw9IiNBREI1QkQiIGZvbnQtZmFtaWx5PSItYXBwbGUtc3lzdGVtLCBCbGlua01hY1N5c3RlbUZvbnQsICdNYWxndW4gR290aGljJywgJ+unkeydgCDqs6DrlJUnLCBSb2JvdG8sIEhlbHZldGljYSwgQXJpYWwsIHNhbnMtc2VyaWYiIGZvbnQtc2l6ZT0iMTYiIGZvbnQtd2VpZ2h0PSI1MDAiIGxldHRlci1zcGFjaW5nPSItLjUiIHRyYW5zZm9ybT0idHJhbnNsYXRlKDAgMSkiPgogICAgICAgICAgICA8dHNwYW4geD0iMjEiIHk9IjM4Ij4wPC90c3Bhbj4gPHRzcGFuIHg9IjMwLjYxMiIgeT0iMzgiPis8L3RzcGFuPgogICAgICAgIDwvdGV4dD4KICAgIDwvZz4KPC9zdmc+Cg==" alt="0등급 이상}" class="star" id="5" >
<img src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSI2MCIgaGVpZ2h0PSI1OCIgdmlld0JveD0iMCAwIDYwIDU4Ij4KICAgIDxnIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICAgICAgPHBhdGggc3Ryb2tlPSIjREVFMkU2IiBzdHJva2Utd2lkdGg9IjIiIGQ9Ik0xNS4xOTQgNTUuMjEzTDMwIDQ1LjcyMmwxNS4xMjUgOS42OTVhLjg1MS44NTEgMCAwIDAgMS4yODMtLjkyOEw0MS45MiAzNy4wMzQgNTUuNCAyNi4wNzFhMSAxIDAgMCAwLS41NjktMS43NzRsLTE3LjI5NC0xLjA4LTYuNjA0LTE3LjA0M2ExIDEgMCAwIDAtMS44NjQgMGwtNi42MDQgMTcuMDQzLTE3LjI5NCAxLjA4YTEgMSAwIDAgMC0uNTY5IDEuNzc0bDEzLjQ4IDEwLjk2My00LjM5NSAxNy4wODhhMSAxIDAgMCAwIDEuNTA4IDEuMDl6Ii8+CiAgICAgICAgPHRleHQgZmlsbD0iI0FEQjVCRCIgZm9udC1mYW1pbHk9Ii1hcHBsZS1zeXN0ZW0sIEJsaW5rTWFjU3lzdGVtRm9udCwgJ01hbGd1biBHb3RoaWMnLCAn66eR7J2AIOqzoOuUlScsIFJvYm90bywgSGVsdmV0aWNhLCBBcmlhbCwgc2Fucy1zZXJpZiIgZm9udC1zaXplPSIxNiIgZm9udC13ZWlnaHQ9IjUwMCIgdHJhbnNmb3JtPSJ0cmFuc2xhdGUoMCAxKSI+CiAgICAgICAgICAgIDx0c3BhbiB4PSIyNS43NDQiIHk9IjM4Ij4yPC90c3Bhbj4KICAgICAgICA8L3RleHQ+CiAgICA8L2c+Cjwvc3ZnPgo=" alt="2등급 이상}"class="star" id="2">
<img src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSI2MCIgaGVpZ2h0PSI1OCIgdmlld0JveD0iMCAwIDYwIDU4Ij4KICAgIDxnIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICAgICAgPHBhdGggc3Ryb2tlPSIjREVFMkU2IiBzdHJva2Utd2lkdGg9IjIiIGQ9Ik0xNS4xOTQgNTUuMjEzTDMwIDQ1LjcyMmwxNC44MDYgOS40OWExIDEgMCAwIDAgMS41MDgtMS4wOWwtNC4zOTUtMTcuMDg4TDU1LjQgMjYuMDcxYTEgMSAwIDAgMC0uNTY5LTEuNzc0bC0xNy4yOTQtMS4wOC02LjYwNC0xNy4wNDNhMSAxIDAgMCAwLTEuODY0IDBsLTYuNjA0IDE3LjA0My0xNy4yOTQgMS4wOGExIDEgMCAwIDAtLjU2OSAxLjc3NGwxMy40OCAxMC45NjMtNC4zOTUgMTcuMDg4YTEgMSAwIDAgMCAxLjUwOCAxLjA5eiIvPgogICAgICAgIDx0ZXh0IGZpbGw9IiNBREI1QkQiIGZvbnQtZmFtaWx5PSItYXBwbGUtc3lzdGVtLCBCbGlua01hY1N5c3RlbUZvbnQsICdNYWxndW4gR290aGljJywgJ+unkeydgCDqs6DrlJUnLCBSb2JvdG8sIEhlbHZldGljYSwgQXJpYWwsIHNhbnMtc2VyaWYiIGZvbnQtc2l6ZT0iMTYiIGZvbnQtd2VpZ2h0PSI1MDAiIHRyYW5zZm9ybT0idHJhbnNsYXRlKDAgMSkiPgogICAgICAgICAgICA8dHNwYW4geD0iMjUuNiIgeT0iMzgiPjM8L3RzcGFuPgogICAgICAgIDwvdGV4dD4KICAgIDwvZz4KPC9zdmc+Cg==" alt="3등급 이상}"class="star" id="3">
<img src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSI2MCIgaGVpZ2h0PSI1OCIgdmlld0JveD0iMCAwIDYwIDU4Ij4KICAgIDxnIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICAgICAgPHBhdGggc3Ryb2tlPSIjREVFMkU2IiBzdHJva2Utd2lkdGg9IjIiIGQ9Ik0xNS4xOTQgNTUuMjEzTDMwIDQ1LjcyMmwxNC44MDYgOS40OWExIDEgMCAwIDAgMS41MDgtMS4wOWwtNC4zOTUtMTcuMDg4TDU1LjQgMjYuMDcxYTEgMSAwIDAgMC0uNTY5LTEuNzc0bC0xNy4yOTQtMS4wOC02LjYwNC0xNy4wNDNhMSAxIDAgMCAwLTEuODY0IDBsLTYuNjA0IDE3LjA0My0xNy4yOTQgMS4wOGExIDEgMCAwIDAtLjU2OSAxLjc3NGwxMy40OCAxMC45NjMtNC4zOTUgMTcuMDg4YTEgMSAwIDAgMCAxLjUwOCAxLjA5eiIvPgogICAgICAgIDx0ZXh0IGZpbGw9IiNBREI1QkQiIGZvbnQtZmFtaWx5PSItYXBwbGUtc3lzdGVtLCBCbGlua01hY1N5c3RlbUZvbnQsICdNYWxndW4gR290aGljJywgJ+unkeydgCDqs6DrlJUnLCBSb2JvdG8sIEhlbHZldGljYSwgQXJpYWwsIHNhbnMtc2VyaWYiIGZvbnQtc2l6ZT0iMTYiIGZvbnQtd2VpZ2h0PSI1MDAiIHRyYW5zZm9ybT0idHJhbnNsYXRlKDAgMSkiPgogICAgICAgICAgICA8dHNwYW4geD0iMjQuMzc2IiB5PSIzOCI+NDwvdHNwYW4+CiAgICAgICAgPC90ZXh0PgogICAgPC9nPgo8L3N2Zz4K" alt="4등급 이상}"class="star" id="4">
<img src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSI2MCIgaGVpZ2h0PSI1OCIgdmlld0JveD0iMCAwIDYwIDU4Ij4KICAgIDxnIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICAgICAgPHBhdGggZmlsbD0iIzUxQUJGMyIgZD0iTTMwIDQ2LjkxbDE0LjI2NiA5LjE0NWEyIDIgMCAwIDAgMy4wMTctMi4xODJsLTQuMjM2LTE2LjQ2NyAxMi45ODMtMTAuNTZhMiAyIDAgMCAwLTEuMTM3LTMuNTQ3bC0xNi42NTYtMS4wNC02LjM3Mi0xNi40NDZhMiAyIDAgMCAwLTMuNzMgMEwyMS43NjMgMjIuMjYgNS4xMDcgMjMuM2EyIDIgMCAwIDAtMS4xMzcgMy41NDhsMTIuOTgzIDEwLjU1OS00LjIzNiAxNi40NjdhMiAyIDAgMCAwIDMuMDE3IDIuMTgyTDMwIDQ2LjkxeiIvPgogICAgICAgIDx0ZXh0IGZpbGw9IiNGRkYiIGZvbnQtZmFtaWx5PSItYXBwbGUtc3lzdGVtLCBCbGlua01hY1N5c3RlbUZvbnQsICdNYWxndW4gR290aGljJywgJ+unkeydgCDqs6DrlJUnLCBSb2JvdG8sIEhlbHZldGljYSwgQXJpYWwsIHNhbnMtc2VyaWYiIGZvbnQtc2l6ZT0iMTYiIGZvbnQtd2VpZ2h0PSI1MDAiIHRyYW5zZm9ybT0idHJhbnNsYXRlKDAgMSkiPgogICAgICAgICAgICA8dHNwYW4geD0iMjUuNDg4IiB5PSIzOCI+NTwvdHNwYW4+CiAgICAgICAgPC90ZXh0PgogICAgPC9nPgo8L3N2Zz4K" alt="5등급 이상}"class="star" id="5">
<br />
<br />
<hr />
<br/>
<header>
<h3>총 숙박 요금</h3>
    <p>
     <input type="text" id="amount2" readonly style="border:0; color:#f6931f; font-weight:bold;">
    </p>
</header>
<br />
<br>
    <div id="slider-range"></div><br>
    <hr />
    <br />
<h3>편의시설</h3> <br>
<form name="form" >
<input type="checkbox" name="confac" value="1" class="confac" onClick="getConfac(this.form);"/>와이파이<br>
<input type="checkbox" name="confac" value="2" class="confac"onClick="getConfac(this.form);"/>조식<br>
<input type="checkbox" name="confac" value="3" class="confac"onClick="getConfac(this.form);"/>공항셔틀<br>
<input type="checkbox" name="confac" value="4" class="confac"onClick="getConfac(this.form);"/>수영장<br>
<input type="checkbox" name="confac" value="5" class="confac"onClick="getConfac(this.form);"/>레스토랑<br>
<input type="checkbox" name="confac" value="6" class="confac"onClick="getConfac(this.form);"/>수하물보관<br>
<input type="checkbox" name="confac" value="7" class="confac"onClick="getConfac(this.form);"/>24시리셉션<br>
<input type="checkbox" name="confac" value="8" class="confac"onClick="getConfac(this.form);"/>피트니스<br>
<input type="checkbox" name="confac" value="9" class="confac"onClick="getConfac(this.form);"/>스파<br>
<input type="checkbox" name="confac" value="10" class="confac"onClick="getConfac(this.form);"/>비즈니스시설<br>
<input type="checkbox" name="confac" value="11" class="confac"onClick="getConfac(this.form);"/>주차<br>
<input type="checkbox" name="confac" value="12" class="confac"onClick="getConfac(this.form);"/>세탁<br>
</form>
<br>
</aside>
<section class="mapsection">
<div id="map" style="width:100%;height:100%;"></div> 

</section>
  <script>
  
//편의시설 체크옵션 클릭 했을 떄 
function getConfac(frm){

	 initMap(frm);
}
<%-- 
    var  cityLocation ;
    
    // 맵 좌표 ajax
   <%
   String searchCity = request.getParameter("search");
   %>
    alert("<%=searchCity %>");
  var searchW =  {searchW : "<%=searchCity %>"  }  ;
 // alert(searchW);
   $.ajax({
   	type:"get",
       url:"/jspPRO/myrealtrip/searchCityAjax.jsp?searchW=<%=searchCity %>",
       dataType:"json",
       async:false,
      // data : searchW,'
       success:function(data){
         
       	cityLocation = data;
       	console.log(cityLocation[0]);
       }
   	
   	
   }) ;
 --%>
   var params;
	 var star = 5;
	 
	 // 호텔 가격 디폴트 
	 var h_price = 0;
	 // confacs 디폴트 
	 var confacs = ['1','2','3','4','5','6','7','8','9','10','11','12'];
	
	 //콜백함수 
	var click = false;
	
	$(".star").on("click",function(){
		click = !click;
		alert(click)
	})
	
function initMap(frm) {
 //	console.log(cityLocation[0]);
         var map = new google.maps.Map(document.getElementById('map'), {
          zoom: 15,
          center: {lat: ${ dto.lat }, lng: ${dto.lng} }  ,
          mapTypeId: google.maps.MapTypeId.ROADMAP
        });

       
        var labels = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ' ;
        var infoWin = new google.maps.InfoWindow();
        
    
google.maps.event.addListener(map, 'tilesloaded', function() {
	
	   
    SWlongitude   = map.getBounds().getSouthWest().lng();
    SWlatitude    = map.getBounds().getSouthWest().lat();
    NElongitude   = map.getBounds().getNorthEast().lng();
    NElatitude    = map.getBounds().getNorthEast().lat();
    zoomLevel = map.getZoom();
    //do whatever you want with those bounds
  console.log("zoom :"+ zoomLevel);
      
      var ckConfac = $("input:checkbox[class=confac]").is(":checked") ;
    
     //  console.log(params);
      
      // confac 체크박스 체 하나도 안 된 상태면 
      if (ckConfac == false && click == false) {
   	 
    jQuery.ajax({
       type:"get",
       url:"/myRealTrip/googleMapAjax/ajaxDB2.jsp",
       dataType:"json",
       data :{"SWlng":SWlongitude,
	         "SWlat":SWlatitude,
	         "NElng":NElongitude,
	         "NElat":NElatitude,
	         "min":mins,
	         "max":maxs},
       async:false,
       success:function(data){
       
           locations = data;
           
           console.log(data);
           minp = data[0].min;
           maxp = data[0].max;
          
       }

   });   
    
    
    
    minp = locations[0].min;
    maxp = locations[0].max;
    min2 = locations[0].min2;
    max2 = locations[0].max2;
	
	

   // console.log(maxp);
   
		
      }else if(ckConfac == true ){
   alert(click);
    		  confacs =  new Array();
    		//alert(frm.confac.length);
    		 var count = frm.confac.length;
    		// alert(count);
    		 //  confacs = new Array();
    		 for(var i=0; i < count; i++ ){
    		       if( frm.confac[i].checked == true ){
    			    confacs.push(frm.confac[i].value);
    			  //  confacs2.push(frm.confac[i].value);
    		       }
    		   }
    		 console.log(confacs);
    		 var param ={"confacs": confacs,
    				     "star":star,
    				   //  "h_price":h_price,
    				     "SWlng":SWlongitude,
    			         "SWlat":SWlatitude,
    			         "NElng":NElongitude,
    			         "NElat":NElatitude,
    			         "min":mins,
    			         "max":maxs}
    		 //잘 넘겨졌다. 
    		 console.log(param);
    		 
    		 //
    		 $.ajax({
    			 type:"post",
    		        url:"/myRealTrip/googleMapAjax/confacFilterAjax.jsp",
    		        dataType:"json",
    		        data : param,
    		      //  cache: false,
    		        async:false,
    		        success:function(data){
    		          //  console.log(data);
    		            locations = data;
    		            console.log(locations);// locations 에도 잘 담아 지는데..???? 
    		            		//Q.한 번 찍혀진 마크는 지워지지 않는다. 다시 initmap() 을 실행시켜야 할거 같다. 
    		            		// => 기존의 마커들을 다 지워야 한다? 갱신해야함? 어떻게..?
    		            
    		            				
    		        }
    		 
    		 })
    		 
      }else{

    	  $(".star").on("click",function(){
    	  	//alert("star!")
    	  	//1번 클릭하면 전체..5 <= ?
    	      // 클릭한 id 값 넘겨줌 
    	      alert(confacs);
    	       star = $(this).attr("id");
    	  	 $.ajax({
    	  		 type:"post",
    	  	        url:"/myRealTrip/googleMapAjax/confacFilterAjax.jsp",
    	  	        dataType:"json",
    	  	        data : {"star":star,
    	  	        	"confacs": confacs,
    	  	        	//"h_price":h_price,
    	  	        	  "SWlng":SWlongitude,
    	  			         "SWlat":SWlatitude,
    	  			         "NElng":NElongitude,
    	  			         "NElat":NElatitude,
    	  			         "min":mins,
    	  			         "max":maxs},
    	  	      //  cache: false,
    	  	        async:false,
    	  	        success:function(data){
    	  	          //  console.log(data);
    	  	            locations = data;
    	  	            console.log(locations);
    	  	            
    	  	        }
    	  	 
    	  	 })
    	  	 
    	  	 initMap(frm);
    	  	 
    	  	
    	   }) 
    	   
      }
 	// 마커 생성 
        var markers = locations.map(function(locations, i) {
        	// 반복해서 마크를 만드는 작업 
           var marker = new google.maps.Marker({
            position: locations,
            label: labels[i % labels.length] 
           // title : "<div class='HotelMapMarker-module__container--H4y1W'><span class='HotelMapMarker-module__rating--1M7Aw'>8.8</span><span class='HotelMapMarker-module__price--1vqI2'>2341원</span><div class='HotelMapMarker-module__info-window--1Ymge'></div></div>"
            //icon : locations.h_price
          }); 
        	//마커 클릭하면 정보창 띄우기 
           google.maps.event.addListener(marker, 'click', function(evt) {
        	 

        	   
 		      infoWin.setContent( "<div><div><img src='"+locations.h_pic+"'></div><div  style='float:left;'><h2>"+locations.h_engname+"</h2><p>"+locations.h_grade+"등급</p><p>후기 갯수</p><h1>가격<span>"+locations.h_price+"원</span></h1></div></div>");
 		      infoWin.open(map, marker);
 		      
 		    })
 		    return marker;
        });
        
       
        
       
         var markerCluster = new MarkerClusterer(map, markers,
              {imagePath: 'https://developers.google.com/maps/documentation/javascript/examples/markerclusterer/m'}); 
         
         
           // console.log(params);
		  
   			// 
   			 
   
     

$(".star").on("click",function(){
	//alert("star!")
	//1번 클릭하면 전체..5 <= ?
    // 클릭한 id 값 넘겨줌 
    alert(confacs);
     star = $(this).attr("id");
	 $.ajax({
		 type:"post",
	        url:"/myRealTrip/googleMapAjax/confacFilterAjax.jsp",
	        dataType:"json",
	        data : {"star":star,
	        	"confacs": confacs,
	        	//"h_price":h_price,
	        	  "SWlng":SWlongitude,
			         "SWlat":SWlatitude,
			         "NElng":NElongitude,
			         "NElat":NElatitude,
			         "min":mins,
			         "max":maxs},
	      //  cache: false,
	        async:false,
	        success:function(data){
	          //  console.log(data);
	            locations = data;
	            console.log(locations);
	            
	        }
	 
	 })
	 
	 initMap(frm);
	 
	
 }) 
 
 $("#slider-range").on("mouseup",function(){
	
	 $.ajax({
		 type:"post",
	        url:"/myRealTrip/googleMapAjax/confacFilterAjax.jsp",
	        dataType:"json",
	        data : {"star":star,
	        	"confacs": confacs,
	        //	"h_price":h_price,
	        	  "SWlng":SWlongitude,
			         "SWlat":SWlatitude,
			         "NElng":NElongitude,
			         "NElat":NElatitude,
			         "min":mins,
			         "max":maxs},
	      //  cache: false,
	        async:false,
	        success:function(data){
	          //  console.log(data);
	            locations = data;
	            console.log(locations);
	            
	        }
	 
	 })
	 
	 initMap(frm);
  })
//  alert(minp);		
// 총 가격 계산
$("#slider-range").slider({
    range: true,
    min: min2,
    max: max2,
    values: [mins, maxs],
    slide: function(event, ui) {
        $("#amount2").val("$" + ui.values[0] + " - $" + ui.values[1]);
       mins = ui.values[0];
       maxs = ui.values[1];
    }
});

	
	console.log(mins);
	console.log(maxs);

	
$("#amount2").val("$" + $("#slider-range").slider("values", 0) + " - $" + $("#slider-range").slider("values", 1));
 
    });// bounds_changed 
 }  //init()
      

 
 //평점 계산
  $("#slider-range-max").slider({
                range: "max",
                min: 0.5,
                max: 10,
                value: 0.0,
                slide: function(event, ui) {
                    $("#amount").val(ui.value + " 이상");
                }
            });
 //$("#slider-range-max").slider("value")+" 이상"
            $("#amount").val("0점 - 10점 ");
 

</script>
 <script src="https://developers.google.com/maps/documentation/javascript/examples/markerclusterer/markerclusterer.js"> 
    </script>
 <script async defer
    src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBd3AEpRuYNo5NnomHPAXXRCyXxgtYzz3g&callback=initMap">
    </script>
</body>
</html>