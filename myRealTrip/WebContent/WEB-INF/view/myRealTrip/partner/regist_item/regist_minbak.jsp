<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html
	class="js flexbox canvas canvastext webgl no-touch geolocation postmessage websqldatabase indexeddb hashchange history draganddrop websockets rgba hsla multiplebgs backgroundsize borderimage borderradius boxshadow textshadow opacity cssanimations csscolumns cssgradients cssreflections csstransforms csstransforms3d csstransitions fontface generatedcontent video audio localstorage sessionstorage webworkers applicationcache svg inlinesvg smil svgclippaths js-menubar"
	lang="en" style="">

<head>

<script
	src="http://ajax.googleapis.com/ajax/libs
	/jquery/3.4.1/jquery.min.js"
	type="text/javascript"></script>

<!-- <script type="text/javascript" src="js/script.js"></script> -->
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

<link rel="stylesheet" media="all"
	href="/myRealTrip/css/app_template_1.css">
<link rel="stylesheet" media="all"
	href="/myRealTrip/css/app_template_2.css">
<link rel="stylesheet" media="all"
	href="/myRealTrip/css/app_template_3.css">

<link href="/myRealTrip/css/googleapi_font_1.css" rel="stylesheet">
<script src="/myRealTrip/js/app_template_4.js">
    </script>
<script src="/myRealTrip/js/mainjs.js"></script>
<style type="text/css"></style>
<!-- <script>
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
<meta content="width=device-width, initial-scale=1.0, user-scalable=0"
	name="viewport">
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

<body class="site-menubar-unfold" data-action="edit"
	data-controller-path="partner/offers" data-controller="offers"
	data-sign-in="">

	<jsp:include page="/WEB-INF/layout/partnerpage_top.jsp"></jsp:include>
	<jsp:include page="/WEB-INF/layout/partnerpage_nav.jsp"></jsp:include>

	<div class="page animsition">
		<div class="page-header">
			<ol class="breadcrumb">
				<li><a
					href='<%=request.getContextPath() %>/partner/dashboard.do'>HOME</a>
				</li>
				<li><a href="/partner/offers">상품 관리</a></li>
				<li class="active">상품 수정</li>
			</ol>

		</div>
		<div class="page-content container-fluid">
			<div class="row">
				<div class="col-md-9">
					<div class="widget">
						<div class="widget-header padding-20 clearfix">
							<a
								class="avatar avatar-100 bg-white margin-right-20 img-bordered pull-left col-sm-3 col-xs-6"
								href="javascript:void(0)"> <img
								src="//d2yoing0loi5gh.cloudfront.net/assets/default/user_profile_image-414acc60b27f0a258bec14c82b70dc361fc6768da9289f924f887bec1fc33849.png">
							</a>
							<div class='vertical-align height-100 col-sm-9 col-xs-6'>
								<div class='vertical-align-middle'>
									${authUser.member_name}님,<br />마이리얼트립의 가이드 인터뷰를 위해서는 문소민님이
									구상하고 계시는 여행 상품 등록이 필요합니다.<br />
								</div>
							</div>
						</div>
					</div>
		
