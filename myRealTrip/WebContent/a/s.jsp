<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jsp/servlet class - LJE (2019. 6. 14.-오후 12:14:36)</title>
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
<div class='col-xs-12 top-buffer'></div>
<div class='col-xs-12'>
<div class='input-group col-xs-12 form-group' data-desc='<span class="font-weight-600">[구체적인 가격 설정시 주의사항]</span><br/><br/>• 증가 인원에 따른 할인율 적용할 경우 예시<br/>1인 120000원<br/>2인 100000원<br/>3인 80000원<br/><br/>• 투어 전체 비용을 지정해두었을 때 예시<br/>1인 120000원<br/>2인 60000원<br/>3인 40000원<br/><br/>[대표가격]으로는 전체 투어에 2명이 참가할 시의 1인당 가격이 보여집니다.<br/>'>
<div class='margin-bottom-15'>
<div class='radio-custom radio-primary clearfix'>
<input class='col-xs-1' id='priceMultipleRange' name='price_type' type='radio' value='multi'>
<label class='col-xs-12' for='priceMultipleRange'>
<div class='col-xs-12'>
<div class='widget widget-shadow widget-border'>
<div class='widget-header bg-cyan-100 blue-grey-500 padding-15 clearfix'>구체적인 가격 설정</div>
<div class='widget-body'>
<div class='price-container'>
<div class='row form-group'>
<div class='col-xs-3'>
<div class='control-label'>인원</div>
</div>
<div class='col-xs-5'>
<div class='control-label'>1인당 가격</div>
</div>
<div class='col-xs-3'>
<div class='control-label'>총 수익</div>
</div>
</div>
</div>
<ul class='list-group list-group-gap' id='multiplePriceList'>
<li class='list-group-item bg-blue-grey-100 clearfix form-group' id="cloneli">
<div class='col-md-3 col-xs-5'>
<input class='form-control' name='dp_people' type='number' value='1'>
</div>
<div class='col-md-5 col-xs-7'>
<div class='input-with-selectbox clearfix'>
<div class='col-xs-6 padding-0 form-group'>
<select class='form-control' name='pu_unit_m'>
<option value='USD ($)'>USD ($)</option>
<option value='TWD (NT$)'>TWD (NT$)</option>
<option value='THB (฿)'>THB (฿)</option>
<option value='RUB (pуб)'>RUB (pуб)</option>
<option value='NZD (NZ$)'>NZD (NZ$)</option>
<option value='MYR (RM)'>MYR (RM)</option>
<option selected value='KRW (₩)'>KRW (₩)</option>
<option value='JPY (¥)'>JPY (¥)</option>
<option value='HKD (HK$)'>HKD (HK$)</option>
<option value='GBP (￡)'>GBP (￡)</option>
<option value='EUR (€)'>EUR (€)</option>
<option value='DKK (DKK)'>DKK (DKK)</option>
<option value='NOK (NOK)'>NOK (NOK)</option>
<option value='CNY (¥)'>CNY (¥)</option>
<option value='CHF (CHF)'>CHF (CHF)</option>
<option value='CAD (CA$)'>CAD (CA$)</option>
<option value='AUD (AU$)'>AUD (AU$)</option>
<option value='SGD (S$)'>SGD (S$)</option>
<option value='PHP (₱)'>PHP (₱)</option>
</select>
</div>
<div class='col-xs-6 padding-0 form-group'>
<input class='form-control' name='dp_one' type='number' value='10000'>
</div>
</div>
</div>
<div class='col-md-3 col-xs-6'>
<div class='text profit'></div>
</div>
<!-- <div class='col-md-1 delete-container col-xs-6'>
<div class='delete-item text'>
<i id="deleteli" class='icon wb-close'></i>
</div>
</div> -->
</li>

</ul>
<div class='widget widget-border-dashed'>
<div class='widget-body' id='addPriceItem'>
<div class='text-center'>
<i class='fa fa-plus'></i>
<span class='padding-left-5'>인원 추가</span>
</div>
</div>
</div>

<script>
var n = 0;
$(document).ready(function(){
	$('#addPriceItem').on("click",function(){
					
			var clone=$('#cloneli').clone();
			clone.attr("id","b"+(++n));  
			var delbox = $("<div class='col-md-1 delete-container col-xs-6'>"
					+"<div class='delete-item text'>"
					+"<button class='icon wb-close deletei'>x</button>"
					+"</div>"
					+"</div>");
			clone.append(delbox);
			$("#multiplePriceList").append(clone);
			
	
	});
	
});
	 $(document).on("click",'.deletei' , function() {
		var r=$(this).parent().parent().parent();
		r.remove();
	 });
</script>
</body>
</html>