<%@page import="java.util.Iterator"%>
<%@page
	import="myRealTrip.partner.service.Regist_partnerservice"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<%@page import="myRealTrip.partner.dto.International_pnumDTO"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html class='no-js css-menubar' lang='en'>
<head>
<meta charset='utf-8'>
<meta content='IE=edge' http-equiv='X-UA-Compatible'>
<meta content='width=device-width, initial-scale=1.0, user-scalable=0'
	name='viewport'>
<meta content='파트너 페이지' name='description'>
<meta content='' name='author'>
<title>파트너 페이지 | MYREALTRIP 마이리얼트립</title>
<script src="//code.jquery.com/jquery-3.3.1.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<meta name="csrf-param" content="authenticity_token" />
<meta name="csrf-token"
	content="/PN4qQIp5SnsJEbPEjNtBcn0gvoa++LYnFKdj+dklfcgdoECDXZOLKsVTalPr7WOPMBGAEsUQLsnQuvEF2/fPQ==" />
<link
	href='https://d2yoing0loi5gh.cloudfront.net/assets/favicon-e7fc64f202376533d86106e6f712ed41eee1e843dbc5de3b2765938656f8eb93.ico'
	rel='shortcut icon'>
<link rel="stylesheet" media="all"
	href="https://d2yoing0loi5gh.cloudfront.net/assets/partner/application_template_1-2ece18b6c26275ab3bce2543416a6d5ce8ab1fb02e628874719778440a82ecb2.css" />
<link rel="stylesheet" media="all"
	href="https://d2yoing0loi5gh.cloudfront.net/assets/partner/application_template_2-a79762e95ce2ee3797f3c699b7bae7897749e06c8ca7717bf815c52af7e70d4e.css" />
<link rel="stylesheet" media="all"
	href="https://d2yoing0loi5gh.cloudfront.net/assets/partner/application-1f1bf6de0d66895a382fe64c10b99a4922d097a149c8ccb7e52658bf06174263.css" />
<link
	href='//fonts.googleapis.com/css?family=Roboto:300,400,500,300italic'
	rel='stylesheet'>
<link
	href='https://d2yoing0loi5gh.cloudfront.net/assets/logo/ic-mobile-76-59c4321eae219afd9cebfb870646b877f48a5b63adab68a37604891800aed0da.png'
	rel='apple-touch-icon-precomposed'>
<link
	href='https://d2yoing0loi5gh.cloudfront.net/assets/logo/ic-mobile-76-59c4321eae219afd9cebfb870646b877f48a5b63adab68a37604891800aed0da.png'
	rel='apple-touch-icon'>
<link
	href='https://d2yoing0loi5gh.cloudfront.net/assets/logo/ic-mobile-76-59c4321eae219afd9cebfb870646b877f48a5b63adab68a37604891800aed0da.png'
	rel='apple-touch-icon' sizes='76x76'>
<link
	href='https://d2yoing0loi5gh.cloudfront.net/assets/logo/ic-mobile-120-0de06603ad3e4427cb29b5e4ef6833021cc52ea642ee76e843ed997209049bf5.png'
	rel='apple-touch-icon' sizes='120x120'>
<link
	href='https://d2yoing0loi5gh.cloudfront.net/assets/logo/ic-mobile-152-cc369a832b7a69d0c0b63c3914168b58e732a26729d72e976e7f729b923ee302.png'
	rel='apple-touch-icon' sizes='152x152'>
<!--  
<link rel="stylesheet" media="all" href="https://d2yoing0loi5gh.cloudfront.net/assets/kitty/ie-03f2550f99664f41f36c69b1e87ad5ab86b0a89362bfefe3c4ec453c29634926.css" />


<script src="https://d2yoing0loi5gh.cloudfront.net/assets/common/html5shiv/dist/html5shiv-72001964f72eb70efb8cd11b4727fa613245eb29e197137d690e2b276fc12f61.js"></script>

<script src="https://d2yoing0loi5gh.cloudfront.net/assets/common/media.match-562ed6d1b442ca3aaab51118f9293da0f5cbbc364d1ef2318054c8e4caf282b7.js"></script>
<link rel="stylesheet" media="screen" href="https://d2yoing0loi5gh.cloudfront.net/assets/common/respond/respond-proxy.html.css" />
<link href='/assets/common/respond/respond-proxy.html' id='respond-proxy' rel='respond-procy'>
<script src='/assets/common/respond/respond.src.js'></script>
<link href='/assets/common/respond/respond.proxy.gif' id='respond-redirect' rel='respond-redirect'>
<script src='/assets/common/respond/respond.proxy.js'></script>

<script src="https://d2yoing0loi5gh.cloudfront.net/assets/kitty/ko-5d40c1382db94787ee09831dee889f833820560fe559c19347c2079165c71e0f.js"></script>
<script src="https://d2yoing0loi5gh.cloudfront.net/assets/partner/application-0a1f0d84b41d048d5930089311ad8e11e301bd606ee17fa9b2c5b3d74f7bec4a.js"></script>

 <script>
  Breakpoints();
</script>
<script src='//maps.googleapis.com/maps/api/js?key=AIzaSyC84fbqS1JuAJ9t24SLY2LEWf2Ud8W8F1E&amp;libraries=places' type='text/javascript'></script>
<script src='//cdn.ravenjs.com/3.24.2/raven.min.js'></script>
<script>
  Raven.config('https://7d40cd233b7b4666b3c2b05e5493fbc4@sentry.io/145992').install()
</script> 
-->
<script>
	$(document).ready(function() {
	$("#tax_invoice_info").val("y");
		$("#tax_invoice_info").change(function() {
			if ($("#tax_invoice_info").is(":checked")) {
				$("#tax_invoice_info").val("y");
				$(".tb_yes").css("display", "block");
				$(".tb_no").css("display", "none");
			} else {
				$("#tax_invoice_info").val("n");
				$(".tb_yes").css("display", "none");
				$(".tb_no").css("display", "block");
			}
		});
		
	/* pnum_local local_num */

			
			$("#clonebtn").click(function(){
				

			    var copy = 
			    	$("#child").clone().attr('id','ccc');
			    
				    $("#child").after(copy);       
				    $("#ccc #city").attr('name','ocity');
				    $("#ccc #ipnum").attr('name','opnum_local');
				    $("#ccc #tel").attr('name','olocal_num');

					
			});
	
	});
</script>

</head>
<body class='site-menubar-unfold' data-action='new_company'
	data-controller-path='partner/registrations'
	data-controller='registrations' data-sign-in>
	<!--[if lt ie 8]>
<p class='browserupgrade'>You are using an <strong>outdated</strong> browser. Please <a href='http://browsehappy.com/'>upgrade your browser</a> to improve your experience.</p>
<![endif]-->

<button class="btn btn-icon btn-dark btn-outline btn-round btn-icon--small btn-icon--contact-info btn-icon--contact-delete"
			type="button"><i aria-hidden="true" class="icon wb-close-mini"></i></button>

	<nav
		class='site-navbar navbar navbar-default navbar-fixed-top navbar-mega'
		role='navigation'>
		<div class='navbar-header'>
			<button
				class='navbar-toggle hamburger hamburger-close navbar-toggle-left hided'
				data-toggle='menubar' type='button'>
				<span class='sr-only'>Toggle navigation</span> <span
					class='hamburger-bar'></span>
			</button>
			<button class='navbar-toggle collapsed'
				data-target='#site-navbar-collapse' data-toggle='collapse'
				type='button'>
				<i aria-hidden='true' class='icon wb-more-horizontal'></i>
			</button>
			<a class='navbar-brand navbar-brand-center' data-turbolinks='false'
				href='/partner'> <img alt='logo'
				class='navbar-brand-logo all-size-logo' height='24px'
				src='https://d2yoing0loi5gh.cloudfront.net/assets/logo/web_logo@2x-28009c0e4079c659687972395c2e69a80850c7d6cc8ab8394af117848cd4660a.png'
				title='파트너' width='108px'> <img alt='logo'
				class='navbar-brand-logo tablet-logo' height='46px'
				src='https://d2yoing0loi5gh.cloudfront.net/assets/logo/ic-mobile-76-59c4321eae219afd9cebfb870646b877f48a5b63adab68a37604891800aed0da.png'
				title='파트너' width='46px'> <span
				class='navbar-brand-text hidden-xs'>파트너</span>
			</a>
		</div>
		<div class='navbar-container container-fluid'>
			<!-- Navbar Collapse -->
			<div class='collapse navbar-collapse navbar-collapse-toolbar'
				id='site-navbar-collapse'>
				<!-- Navbar Toolbar Right -->
				<ul class='nav navbar-toolbar navbar-right navbar-toolbar-right'>
					<li><a class='btn btn-default btn-block btn-primary'
						data-turbolinks='false' href='/' role='button'> 여행자 모드 </a></li>
				</ul>
				<!-- End Navbar Toolbar Right -->
			</div>
			<!-- End Navbar Collapse -->
		</div>
	</nav>


	<div class='site-menubar'>
		<div class='site-menubar-body'>
			<div>
				<div>
					<ul class='site-menu'>
						<li class='site-menu-category'></li>
					</ul>
					<div class='external-menu-item hidden-sm hidden-md'>
						<a class='link' href='https://blog.myrealtrip.com' target='_blank'>
							<i aria-hidden='true' class='site-menu-icon wb-home'></i> <span>가이드
								블로그</span>
						</a>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div class='page animsition'>
		<div class='page-header'>
			<ol class='breadcrumb'>
				<li><a href='/partner'>HOME</a></li>
				<li class='active'>파트너 등록</li>
			</ol>

		</div>
		<div class='page-content container-fluid'>
			<div class='row'>
				<div class='col-lg-9'>
					<div
						class='panel panel-bordered panel-profile panel-new-profile panel-form'>
						<div class='panel-heading'>
							<div class='panel-title'>기업 파트너 등록</div>
						</div>
						<div class='panel-body'>
							<div class='col-xs-12'>
								<div class='row'>
									<form data-validation="true"
										class="form-horizontal form-account"
										action="<%=request.getContextPath()%>/partner/new_b_partner.do"
										accept-charset="UTF-8" method="post">
										<input name="utf8" type="hidden" value="&#x2713;" /><input
											type="hidden" name="authenticity_token"
											value="FH1ZCIeFR3CXYlj9EJozhBfJRl/zutFqdSHBZqcKG3nI+KCjiNrsddBTU5tNBusP4v2CpaJVcwnOMbctVwFRsw==" />
										<input name='guide[company]' type='hidden' value='true'>
										<div class='form-group clearfix'>
											<label class='col-sm-3 control-label font-weight-700'>사진</label>
											<div class='col-sm-9 photo-container'>
												<div class='avatar avatar-lg'>
													<img alt='guide profile' class='default-img'
														src='https://d2yoing0loi5gh.cloudfront.net/assets/roma/common/profile_blank-6f7e02b6e140f8f71688a633df0afefc4f98128a4c79a94e0cf0abac56c882e1.gif'>
													<div class='img-preview'></div>
												</div>
												<div class='avatar-file file-upload-btn'>
													<input name='partnerPicture' type='hidden' value='pic'>

													<input id='guideProfileBtn' name='file' type='file'>
													<div class='btn btn-success btn-file ladda-button'
														data-spinner-color='DarkGrey' data-style='zoom-out'>
														<span class='ladda-label'></span> <i aria-hidden='true'
															class='icon wb-upload'></i> 사진변경...
													</div>
												</div>
												<small class='help-block'>• 파트너님의 정면 얼굴이 보이는 프로필
													사진으로 설정해주세요.<br />• 여행자와 신뢰도를 형성하는 데에 큰 도움이 됩니다.<br />
												</small>
											</div>
										</div>
										
										<script>