<!-- 					 	enctype="multipart/form-data"  -->
					<form data-validation="false" data-istour="false"
						data-isticket="false" data-ishotdeal="false" data-islodging="true"
						data-offer-status="temp" id="offerForm"
						class="panel panel-bordered fv-form fv-form-bootstrap"
						action="<%=request.getContextPath() %>/partner/regist_minbak.do"
						accept-charset="UTF-8" method="post" novalidate="novalidate">
						<%--   <form id="ajaxform" action="<%=request.getContextPath() %>/partner/regist_minbak.do" method="post"
                        enctype="multipart/form-data"> --%>
						<button type="submit" class="fv-hidden-submit"
							style="display: none; width: 0px; height: 0px;"></button>
						<input name="utf8" type="hidden" value="✓"> <input
							type="hidden" name="_method" value="put"> <input
							type="hidden" name="authenticity_token"
							value="YQ4Lcbfdtog1INzzRMYIXrUTvl4QULFU1I3+maMBSPn2vuoGvCagRtBEXn+wl/QUbS8NbYbIzGuvKBk8yPTyOw==">
						<div class="panel-heading">
							<div class="panel-title">상품 등록</div>
						</div>
						<div class="panel-body">
							<div class="form-group clearfix default-message">
								<div class="title">특별한 여행을 만들어 보세요.</div>
								<div class="guide-box">
									<p class="help-block">
										• 안내에 따라 여행 내용을 정확하게 설명하여 주세요.<br>• 상품 등록이 완료되면, 승인을 위한
										심사가 진행됩니다.<br>
									</p>
									<p class="help-block">* 필수항목</p>
								</div>
							</div>
							<hr class="divider">

							<div class='form-group clearfix'
								data-desc='• 상품을 등록하고자 하는 나라와 도시를 선택해주세요.<br/>• 선택하고자하는 도시가 없을 경우, [해당 도시 없음] 에 체크해주세요.<br/>'>
								<label class='control-label col-xs-2'> 나라/도시 <span>*</span>
								</label>
								<div class='col-xs-10'>
									<div class='row'>
										<div class='col-xs-6'>
											<select class='form-control' id='offerCountryInfo'
												name="n_code">
												<option disabled selected>나라 선택</option>
												<c:forEach items="${nationlist}" var="nationlist">
													<option value="${nationlist.n_code }">${nationlist.n_name}
													</option>
												</c:forEach>
											</select>
										</div>
										<script>
											jQuery(document).ready(function (){
												jQuery("#offerCountryInfo").on("change",function(){
											
												 var nationcode=jQuery("#offerCountryInfo").val();
												var nationcode= $("#offerForm").serialize();
												alert(nationcode);
												jQuery.ajax({
																url: "<%=request.getContextPath()%>/partner/citycodeajax.do",
																type : "POST",
																dataType : "json",
																data : nationcode,
																success : function(citylist) {
																	
																	$('#offerCityInfoID').empty();
																	
															    jQuery(citylist).each(function (index, e){
															     var c_code = e.c_code;
															     var c_name = e.c_name;
															        var option = 
															        	jQuery( "<option value="+c_code+">"
																	         +c_name+"</option>");
															   		jQuery('#offerCityInfoID').append(option);											         
																
																		});
																	}
															});
													 event.preventDefault();
												});
									   });
											</script>
										<div class='col-xs-6'>
											<select class='form-control offer-city-value'
												id='offerCityInfoID' name='citycode'>
												<option id="cityoption" disabled selected value='default'>
													도시선택</option>

											</select>
										</div>
									</div>

								</div>
							</div>
							<hr class="divider">
							<div class="form-group clearfix"
								data-desc="• 여행자들이 이 상품을 구매하면 해피콜을 받을 것으로 기대합니다.<br/>">
								<div class="col-xs-12">
									<div class="checkbox-custom checkbox-primary">
										<input name="b_hcall" type="hidden" value="false">
										<input id="requireHappycall" name="offer[happycall]"
											type="checkbox" value="true"> <label
											for="requireHappycall">이 상품은 해피콜 상품입니다.<br>예약 확정
											후 고객에게 해피콜이 필요합니다.<br></label>
										<div class="col-xs-12">
											<p class="help-block">
												• 예약 확정 후 고객에게 해피콜이 필요합니다.<br>
											</p>
										</div>
									</div>
								</div>
							</div>

							<hr class="divider">
							<div class="form-group clearfix has-error"
								data-desc="<span class=&quot;font-weight-600&quot;>제목 예시</span><br/>&quot;[제주] 애월바다 앞 17년 2월 신축 쉬멍 게스트하우스 (조식 제공)&quot;<br/><br/>주의: 맞춤법에 맞게 작성해주세요. 특수문자를 사용하지 마세요.<br/>">
								<label class="control-label col-xs-12" for="offerTitle">
									여행 제목 <span>*</span>
								</label>
								<div class="col-xs-12">
									<input class="form-control required" id="offerTitle_title"
										name="p_name" type="text" data-fv-field="offer[title]" value="믿을수있는 영국 한인민박!">
									<small class="help-block" data-fv-validator="notEmpty"
										data-fv-for="offer[title]" data-fv-result="INVALID" style="">제목을
										써주세요</small><small class="help-block" data-fv-validator="stringLength"
										data-fv-for="offer[title]" data-fv-result="VALID"
										style="display: none;">멋진 제목이지만 너무 길어요.</small><small
										class="help-block" data-fv-validator="callback"
										data-fv-for="offer[title]" data-fv-result="VALID"
										style="display: none;">기본 특수문자를 제외한 특수문자는 입력이 불가능합니다.</small>
								</div>
								<div class="form-group clearfix">
									<div class="col-xs-12 guide-box">
										<p class="help-block">
											• 해당 상품에 대해서 정확하고 간결하게 표현해주세요.<br>
										</p>
									</div>
								</div>
							</div>
 <hr class="divider">
    <div class="form-group clearfix has-error"
        data-desc="• 여행자가 만날 여행지의 사진을 올려주세요.<br/>• 이미지 사이즈 규격 : 980*735 (상품상세 페이지에 보이는 칸의 크기에 따라 조금씩 잘릴 수 있습니다)<br/>• 4장 이상 등록 필수<br/>• 규격을 벗어난 사진은 자동으로 크롭되어 나타납니다.<br/>• 상업적 용도로 사용 가능한 사진만 업로드 가능합니다.<br/>• 최대 20장까지 사진 등록 가능합니다.<br/>• 참고) gif 이미지는 등록이 불가능합니다.<br/>">
        <label class="control-label col-lg-12" for="offerPhotos">
            여행 사진 <span>*</span>
        </label>
        <div class="col-xs-12">
            <div class="clearfix margin-bottom-10">
                <input data-type="lodging" id="offer_photo_size" name="hot_deal_offer_photo_size" type="hidden"
                    value="0" data-fv-field="hot_deal_offer_photo_size">
                <div class="file-upload-btn">
                    <input id="offerPhotoFileBtn" type="file" name="travelphoto" />
                    <div class="btn btn-default btn-picture-add btn-picture-add-top btn-block ladda-button"
                        data-spinner-color="DarkGrey" data-style="zoom-out" for="offerPhotoFileBtn"
                        id="btnOfferPhotoTop">
                        <span class="ladda-label"> <i class="icon fa-camera"></i>
                            사진등록
                        </span> <span class="ladda-spinner"></span>
                    </div>
                </div>
            </div>
            <small class="help-block" data-fv-validator="notEmpty" data-fv-for="hot_deal_offer_photo_size"
                data-fv-result="VALID" style="display: none;">여행 사진을 올려주세요.</small><small class="help-block"
                data-fv-validator="greaterThan" data-fv-for="hot_deal_offer_photo_size" data-fv-result="INVALID"
                style="">1개 이상의 사진을 올려주세요.</small>
        </div>
    </div>


    <div id="big" class="form-group clearfix">
        <div class="col-lg-12">
            <p class="help-block">
                • 첫 사진이 대표사진으로 자동 지정됩니다.<br>• 첫 사진에 텍스트 및 로고가 있을 경우
                마이리얼트립 검수팀에서 사진을 수정 혹은 삭제 할 수 있습니다.<br>• 사진을 드래그 하여 순서를
                바꿀수 있습니다.<br>• 최대 20장까지 사진 등록 가능합니다.<br>• 배경이 흰색인
                이미지는 지양해주세요. 상품 페이지가 흰색이기 때문에 사진이 잘린 것처럼 보일 수 있습니다.<br>
            </p>
        </div>
