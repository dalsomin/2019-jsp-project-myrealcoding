<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html
	class="js flexbox canvas canvastext webgl no-touch geolocation postmessage websqldatabase indexeddb hashchange history draganddrop websockets rgba hsla multiplebgs backgroundsize borderimage borderradius boxshadow textshadow opacity cssanimations csscolumns cssgradients cssreflections csstransforms csstransforms3d csstransitions fontface generatedcontent video audio localstorage sessionstorage webworkers applicationcache svg inlinesvg smil svgclippaths js-menubar"
	lang="en" style="">

<head>

<script src="http://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js" type="text/javascript"></script>

<script type="text/javascript" src="js/script.js"></script>
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
<script>
        Breakpoints();
    </script> 
<script
	src="//maps.googleapis.com/maps/api/js?key=AIzaSyBJr_Xc1ErOFoVluRDtSjfeBlNpppuP6pw&amp;libraries=places"
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
					href='<%=request.getContextPath()%>/partner/dashboard.do'>HOME</a>
				</li>
				<li><a href="/partner/offers">상품 관리</a></li>
				<li class="active">상품 수정</li>
			</ol>

		</div>
		<div class='page-content container-fluid'>
			<div class='row'>
				<div class='col-md-9'>
					<div class='widget'>
						<div class='widget-header padding-20 clearfix'>
							<a
								class='avatar avatar-100 bg-white margin-right-20 img-bordered pull-left col-sm-3 col-xs-6'
								href='javascript:void(0)'> <img
								src='//d2yoing0loi5gh.cloudfront.net/assets/default/user_profile_image-414acc60b27f0a258bec14c82b70dc361fc6768da9289f924f887bec1fc33849.png'>
							</a>
							<div class='vertical-align height-100 col-sm-9 col-xs-6'>
								<div class='vertical-align-middle'>${authUser.member_name}님,<br />마이리얼트립의
									가이드 인터뷰를 위해서는 문소민님이 구상하고 계시는 여행 상품 등록이 필요합니다.<br />
								</div>
							</div>
						</div>
					</div>
					<form data-validation="false" data-istour="true"
						data-isticket="false" data-ishotdeal="false"
						data-islodging="false" data-offer-status="temp" id="offerForm"
						class="panel panel-bordered"     
						action="<%=request.getContextPath()%>/partner/regist_tour1.do"
						accept-charset="UTF-8" method="post">
					
						<input name="utf8" type="hidden" value="&#x2713;" /><input
							type="hidden" name="_method" value="put" /><input type="hidden"
							name="authenticity_token"
							value="q6jVcxUSc1VrNfxQSYNlzrMxLbNSgK48Wjx1bcdN7ujQTR0ptgFDEPZfLu9aOA9IhRfMlFJeOcyLAwl9FJqjSQ==" />
						<div class='panel-heading'>
							<div class='panel-title'>상품 등록</div>
						</div>
						<div class='panel-body'>
							<div class='pearls row' data-by-row='true'
								data-plugin='matchHeight' role='tablist'>
								<div class='col-xs-4 current pearl' data-target='#step1'
									role='tab'>
									<a class="pearl-number"
										href="<%=request.getContextPath()%>/partner/regist_tour1.do">1</a>
									<span class='pearl-title'> <a
										href="<%=request.getContextPath()%>/partner/regist_tour1.do">기본정보</a>
									</span>
								</div>
								<div class='col-xs-4 pearl' data-target='#step2' role='tab'>
									<a class="pearl-number"
										href="<%=request.getContextPath()%>/partner/regist_tour2.do">2</a>
									<span class='pearl-title'> <a
										href="<%=request.getContextPath()%>/partner/regist_tour2.do">코스정보</a>
									</span>
								</div>
								<div class='col-xs-4 pearl' data-target='#step3' role='tab'>
									<a class="pearl-number"
										href="<%=request.getContextPath()%>/partner/regist_tour3.do">3</a>
									<span class='pearl-title'> <a
										href="<%=request.getContextPath()%>/partner/regist_tour3.do">가격정보</a>
									</span>
								</div>
							</div>

							<div class='wizard-content'>
								<input name='step' type='hidden' value='1'>
								<div class='form-group clearfix default-message'>
									<div class='title'>특별한 여행을 만들어 보세요.</div>
									<div class='guide-box'>
										<p class='help-block'>
											• 안내에 따라 여행 내용을 정확하게 설명하여 주세요.<br />• 상품 등록이 완료되면, 승인을 위한 심사가
											진행됩니다.<br />
										</p>
										<p class='help-block'>* 필수항목</p>
									</div>
								</div>
								<hr class='divider'>

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
																	//$('#cityoption').after(option);
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
													<option value='0'>
													해당도시없음</option>

												</select>
											</div>
										</div>

									</div>
								</div>
								
								
										<hr class='divider'>
								<div class='form-group clearfix'
									data-desc='• 여행자가 만날 여행지의 사진을 올려주세요.<br/>• 이미지 사이즈 규격 : 980*735 (상품상세 페이지에 보이는 칸의 크기에 따라 조금씩 잘릴 수 있습니다)<br/>• 4장 이상 등록 필수<br/>• 규격을 벗어난 사진은 자동으로 크롭되어 나타납니다.<br/>• 상업적 용도로 사용 가능한 사진만 업로드 가능합니다.<br/>• 최대 20장까지 사진 등록 가능합니다.<br/>• 참고) gif 이미지는 등록이 불가능합니다.<br/>'>
									<label class='control-label col-lg-12' for='offerPhotos'>
										여행 사진 <span>*</span>
									</label>
									<div class='col-xs-12'>
										<div class='clearfix margin-bottom-10'>
											<input data-type='tour' id='offer_photo_size'
												name='offer_photo_size' type='hidden' value='0'>
											<div class='file-upload-btn'>
												<input id='offerPhotoFileBtn' multiple name='file'
													type='file'>
												<div
													class='btn btn-default btn-picture-add btn-picture-add-top btn-block ladda-button'
													data-spinner-color='DarkGrey' data-style='zoom-out'
													for='offerPhotoFileBtn' id='btnOfferPhotoTop'>
													<span class='ladda-label'> <i class='icon fa-camera'></i>
														사진등록
													</span>
												</div>
											</div>
										</div>
									</div>
								</div>