$(document).ready(function() {

	event.preventDefault();
	
	$("#guideProfileBtn").on("change",function(){
		alert("일단 바뀐거 호출");
		var formData = new FormData();

		//
	/* 	for (var i = 0; i < $('#form')[0].files.length; i++) {
			fromData.append('sominfile',$('#form').files[i]);
			alert($('#form').files[i]);
		}
		// */ 
		for(var i=0; i<$('#guideProfileBtn')[0].files.length; i++){
	        formData.append('guideProfileBtn', $('#guideProfileBtn')[0].files[i]);
	        alert(formData);
	    }
		$.ajax({
			url: '<%=request.getContextPath()%>/partner/regist_partner/file.do ' ,
			data:formData,
			processData: false,
			contentType:false,
			type:'POST',
			dataType:'json',
			success:function(data){
				alert("ajax콜백함수로 돌아옴");
				
				 $(data).each(function (index, e){
				
			
				var v = e.filelist;
		       var x = e.subject;
		       var a = e.filesystemname;
		       var imgpath="/myRealTrip/img/partner_profile/"+a;
	             console.log("e.=="+v);
	             console.log("e.subject:----->"+x);
	             console.log("e.systemname:----->"+a);
	            console.log("경로"+imgpath);
	                   $('#ipartnerimg').attr('src',imgpath);
	                   
	                   
	                  // $('#output').append(a);
	                   
	                //   $('#output').after(e.filesystemname);

	       
				 });
			}
		});
		
		
	});
	});
</script>
										
										
										<div class='form-group clearfix'>
											<label class='col-sm-3 control-label font-weight-700'>
												현지 연락처 <span>*</span>
											</label>
											<div id="parent" class='col-sm-9 col-xs-12'>
												<div id="child" class='contact-info-container'	data-contact-info-container>
													<div class='row contact-info-row margin-bottom-10' 	data-contact-info-template>
														<div class='col-sm-3'>
															<input id= 'city' class='form-control' name='city'
																placeholder='도시 이름' type='text' value="부산">
														</div>
														<div class='col-sm-9'>
															<div class='row'>
																<div id="tel1"class='col-sm-5'>
																	<select class="form-control" id="ipnum"	name="pnum_local">
																		<c:forEach items="${ ipnumdto }" var="dto">
																			<option value="${ dto.pnum }">${ dto.country_name }</option>
																		</c:forEach>
																	</select>
																</div>
																<div id="tel2" class='col-sm-7 padding-right-60'>
																	<input id="tel" class='form-control' name='local_num' type='tel'
																		value='12341234'>
																</div>

																<!--버튼!!!!!!!!!!!!!!!!  -->
																<button id="clonebtn"
																	class='btn btn-icon btn-dark btn-outline btn-round btn-icon--small btn-icon--contact-info btn-icon--contact-add'
																	type='button'>
																	<i id="add" aria-hidden='true' class='icon wb-plus'></i>
																</button>

															</div>
														</div>
													</div>
												</div>
												<small class='help-block'>• 상시 연락할 수 있는 전화번호를 알려주시면
													여행자에게 큰 도움이 됩니다.<br />• 만약 여러 나라의 상품을 관리하신다면 각 나라의 연락처를 모두
													등록해주세요.<br />• 문자메시지는 첫번째 입력한 연락처로 발송됩니다.<br />
												</small>
											</div>
										</div>

										<div class='form-group clearfix'>
											<label class='col-sm-3 control-label font-weight-700'>
												비상 연락처 <span>*</span>
											</label>
											<div class='col-sm-9 col-xs-12'>
												<div class='row'>
													<div class='col-sm-5'>
														<select class="form-control" id="pnumdto" name="pnum_emer">
															<c:forEach items="${ ipnumdto }" var="dto">
																<option value="${ dto.pnum }">${ dto.country_name }</option>
															</c:forEach>
														</select>
													</div>
													<div class='col-sm-7'>
														<input class='form-control' name='emer_num' type='tel'
															value="0012341234">
													</div>
												</div>
												<small class='help-block'>• 상시 연락할 수 있는 다른 연락처 혹은
													파트너님과 가장 잘 연락될 수 있는 분의 연락처를 적어주세요<br />
												</small>
											</div>
										</div>

										<div class='form-group clearfix'>
											<label class='col-sm-3 control-label font-weight-700'>
												카카오톡 ID <span>*</span>
											</label>
											<div class='col-sm-9'>
												<div class='row'>
													<div class='col-sm-12'>
														<input autocapitalize='off' class='form-control'
															name='kakaoID' type='text' value="hoho123">
													</div>
												</div>
												<small class='help-block'>• 예약 확정 후 연락처가 공개될 경우
													카카오톡으로 여행자의 문의를 받을 수 있습니다.<br />• 영상인터뷰를 위해 필요합니다.<br />
												</small>
											</div>
										</div>