<!--         <div class="col-xs-12">
            <ul class="image-list row clearfix ui-sortable" id="sortableOfferPhoto">
            </ul>
            <div class="row">
                <div class="col-sm-6 col-xs-12">
                    <div class="hidden margin-5 photo-add-container widget widget-border-dashed"
                        style="display: block;">
                        <div class="widget-body text-center bg-blue-grey-100 blue-grey-700">
                            <div class="file-upload-btn">
                                <input id="offerPhotoFileBtnBottom" multiple="multiple" name="file" type="file">
                                <div class="btn btn-default btn-picture-add btn-picture-add-bottom btn-block ladda-button"
                                    data-spinner-color="DarkGrey" data-style="zoom-out" id="btnOfferPhotoBottom">
                                    for="offerPhotoFileBtnBottom" 
                                    <span class="ladda-label"> <i class="fa fa-plus padding-right-5"></i> 사진등록
                                    </span> <span class="ladda-spinner"></span>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div> -->
    </div>
<div id="travelpic" class="col-xs-12"></div>
    <input type="hidden" id="p_code" name="p_code" value='first' />
    <script>
        $(document).ready(function () { //1.....여행사진 
			
            $("#offerPhotoFileBtn").on("change", function () {
            	var citycode = $("#offerCityInfoID").val();
            	
                    var p_code1 = $('#p_code').val();
                    console.log("p_code1--->" + p_code1);
                    alert("일단 바뀐거 호출");
                    var formData = new FormData();
                    //
                    /* 	for (var i = 0; i < $('#form')[0].files.length; i++) {
                    		fromData.append('sominfile',$('#form').files[i]);
                    		alert($('#form').files[i]);
                    	}
                    	// */
                    for (var i = 0; i < $('#offerPhotoFileBtn')[0].files.length; i++) {
                        formData.append('offerPhotoFileBtn', $('#offerPhotoFileBtn')[0].files[i]);
                        alert(formData);
                    }


                    $.ajax({
                            url: '<%=request.getContextPath()%>/partner/minbak/file1.do?p_code='+p_code1+'&citycode='+citycode,
                            data: formData,
                            processData: false,
                            contentType: false,
                            type: 'POST',
                            dataType: 'json',
                            success: function (data) {

                                alert("ajax콜백함수로 돌아옴");

                                $('#p_code').val(data.p_code);
                                console.log($('#p_code').val());

                                var a = data.filename;
                                var imgpath = "<%= request.getContextPath() %>/img/minbak/" + a;

                                console.log("경로" + imgpath);


                             //   var div = $('<div class="col-xs-12"></div>');
                                var div_ul = $(
                                    ' <ul class="image-list row clearfix ui-sortable" id="sortableOfferPhoto"></ul>'
                                    );
                                var div_ul_li = $(
                                    '<li class="ui-state-default" data-destroy="0"></li>');
                                var div_ul_li_div = $('<div class="photo-container"></div>');
                                var div_ul_li_div_img = $('<img id="travelimg" src=" ' +
                                    'https://myrealtrip-upload-us-temp.s3.amazonaws.com/uploads%2Ffa38c600-048c-4eee-9425-c18c4ee3ca35%2F%EC%8A%AC%ED%94%88%EA%B0%9C%EA%B5%AC%EB%A6%AC.jpg" class="img portrait">'
                                    );
                                var div_ul_li_input1 = $(
                                    '<input type="hidden" name="offer[photos_attributes][][id]" value="">'
                                    );
                                var div_ul_li_input2 = $(
                                    '<input type="hidden" name="offer[photos_attributes][][position]" value="1">'
                                    );
                                var div_ul_li_input3 = $(
                                    '<input type="hidden" name="offer[photos_attributes][][photo_temp_url]" ' +
                                    'value="https://myrealtrip-upload-us-temp.s3.amazonaws.com/uploads%2Ffa38c600-048c-4eee-9425-c18c4ee3ca35%2F%EC%8A%AC%ED%94%88%EA%B0%9C%EA%B5%AC%EB%A6%AC.jpg">'
                                    );
                                var div_ul_li_input4 = $(
                                    ' <input type="hidden" name="offer[photos_attributes][][_destroy]" value="0">'
                                    );
                                var div_ul_li_div2 = $(
                                    ' <div class="ribbon ribbon-primary ribbon-clip"></div>');
                                var div_ul_li_div2_span = $(
                                    ' <span class="ribbon-inner">대표 사진</span>');
                                var div_ul_li_div3 = $('<div class="cover"></div>');
                                var div_ul_li_div3_div = $('<div class="close"></div>');
                                var div_ul_li_div3_div_i = $('<div class="close"></div>');

                                
                                div_ul.append(div_ul_li);
                                div_ul_li.append(div_ul_li_div);
                                div_ul_li_div.append(div_ul_li_div_img);
                                div_ul_li.append(div_ul_li_input1);
                                div_ul_li.append(div_ul_li_input2);
                                div_ul_li.append(div_ul_li_input3);
                                div_ul_li.append(div_ul_li_input4);
                                div_ul_li.append(div_ul_li_div2);
                                div_ul_li_div2.append(div_ul_li_div2_span);
                                div_ul_li.append(div_ul_li_div3);
                                div_ul_li_div3.append(div_ul_li_div3_div);
                                div_ul_li_div3_div.append(div_ul_li_div3_div_i);
                                
                              
								$("#travelpic").empty();
                                $("#travelpic").append(div_ul);
                                
                                $('#travelimg').attr('src', imgpath);

                            }
                    

                    });

            });
        });
    </script>



    <hr class="divider">
    <div class="form-group clearfix has-error" data-desc="• 상품 설명을 포함한 이미지를 올려주세요.<br/>">
        <label class="control-label col-lg-12" for="offerDescriptiveImages"> 상품상세 이미지 <span>*</span>
        </label>
        <div class="col-xs-12">
            <div class="clearfix margin-bottom-10">
                <input name="offer_descriptive_image_size" type="hidden" value="0"
                    data-fv-field="offer_descriptive_image_size">
                <div class="file-upload-btn">
                    <input id="offerDescriptiveImageFileBtn" multiple="multiple" name="file" type="file">
                    <div class="btn btn-default btn-picture-add btn-picture-add-top btn-block ladda-button"
                        data-spinner-color="DarkGrey" data-style="zoom-out" for="offerDescriptiveImageFileBtn"
                        id="btnDescImgTop">
                        <span class="ladda-label"> <i class="icon fa-camera"></i>
                            사진등록
                        </span> <span class="ladda-spinner"></span>
                    </div>
                </div>
            </div>
            <small class="help-block" data-fv-validator="notEmpty" data-fv-for="offer_descriptive_image_size"
                data-fv-result="VALID" style="display: none;">상세 이미지를
                올려주세요.</small><small class="help-block" data-fv-validator="greaterThan"
                data-fv-for="offer_descriptive_image_size" data-fv-result="INVALID" style="">1개 이상의 이미지를 올려주세요.</small>
        </div>
    </div>
    <div id="bigdetail" class="form-group clearfix">
        <div class="col-lg-12">
            <p class="help-block">
                • 상품 상세를 담은 이미지를 올려주세요. (에어텔/항공권 상품 등)<br>• 사진을 드래그 하여
                순서를 바꿀수 있습니다.<br>
            </p>
        </div>
        <!-- <div class="col-xs-12">
            <ul class="image-list row clearfix ui-sortable" id="sortableOfferDescriptiveImage">
            </ul>
            <div class="row">
                <div class="col-sm-6 col-xs-12">
                    <div class="descriptive-image-add-container hidden margin-5 widget widget-border-dashed"
                        style="display: block;">
                        <div class="widget-body text-center bg-blue-grey-100 blue-grey-700">
                            <div class="file-upload-btn">
                                <input id="offerDescriptiveImageFileBtnBottom" multiple="" name="file" type="file">
                                <div class="btn btn-default btn-picture-add btn-picture-add-bottom btn-block ladda-button"
                                    data-spinner-color="DarkGrey" data-style="zoom-out"
                                    for="OfferDescriptiveImageFileBtnBottom" id="btnDescImgBottom">
                                    <span class="ladda-label"> <i class="fa fa-plus padding-right-5"></i> 사진등록
                                    </span> <span class="ladda-spinner"></span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div> -->
    </div>
