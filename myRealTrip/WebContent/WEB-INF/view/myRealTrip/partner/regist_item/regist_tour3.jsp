<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html
    class="js flexbox canvas canvastext webgl no-touch geolocation postmessage websqldatabase indexeddb hashchange history draganddrop websockets rgba hsla multiplebgs backgroundsize borderimage borderradius boxshadow textshadow opacity cssanimations csscolumns cssgradients cssreflections csstransforms csstransforms3d csstransitions fontface generatedcontent video audio localstorage sessionstorage webworkers applicationcache svg inlinesvg smil svgclippaths js-menubar"
    lang="en" style="">

<head>
    <style type="text/css">
        .turbolinks-progress-bar {
            position: fixed;
            display: block;
            top: 0;
            left: 0;
            height: 3px;
            background: #0076ff;
            z-index: 9999;
            transition: width 300ms ease-out, opacity 150ms 150ms ease-in;
            transform: translate3d(0, 0, 0);
        }
    </style>

    <link rel="stylesheet" media="all" href="/myRealTrip/css/app_template_1.css">
    <link rel="stylesheet" media="all" href="/myRealTrip/css/app_template_2.css">
    <link rel="stylesheet" media="all" href="/myRealTrip/css/app_template_3.css">
 
    <link href="/myRealTrip/css/googleapi_font_1.css" rel="stylesheet">
    <script
        src="/myRealTrip/js/app_template_4.js">
    </script>
    <script  src="/myRealTrip/js/mainjs.js"></script>
    <style type="text/css"></style>
<!--     <script>
        Breakpoints();
    </script> -->
    <script src="//maps.googleapis.com/maps/api/js?key=AIzaSyBJr_Xc1ErOFoVluRDtSjfeBlNpppuP6pw&amp;libraries=places"
        type="text/javascript"></script>
    <script src="/myRealTrip/js/raven.js"></script>
 <!--    <script>
        Raven.config('https://7d40cd233b7b4666b3c2b05e5493fbc4@sentry.io/145992').install()
    </script> -->
    <meta charset="utf-8">
    <meta content="IE=edge" http-equiv="X-UA-Compatible">
    <meta content="width=device-width, initial-scale=1.0, user-scalable=0" name="viewport">
    <meta content="파트너 페이지" name="description">
    <meta content="" name="author">
    <title>파트너 페이지 | MYREALTRIP 마이리얼트립</title>
    <meta name="csrf-param" content="authenticity_token">
    <meta name="csrf-token"
        content="EQGWBcIbuUPE6E8+oi4+NG9ruKKLPgp+KbqNBO8nw7eGsXdyyeCvjSGMzbJWf8J+t1cLkR2md0FSH2qhhNJ5dQ==">
    <link
        href="https://d2yoing0loi5gh.cloudfront.net/assets/favicon-e7fc64f202376533d86106e6f712ed41eee1e843dbc5de3b2765938656f8eb93.ico"
        rel="shortcut icon">
    <link
        href="https://d2yoing0loi5gh.cloudfront.net/assets/logo/ic-mobile-76-59c4321eae219afd9cebfb870646b877f48a5b63adab68a37604891800aed0da.png"
        rel="apple-touch-icon-precomposed">
    <link
        href="https://d2yoing0loi5gh.cloudfront.net/assets/logo/ic-mobile-76-59c4321eae219afd9cebfb870646b877f48a5b63adab68a37604891800aed0da.png"
        rel="apple-touch-icon">
    <link
        href="https://d2yoing0loi5gh.cloudfront.net/assets/logo/ic-mobile-76-59c4321eae219afd9cebfb870646b877f48a5b63adab68a37604891800aed0da.png"
        rel="apple-touch-icon" sizes="76x76">
    <link
        href="https://d2yoing0loi5gh.cloudfront.net/assets/logo/ic-mobile-120-0de06603ad3e4427cb29b5e4ef6833021cc52ea642ee76e843ed997209049bf5.png"
        rel="apple-touch-icon" sizes="120x120">
    <link
        href="https://d2yoing0loi5gh.cloudfront.net/assets/logo/ic-mobile-152-cc369a832b7a69d0c0b63c3914168b58e732a26729d72e976e7f729b923ee302.png"
        rel="apple-touch-icon" sizes="152x152">
    <script type="text/javascript" charset="UTF-8"
        src="/myRealTrip/js/common.js"></script>
    <script type="text/javascript" charset="UTF-8"
        src="/myRealTrip/js/util.js"></script>
</head>