<div class="form-group clearfix">
<label class="col-sm-3 control-label font-weight-700">
키워드
<span>*</span>
</label>
<div class="col-sm-9 col-xs-12">
<div class="row">
<div class="col-sm-5">
<input class="form-control" name="keyword1" placeholder="직업" type="text" value="직업">
</div>
<div class="col-sm-7">
<input class="form-control" name="keyword2" placeholder="소속/직장명" type="text" value="소속/직장명">
</div>
</div>
<small class="help-block">• 본인을 가장 잘 나타낼 수 있는 키워드를 적어주세요.</small>
</div>
</div>

										<div class='form-group clearfix'>
											<label class='col-sm-3 control-label font-weight-700'>
												회사 소개 <span>*</span>
											</label>
											<div class='col-sm-9'>
												<div class='row'>
													<div class='col-sm-12'>
														<textarea class='form-control' name='introduce' rows='5'
															type='text'>회사소개를 100자이상 적어주세요</textarea>
													</div>
												</div>
												<small class='help-block'>• 예약 확정 후 서로의 연락처가 공개됩니다.<br />•
													안전 거래를 위해 파트너님의 개인 연락처 및 SNS 페이지를 기재할 경우 수정되거나 삭제될 수 있습니다.<br /></small>
											</div>
										</div>

										<div class='form-group clearfix'>
											<label class='col-sm-3 control-label font-weight-700'>
												상품 유형 <span>*</span>
											</label>
											<div class='col-sm-9 col-xs-12'>
												<div class='row'>
													<div class='col-sm-12'>
														<div class='checkbox-custom checkbox-default'>
															<input id='offer_type_tour' name='gm_type'
																type='checkbox' value='Tour' checked="checked">
															<label class='terms-label' for='offer_type_tour'>가이드
																투어</label>
														</div>
													</div>
													<div class='col-sm-12'>
														<div class='checkbox-custom checkbox-default'>
															<input id='offer_type_ticket' name='gm_type'
																type='checkbox' value='Ticket' checked="checked">
															<label class='terms-label' for='offer_type_ticket'>티켓
																(e티켓, 배송 티켓)</label>
														</div>
													</div>
													<div class='col-sm-12'>
														<div class='checkbox-custom checkbox-default'>
															<input id='offer_type_hotdeal' name='gm_type'
																type='checkbox' value='HotDeal' checked="checked">
															<label class='terms-label' for='offer_type_hotdeal'>에어텔/항공권
																(에어텔, 패키지, 렌터카, 숙박단품)</label>
														</div>
													</div>
													<div class='col-sm-12'>
														<div class='checkbox-custom checkbox-default'>
															<input id='offer_type_lodging' name='gm_type'
																type='checkbox' value='Lodging'> <label
																class='terms-label' for='offer_type_lodging'>민박</label>
														</div>
													</div>
												</div>
											</div>
										</div>

										<div class='form-group clearfix'>
											<label class='col-sm-3 control-label font-weight-700'>
												세금계산서 </label>
											<div class='col-sm-9 col-xs-12'>
												<div class='row'>
													<div class='col-sm-12'>
														<div
															class='checkbox-custom checkbox-default padding-bottom-10'>
															<input name='tb_yn' type='hidden' value='n'> <input
																checked id='tax_invoice_info' name='tb_yn'
																type='checkbox' value='y' checked="checked"> <label
																for='tax_invoice_info'>세금계산서 발행</label>
														</div>
													</div>
												</div>
												<div class='tb_yes'>
													<div class='col-xs-4'>
														<input class='form-control' name='tb_staff'
															placeholder='정산 담당자명' type='text' value="정산담당자명">
													</div>
													<div class='col-xs-8'>
														<input class='form-control' name='tb_email'
															placeholder='이메일' type='email' value="tb_staff@gmail.com">
													</div>
												</div>
												<div class='tb_no' style="display: none">
													<div class='col-xs-12'>
														<input class='form-control' name='tb_why'
															placeholder='세금계산서를 발행하지 않는 사유를 적어주세요. (선택)' type='text' value="탈세">
													</div>
												</div>

												<small class='help-block'>• 여행일 기준 1일~말일까지의 마이리얼트립
													수수료 금액에 대해서만 세금계산서로 발행됩니다.<br />• 한국에 사업자등록이 되어 있는 기업의 경우에만
													세금계산서 발행이 가능합니다.<br />
												</small>
											</div>
										</div>

										<div class='form-group clearfix terms-container'>
											<label class='col-sm-3 control-label font-weight-700'>
												파트너 약관 <span>*</span>
											</label>
											<div class='col-sm-9'>
												<div class='row'>
													<div class='col-sm-12'>
														<div class='terms-box'>
															가이드 약관<br />
															<br />제 1장 목적 및 정의<br />
															<br />제1조 (목적)<br />이 약관(이하 “가이드약관”)은 주식회사 마이리얼트립(이하
															“당사”)이 운영하는 “마이리얼트립” 웹사이트(www.myrealtrip.com) 또는
															어플리케이션(Application, 이하 웹사이트와 어플리케이션을 통칭하여 “마이리얼트립 플랫폼”)을
															통하여 여행자와 가이드 사이에서 체결되는 여행계약(이하 “여행계약”)의 중개와 관련하여 특히 가이드의
															권리 및 의무 등 법률관계를 명확히 함을 목적으로 합니다.<br />
															<br />제2조 (용어의 정의)<br />이 약관에서 사용되는 용어의 정의는 다음 각 호와 같습니다.<br />(1)
															“가이드”는 당사가 여행자에게 중개한 자로서 여행지에서 여행자에게 가이드서비스를 제공하는 자를
															말합니다.<br />(2) “여행자”는 당사의 중개를 통하여 가이드와 여행계약을 체결하고 가이드로부터
															제7조에서 정한 용역을 제공받는 자를 말합니다.<br />(3) “투어”는 가이드약관에 따라 여행자가
															가이드로부터 제7조에서 정한 용역을 제공받아 향유하는 각 여행을 말합니다.<br />(4)
															“여행자약관”은 당사가 여행자와 가이드 사이의 여행계약을 중개함에 있어 여행자의 권리 및 의무 등
															법률관계를 명확히 함을 목적으로 제정하여 시행하는 별도의 약관을 말합니다.<br />(5) 기타
															가이드약관에서 정의되지 않은 용어의 정의는 여행자약관의 정의를 따릅니다.<br />
															<br />제2장 기본 사항<br />
															<br />제3조 (여행계약의 당사자 및 당사의 지위)<br />여행자와 여행계약을 체결하고
															가이드서비스를 제공하는 법적 주체는 가이드이며, 당사는 마이리얼트립 플랫폼을 통하여 여행자가 원하는
															날짜와 조건에 맞추어 가이드와 여행계약을 체결하고 가이드서비스를 제공받는 것을 중개하는 업무를
															수행합니다.<br />
															<br />제4조 (가이드의 독립당사자 지위)<br />1. 당사는 여행자와 가이드 사이에 투어를
															중개할 뿐이며, 가이드는 당사와 고용 관계에 있지 않음을 확인합니다. 또한, 당사는 가이드에 대하여
															사용자로서의 책임을 일체 부담하지 않는다는 점을 명확히 합니다.<br />2. 가이드는 가이드약관의
															이행에 필요한 관련 법령상의 허가, 등록, 신고 또는 보험, 공제, 예치 등의 의무사항을 모두
															이행하여야 하며, 당사는 가이드가 관련 법령 위배로 인하여 여행자 또는 제3자에 대하여 손해배상 등
															책임을 지더라도 당사는 이에 관하여 아무런 책임이 없습니다.<br />
															<br />제5조 (여행계약의 구성)<br />여행계약은 여행확인증과 여행자약관 및 가이드약관에 나타난
															사항을 그 계약내용으로 합니다.<br />
															<br />제6조 (당사자 및 당사의 기본 의무)<br />1. 가이드는 사전에 여행자와 약정한 내용에
															따라 투어를 성실하게 진행하여야 하며, 그밖에 여행자에게 안전하고 만족스러운 가이드서비스를 제공하기
															위하여 여행계약상 의무를 성실하게 이행하여야 합니다.<br />2. 여행자는 여행계약에 따른 의무를
															성실하게 이행하며, 안전하고 즐거운 여행을 위하여 여행자간 화합도모 및 가이드의 여행질서 유지에 적극
															협조합니다.<br />3. 당사는 여행계약 체결의 중개 행위 등에 있어 맡은 바 임무를 충실히
															수행합니다.<br />
															<br />제7조 (가이드가 제공하는 용역의 내용)<br />가이드는 가이드약관에 따라 여행자에 대하여
															다음 각 호의 용역을 제공합니다.<br />(1) 여행자의 의사 및 제반 사정을 고려한 투어 일정의
															계획 및 조정<br />(2) 투어를 위하여 여행자와 만나기로 약속한 장소(이하 “미팅포인트”)에서
															일정에 정한 각 여행지로 여행자를 인솔<br />(3) 각 여행지에 대한 구체적인 안내 및 설명 제공<br />(4)
															당일 최종 여행지로부터 여행자의 숙소 등 일정에 정한 해산 지점으로 여행자를 인솔<br />(5)
															여행지에서 여행자의 원활한 의사소통 협조<br />(6) 사고 등 문제 발생시의 여행자 보호 조치<br />(7)
															기타 투어 관련 제반 업무<br />
															<br />제8조 (직접 용역제공의 원칙)<br />가이드는 투어 동안 여행자에게 자신이 직접 제7조의
															용역을 제공하여야 하며, 제3자를 통하여 투어를 진행하거나 용역을 제공하여서는 아니 됩니다. 단,
															당사와 여행자 모두로부터 사전 서면 동의를 받은 경우는 예외로 합니다.<br />
															<br />제9조 (가이드요금)<br />1. 여행자는 여행계약의 중개 및 가이드 용역 제공의 대가로서
															여행확인증에 기재된 금액의 여행요금(이하 “여행요금”)을 당사에 지급합니다. 여행요금에는 다음 각 호의
															요금 또는 비용이 포함되어 있지 않습니다. 단, 여행확인증의 내역에 명시되어 있는 것은 그러하지
															아니합니다.<br />(1) 투어 중 개인적 성질의 제비용(통신료, 관세, 일체의 팁, 세탁비,
															개인적으로 추가한 식음료)<br />(2) 치료비, 입원비 등 투어 중 여행자의 질병, 상해 또는 그
															밖의 사유로 인하여 지불해야 하는 일체의 비용<br />(3) 여행자가 통상의 규격이나 규정을 초과하여
															발생한 비용(초과 규격의 수하물 등 각종 추가 요금)<br />(4) 여행 수속 제비용(여권 인지대,
															사증료 등)<br />(5) 기타 여행확인증에 구체적으로 명시되지 않은 비용<br />2. 여행요금에
															여행자 보험료가 포함되는 경우, 가이드는 여행자에게 보험회사명, 보상내용 등을 설명합니다.<br />3.
															여행요금 중 여행계약 중개에 따른 수수료(이하 “수수료”) 는 별도 약정에 따라 당사에 귀속되며,
															여행요금에서 수수료를 뺀 나머지 금액은 가이드의 용역 제공의 대가(이하 “가이드요금”)로서 가이드에게
															귀속됩니다.<br />4. 당사는 투어 종료 후 가이드의 청구에 따라 여행자로부터 지급받은 가이드요금을
															가이드에게 지급합니다.<br />5. 당사는 제4항의 가이드요금 지급과 관련하여 그 때까지 당사가
															가이드에게 지급하여야 할 금액을 모두 정산하여 가이드가 지정한 계좌 또는 방법 중 당사가 지급 가능한
															방법으로 지급합니다. 단, 가이드는 반드시 본인 명의로 된 계좌를 지정하여 가이드 요금을 정산 받아야
															합니다. 또한 송금수수료 기타 비용은 가이드가 부담하고, 당사는 이에 따라 수수료 기타 비용을 공제한
															나머지 금액만을 가이드에게 지급합니다. 가이드의 부정확한 계좌 정보 제공 등 귀책사유로 인하여 송금
															관련 문제가 발생하는 경우에 대하여 당사는 가이드에게 어떠한 책임도 부담하지 않습니다.<br />6.
															당사와 가이드 사이의 합의에 따라 여행요금 통화와 송금 통화를 동일하게 하여 가이드 요금으로 지급한다.<br />(1)
															여행요금이 한화(KRW)로 책정된 경우 : 여행자가 결제한 시점의 여행금액<br />(2) 여행요금이
															외화로 책정된 경우 : 여행 완료된 시점의 외환환율<br />7. 당사는 제4항에 따른 가이드요금
															지급시, 가이드가 대한민국 내에 소재하는 경우 조세 관련 법령에 따라 가이드가 부담할 조세공과금
															상당액을 가이드요금에서 원천징수 할 수 있습니다. 단, 가이드가 외국에 소재하는 경우에는 가이드 스스로
															해당 국가의 법령에 따라 조세공과금을 납부하여야 하며, 당사는 해외 소재 가이드의 조세공과금 납부에
															관하여 아무런 책임이 없습니다.<br />8. 가이드가 여행자 또는 당사에 대하여 지급하여야 하는 비용
															또는 위약금 기타 손해배상금이 발생한 경우, 당사는 가이드에게 지급할 가이드요금에서 해당 금원을 공제한
															후 지급할 수 있습니다.<br />
															<br />제10조 (자료의 제공)<br />1. 가이드는 당사가 여행계약의 안전한 이행 기타 합리적인
															사유를 들어 요구하는 제반 자료 일체(가이드의 개인정보 관련 서류를 포함)를 지체 없이 제출하여야
															합니다.<br />2. 당사는 가이드로부터 제공받은 자료 중 개인정보가 포함된 자료를 『개인정보
															보호법』 등 관련 법률 및 개인정보 처리방침에 따라 관리하여야 합니다.<br />
															<br />제3장 투어의 확정 이전의 법률관계<br />
															<br />제11조 (개별 투어의 원칙)<br />투어는 원칙적으로 한 그룹의 여행자만을 대상으로
															하며, 가이드는 두 그룹 이상의 여행자들을 대상으로 동시에 투어를 진행하여서는 안됩니다. 단, 상품
															페이지에 그룹 투어로 명시되어 있거나 당사와 각 여행자 그룹들 모두로부터 사전 동의를 받은 경우에는
															예외로 합니다.<br />
															<br />제12조 (투어의 예약 및 확정)<br />1. 가이드는 투어를 원하는 자(이하
															“투어대기자”)로부터 투어 일정, 여행요금 등 그 내용이 미리 정해진 투어에 대한 신청이 있거나, 투어
															예약 등에 관한 문의를 받은 경우, 당사로부터 위 신청 또는 문의를 전달받은 때로부터 영업일 기준 1일
															이내에 투어 가능 여부 또는 문의에 대한 답변을 하여야 하며, 이후 투어대기자와의 사전조율 업무를
															성실히 수행하여야 합니다.<br />2. 가이드와 투어대기자가 마이리얼트립 플랫폼 상에 기재된 사항과
															다른 스케줄 및 비용 조건으로 투어를 진행하기로 합의한 경우, 가이드는 제4항의 확정이 있기 전까지
															이러한 내용을 당사가 제공하는 연락 수단을 통하여 당사 및 투어대기자에게 고지하여야 합니다.<br />3.
															가이드는 투어대기자와 최종 합의한 투어의 구체적 스케쥴 및 비용 등이 기재된 여행확인증(이하
															”여행확인증”)을 당사가 제공하는 연락 수단을 통하여 당사 및 투어대기자에게 발송하여야 합니다.<br />4.
															본 조 제1항의 경우에는 가이드가 투어 가능을 회신한 경우, 본 조 제2항의 경우에는 투어대기자가
															여행확인증에 기재된 전체 여행요금에 상당하는 금원을 당사에 지급하는 시점에서 투어는 확정되며,
															투어대기자는 그때부터 여행자의 지위를 가집니다.<br />5. 가이드는 본 조 제4항에 따라 투어가
															확정된 경우, 여행자의 요청에 따라 당사를 통해 여행확인증과 여행자약관 사본을 여행자에게 교부합니다.
															단, 여행자가 인터넷 등 전자정보망으로 제공된 여행확인증 및 여행자약관의 내용에 동의하고 여행계약의
															체결을 신청한 데 대하여 가이드가 전자정보망 내지 기계적 장치 등을 이용하여 여행자에게 승낙의 의사를
															통지한 경우, 가이드와 여행자 사이에 여행확인증 및 여행자약관 교부가 이루어진 것으로 봅니다.<br />6.
															당사는 투어가 확정되기 전까지 가이드의 연락처 등 개인정보를 투어대기자 등 제3자에게 제공하지 않아야
															합니다. 단, 다음 각 호의 경우는 예외로 합니다.<br />(1) 투어의 개시일이 현재 시점으로부터
															2일도 남지 않은 경우<br />(2) 그밖에 투어대기자가 가이드에게 개별적 연락이 필요한 합리적인
															사유가 있는 경우<br />7. 가이드는 투어가 확정되기 전까지 당사의 사전 서면 동의 없이 자신의
															연락처, 은행계좌 등 정보를 투어대기자에게 제공하여서는 안됩니다.<br />
															<br />제13조 (투어의 거절)<br />가이드(또는 가이드를 대신하여 당사)는 여행자에게 다음 각
															호의 1에 해당하는 사유가 있을 경우에는 해당 여행자에 대하여 투어를 거절할 수 있습니다.<br />(1)
															여행자가 다른 여행자에게 폐를 끼치거나 여행의 원활한 실시에 지장이 있다고 인정될 때<br />(2)
															여행자가 보행이나 운송수단 탑승이 불가능한 부상, 전염성 질병 등 여행자의 신체에 이상이 발생하여 투어
															참가가 불가능함이 의료기관이 발급한 진단서에 의해 객관적으로 확인될 때<br />
															<br />제4장 투어 확정 이후 개시 이전의 법률관계<br />
															<br />제14조 (가이드의 투어 전 여행자에 대한 의무)<br />1. 가이드는 여행자의 문의 또는
															요청에 성실하게 답하여야 하며, 특별한 사정이 없는 경우 여행자의 문의 또는 요청을 받은 시점으로부터
															24시간 이내에 여행자에게 답변을 하여야 합니다.<br />2. 가이드는 사전에 여행자에게 투어 당일
															약속 시간 및 미팅포인트를 명확하게 고지하여, 여행자가 투어 당일 혼란을 겪지 않도록 하여야 합니다.<br />3.
															가이드는 투어 전날(국외여행의 경우에는 출국 전일) 여행자에게 일정에 대한 확인 연락을 취해야 합니다.<br />4.
															기타 가이드는 여행자약관 중 투어 진행 전 여행자에 대한 의무 사항을 준수하여야 합니다.<br />
															<br />제15조 (확정 후 조건 변경)<br />1. 가이드는 투어의 확정이 있은 이후에는
															원칙적으로 해당 투어의 스케줄 및 비용 등 조건을 변경할 수 없습니다.<br />2. 제1항에도
															불구하고, 여행계약상의 여행조건은 다음 각 호의 1의 사유가 발생하는 경우 예외적으로 변경될 수
															있습니다. 단, 이 경우 가이드는 지체 없이 당사에 해당 내용을 통보하여야 합니다.<br />(1)
															투어 개시 후 여행자의 안전과 보호를 위하여 여행조건의 변경이 부득이하다고 판단되는 경우<br />(2)
															투어 개시 후 천재지변, 전란, 정부의 명령, 운송 및 숙박업체 등의 파업 또는 휴업 등으로 여행의
															목적을 달성할 수 없는 경우<br />3. 제2항의 여행조건 변경으로 인하여 여행요금에 증감이 생기는
															경우, 해당 증감분은 투어 종료 후 10일 이내에 당사를 통하여 정산(환급)하여야 합니다.<br />4.
															제2항의 여행조건 변경과 관련하여 가이드 요금이 추가적으로 발생하는 경우, 가이드는 이를 제3항에 따라
															당사로부터 정산 후 지급받아야 하며 당사를 통하지 않은 채 여행자로부터 직접 가이드요금 기타 어떠한
															명목의 보수도 지급받아서는 안됩니다.<br />
															<br />제16조 (여행자의 투어 개시 전 임의해제)<br />1. 여행자는 여행요금 지급이
															이루어지기 이전까지 체결하였던 여행계약을 가이드 및 당사에 대한 손해배상 등의 법적 책임 없이 자유롭게
															해제할 수 있습니다.<br />2. 여행자가 여행요금 지급이 이루어진 후 투어 개시일 이전까지
															여행계약을 임의로 해제하는 경우, 가이드는 본 약관 별첨 또는 각 상품별 취소 환불 정책에 따라
															여행자에게 여행요금의 전부 또는 일부를 환불합니다.<br />3. 당사는 본 조에 따라 가이드와 여행자
															사이에 발생하는 손해배상 등 법률관계에 대하여 보증책임 기타 어떠한 의무 또는 책임도 부담하지
															않습니다.<br />
															<br />제17조 (가이드의 투어 개시 전 임의해제 및 손해배상)<br />1. 가이드가 여행자와
															체결하였던 여행계약을 투어 개시 전에 임의로 해제하는 경우, 가이드는 그로 인하여 여행자가 입은 손해를
															배상할 의무를 부담합니다. 이 경우 가이드는 본 약관 별첨 또는 각 상품별 취소 환불 정책에 따라
															여행자에 대한 손해를 배상할 의무를 부담합니다.<br />2. 손해배상액은 제33조 및 별첨된
															취소환불정책에 정한 바에 따르며, 다만 여행자가 입은 실제 손해액이 제33조 제4항 제1호에 따른
															손해배상액을 초과함이 객관적으로 입증되는 경우, 가이드는 여행자에게 그 실제 손해액을 배상할 책임을
															부담합니다.<br />3. 본 조에 따라 가이드가 여행계약을 해제하는 경우, 가이드는 제1항의 여행자에
															대한 손해배상과 별도로 당사가 입은 손해로서 수수료 상당액을 배상할 의무를 부담합니다.<br />
															<br />제18조 (최저행사인원 미달로 인한 계약 해제)<br />1. 가이드는 여행자의 수가 사전에
															공지한 투어의 최저행사인원에 미달하였음을 원인으로 여행계약을 해제할 수 있습니다.<br />2. 본
															조의 계약 해제를 하고자 하는 가이드는 당사를 통하여 국외여행의 경우 투어 개시일로부터 7일 이전까지,
															국내여행의 경우 투어 개시일로부터 3일 이전까지 여행자에게 제1항의 해제의 의사표시 및 해제사유를
															서면으로 통지하여야 합니다. 만약 가이드가 최저행사인원 미달로 전항의 기일 내 통지를 하지 아니하고
															계약을 해제하는 경우 여행자에 대한 배상은 공정거래위원회 고시 소비자분쟁해결기준에 의거하여 처리되며,
															이 때 당사가 여행자에게 지급한 손해배상액은 가이드에게 구상할 수 있습니다.<br />
															<br />제19조 (투어 개시 전 쌍방의 책임 없는 사유로 인한 계약 해제)<br />투어 개시일
															이전에 다음 각 호의 1에 해당하는 사유가 있는 경우, 가이드는 별도의 손해배상 없이 여행계약을 해제할
															수 있습니다.<br />(1) 제13조 제2항 제1호 또는 제2호의 사유가 있는 경우<br />(2)
															보행이나 운송수단 탑승이 불가능한 부상, 전염성 질병 등 여행자의 신체에 이상이 발생하여 투어 참가가
															불가능함이 의료기관이 발급한 진단서에 의해 객관적으로 확인되는 경우<br />(3) 기타 이에 준하는
															것으로서 당사자 쌍방에게 책임 없는 사유로 투어가 불가능하게 된 경우. 단, 천재지변으로 인한 비행기
															결항 및 지연, 도난사고 발생 등에 대한 객관적 증빙서류가 제출된 경우<br />
															<br />제20조 (계약 해제에 따른 여행요금 환불 등 정산)<br />1. 제16조에 따라
															여행계약이 해제되는 경우, 당사는 별첨 취소환불 정책에 따른 환불 대상 여행요금을 여행자에게
															환불합니다. 본 항에 따른 환불을 한 경우, 당사는 여행자를 대신하여 가이드에게 여행요금 중 환불 대상
															가이드요금을 제하고 난 잔여 가이드요금을 지급합니다.<br />2. 제17조 내지 제19조에 따라
															여행계약이 해제되는 경우, 당사는 여행자에게 지급 받은 여행요금 전액을 환불합니다.<br />
															<br />제5장 투어 개시 이후 종료 이전의 법률관계<br />
															<br />제21조 (투어의 개시와 종료)<br />투어의 개시 시점은 투어 첫 날 미팅포인트에서
															여행자가 가이드와 만난 시점으로 하며, 투어의 종료 시점은 투어 마지막 날 여행자와 가이드가 일정을
															마치고 헤어지는 시점으로 합니다.<br />
															<br />제22조 (투어 진행 중 여행자에 대한 의무)<br />1. 가이드는 투어가 차질 없이
															이루어지도록 여행자와 약속한 일시(日時)에 미팅포인트에 미리 도착해 있어야 합니다.<br />2.
															가이드는 여행확인증에 기재된 스케줄에 따라 제7조의 용역을 성실히 제공하여야 합니다.<br />3.
															가이드는 투어 스케줄에 포함된 지역 또는 장소에 관하여 여행자에게 정확하고 상세한 정보를 친절하게
															제공하여야 합니다.<br />4. 가이드는 여행자에게 정치적, 종교적 또는 사회적 의견을 강요하지
															않아야 합니다.<br />5. 투어 중 또는 투어 직후 여행자에게 사고 등 문제가 발생한 경우,
															가이드는 여행자의 문제 해결을 위하여 가능한 최선의 노력을 다하여야 합니다.<br />6. 가이드는
															여행자에게 여행확인증에 기재된 비용 이외에 팁, 선물 등 일체의 경제적 이익을 요구하여서는 안됩니다.<br />7.
															가이드는 여행확인증에 기재된 스케줄에 따른 투어 이외에 여행자에게 쇼핑 또는 추가적 비용을 지불하고
															스케줄에 예정되어 있지 않은 서비스(이하 “옵션관광”)를 이용할 것을 요구하여서는 안 됩니다.<br />8.
															가이드는 여행자의 요청이 있더라도 위험하거나 가이드가 잘 알고 있지 못한 지역 또는 장소, 성매매 또는
															이와 유사한 위법한 행위가 이루어지는 지역 또는 장소로 여행자를 인솔 또는 인도하거나, 이를 안내 또는
															소개하는 등 알선하여서는 안 됩니다.<br />9. 가이드는 여행자약관 중 투어 진행 중 여행자에 대한
															의무 사항을 준수하여야 합니다.<br />
															<br />제23조 (가이드의 투어 스케줄 위반)<br />1. 여행자와 약속한 시간까지 미팅포인트에
															도착하지 못할 것이 예상되는 경우, 가이드는 약속시간 이전까지 여행자에게 도착이 늦어지게 된 경위,
															예상 도착 시간, 지체된 시간 만큼의 추가 투어가 제공된다는 사실 등을 구체적으로 통지(이하
															“우선통지”)하여야 합니다.<br />2. 우선통지는 여행자가 그 통지를 수령하였음이 확인된 경우에만
															적법한 것으로 인정되며, 여행자는 가이드로부터 우선통지를 수령하지 못한 상태에서 가이드가 연락 없이
															약속한 시간으로부터 15분이 지나도록 미팅포인트에 도착하지 않는 경우 여행계약을 해지할 수 있습니다.<br />3.
															가이드의 귀책사유로 투어의 개시가 지체된 경우, 가이드는 위 지체된 시간만큼의 투어를 여행자에게 추가로
															제공하여야 합니다.<br />
															<br />제24조 (여행자의 투어 스케줄 위반)<br />1. 여행자가 약속시간보다 늦게 미팅포인트에
															도착하는 경우 지각한 시간(이하 “지각시간”)이 10분 이하이면 가이드는 여행자가 도착한 시점부터
															투어를 개시하며, 지각시간 상당의 투어를 추가적으로 진행하여야 합니다.<br />2. 지각시간이 15분
															이상인 경우, 지각시간은 투어 진행시간에 산입되며 가이드는 예정된 종료시각까지 투어를 진행하며 지각시간
															상당의 투어를 추가적으로 진행할 의무가 없습니다.<br />3. 여행자가 아무런 연락 없이
															약속시간으로부터 15분 이상 미팅포인트에 도착하지 않는 경우 해당 가이드는 여행자와의 여행계약을 해지할
															수 있습니다.<br />4. 본 조 제1항 내지 제3항에도 불구하고, 사전에 투어를 함께 진행하기로
															예정된 다른 여행자의 전부 또는 일부가 정시에 미팅포인트에 도착한 경우에는, 가이드는 사전에 예정된
															일정에 따라 투어를 진행할 수 있으며, 지각한 여행자에게 지각시간 상당의 투어를 추가적으로 제공할
															의무가 없습니다.<br />
															<br />제25조 (상대방과의 합의에 의한 계약의 해지)<br />1. 가이드 또는 여행자는 투어가
															개시된 이후에는 상대방과의 합의 없이 임의로 여행계약을 해지할 수 없습니다.<br />2. 상대방과의
															합의에 따라 여행계약을 해지하는 경우, 가이드요금의 반환에 관한 사항 또한 상호 합의한 내용에
															따릅니다.<br />3. 본 조의 합의해지가 이루어진다고 하더라도, 당사는 여행자로부터 지급받은
															수수료를 환불할 의무가 없습니다.<br />
															<br />제26조 (상대방의 귀책사유로 인한 계약의 해지)<br />1. 여행자 또는 가이드는
															상대방에게 책임 있는 사유(제23조 및 제24조의 해지를 포함한다)로 인하여 투어의 진행이 현저히
															곤란하게 된 경우 여행계약을 해지할 수 있습니다.<br />2. 여행자에게 책임 있는 사유로 제1항의
															계약 해지가 발생한 경우, 여행자는 여행요금의 환불을 청구할 수 없습니다.<br />3. 가이드에게
															책임 있는 사유로 제1항의 계약 해지가 발생한 경우, 여행자는 당사에 여행요금 전액의 환불을 청구할 수
															있습니다. 이 경우, 당사는 가이드에게 여행자에게 반환한 수수료 금액과 추가 손해배상 금액을 청구할 수
															있으며, 이는 최대 여행요금의 200%로 한정합니다.<br />4. 본 조에 따른 여행계약의 해지가
															발생한 경우, 귀책사유 있는 당사자는 여행요금과 별개로 그로 인하여 상대방이 입은 손해를 배상하여야
															합니다.<br />
															<br />제27조 (당사자 쌍방에게 책임 없는 사유로 인한 계약의 해지)<br />1. 가이드 및
															여행자 모두에게 책임 없는 사유로 인하여 투어의 진행이 불가능한 경우, 여행자 또는 가이드는 여행계약을
															해지할 수 있습니다.<br />2. 제1항의 해지가 발생한 경우, 가이드는 가이드요금 중 일정상 계획된
															전체 투어 시간 중 진행되지 못한 투어 시간의 비율 상당 금액을 여행자에게 반환하여야 합니다.<br />3.
															제1항의 해지가 발생한 경우, 당사는 가이드는 대신하여 제2항에 따라 가이드가 여행자에게 반환하여야 할
															금액 상당을 정산하여 여행자에게 환불하며, 가이드에게는 여행자로부터 지급받은 가이드요금 중 위 환불금을
															공제하고 난 후 잔여 가이드요금을 정산하여 지급합니다.<br />4. 제2항의 전체 투어 시간 중
															진행되지 못한(또는 진행된) 투어 시간의 비율은 가이드 및 여행자의 합의를 통하여 정하는 것을 원칙으로
															하며, 합의가 되지 않는 경우 당사가 객관적이고 중립적인 기준에 따라 그 비율을 정합니다.<br />5.
															본 조에 따른 해지와 관련하여 당사 및 가이드는 제2항 및 제3항에 규정된 사항 이외에 여행자에 대하여
															그 밖의 다른 의무를 부담하지 않습니다.<br />
															<br />제6장 당사자들의 권리 및 의무<br />
															<br />제28조 (가이드의 당사에 대한 일반 의무)<br />1. 가이드는 투어와 관련하여 당사와
															긴밀한 협력관계 및 원활한 의사소통을 유지하여야 합니다.<br />2. 가이드는 투어 또는 여행자과
															관련하여 사고 등 문제가 발생한 경우 지체 없이 이를 당사에 보고하여야 한다.<br />3. 가이드는
															투어 관련 여부를 불문하고 당사의 명성, 평판 또는 이미지 등을 손상시킬 위험이 있는 행위를 하여서는
															안 됩니다.<br />4. 가이드는 대한민국 및 투어가 이루어지는 국가의 법령 등에 위반하는 행위를
															하여서는 안됩니다.<br />5. 가이드는 여행자약관 중 당사에 대한 수수료 보전 등의 의무사항을
															준수하여야 합니다.<br />6. 가이드는 동일한 여행상품을 당사 및 타사에 게재하는 경우에 타사에
															게재한 최저 판매가와 동일한 판매가를 마이리얼트립의 플랫폼에 게재하여야 합니다.<br />
															<br />제29조 (당사의 중개를 통하지 않은 거래 및 보수 수령 금지)<br />가이드는 제12조
															또는 제15조를 위반하거나 그밖에 이 약관에 따른 여행계약과 별도의 계약을 체결하는 등 방법을 통하여
															당사로부터 사전 서면 동의를 받지 않은 채 여행확인증에 기재된 바와 달리 투어를 진행하고 그 대가로서
															투어 개시 전·후를 불문하고 당사를 통하지 않은 채 여행자로부터 직접 가이드요금 기타 어떠한 명목의
															보수도 지급 받아서는 아니 됩니다.<br />
															<br />제30조 (당사의 가이드에 대한 일반 의무)<br />1. 당사는 최선을 다하여 마이리얼트립
															플랫폼을 통하여 가이드와 여행자의 투어를 중개합니다.<br />2. 당사는 여행자로부터 가이드에게 요청
															사항 등이 접수된 경우, 해당 내용을 지체 없이 전달하여야 합니다.<br />3. 기타 당사는
															여행자약관 중 가이드에 대한 의무 사항을 준수하여야 합니다.<br />
															<br />제31조 (비밀유지의무)<br />가이드약관 내용 및 조건과 가이드약관과 관련하여
															상대방으로부터 제공받은 모든 정보는 다음의 각 호에 해당하는 경우를 제외하고는 비밀로 하고, 이를
															제3자에게 제공하거나 다른 목적으로 사용할 수 없습니다.<br />(1) 당사자가 공개하기로 합의한
															사항<br />(2) 공지된 정보<br />(3) 정보를 제공받은 당사자가 제3자로부터 이미 적법하게
															취득한 정보<br />(4) 법원 또는 행정기관이 적법하게 공개 또는 제공을 요구한 정보<br />
															<br />제7장 손해배상<br />
															<br />제32조 (가이드의 일반 손해배상의무)<br />1. 가이드는 여행계약을 위반하는 경우,
															그로 인하여 여행자가 입은 손해를 배상할 의무를 부담합니다. 단, 여행자에게 신체 손상이 없는 경우
															가이드의 손해배상책임은 여행요금의 100%를 한도로 합니다.<br />2. 가이드는 본인 또는 그
															고용인이 고의 또는 과실로 위법하게 여행자에게 손해를 가한 경우 그로 인하여 여행자가 입은 손해를
															배상합니다.<br />3. 가이드는 항공기, 기차, 선박 등 교통수단의 연발착 또는 교통체증 등으로
															인하여 여행자가 입은 손해를 배상합니다. 단, 가이드가 자신에게 그에 대한 고의 또는 과실이 없음을
															입증한 경우에는 그러하지 아니합니다.<br />4. 가이드는 여행자의 수하물을 수령, 인도, 보관할
															의무가 없으며, 수하물이 멸실, 훼손 또는 연착되어 여행자에게 발생한 손해를 배상할 책임이 없습니다.<br />5.
															가이드로 인하여 여행자가 당사를 상대로 손해배상을 청구하는 등의 법적 조치를 취한 경우 가이드는 자신의
															고의·과실로 인하여 야기된 비용을 분담할 책임이 있습니다.<br />
															<br />제33조 (여행 내용 불일치 등에 따른 가이드의 손해배상의무)<br />1. 본 조에 따른
															손해배상은 다음 각 호의 사유가 발생한 경우에 대하여 적용됩니다.<br />(1) 가이드가 제18조
															내지 제19조에 정한 사유 외의 사유로 국내여행계약 및 해외여행계약을 투어 개시 전에 임의로 해제하는
															경우<br />(2) 실제 투어 시간이 사전 약정에 따른 투어 시간과 명확하게 불일치하는 경우<br />(3)
															실제 투어 인원이 사전 약정에 따른 투어 인원과 명확하게 불일치하는 경우<br />(4) 실제 투어
															코스가 사전 약정에 따른 투어 코스와 명확하게 불일치하는 경우<br />(5) 그밖에 실제 투어 내용이
															사전 약정에 따른 투어 내용과 명확하게 불일치하는 경우<br />2. 제1항에 정한 사전 약정은 해당
															투어와 관련하여 (i) 마이리얼트립 플랫폼 내부 메시지창, (ii) 여행확인증, (iii) 상품 소개
															페이지를 통하여 명시된 내용에 한정하며, 제1항 각 호의 사유가 발생하였는지 여부에 대하여 여행자와
															가이드 사이에 다툼이 있는 경우, 당사가 객관적이고 중립적인 기준에 따라 이를 판단합니다.<br />3.
															다음 각 호의 요건을 충족하는 여행자는 가이드에게 본 조에 따른 손해배상을 청구할 수 있습니다.<br />(1)
															가이드의 투어 내용 변경에 동의 또는 합의하는 등 여행자 자신이 제1항 각 호의 사유 발생을 직접적
															또는 간접적으로 야기하지 않았어야 합니다.<br />(2) 가이드에게 투어 내용 변경에 대하여 이의하는
															등 제1항 각 호의 사유 발생을 막기 위한 합리적인 노력을 다하였어야 합니다.<br />(3) 여행자는
															투어 종료 후(제1항 제1호의 경우에는 가이드로부터 해제 통보를 받은 후) 48시간 이내에 고객센터의
															이메일 또는 전화를 통하여 당사에 제1항 각 호의 사유 발생 사실을 통지하여야 합니다.<br />4.
															제3항의 요건이 충족되는 경우, 가이드는 여행자의 선택에 따라 다음 각 호의 손해배상 방식 중 어느
															하나의 방식으로 여행자에 대한 손해를 배상하여야 합니다.<br />(1) 현금배상 : 이 경우 구체적인
															배상금액은 당사의 ‘여행불만족 손해배상위원회’ 가 내부 규정 및 지침에 따라 합리적으로 산정하되,
															여행자로부터 지급받은 여행요금을 최대 한도로 하여 정합니다.<br />(2) 마이리얼트립 credit
															배상 : 현금이 아닌 추후 당사가 중개하는 여행계약에서 여행요금으로 사용 가능한 쿠폰 혹은 포인트를
															부여합니다. 대신 이를 선택하는 경우 배상 쿠폰 혹은 포인트는 제1호에 따라 산정된 현금배상 금액의
															110% 상당으로 정합니다.<br />5. 당사는 본 조의 손해배상 채무를 가이드를 대신하여 여행자에게
															변제할 수 있습니다. 이 경우 당사는 여행자에 대한 변제금액 상당을 가이드에게 구상할 수 있으며,
															가이드는 그에 대하여 이의하지 않고 당사의 구상에 응하여야 합니다.<br />6. 본 조에 따른
															손해배상이 이루어지는 경우, 여행자는 자신이 입은 실제 손해액이 본 조에 따른 손해배상액을 초과함을
															객관적으로 주장, 입증하지 않는 이상 제32조를 포함한 본 약관상의 다른 조항을 근거로 하여 가이드
															또는 당사에게 손해배상을 청구할 수 없습니다.<br />
															<br />제34조 (당사의 손해배상의무)<br />당사는 가이드약관에 명시적으로 규정된 사항 또는
															고의 또는 중과실로 인한 불법행위를 행한 경우 이외에는 여행자 또는 가이드에 대하여 어떠한 손해배상
															책임도 부담하지 않습니다.<br />
															<br />제35조 (제3자에 대한 책임)<br />가이드가 투어와 관련하여 제3자에게 손해를 발생시킨
															경우, 가이드는 자신의 고의·과실로 인하여 야기된 비용을 분담할 책임이 있습니다.<br />
															<br />제8장 약관의 위반<br />
															<br />제36조 (중대한 약관 위반)<br />1. 다음 각 호의 1은 가이드약관의 중대한 위반으로
															봅니다.<br />(1) 가이드가 투어가 확정되기 이전에 당사의 사전 서면 동의 없이 자신의 연락처,
															은행계좌 등의 정보를 투어대기자에게 제공하는 경우<br />(2) 가이드가 여행자와 약속한 일시 및
															미팅포인트에 30분 이상 지각하는 경우<br />(3) 가이드가 여행자와 약속한 일시 및 미팅포인트에
															지각하여 3회 이상 문제를 일으킨 경우<br />(4) 가이드가 당사 및 여행자의 사전 서면 동의 없이
															두 그룹 이상의 여행자들을 대상으로 동시에 투어를 진행한 경우<br />(5) 가이드가 당사 및
															여행자의 사전 서면 동의 없이 자신이 아닌 제3자를 통하여 투어를 진행하거나 제7조의 용역을 제공한
															경우<br />(6) 가이드가 제15조를 위반하여 여행확인증에 기재된 스케줄 및 비용 등 조건을 변경한
															경우<br />(7) 가이드가 제29조를 위반하여 여행확인증에 기재되지 않은 투어를 진행하고 그에 대한
															보수를 당사를 통하지 않은 채 여행자로부터 직접 수령한 경우<br />(8) 가이드가 여행자에게
															여행확인증에 기재된 비용 외에 경제적 이익을 요구한 경우<br />(9) 가이드가 여행자에게 쇼핑 또는
															옵션관광을 할 것을 요구한 경우<br />(10) 여행자에 의하여 가이드의 투어 진행과 관련하여
															컴플레인이 2회 이상 제기되고, 당사가 확인한 결과 각 컴플레인의 내용이 객관적으로 가이드약관에 위반한
															것으로 판단되는 경우<br />2. 제1항의 중대한 약관 위반이 발생하는 경우, 가이드는 당사 및
															여행자에 발생한 손해에 대하여 배상하여야 하며, 이때 손해배상금액은 당해 투어에 대한 여행요금의
															200%를 한도로 합니다.<br />
															<br />제37조 (중개의 중단 등)<br />1. 당사는 다음 각 호에 해당하는 경우 가이드에 대한
															서면 통지로써 해당 가이드에 대한 여행계약 체결의 중개를 즉시 중단할 수 있습니다.<br />(1)
															제36조 제1항 각 호의 중대한 약관 위반이 발생한 경우<br />(2) 가이드가 가이드약관에 따른
															의무이행에 있어 관련 법령을 위반한 경우<br />(3) 가이드가 여행자약관을 위반하여 당사가 더 이상
															해당 가이드와 관련한 여행중개를 하기 어렵다고 판단하는 경우<br />(4) 가이드가 범죄행위로 인하여
															국내법 또는 행위지법상 형사처벌을 받은 경우<br />(5) 가이드의 가이드약관 위반행위 또는 비윤리적
															행위로 인하여 당사의 명성, 평판 또는 이미지에 현저한 손상이 발생한 경우<br />(6) 기타
															가이드약관에 따른 가이드의 용역 제공이 현실적으로 불가능하게 된 경우<br />2. 당사는 가이드가
															그밖에 법령 또는 가이드약관을 위반하는 경우 해당 가이드에게 서면을 통하여 계약 위반 사실을 통지하고
															그에 대한 시정을 요청할 수 있으며, 가이드가 위 요청을 받은 후 [14]일이 경과하였음에도 법령 또는
															가이드약관의 위반을 시정하지 않는 경우 서면 통지로써 해당 가이드에 대한 여행계약 체결의 중개를 중단
															수 있습니다.<br />3. 당사는 제1항 또는 제2항의 경우 중개 중단과 더불어 다음 각 호의 조치를
															취할 수 있습니다.<br />(1) 마이리얼트립 플랫폼 상에서 해당 가이드가 제공하는 투어 서비스와
															관련한 기존 게시물의 게시를 최대 [6]개월 간 중단할 수 있습니다.<br />(2) 마이리얼트립
															플랫폼 상에서 해당 가이드가 제공하는 투어 서비스와 관련한 신규 게시물의 게시를 최대 [6]개월 간
															금지할 수 있습니다.<br />
															<br />제9장 기타 사항<br />
															<br />제38조 (지적재산권)<br />1. 당사는 가이드로부터 사전 이용허락을 받고 제출받은
															가이드 저작물(서류, 사진, 글, 도화, 디자인, 마케팅, 동영상, 아이디어, 개념, 노하우, 기술
															등)을 홍보 등 영업상의 목적을 위하여 복제, 배포, 2차적 저작물 작성 등의 방식을 통하여 이용할 수
															있습니다.<br />2. 당사가 본 조 제1항에 따라 제출받은 저작물을 홍보 등 영업상의 목적을 위하여
															보충, 수정하여 작성한 자료가 2차적 저작물에 해당하는지 여부와 무관하게, 가이드는 위 자료를
															이용하거나 타인에게 제공할 경우 사전에 당사의 서면 동의를 구해야 합니다.<br />
															<br />제39조 (세금 등 관련 비용)<br />1. 각 당사자는 가이드약관의 이행에 있어 소요되는
															세금 및 기타 비용을 각자 부담합니다. 특히, 가이드요금과 관련하여 발생한 일체의 세금 기타 비용은
															가이드가 자신의 책임 하에 부담하여야 합니다.<br />2. 각 당사자는 상대방이 세금 등 비용의
															처리와 관련하여 다른 상대방에게 영수증 등 증빙서류를 요청할 때 이에 응하여야 하고, 증빙서류의 미비,
															분실 등으로 인하여 상대방에게 손해가 발생한 때에는 이를 배상하여야 합니다.<br />
															<br />제40조 (설명의무)<br />가이드는 당사를 통하여 여행계약의 중요 내용 및 그 변경사항을
															여행자에게 설명하여야 하며, 당사는 이에 따라 여행자에게 여행계약에 규정된 중요한 내용 및 그
															변경사항을 여행자가 이해할 수 있도록 구체적으로 설명합니다.<br />
															<br />제41조 (별도 합의)<br />당사는 가이드약관 외에 별도로 가이드가 당사 또는 여행자에
															대하여 준수하여야 할 사항을 별도로 정하여 가이드에게 통지할 수 있으며, 이는 가이드약관 내용의 일부를
															이룹니다. 가이드가 이에 동의하지 않을 경우 가이드는 당사에 대한 서면 통지로써 당사와의 거래를 중단할
															수 있습니다.<br />
															<br />제42조 (양도 금지)<br />어느 당사자도 이 약관에 따른 자신의 권리, 의무, 지위의
															전부 또는 일부를 상대방의 사전 서면 동의 없이 양도, 이전할 수 없습니다.<br />
															<br />제43조 (개인정보 및 보험가입 등)<br />가이드는 투어와 관련하여 취득한 여행자의
															성명, 여권번호, 연락처 등 개인정보를 개인정보 보호법 등 제반 법령에 따라 적법하게 관리하여야 하며,
															투어와 관련하여 여행자에게 손해가 발생한 경우 여행자에게 보험금을 지급하기 위하여 보험 또는 공제에
															가입하거나 영업보증금을 예치하여야 합니다.<br />
															<br />제44조 (불가항력)<br />어떠한 당사자도 화재, 폭풍, 홍수, 지진, 사고, 전쟁(실제
															발생 또는 선포 여부를 불문함), 반란, 폭동 기타 민란, 전염병, 격리, 천재지변, 정부조치 등
															자신의 통제를 벗어난 사유에 의해 가이드약관 조건을 이행 또는 준수하지 못하는 경우 이에 대한 책임을
															지지 아니합니다. 해당 당사자는 불가항력적인 사유의 발생 후 가능한 한 빨리 이를 상대방 당사자에게
															통지하고 그 사유가 제거 또는 중단된 후 가능한 한 신속하게 가이드약관 조건의 이행 및 준수를
															재개하여야 합니다.<br />
															<br />제45조 (준거법 및 관할)<br />가이드약관은 대한민국법을 그 준거법으로 하며, 이에
															따라 해석되고, 협의에 의하여 이 약관에 관련된 분쟁을 해결할 수 없는 경우에는 그 소송의 관할은
															당사자 간의 합의에 따르며, 사전 합의된 바가 없는 경우에는 민사소송법의 관할 규정에 따릅니다.<br />
															<br />[부칙] (2014년 10월 28일)<br />1. 이 약관은 2014년 10월 28일부터
															적용됩니다.<br />
															<br />[부칙] (2016년 9월 6일)<br />1. 이 약관은 2016년 9월 6일부터
															적용됩니다.<br />
															<br />[부칙] (2017년 6월 30일)<br />1. 이 약관은 2017년 6월 30일부터
															적용됩니다.<br />
															<br />[부칙] (2017년 10월 11일)<br />1. 이 약관은 2017년 10월 11일부터
															적용됩니다.<br />
															<br />[별첨. 취소환불정책]<br />각 상품 별 취소 환불 약관이 별도 기재되어 있을 경우,
															별도 기재 내용이 해당 규정으로서 선 적용됩니다.<br />
															<br />-가이드투어 취소/환불 안내<br />가이드는 가이드약관 제17조 제1항에 따라 여행요금
															지급이 이루어진 후 투어 개시일 이전에 여행계약을 임의로 해제하는 경우, 해제 통보 시점에 관한 다음
															각 호의 기준에 따라 가이드가 추가 요금을 부담합니다.<br />해제 통보 시점은 환불요청서가
															마이리얼트립 플랫폼에 접수된 시간 또는 마이리얼트립 플랫폼 내 ‘메시지’ 기능을 통하여 환불요청 내용이
															기록된 시간을 기준으로 합니다.<br />[국외여행의 경우]<br />- 여행시작 30일전 (~30)
															까지 통보시: 여행 요금 전액을 여행자에게 환불. 가이드 부담 없음.<br />- 여행시작 20일
															전까지 (29~20) 통보시: 여행요금에서 가이드 요금의 10%와 마이리얼트립 수수료를 가이드가 부담.<br />-
															여행시작 6일 전까지 (19~6) 통보시: 여행요금에서 가이드 요금의 15%와 마이리얼트립 수수료를
															가이드가 부담.<br />- 여행시작 1 일 전까지 (1~5) 통보시: 여행요금에서 가이드 요금의
															20%와 마이리얼트립 수수료를 가이드가 부담.<br />- 여행시작 시간 기준 24시간 이내 통보시:
															여행요금에서 가이드 요금의 50%와 마이리얼트립 수수료를 가이드가 부담.<br />[국내여행의 경우]<br />-
															여행자가 여행 개시일로부터 3일 이전 통보 시: 여행 요금 전액을 여행자에게 환불. 가이드 부담 없음.<br />-
															여행 개시일로부터 2일 이전 통보 시: 여행요금에서 가이드 요금의 10%와 마이리얼트립 수수료를
															가이드가 부담.<br />- 여행 개시일로부터 여행 시작 시간 기준 24시간 이전 통보 시:
															여행요금에서 가이드 요금의 20%와 마이리얼트립 수수료를 가이드가 부담.<br />- 여행 시작
															시간으로부터 24시간 이내 통보 시: 여행요금에서 가이드 요금의 30%와 마이리얼트립 수수료를 가이드가
															부담.<br />다만, 위의 규정에도 불구하고 다음의 경우에는 예외로 합니다.<br />1) 여행자가
															여행요금을 결제(지급)한 때로부터 24시간 이내에 여행계약을 철회(취소)하는 경우와 여행자가 투어 예약
															후 가이드가 확정되기 전에 취소하는 경우는 여행요금을 전액 환불합니다. 단, 여행자가 여행요금을
															결제하였다고 하더라도 해당 시점으로부터 24시간 이내 여행이 시작될 경우 (Instant Booking
															예약에 해당하는 경우)는 전액 환불 대상에서 제외합니다.<br />2) 상품의 특성에 따라 현지
															예약금으로 지불되어야 하는 금액이 있는 경우 해당 예약금의 환불에 대하여는 각 상품의 상세설명보기에서
															별도로 고지한 취소환불 약관을 적용합니다.<br />
															<br />-티켓 취소/환불 안내<br />아래 내용이 적용되는 대상은 마이리얼트립의 플랫폼(웹사이트와
															어플리케이션 포함)을 통하여 마이리얼트립이 판매대행 또는 구매대행하여 여행자에게 배송하는 실물티켓과
															여행자로 하여금 출력할 수 있도록 제공한 E-바우쳐에 한합니다.<br />[실물티켓]<br />1.
															환불신청가능기간<br />결제일 이후 7일 이내 환불 신청한 경우에 한하여 환불이 가능합니다.<br />(티켓
															유효기간의 1개월 이전에 환불을 신청한 경우에 한하여 환불이 가능합니다.)<br />2. 환불진행시
															유의사항<br />여행자가 반품한 실물티켓을 당사가 수령하여 확인한 후 환불 처리됩니다.<br />실물티켓
															구매시 동봉되었던 티켓 사용 가이드북, 현지 사용 쿠폰 및 사은품도 함께 반품되어야 정상 환불
															처리됩니다.<br />환불요청 접수 후 5일 이내에 당사에 실물티켓이 수령 확인되는 경우에 한해 정상
															환불 처리됩니다.<br />개인 과실로 인하여 실물티켓이 멸실되거나 훼손된 경우에는 환불이 불가하오니,
															각별히 유의하여 주시기 바랍니다.<br />3. 환불수수료<br />취소수수료(결제금액의 10%) 및
															배송비가 환불수수료로 차감됩니다.<br />티켓제공업체에서 자체 규정하는 별도의 환불규정이 있는 경우
															제공업체의 환불규정이 마이리얼트립의 환불규정에 우선하여 적용됩니다. (상품상세보기 기재)<br />[E-바우쳐]<br />티켓제공업체에서
															자체 규정하는 별도의 환불규정에 따라 취소/환불이 진행됩니다. (상품상세보기 기재)<br />티켓제공업체의
															정책에 따라 환불이 원칙적으로 불가할 수 있으니, 신중히 구매하여 주시기를 당부 드립니다.<br />
															<br />-에어텔/민박 상품 군(구 핫딜 상품) 취소/환불 안내<br />당사는 또는 여행자는
															여행출발전 이 여행계약을 해제할 수 있습니다. 이 경우 발생하는 손해액은
															‘소비자분쟁해결기준’(공정거래위원회 고시)에 따라 배상합니다.<br />여행자의 여행계약 해제 요청이
															있는 경우(여행자의 취소 요청시)<br />- 여행출발일 ~30일전까지 취소 통보시 - 계약금 환급<br />-
															여행출발일 29~20일전까지 취소 통보시 - 여행요금의 10% 배상<br />- 여행출발일
															19~10일전까지 취소 통보시 - 여행요금의 15% 배상<br />- 여행출발일 9~8일전까지 취소
															통보시 - 여행요금의 20% 배상<br />- 여행출발일 7~1일전까지 취소 통보시 - 여행요금의
															30% 배상<br />- 여행출발 당일 취소 통보시 - 여행요금의 50% 배상<br />
														</div>
													</div>
													<div class='col-xs-12'>
														<div class='checkbox-custom checkbox-default'>
															<input id='checkboxTerms' name='checkbox_terms_guide'
																type='checkbox' checked="checked"> <label
																class='terms-label' for='checkboxTerms'>파트너 약관에
																동의합니다.</label>
														</div>
													</div>
												</div>
											</div>
										</div>

										<div class='margin-bottom-10 margin-top-40 clearfix'>
											<div class='col-xs-4 padding-left-5 pull-right'>
												<button class='btn btn-block btn-primary' type='submit'>입력
													완료</button>
											</div>
										</div>
									</form>
									<!-- 