<div id="traveldetailpic" class="col-xs-12">
</div>

    <script>
        $(document).ready(function () { //2....상세사진

            $("#offerDescriptiveImageFileBtn").on("change", function () {
                var citycode = $("#offerCityInfoID").val();
            	var p_code1 = $('#p_code').val();
                console.log("p_code1--->" + p_code1);
                alert("일단 바뀐거 호출");
                var formData = new FormData();
                //
                /* 	for (var i = 0; i < $('#form')[0].files.length; i++) {
                		fromData.append('sominfile',$('#form').files[i]);
                		alert($('#form').files[i]);
                	}
                	// */
                for (var i = 0; i < $('#offerDescriptiveImageFileBtn')[0].files.length; i++) {
                    formData.append('offerDescriptiveImageFileBtn', $('#offerDescriptiveImageFileBtn')[
                        0].files[i]);
                    alert(formData);
                }

                $.ajax({
                    url: '<%=request.getContextPath()%>/partner/minbak/file2.do?p_code='+p_code1+'&citycode='+citycode ,
                    data: formData,
                    processData: false,
                    contentType: false,
                    type: 'POST',
                    dataType: 'json',
                    success: function (data) {

                        alert("ajax콜백함수로 돌아옴");

                        $('#p_code').val(data.p_code);
                        console.log($('#p_code').val());

                        //    var bigdiv = $('<div class="col-xs-12"></div>');
                            var div_ul = $(
                                '<ul class="image-list row clearfix ui-sortable" id="sortableOfferDescriptiveImage"></ul>'
                                );
                         
                        $(data.filename).each(function (index, e) {


                            var v = e;
                            var a = e.filesystemname;
                            var imgpath = "/myRealTrip/img/minbak/detail/" + v;

                            console.log("경로" + imgpath);
                            var div_ul_li = $(
                                ' <li class="ui-state-default" data-destroy="0"></li>'
                                );
                            var div_ul_li_div1 = $(
                                '<div class="descriptive-image-container"></div>'
                                );
                            var div_ul_li_div1_img = $(' <img id="traveldetailimg" src="' + imgpath +
                                '"class="img portrait"/>');
                            //d안에 e
                            var div_ul_li_input =
                                $('<input type="hidden" class="hiddenfilename" name="offer[descriptive_images_attributes][][id]" ' +
                                    ' value="">');
                            var div_ul_li_div2 = $(' <div class="cover"></div>');
                            var div_ul_li_div2_div = $('<div class="close"></div>');
                            var div_ul_li_div2_div_i = $(
                                '<i id="delete" class="icon wb-close-mini"></i>'
                                );

                         
                            div_ul.append(div_ul_li);
                            div_ul_li.append(div_ul_li_div1);
                            div_ul_li.append(div_ul_li_input);
                            div_ul_li.append(div_ul_li_div2);

                            div_ul_li_div1.append(div_ul_li_div1_img);
                            div_ul_li_div2.append(div_ul_li_div2_div);
                            div_ul_li_div2_div.append(div_ul_li_div2_div_i);
                            $("#traveldetailpic").append(div_ul);
        					$('#traveldetailpic').empty();
                            
                           $('#traveldetailimg').attr('src', imgpath);
                          

                            //    $('#inputimgfile').attr('src',imgpath);

                        });
                        $("#traveldetailpic").append(div_ul);
                    }
                });

            });
        });
    </script>

    <script>
        $(document).ready(function () { //delete 

            $("#delete").on("click", function () {

                $.ajax({
                    url: '<%=request.getContextPath()%>/partner/minbak/delete.do',
                    data: formData,
                    processData: false,
                    contentType: false,
                    type: 'POST',
                    dataType: 'json',
                    success: function (data) {
                    	$("#div_ul").remove();
                    }
                }); //ajax
            }); //event
        }); //document
    </script>





							<hr class="divider">
							<div class="form-group clearfix has-success">
								<label class="control-label col-xs-4"> 예약 가능 시간 설정 <span>*</span>
								</label>
								<div class="col-xs-8">
									<div class="row">
										<div class="col-xs-12">
											<select class="form-control"
												name="b_atime"
												data-fv-field="offer[reservation_limit_offset]">
												<option disabled="disabled">시간 설정</option>
												<option value="12">12</option>
												<option value="18">18</option>
												<option value="24">24</option>
												<option value="30">30</option>
												<option selected="selected" value="36">36</option>
												<option value="48">48</option>
												<option value="60">60</option>
												<option value="72">72</option>
											</select> <small class="help-block" data-fv-validator="notEmpty"
												data-fv-for="offer[reservation_limit_offset]"
												data-fv-result="VALID" style="display: none;">필수
												항목입니다.</small>
										</div>
									</div>
								</div>
							</div>
							<div class="form-group clearfix">
								<div class="col-xs-12">
									<p class="help-block">
										• 최소 몇 시간 전까지 예약을 받길 원하시나요?<br>• 가장 기본적인 시간은 36시간 입니다.<br>
									</p>
								</div>
							</div>

							<hr class="divider">
							<div class="form-group clearfix"
								data-desc="<span class=&quot;font-weight-600&quot;>포함 사항 예시</span><br/><br/>&quot;가이드 관련 모든 비용 (가이드 비용, 가이드 식비, 가이드 교통비)&quot;<br/>">
								<label class="control-label col-xs-12"> 가격포함 (포함사항) </label>
								<div class="col-xs-12">
									<textarea class="col-xs-12 form-control"
										name="b_pinclusion" rows="6"
										style="overflow: hidden; overflow-wrap: break-word; resize: horizontal; height: 146px;">조식</textarea>
								</div>
								<div class="col-xs-12">
									<div class="col-xs-12">
										<p class="help-block">
											• 여행 가격에 포함 되어 있는 항목들을 적어 주세요.<br>
										</p>
									</div>
								</div>
							</div>
							<div class="form-group clearfix"
								data-desc="<span class=&quot;font-weight-600&quot;>불포함 사항 예시</span><br/><br/>&quot;여행자 식비 (약 5,000원), 여행자 교통비 (약 10,000원), 입장료 (놀이공원 3,000원)&quot;<br/>">
								<label class="control-label col-xs-12"> 여행자부담 (불포함 사항) </label>
								<div class="col-xs-12">
									<textarea class="col-xs-12 form-control"
										name="b_tburden" rows="6"
										style="overflow: hidden; overflow-wrap: break-word; resize: horizontal; height: 146px;">조식외 모두</textarea>
								</div>
								<div class="col-xs-12">
									<div class="col-xs-12">
										<p class="help-block">
											• 여행자가 현장에서 직접 지불해야 하는 항목 및 대략적인 금액을 적어주세요.<br>
										</p>
									</div>
								</div>
							</div>

							<hr class="divider">
							<div class="form-group clearfix has-error"
								data-desc="<span class=&quot;font-weight-600&quot;>필수 안내 예시</span><br/><br/>• 여행자보험 가입을 권유하는 문구<br/>• 어린이 요금 관련 안내글<br/>• 투어 중 체력 소모량<br/>• 송수신기 사용과 관련한 이어폰 지참 안내문구 (미술관 투어 시)<br/>">
								<label class="control-label col-xs-12"> 필수 안내 <span>*</span>
								</label>
								<div class="col-xs-12">
									<textarea class="form-control" name="b_eguide"
										 rows="6"  
										data-fv-field="offer[attention]"
										style="overflow: hidden; overflow-wrap: break-word; resize: horizontal; height: 146px;">픽업을 원하시면 픽업을 원하시는 시간과 장소를 알려주시고 약속시간을 반드시 지켜주세요</textarea>
										
									<div class="col-xs-12">
										<p class="help-block">
											• 위 사항은 예약 확정 후 여행자에게 메일로 보내지는 [여행확인증]에 포함되는 사항입니다.<br>
											여행자에게 당부하거나 중요하게 안내하고 싶은 사항에 관해 적어주세요.<br> ([여행확인증]은 추후
											여행자와 문제 발생시 중요하게 다뤄지는 증빙자료입니다.)<br>
										</p>
									</div>
									<small class="help-block" data-fv-validator="notEmpty"
										data-fv-for="offer[attention]" data-fv-result="INVALID"
										style="">필수 항목입니다.</small>
								</div>
							</div>