<body class="site-menubar-unfold" data-action="edit" data-controller-path="partner/offers" data-controller="offers"
    data-sign-in="">

    <jsp:include page="/WEB-INF/layout/partnerpage_top.jsp"></jsp:include>
    <jsp:include page="/WEB-INF/layout/partnerpage_nav.jsp"></jsp:include>

    <div class="page animsition">
        <div class="page-header">
            <ol class="breadcrumb">
                <li>
                    <a href='<%=request.getContextPath() %>/partner/dashboard.do'>HOME</a>
                </li>
                <li>
                    <a href="/partner/offers">상품 관리</a>
                </li>
                <li class="active">상품 수정</li>
            </ol>

</div>
<div class='page-content container-fluid'>
<div class='row'>
<div class='col-md-9'>
<div class='widget'>
<div class='widget-header padding-20 clearfix'>
<a class='avatar avatar-100 bg-white margin-right-20 img-bordered pull-left col-sm-3 col-xs-6' href='javascript:void(0)'>
<img src='//d2yoing0loi5gh.cloudfront.net/assets/default/user_profile_image-414acc60b27f0a258bec14c82b70dc361fc6768da9289f924f887bec1fc33849.png'>
</a>
<div class='vertical-align height-100 col-sm-9 col-xs-6'>
<div class='vertical-align-middle'>${authUser.member_name}님,<br/>마이리얼트립의 가이드 인터뷰를 위해서는 문소민님이 구상하고 계시는 여행 상품 등록이 필요합니다.<br/></div>
</div>
</div>
</div>

<form data-validation="false" data-istour="true" 
data-isticket="false" data-ishotdeal="false" data-islodging="false" 
data-offer-status="temp" id="offerForm" class="panel panel-bordered" 
action="<%=request.getContextPath() %>/partner/regist_tour3.do"
 accept-charset="UTF-8" method="post"><input name="utf8" type="hidden" value="&#x2713;" /><input type="hidden" name="_method" value="put" /><input type="hidden" name="authenticity_token" value="hilz0YQMHKzHwAm9K+ZHFiCYXTWE0ZZAdbifLj1w1jq7ClrJUWgp8A0kE7ZZsmvF8bmLnh3Puj0iMBOW5S9sHw==" />
<div class='panel-heading'>
<div class='panel-title'>
상품 등록
</div>
</div>
<input type="hidden"  name="p_code" value="${p_code }"/>
<div class='panel-body'>
<div class='pearls row' data-by-row='true' data-plugin='matchHeight' role='tablist'>
<div class='col-xs-4 current pearl' data-target='#step1' role='tab'>
<a class="pearl-number" href="<%=request.getContextPath() %>/partner/regist_tour1.do">1</a>
<span class='pearl-title'>
<a href="<%=request.getContextPath() %>/partner/regist_tour1.do">기본정보</a>
</span>
</div>
<div class='col-xs-4 pearl' data-target='#step2' role='tab'>
<a class="pearl-number" href="<%=request.getContextPath() %>/partner/regist_tour2.do">2</a>
<span class='pearl-title'>
<a href="<%=request.getContextPath() %>/partner/regist_tour2.do">코스정보</a>
</span>
</div>
<div class='col-xs-4 pearl' data-target='#step3' role='tab'>
<a class="pearl-number" 
href="<%=request.getContextPath() %>/partner/regist_tour3.do">3</a>
<span class='pearl-title'>
<a href="<%=request.getContextPath() %>/partner/regist_tour3.do">가격정보</a>
</span>
</div>
</div>

<div class='wizard-content'>
<input name='step' type='hidden' value='3'>
<div class='form-group clearfix default-message'>
<div class='title'>
여행에 대한 가격을 설정해주세요.
</div>
<div class='guide-box'>
<p class='help-block'>• 안내에 따라 여행 내용을 정확하게 설명하여 주세요.<br/>• 상품 등록이 완료되면, 승인을 위한 심사가 진행됩니다.<br/></p>
<p class='help-block'>* 필수항목
</p>
</div>
</div>
<hr class='divider'>