<script>
  window.App = App || {};
  App.directUpload = {
    option: {"key":"uploads/acc6b8d3-8b70-4f63-8d18-5bd8be8155f1/${filename}","success_action_status":"201","acl":"public-read","policy":"eyJleHBpcmF0aW9uIjoiMjAxOS0wNS0yMlQwOTozODo0NloiLCJjb25kaXRpb25zIjpbeyJidWNrZXQiOiJteXJlYWx0cmlwLXVwbG9hZC11cy10ZW1wIn0sWyJzdGFydHMtd2l0aCIsIiRrZXkiLCJ1cGxvYWRzL2FjYzZiOGQzLThiNzAtNGY2My04ZDE4LTViZDhiZTgxNTVmMS8iXSx7InN1Y2Nlc3NfYWN0aW9uX3N0YXR1cyI6IjIwMSJ9LHsiYWNsIjoicHVibGljLXJlYWQifSx7IngtYW16LWNyZWRlbnRpYWwiOiJBS0lBSVhONkNZNERFNjZTS0RIUS8yMDE5MDUyMS91cy1lYXN0LTEvczMvYXdzNF9yZXF1ZXN0In0seyJ4LWFtei1hbGdvcml0aG0iOiJBV1M0LUhNQUMtU0hBMjU2In0seyJ4LWFtei1kYXRlIjoiMjAxOTA1MjFUMTAxMDI1WiJ9XX0=","x-amz-credential":"AKIAIXN6CY4DE66SKDHQ/20190521/us-east-1/s3/aws4_request","x-amz-algorithm":"AWS4-HMAC-SHA256","x-amz-date":"20190521T101025Z","x-amz-signature":"9a121f3549f71424cc580e4fe48d17a1bb2810be57c8c8e634d38d14cce4c0fd"},
    url: "https://myrealtrip-upload-us-temp.s3.amazonaws.com"
  }