<div id="travelpic" class="col-xs-12"></div>
			
								<hr class='divider'/>
								<div class='form-group clearfix'>
									<div class='col-lg-12'>
										<p class='help-block'>
											• 대표사진으로 자동 지정됩니다.<br />• 첫 사진에 텍스트 및 로고가 있을 경우 마이리얼트립
											검수팀에서 사진을 수정 혹은 삭제 할 수 있습니다.<br />• 배경이 흰색인 이미지는 지양해주세요. 상품 페이지가
											흰색이기 때문에 사진이 잘린 것처럼 보일 수 있습니다.<br />
										</p>
									</div>
											
								<hr class='divider'/>
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
                            url: '<%=request.getContextPath()%>/partner/tour/file1.do?p_code='+p_code1+'&citycode='+citycode,
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
                                var imgpath = "/myRealTrip/img/tour/" + a;

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

									
									
								<br>
								<br>
									
								<hr class='divider'>
								
								<div class='form-group clearfix'
									data-desc='* 카테고리 예시<br/>레스토랑: 식사 이용권 상품<br/>액티비티: 스포츠, 수상레저 상품<br/>여행편의: 통역, 픽업/샌딩, 유심/와이파이, 짐 보관 서비스 등<br/>즐길거리: 나머지 카테고리에 포함되지 않은 상품으로 요트, 크루즈, 그림그리기, 기모노체험 등<br/>'
									data-name='offer[category]'>
									<label class='control-label col-xs-12' for='category'>
										카테고리 <span>*</span> <span
										class='badge badge-round badge-danger margin-left-5'>New</span>
									</label>
									<div class='col-xs-12'>
										<div class='testimonial testimonial-top margin-bottom-10'>
											<div class='testimonial-content margin-top-10'>
												<p>
													• 아래의 카테고리 중 1개만 선택이 가능합니다.<br />• 상품을 가장 잘 표현하는 카테고리를
													선택해주세요.<br />• 상품의 성격과 맞지 않는 카테고리는 수정될 수 있습니다.<br />
												</p>
											</div>
										</div>
									</div>
									<div class='col-xs-12'>
										<div class='check-item-container'>
											<div class='radio-custom radio-primary'>
												<input id='guide_tour' name='t_category' type='radio'
													value='guide_tour'> <label for='guide_tour'>가이드
													투어</label>
											</div>
											<div class='radio-custom radio-primary'>
												<input id='activity' name='t_category' type='radio'
													value='activity'> <label for='activity'>액티비티</label>
											</div>
											<div class='radio-custom radio-primary'>
												<input id='snap' name='t_category' type='radio' value='snap'>
												<label for='snap'>스냅촬영</label>
											</div>
											<div class='radio-custom radio-primary'>
												<input id='restaurant' name='t_category' type='radio'
													value='restaurant'> <label for='restaurant'>레스토랑</label>
											</div>
											<div class='radio-custom radio-primary'>
												<input id='entertainment' name='t_category' type='radio'
													value='entertainment'> <label for='entertainment'>즐길거리</label>
											</div>
											<div class='radio-custom radio-primary'>
												<input id='utility' name='t_category' type='radio'
													value='utility'> <label for='utility'>여행편의</label>
											</div>
										</div>
									</div>
									<div class='form-group clearfix'>
										<div class='col-xs-12 guide-box'>
											<p class='help-block'>
												• 가이드가 동행하며 현지 안내를 하는 비중이 높을 경우 가이드 투어를 선택해주세요.<br />
											</p>
										</div>
									</div>
								</div>
								<hr class='divider'>
								<div class='form-group clearfix'
									data-desc='• 투어 중 잠시 사용되는 언어일 경우 선택하지 않으셔도 됩니다.<br/>• 통역 서비스일 경우에는 여행자에게는 한국어를 사용하시기 때문에 [한국어]를 선택해주세요.<br/>• 해당 투어의 진행 언어를 여러가지 선택할 수 있을 경우 복수 선택해주세요.<br/>'>
									<label class='control-label col-xs-12' for='language_list'>
										언어 <span>*</span>
									</label>
									<div class='col-xs-12'>
										<div class='check-item-container language-list'>
											<div class='item-group'>
												<input id='ko' name='t_lang' type='checkbox' value='한국어'>
												<label for='ko'>한국어</label>
											</div>
											<div class='item-group'>
												<input id='en' name='t_lang' type='checkbox' value='영어'>
												<label for='en'>영어</label>
											</div>
											<div class='item-group'>
												<input id='es' name='t_lang' type='checkbox' value='스페인어'>
												<label for='es'>스페인어</label>
											</div>
											<div class='item-group'>
												<input id='de' name='t_lang' type='checkbox' value='독일어'>
												<label for='de'>독일어</label>
											</div>
											<div class='item-group'>
												<input id='fr' name='t_lang' type='checkbox' value='프랑스어'>
												<label for='fr'>프랑스어</label>
											</div>
											<div class='item-group'>
												<input id='zh' name='t_lang' type='checkbox' value='중국어'>
												<label for='zh'>중국어</label>
											</div>
											<div class='item-group'>
												<input id='ja' name='t_lang' type='checkbox' value='일본어'>
												<label for='ja'>일본어</label>
											</div>
											<div class='item-group'>
												<input id='etc' name='t_lang' type='checkbox' value='etc'>
												<label for='etc'>그 외</label>
											</div>
										</div>
									</div>
									<div class='form-group clearfix'>
										<div class='col-xs-12 guide-box'>
											<p class='help-block'>
												• 투어 진행 시 주로 사용되는 언어를 선택해주세요.<br />
											</p>
										</div>
									</div>
								</div>
								<hr class='divider'>
								<div class='form-group clearfix' data-max-select='2'
									data-name='offer[tag_list][]'>
									<label class='control-label col-xs-12' for='tag_list'>
										상품 태그 <span>*</span> <span
										class='badge badge-round badge-danger margin-left-5'>New</span>
									</label>
									<div class='col-xs-12'>
										<div class='testimonial testimonial-top margin-bottom-10'>
											<div class='testimonial-content margin-top-10'>
												<p>
													• 상품에 가장 잘 어울리는 특별한 태그를 선택해주세요. 최대 2개까지 선택이 가능합니다.<br />•
													단, 상품의 성격과 맞지 않는 태그는 수정될 수 있습니다.<br />
												</p>
											</div>
										</div>
									</div>
									<div class='col-xs-12'>
										<div class='check-item-container tags-list'>
											<div class='item-group'>
												<input id='박물관/미술관' name='t_tags' type='checkbox'
													value='박물관/미술관'> <label for='박물관/미술관'>박물관/미술관</label>
											</div>
											<div class='item-group'>
												<input id='국립공원' name='t_tags' type='checkbox' value='국립공원'>
												<label for='국립공원'>국립공원</label>
											</div>
											<div class='item-group'>
												<input id='쇼핑' name=t_tags type='checkbox' value='쇼핑'>
												<label for='쇼핑'>쇼핑</label>
											</div>
											<div class='item-group'>
												<input id='캠퍼스/오피스' name='t_tags' type='checkbox'
													value='캠퍼스/오피스'> <label for='캠퍼스/오피스'>캠퍼스/오피스</label>
											</div>
											<div class='item-group'>
												<input id='테마파크' name='t_tags' type='checkbox' value='테마파크'>
												<label for='테마파크'>테마파크</label>
											</div>
											<div class='item-group'>
												<input id='시티투어' name='t_tags' type='checkbox' value='시티투어'>
												<label for='시티투어'>시티투어</label>
											</div>
											<div class='item-group'>
												<input id='픽업/샌딩' name='t_tags' type='checkbox'
													value='픽업/샌딩'> <label for='픽업/샌딩'>픽업/샌딩</label>
											</div>
											<div class='item-group'>
												<input id='캠핑' name='t_tags' type='checkbox' value='캠핑'>
												<label for='캠핑'>캠핑</label>
											</div>
											<div class='item-group'>
												<input id='스파/마사지' name='t_tags' type='checkbox'
													value='스파/마사지'> <label for='스파/마사지'>스파/마사지</label>
											</div>
											<div class='item-group'>
												<input id='근교' name='t_tags' type='checkbox' value='근교'>
												<label for='근교'>근교</label>
											</div>
											<div class='item-group'>
												<input id='와이너리' name='t_tags' type='checkbox' value='와이너리'>
												<label for='와이너리'>와이너리</label>
											</div>
											<div class='item-group'>
												<input id='이색 체험' name='t_tags' type='checkbox'
													value='이색 체험'> <label for='이색 체험'>이색 체험</label>
											</div>
											<div class='item-group'>
												<input id='맛집/카페' name='t_tags' type='checkbox'
													value='맛집/카페'> <label for='맛집/카페'>맛집/카페</label>
											</div>
											<div class='item-group'>
												<input id='크루즈/요트' name='t_tags' type='checkbox'
													value='크루즈/요트'> <label for='크루즈/요트'>크루즈/요트</label>
											</div>
											<div class='item-group'>
												<input id='클래스' name='t_tags' type='checkbox' value='클래스'>
												<label for='클래스'>클래스</label>
											</div>
											<div class='item-group'>
												<input id='통역/비즈니스' name='t_tags' type='checkbox'
													value='통역/비즈니스'> <label for='통역/비즈니스'>통역/비즈니스</label>
											</div>
											<div class='item-group'>
												<input id='스포츠' name='t_tags' type='checkbox' value='스포츠'>
												<label for='스포츠'>스포츠</label>
											</div>
											<div class='item-group'>
												<input id='야경' name='t_tags' type='checkbox' value='야경'>
												<label for='야경'>야경</label>
											</div>
											<div class='item-group'>
												<input id='헬기/경비행기' name='t_tags' type='checkbox'
													value='헬기/경비행기'> <label for='헬기/경비행기'>헬기/경비행기</label>
											</div>
											<div class='item-group'>
												<input id='로컬투어' name='t_tags' type='checkbox' value='로컬투어'>
												<label for='로컬투어'>로컬투어</label>
											</div>
											<div class='item-group'>
												<input id='쇼/뮤지컬' name='t_tags' type='checkbox'
													value='쇼/뮤지컬'> <label for='쇼/뮤지컬'>쇼/뮤지컬</label>
											</div>
											<div class='item-group'>
												<input id='자전거' name='t_tags' type='checkbox' value='자전거'>
												<label for='자전거'>자전거</label>
											</div>
										</div>
									</div>
								</div>

								
								<hr class='divider'>
								<div class='form-group clearfix'
									data-desc='&lt;span class=&quot;font-weight-600&quot;&gt;제목 예시&lt;/span&gt;&lt;br/&gt;&lt;br/&gt;&quot;가우디 필수코스! 바르셀로나 반나절 코스&quot;&lt;br/&gt;&quot;영화 미드나잇인파리 명소 따라 파리 곳곳 다녀보기&quot;&lt;br/&gt;&lt;br/&gt;주의: 맞춤법에 맞게 작성하여주세요. 특수문자를 사용하지 마세요.&lt;br/&gt;'>
									<label class='control-label col-xs-12' for='offerTitle'>
										여행 제목 <span>*</span>
									</label>
									<div class='col-xs-12'>
										<input class='form-control required' id='offerTitle_title'
											value="런던에서 즐기는 소규모 잉어낚시 체험"
											name='p_name' type='text'>
									</div>
									<div class='form-group clearfix'>
										<div class='col-xs-12 guide-box'>
											<p class='help-block'>
												• 여행 주제를 정확하고 간결하게 표현해주세요.<br />• 맞춤법이 맞지 않거나 이모티콘 혹은 특수문자를
												사용하실 경우 상품 검수 절차로 인해 판매가 늦어질 수 있습니다.<br />• 지역명이 포함된 제목은 상품
												노출에 더 효과적입니다. (도쿄, 산책하는 여행 / 샌프란시스코! 요세미티 당일치기 등)<br />
											</p>
										</div>
									</div>
								</div>
								<div class='form-group clearfix'
									data-desc='&lt;span class=&quot;font-weight-600&quot;&gt;한 줄 요약 예시&lt;/span&gt;&lt;br/&gt;&lt;br/&gt;&quot;반나절 만에 천재 가우디 건축물을 효율적으로 돌아보세요!&quot;&lt;br/&gt;&quot;낭만적인 영화 속 길을 걸어보며 로맨틱한 추억을 남겨보세요.&quot;&lt;br/&gt;'>
									<label class='control-label col-xs-12' for='offerSubtitle'>
										한 줄 요약 <span>*</span>
									</label>
									<div class='col-xs-12'>
										<input class='form-control required'
											id='offerSubtitle_subtitle' name='t_summary' type='text'
											value="5시간 탐험에 참가해 잉어 낚시로 영국에서의 즐거운 한 때를 보내보세요!">
									</div>
									<div class='form-group clearfix'>
										<div class='col-xs-12 guide-box'>
											<p class='help-block'>
												• 제목과 연결되는 매력 포인트를 작성해 주세요.<br />• 페이지에서 강조되어 나타납니다.<br />
											</p>
										</div>
									</div>
								</div>
								<div class='form-group clearfix'
									data-desc='• 본인의 경험과 관심사를 바탕으로 여행을 기획해 보세요.&lt;br/&gt;• 해당 내용은 진행될 여행의 내용과 정확하게 일치해야 합니다.&lt;br/&gt;• 같은 도시에서 판매되는 다른 상품도 참고해보세요.&lt;br/&gt;'>
									<label class='control-label col-xs-12' for='offerIntroduction'>
										여행 소개 <span>*</span> <a class='btn btn-info pull-right'
										href='http://speller.cs.pusan.ac.kr/' target='_blank'>[맞춤법
											검사기]로 맞춤법 확인하기</a>
									</label>
									<div class='col-xs-12'>
										<textarea class='form-control' id='offerIntroduction'
											name='t_introduce'
											placeholder='• 상품 작성 예시