<div class='form-group clearfix' data-commission-rate='20.0'>
<label class='control-label col-xs-12 margin-bottom-15 font-weight-600'>
가격 설정
<span>*</span>
</label>
<div class='col-xs-12 margin-bottom-15'>
<p class='help-block'>• 처음 가이드 활동을 하시는 분들은 [간단한 가격 설정] 정책을 사용하시는 것과 단체보다는 소규모 여행을 진행하시는 것을 추천드립니다.<br/>• 또한, 가격 책정 전, 같은 도시 내 다른 가이드들의 가격 정책을 살펴보시는 것을 권장합니다.<br/>• 가격의 자릿수 구분을 위해 [,]이나 [.]을 사용하지 말고 숫자만 입력해주세요. 숫자 뒷부분이 인식되지 않습니다.<br/></p>
</div>
<div class='col-xs-12'>
<div class='input-group col-xs-12 form-group' data-desc='<span class="font-weight-600">[간단한 가격 설정시 주의사항]</span><br/><br/>• [여행규모]에서 [개별여행] 을 선택하셨을 경우 전체 투어에 참여하길 원하는 여행자의 최소/최대 인원을 작성해주세요.<br/><br/>• [여행규모]에서 [단체여행] 을 선택하셨을 경우 [최소 인원] 이상의 인원이 한번에 예약할 때에만 해당 투어를 예약할 수 있습니다. [최소 인원] 설정에 주의해주세요.<br/>'>
<div class='margin-bottom-15'>
<div class='radio-custom radio-primary clearfix'>
<input checked class='col-xs-1' id='priceSingleRange' name='price_type' type='radio' value='single'>
<label class='col-xs-12' for='priceSingleRange'>
<div class='col-xs-12'>
<div class='widget widget-shadow widget-border'>
<div class='widget-header bg-cyan-100 blue-grey-500 padding-15 clearfix'>
간단한 가격 설정
</div>
<div class='widget-body'>
<div class='row'>
<div class='col-md-2 col-xs-5 padding-right-0'>
<div class='form-group clearfix'>
<div class='control-label'>최소 인원</div>
<input class='form-control' name='min_p' placeholder='최소 인원' type='number' value='1'>
</div>
</div>
<div class='col-md-1 col-xs-2 padding-0'>
<div class='form-group clearfix'>
<div class='control-label'></div>
<div class='unit text-center'>
&#126;
</div>
</div>
</div>
<div class='col-md-2 col-xs-5 padding-left-0'>
<div class='form-group clearfix'>
<div class='control-label'>최대 인원</div>
<input class='form-control' name='max_p' placeholder='최대 인원' type='number' value='10'>
</div>
</div>
<div class='col-md-7 col-xs-12'>
<div class='form-group clearfix'>
<div class='control-label'>1인당 가격</div>
<div class='input-with-selectbox row'>
<div class='col-xs-5 padding-right-0'>
<select class='form-control' name='pu_unit_s'>
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
<div class='col-xs-7 padding-left-5'>
<input class='form-control' name='sp_one' type='number' value='10000'>
</div>
</div>
</div>
</div>
</div>

<div class='row'>
<div class='col-xs-12'>
<p class='help-block'>
• 인원 수에 관계 없이 1인당 여행요금이 고정되어 있는 가격 정책입니다.<br/>• 여행 1회 진행 시 본인이 수용할 수 있는 최소, 최대 인원을 설정해주세요.<br/>
</p>
</div>
</div>
</div>
</div>
</div>
</label>
</div>
</div>
</div>
</div>
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
					+"<i class='icon wb-close deletei'></i>"
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
<div class='row'>
<div class='col-xs-12'>
<p class='help-block'>
• 여행자 전체 인원 수 증가에 따른 요금 할인을 제공할 수 있는 가격 정책입니다.<br/>
</p>
</div>
</div>
</div>
</div>
</div>
</label>
</div>
</div>
</div>
</div>
</div>

<hr class='divider'>
<div class='form-group clearfix' data-desc='<span class="font-weight-600">포함 사항 예시</span><br/><br/>"가이드 관련 모든 비용 (가이드 비용, 가이드 식비, 가이드 교통비)"<br/>'>
<label class='control-label col-xs-12'>
가격포함 (포함사항)
</label>
<div class='col-xs-12'>
<textarea class='col-xs-12 form-control' name='T_PINCLUSION' rows='6'>
식사
</textarea>
</div>
<div class='col-xs-12'>
<div class='col-xs-12'>
<p class='help-block'>• 여행 가격에 포함 되어 있는 항목들을 적어 주세요.<br/></p>
</div>
</div>
</div>
<div class='form-group clearfix' data-desc='<span class="font-weight-600">불포함 사항 예시</span><br/><br/>"여행자 식비 (약 5,000원), 여행자 교통비 (약 10,000원), 입장료 (놀이공원 3,000원)"<br/>'>
<label class='control-label col-xs-12'>
여행자부담 (불포함 사항)
</label>
<div class='col-xs-12'>
<textarea class='col-xs-12 form-control' name='T_TBURDEN' rows='6'>
간식비</textarea>
</div>
<div class='col-xs-12'>
<div class='col-xs-12'>
<p class='help-block'>• 여행자가 현장에서 직접 지불해야 하는 항목 및 대략적인 금액을 적어주세요.<br/></p>
</div>
</div>
</div>

