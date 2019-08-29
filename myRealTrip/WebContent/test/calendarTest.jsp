<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jsp/servlet class - LJE (2019. 5. 30.-오후 3:13:36)</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<link rel="stylesheet" type="text/css" href="">
<style>
</style>
<script>
   $(document).ready(function (){
   });
</script>
</head>
<body>
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
	
<script>
var c_month = 5;
var c_year = 2019;
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
</script>
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
</script>
</body>
</html>