<%-- 
							<hr class="divider">
							<div class="form-group clearfix">
								<label class="control-label col-lg-12">추가 예약 정보</label>
								<div class="col-xs-12">
									
									<div class="col-xs-12">
									<c:forEach items="${addinfolist}" var="addinfolist">
										<div class='col-xs-12'>
											<div class='checkbox-custom checkbox-primary col-xs-6'>
												<input name='b_a_code' type='checkbox' value='${addinfolist.b_a_code}'  id="extraRequiredBuyer_info">
												<label for='extraRequiredNull'>
												${addinfolist.b_a_detail}
												</label>
											</div>
										</div>
									</c:forEach>
									</div>
								</div>
							</div> --%>

							<div class="wizard-buttons">
								<a class="btn btn-default btn-outline" href="/partner/offers"
									role="button">취소하기</a> <input
									class="btn btn-primary btn-outline pull-right margin-left-20 disabled"
									formnovalidate="1" name="complete" role="button" type="submit"
									value="제출하기" disabled="disabled"> <input
									class="btn btn-primary btn-outline pull-right"
									formnovalidate="0" name="save" role="button" type="submit"
									value="저장하기">
							</div>
						</div>

					</form>

					<small class="help-block" data-fv-validator="notEmpty"
						data-fv-for="offer[category]" data-fv-result="NOT_VALIDATED"
						style="display: none;">카테고리를 선택해주세요.</small>
				</div>
				<div class="col-md-3 hidden-xs hidden-sm" id="sidebar"
					style="margin-top: 437px;">
					<div class="widget widget-shadow margin-bottom-0">
						<div
							class="widget-header bg-blue-grey-300 blue-grey-700 padding-30 text-center">
							<b> TIP </b>
						</div>
						<div class="widget-body">
							<div class="p" id="formHelperContent">
								• 안내에 따라 여행 내용을 정확하게 설명하여 주세요.<br>• 상품 등록이 완료되면, 승인을 위한 심사가
								진행됩니다.<br>
							</div>
						</div>
						<div class="widget-footer">
							<div class="list-group">
								<a class="list-group-item list-borter-top"
									data-turbolinks="false" href="/offers/25992" target="_blank">
									<span>실제 예시</span>
									<div class="pull-right">
										<i class="icon wb-chevron-right-mini"></i>
									</div>
								</a>
							</div>
						</div>
					</div>
					<div class="text-center row">
						<div class="col-xs-6">
							<a class="btn btn-block btn-warning btn-outline"
								href="/offers/60290/preview" target="_blank">미리보기</a>
						</div>
						<div class="col-xs-6">
							<div class="btn btn-block btn-success btn-outline"
								id="sidebarSaveBtn">저장하기</div>
						</div>
					</div>
				</div>

			</div>
		</div>
	</div>



	<script>