<hr class='divider'>
<div class='form-group clearfix' data-desc='<span class="font-weight-600">필수 안내 예시</span><br/><br/>• 여행자보험 가입을 권유하는 문구<br/>• 어린이 요금 관련 안내글<br/>• 투어 중 체력 소모량<br/>• 송수신기 사용과 관련한 이어폰 지참 안내문구 (미술관 투어 시)<br/>'>
<label class='control-label col-xs-12'>
필수 안내
<span>*</span>
</label>
<div class='col-xs-12'>
<textarea class='form-control' name='T_EGUIDE' placeholder='• 옷차림, 준비물에 관해 안내해주세요.
• 여행자가 여행보험을 들 수 있도록 권장해주세요.
• 차량투어를 진행한다면 차량 종류, 승차 가능 인원수, 베이비 시트 여부에 관해 안내해주세요.
' rows='6' type='text'>
모자 꼭 챙기세요
</textarea>
<div class='col-xs-12'>
<p class='help-block'>• 위 사항은 예약 확정 후 여행자에게 메일로 보내지는 [여행확인증]에 포함되는 사항입니다.<br/>  여행자에게 당부하거나 중요하게 안내하고 싶은 사항에 관해 적어주세요.<br/>  ([여행확인증]은 추후 여행자와 문제 발생시 중요하게 다뤄지는 증빙자료입니다.)<br/></p>
</div>
</div>
</div>


<hr class='divider'>

</div>
<div class='wizard-buttons'>
<a class='btn btn-default btn-outline' href='/partner/offers/60333/edit?step=2' role='button'>이전 단계로</a>
<input class='btn btn-primary btn-outline pull-right margin-left-20' formnovalidate='1' name='complete' role='button' type='submit' value='제출하기'>
<input class='btn btn-primary btn-outline pull-right' formnovalidate='0' name='save' role='button' type='submit' value='저장하기'>
</div>
</div>

</form>

</div>
<div class='col-md-3 hidden-xs hidden-sm' id='sidebar'>
<div class='widget widget-shadow margin-bottom-0'>
<div class='widget-header bg-blue-grey-300 blue-grey-700 padding-30 text-center'>
<b>
TIP
</b>
</div>
<div class='widget-body'>
<div class='p' id='formHelperContent'>• 안내에 따라 여행 내용을 정확하게 설명하여 주세요.<br/>• 상품 등록이 완료되면, 승인을 위한 심사가 진행됩니다.<br/></div>
</div>
<div class='widget-footer'>
<div class='list-group'>
<a class='list-group-item list-borter-top' data-turbolinks='false' href='/offers/329' target='_blank'>
<span>실제 예시</span>
<div class='pull-right'>
<i class='icon wb-chevron-right-mini'></i>
</div>
</a>
</div>
</div>
</div>
<div class='text-center row'>
<div class='col-xs-6'>
<a class='btn btn-block btn-warning btn-outline' href='/offers/60333/preview' target='_blank'>미리보기</a>
</div>
<div class='col-xs-6'>
<div class='btn btn-block btn-success btn-outline' id='sidebarSaveBtn'>
저장하기
</div>
</div>
</div>
</div>

</div>
</div>
</div>
<script>
/*   window.App = App || {};
  App.directUpload = {
    option: {"key":"uploads/c6189b76-1ce2-41d7-86ad-85c5dc155f96/${filename}","success_action_status":"201","acl":"public-read","policy":"eyJleHBpcmF0aW9uIjoiMjAxOS0wNi0wM1QxMDowMjoyOVoiLCJjb25kaXRpb25zIjpbeyJidWNrZXQiOiJteXJlYWx0cmlwLXVwbG9hZC11cy10ZW1wIn0sWyJzdGFydHMtd2l0aCIsIiRrZXkiLCJ1cGxvYWRzL2M2MTg5Yjc2LTFjZTItNDFkNy04NmFkLTg1YzVkYzE1NWY5Ni8iXSx7InN1Y2Nlc3NfYWN0aW9uX3N0YXR1cyI6IjIwMSJ9LHsiYWNsIjoicHVibGljLXJlYWQifSx7IngtYW16LWNyZWRlbnRpYWwiOiJBS0lBSVhONkNZNERFNjZTS0RIUS8yMDE5MDYwMi91cy1lYXN0LTEvczMvYXdzNF9yZXF1ZXN0In0seyJ4LWFtei1hbGdvcml0aG0iOiJBV1M0LUhNQUMtU0hBMjU2In0seyJ4LWFtei1kYXRlIjoiMjAxOTA2MDJUMTE1ODIxWiJ9XX0=","x-amz-credential":"AKIAIXN6CY4DE66SKDHQ/20190602/us-east-1/s3/aws4_request","x-amz-algorithm":"AWS4-HMAC-SHA256","x-amz-date":"20190602T115821Z","x-amz-signature":"116e22a1e8ca3aca122af05352cc09fc30dee15f8cce45e6f61c4479b67accaf"},
    url: "https://myrealtrip-upload-us-temp.s3.amazonaws.com"
  } */
</script>

	<jsp:include page="/WEB-INF/layout/partnerpage_bottom.jsp"></jsp:include>
   
<div class='global-alert-box'>
</div>



</body>
</html>