[매력 포인트 - 투어의 매력 포인트에 관해 간단히 소개해주세요]
ex) 서울을 소개합니다. 서울은 대한민국의 수도이며 경제적 문화적 중심지이기도 합니다. 서울에서 여러분께 저만이 알고 있는 특별한 여행지들을 소개할게요

[투어 코스 - 구체적인 코스와 각각의 소요 시간에 관해 간단히 설명해주세요]
ex)
1. 서촌 골목을 소개합니다. (2시간)
2. 서촌 맛집 여행을 함께 해요 (1시간)
3. 경복궁을 마지막으로 둘러봅니다. (2시간)
'
											rows='10' type='text'>
[ 이 투어의 매력 포인트! ]
- 야생을 가까이에서 만나보세요!
- 도시의 번잡함에서 멀리 떠나보세요.
- 가족 단위 여행자님께 적합한 투어입니다.
- 모든 필요 장비가 포함되어 있습니다.
[ 투어 코스 ]
런던 교외에 위치한 타일러 공공 낚시터 Tyler’s Common Fishery 로 오전에 도착해, 가이드를 만나 잉어 낚시 준비를 시작합니다. 안전 브리핑 후, 주변 경관의 가이드 투어를 즐긴 후 낚시 장비를 다루는 방법을 배웁니다.

											
											</textarea>
									</div>
									<div class='form-group clearfix'>
										<div class='col-xs-12 guide-box'>
											<p class='help-block'>
												• 맞춤법이 맞지 않거나 특수문자를 사용할 경우 수정될 수 있으며, 상품 검수 절차로 인해 상품 판매가
												늦어질 수 있습니다.<br />
											</p>
										</div>
									</div>
								</div>

								<hr class='divider'>
								<div class='row'>
									<div class='col-lg-6'>
										<div class='form-group clearfix'
											data-desc='• 프라이빗 투어 : 한 번에 한 팀만 진행<br/>• 단체 투어 : 여러 그룹을 모객해서 진행<br/>'>
											<label class='control-label col-xs-12'> 여행 규모 <span>*</span>
											</label>
											<div class='col-xs-12'>
												<select class='form-control' id='offerPrivateTour'
													name='t_scale'>
													<option disabled selected>선택</option>
													<option selected value='단독프라이빗투어'>단독 프라이빗 투어</option>
													<option value='그룹투어'>그룹 투어</option>
												</select>
											</div>
										</div>
									</div>
									<div class='col-lg-6'>
										<div class='form-group clearfix'
											data-desc='• 투어를 진행할 때 가장 많은 시간동안 사용하는 이동수단을 선택해주세요.<br/>• 워킹 : 도보 및 대중교통 (지하철, 트램, 버스 등)<br/>• 차량 : 가이드의 전용 차량<br/>• 자전거 : 자전거<br/>• 세그웨이 : 세그웨이<br/>• 버스투어 : 대중교통이 아닌 전용버스<br/>• 그 외 : 위의 투어 이동수단이 아닌 모든 경우<br/>'>
											<label class='control-label col-xs-12'> 이동 수단 <span>*</span>
											</label>
											<div class='col-xs-12'>
												<select class='form-control' id='offerTransport'
													name='t_trans'>
													<option disabled selected>선택</option>
													<option value='car'>차량 이동</option>
													<option value='walk'>도보 이동</option>
													<option value='etc'>그 외</option>
												</select>
											</div>
										</div>
									</div>
								</div>

						
									
									<div class='col-xs-12'>
										<ul class='image-list row clearfix' id='sortableOfferPhoto'>
										</ul>
										<div class='row'>
											<div class='col-sm-6 col-xs-12'>
												<div
													class='hidden margin-5 photo-add-container widget widget-border-dashed'>
													<div
														class='widget-body text-center bg-blue-grey-100 blue-grey-700'>
														<div class='file-upload-btn'>
															<input id='offerPhotoFileBtnBottom' multiple name='file'
																type='file'>
															<div
																class='btn btn-default btn-picture-add btn-picture-add-bottom btn-block ladda-button'
																data-spinner-color='DarkGrey' data-style='zoom-out'
																for='offerPhotoFileBtnBottom' id='btnOfferPhotoBottom'>
																<span class='ladda-label'> <i
																	class='fa fa-plus padding-right-5'></i> 사진등록
																</span>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>






								<hr class='divider'>
								<div class='form-group clearfix'>
									<label class='control-label col-xs-4'> 예약 가능 시간 설정 <span>*</span>
									</label>
									<div class='col-xs-8'>
										<div class='row'>
											<div class='col-xs-12'>
												<select class='form-control' name='t_time'>
													<option disabled>시간 설정</option>
													<option value='12'>12</option>
													<option value='18'>18</option>
													<option value='24'>24</option>
													<option value='30'>30</option>
													<option selected value='36'>36</option>
													<option value='48'>48</option>
													<option value='60'>60</option>
													<option value='72'>72</option>
												</select>
											</div>
										</div>
									</div>
								</div>
								<div class='form-group clearfix'>
									<div class='col-xs-12'>
										<p class='help-block'>
											• 최소 몇 시간 전까지 예약을 받길 원하시나요?<br />• 가장 기본적인 시간은 36시간 입니다.<br />
										</p>
									</div>
								</div>

								<hr class='divider'>

							</div>
							<div class='wizard-buttons'>
								<a class='btn btn-default btn-outline'
									href='<%=request.getContextPath() %>/partner/dashboard.do'
									role='button'>취소하기</a> <input
									class='btn btn-primary btn-outline pull-right'
									formnovalidate='0' name='save' role='button' type='submit'
									value='저장후 다음으로'>
							</div>
						</div>

					</form>

				</div>
				<div class='col-md-3 hidden-xs hidden-sm' id='sidebar'>
					<div class='widget widget-shadow margin-bottom-0'>
						<div
							class='widget-header bg-blue-grey-300 blue-grey-700 padding-30 text-center'>
							<b> TIP </b>
						</div>
						<div class='widget-body'>
							<div class='p' id='formHelperContent'>
								• 안내에 따라 여행 내용을 정확하게 설명하여 주세요.<br />• 상품 등록이 완료되면, 승인을 위한 심사가
								진행됩니다.<br />
							</div>
						</div>
						<div class='widget-footer'>
							<div class='list-group'>
								<a class='list-group-item list-borter-top'
									data-turbolinks='false' href='/offers/329' target='_blank'>
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
							<a class='btn btn-block btn-warning btn-outline'
								href='/offers/59745/preview' target='_blank'>미리보기</a>
						</div>
						<div class='col-xs-6'>
							<div class='btn btn-block btn-success btn-outline'
								id='sidebarSaveBtn'>저장후 다음으로</div>
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

	<div class='global-alert-box'></div>

</body>
</html>