/*         window.App = App || {};
        App.directUpload = {
            option: {
                "key": "uploads/d99ce0cf-2598-402d-9181-8810968fba1d/${filename}",
                "success_action_status": "201",
                "acl": "public-read",
                "policy": "eyJleHBpcmF0aW9uIjoiMjAxOS0wNi0wNlQxMDozMDozNVoiLCJjb25kaXRpb25zIjpbeyJidWNrZXQiOiJteXJlYWx0cmlwLXVwbG9hZC11cy10ZW1wIn0sWyJzdGFydHMtd2l0aCIsIiRrZXkiLCJ1cGxvYWRzL2Q5OWNlMGNmLTI1OTgtNDAyZC05MTgxLTg4MTA5NjhmYmExZC8iXSx7InN1Y2Nlc3NfYWN0aW9uX3N0YXR1cyI6IjIwMSJ9LHsiYWNsIjoicHVibGljLXJlYWQifSx7IngtYW16LWNyZWRlbnRpYWwiOiJBS0lBSVhONkNZNERFNjZTS0RIUS8yMDE5MDYwNS91cy1lYXN0LTEvczMvYXdzNF9yZXF1ZXN0In0seyJ4LWFtei1hbGdvcml0aG0iOiJBV1M0LUhNQUMtU0hBMjU2In0seyJ4LWFtei1kYXRlIjoiMjAxOTA2MDVUMTAzOTE2WiJ9XX0=",
                "x-amz-credential": "AKIAIXN6CY4DE66SKDHQ/20190605/us-east-1/s3/aws4_request",
                "x-amz-algorithm": "AWS4-HMAC-SHA256",
                "x-amz-date": "20190605T103916Z",
                "x-amz-signature": "b40a433c20085d708a92450e685e95fc7a222da6bd3b6ebc0b8da22f4c5e6fe0"
            },
            url: "https://myrealtrip-upload-us-temp.s3.amazonaws.com"
        } */
    </script>
	<jsp:include page="/WEB-INF/layout/partnerpage_bottom.jsp"></jsp:include>
	<div class="global-alert-box"></div>

</body>

</html>