</script> -->

								</div>
							</div>
						</div>
					</div>
				</div>
				<div class='col-lg-3'>
					<div class='widget widget-shadow registrations-widget'>
						<div class='widget-header'
							style='background: url(&amp;#39;https://d2yoing0loi5gh.cloudfront.net/assets/roma/about/becomeguide-4786a3745b8e6acc78c65da2015d68beb30e0550c2ecce6fe2a7e0d77ec6ce00.jpg&amp;#39;) no-repeat center center; background-size: cover;'></div>
						<div class='widget-body'>
							<div class='widget-title'>마이리얼트립 파트너가 되면 이런 점이 좋습니다.</div>
							<p>
								1. 많은 여행자가 이용합니다.<br />투어 & 액티비티 분야 국내 1위 자유여행 플랫폼입니다.<br />
								<br />2. 적극적으로 광고를 진행합니다.<br />구글, 네이버, 페이스북 등 다양한 채널에서 공격적인 마케팅
								활동을 지원하고 있습니다.<br />
								<br />3. 상품 등록과 운영이 간편합니다.<br />예약관리/일정관리/정산관리 등의 시스템이 매우 간편합니다.<br />
							</p>
						</div>
						<div class='widget-content'>
							<div class='list-group list-group-bordered'>
								<a class='list-group-item' data-turbolinks='false'
									href='/help/faq#PARTNER' target='_blank'>자주 묻는 파트너 질문</a>
							</div>
						</div>
					</div>

				</div>
			</div>
		</div>
	</div>

	<footer class='site-footer main' id='footer'>
		<div class='container-fluid content-wrap'>
			<p class='copyright'>
				상호명 마이리얼트립 | 대표 : 이동건 | 개인정보책임자 : 류종민<br />사업자등록번호 : 209-81-55339 |
				통신판매업신고번호 : 2017-서울강남-03960 | <a target='_blank'
					href='http://www.ftc.go.kr/www/bizCommView.do?key=232&apv_perm_no=2017322016230203960&pageUnit=10&searchCnd=wrkr_no&searchKrwd=2098155339&pageIndex=1'>사업자정보확인</a><br />서울특별시
				강남구 강남대로 364(역삼동), 미왕빌딩 15층 (주)마이리얼트립<br />대표번호 : 1670-8208 | 일반 문의
				: help@myrealtrip.com<br />운영시간(한국) 09:00 ~ 22:00, 주말/공휴일 포함.<br />자사는
				서울특별시관광협회 공제영업보증보험에 가입이 되어 있습니다.<br />마이리얼트립은 통신판매중개자이며 통신판매의 당사자가
				아닙니다. 따라서 마이리얼트립은 상품·거래정보 및 거래에 대하여 책임을 지지 않습니다.<br />
			</p>
		</div>
	</footer>

	<div class='global-alert-box'></div>

</body>
</html>
