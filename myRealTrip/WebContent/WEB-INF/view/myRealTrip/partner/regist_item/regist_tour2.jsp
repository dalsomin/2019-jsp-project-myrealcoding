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
    <script src="/myRealTrip/js/app_template_4.js">
    </script>
    <script src="/myRealTrip/js/mainjs.js"></script>
    <style type="text/css"></style>
  <!--   <script>
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
    <script type="text/javascript" charset="UTF-8" src="/myRealTrip/js/common.js"></script>
    <script type="text/javascript" charset="UTF-8" src="/myRealTrip/js/util.js"></script>
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
            <div class="page-content container-fluid">
                <div class="row">
                    <div class="col-md-9">
                        <div class="widget">
                            <div class="widget-header padding-20 clearfix">
                                <a class="avatar avatar-100 bg-white margin-right-20 img-bordered pull-left col-sm-3 col-xs-6"
                                    href="javascript:void(0)">
                                    <img
                                        src="//d2yoing0loi5gh.cloudfront.net/assets/default/user_profile_image-414acc60b27f0a258bec14c82b70dc361fc6768da9289f924f887bec1fc33849.png">
                                </a>
                                <div class="vertical-align height-100 col-sm-9 col-xs-6">
                                    <div class="vertical-align-middle">${authUser.memberId }님,<br>마이리얼트립의 가이드 인터뷰를 위해서는
                                        이세아님이 구상하고 계시는 여행 상품 등록이 필요합니다.<br></div>
                                </div>
                            </div>
                        </div>
                        <form data-validation="false" data-istour="true" data-isticket="false" data-ishotdeal="false"
                            data-islodging="false" data-offer-status="temp" id="offerForm"
                            class="panel panel-bordered fv-form fv-form-bootstrap"
                            action="<%=request.getContextPath() %>/partner/regist_tour2.do" accept-charset="UTF-8"
                            method="post" novalidate="novalidate">
                            <button type="submit" class="fv-hidden-submit"
                                style="display: none; width: 0px; height: 0px;"></button><input name="utf8"
                                type="hidden" value="✓"><input type="hidden" name="_method" value="put"><input
                                type="hidden" name="authenticity_token"
                                value="rfjwLLK1apJzRs6bS43JaEsJrQx38VvU9uEXaGXJBxyQ29k0Z9Ffzrmi1JA52eW7mih7p+7vd6mhaZvQvZa9OQ==">
                            <div class="panel-heading">
                                <div class="panel-title">
                                    상품 등록
                                </div>
                            </div>
                            <div class="panel-body">
                                <div class="pearls row " data-by-row="true" data-plugin="matchHeight" role="tablist">
                                    <div class="col-xs-4 current pearl" data-target="#step1" role="tab">
                                        <a class="pearl-number"
                                            href="<%=request.getContextPath() %>/partner/regist_tour1.do">1</a>
                                        <span class='pearl-title'>
                                            <a href="<%=request.getContextPath() %>/partner/regist_tour1.do">기본정보</a>
                                        </span>
                                    </div>
                                    <div class='col-xs-4 pearl' data-target='#step2' role='tab'>
                                        <a class="pearl-number"
                                            href="<%=request.getContextPath() %>/partner/regist_tour2.do">2</a>
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

                                <div class="wizard-content">
                                    <input name="step" type="hidden" value="2">
                                    <div class="form-group clearfix default-message">
                                        <div class="title">
                                            여행에 대해 풍부한 이미지와 글로 자세한 설명을 해주세요.
                                        </div>
                                        <div class="guide-box">
                                            <p class="help-block">• 안내에 따라 여행 내용을 정확하게 설명하여 주세요.<br>• 상품 등록이 완료되면, 승인을
                                                위한 심사가 진행됩니다.<br></p>
                                            <p class="help-block">* 필수항목
                                            </p>
                                        </div>
                                    </div>
                                    <hr class="divider">

                                    <div class="form-group clearfix"
                                        data-desc="• 정확한 시간을 안내하여 주세요.<br/>• 여행자와 첫 만남을 원활하게 진행하는데 도움이 됩니다.<br/>">
                                        <label class="control-label col-xs-12 margin-bottom-15 font-weight-600"
                                            form="offerMeetingTime">
                                            만나는 시간
                                            <span>*</span>
                                        </label>
                                        <div class="col-xs-12">
                                            <div class="col-xs-12">
                                                <div class="input-group col-xs-12">
                                                    <div class="margin-bottom-15">
                                                        <div class="radio-custom radio-primary clearfix">
                                                            <input checked="checked" id="meeting_time_a"
                                                                name="meeting_time_check" type="radio" value="time"
                                                                data-fv-field="meeting_time_check">
                                                            <label class="col-xs-12" for="meeting_time_a">
                                                                <div class="col-xs-6">
                                                                    <select class="form-control ignore"
                                                                        name="meetingtime_hour">
                                                                        <option>시간 선택</option>
                                                                        <option value="오전0시">
                                                                            오전 0
                                                                        </option>
                                                                        <option value="오전1시">
                                                                            오전 1
                                                                        </option>
                                                                        <option value="오전2시">
                                                                            오전 2
                                                                        </option>
                                                                        <option value="오전3시">
                                                                            오전 3
                                                                        </option>
                                                                        <option value="오전4시">
                                                                            오전 4
                                                                        </option>
                                                                        <option value="오전5시">
                                                                            오전 5
                                                                        </option>
                                                                        <option value="오전6시">
                                                                            오전 6
                                                                        </option>
                                                                        <option value="오전7시">
                                                                            오전 7
                                                                        </option>
                                                                        <option value="오전8시">
                                                                            오전 8
                                                                        </option>
                                                                        <option value="오전9시">
                                                                            오전 9
                                                                        </option>
                                                                        <option value="오전10시">
                                                                            오전 10
                                                                        </option>
                                                                        <option value="오전11시">
                                                                            오전 11
                                                                        </option>
                                                                        <option value="정오12시">
                                                                            정오 12
                                                                        </option>
                                                                        <option value="오후13시">
                                                                            오후 1
                                                                        </option>
                                                                        <option value="오후14시">
                                                                            오후 2
                                                                        </option>
                                                                        <option value="오후15시">
                                                                            오후 3
                                                                        </option>
                                                                        <option value="오후16시">
                                                                            오후 4
                                                                        </option>
                                                                        <option value="오후17시">
                                                                            오후 5
                                                                        </option>
                                                                        <option value="오후18시">
                                                                            오후 6
                                                                        </option>
                                                                        <option value="오후19시">
                                                                            오후 7
                                                                        </option>
                                                                        <option value="오후20시">
                                                                            오후 8
                                                                        </option>
                                                                        <option value="오후21시">
                                                                            오후 9
                                                                        </option>
                                                                        <option value="오후22시">
                                                                            오후 10
                                                                        </option>
                                                                        <option value="오후23시">
                                                                            오후 11
                                                                        </option>
                                                                    </select>
                                                                </div>
                                                                <div class="col-xs-6">
                                                                    <select class="form-control" name="meetingtime_min">
                                                                        <option>분 선택</option>
                                                                        <option selected="" value="00분">00</option>
                                                                        <option value="10분">10</option>
                                                                        <option value="20분">20</option>
                                                                        <option value="30분">30</option>
                                                                        <option value="40분">40</option>
                                                                        <option value="50분">50</option>
                                                                    </select>
                                                                </div>
                                                            </label>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="input-group col-xs-12">
                                                    <div class="radio-custom radio-primary clearfix">
                                                        <input id="meeting_time_b" name="meeting_time_check"
                                                            type="radio" value="extra"
                                                            data-fv-field="meeting_time_check">
                                                        <label class="col-xs-12" for="meeting_time_b">
                                                            <div class="col-xs-12 margin-bottom-10">예약 확정 후 조율</div>
                                                            <div class="col-xs-12">
                                                                <textarea class="col-xs-12 form-control"
                                                                    id="meetingTimeExtra"
                                                                    name="meetingtime_extra" rows="5"
                                                                    style="overflow: hidden; overflow-wrap: break-word; resize: horizontal; height: 124px;"></textarea>
                                                                <div class="col-xs-12">
                                                                    <p class="help-block">• 계절별로 만나는 시간이 다르거나 만나는 시간에 대한
                                                                        추가 정보가 있을 경우 구체적인 시간을 안내해주세요.<br>• 아무 내용도 작성하지
                                                                        않을 시 "예약 확정 후 만나는 시간이 조율됩니다"라고 여행자에게 보여집니다.<br>
                                                                    </p>
                                                                </div>
                                                            </div>
                                                        </label>
                                                    </div>
                                                    <small class="help-block" data-fv-validator="notEmpty"
                                                        data-fv-for="meeting_time_check" data-fv-result="NOT_VALIDATED"
                                                        style="display: none;">만나는 시간을 선택해주세요.</small>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <hr class="divider">
                                    <div class="form-group clearfix"
                                        data-desc="• 넓은 범위의 장소를 설정하면 만남에 많은 시간이 소요됩니다.<br/>• 나쁜 예) 그린파크역, 시청역<br/>• 좋은 예) 그린파크역 1번 출구 앞 벤치, 시청역 2번 출구 오른쪽 스타벅스 입구 앞<br/>">
                                        <label class="control-label col-xs-12 margin-bottom-15 font-weight-600">
                                            만나는 장소
                                        </label>
                                        <div class="col-xs-12">
                                            <div class="row">
                                                <div class="form-group clearfix">
                                                    <label class="control-label col-xs-12" for="offerMeetingPoint">
                                                        만나는 장소 이름
                                                        <span>*</span>
                                                    </label>
                                                    <div class="col-xs-12">
                                                        <input class="form-control" id="offerMeetingPoint"
                                                            name="t_spot" type="text"
                                                            data-fv-field="offer[meeting_point]">
                                                        <small class="help-block" data-fv-validator="notEmpty"
                                                            data-fv-for="offer[meeting_point]"
                                                            data-fv-result="NOT_VALIDATED" style="display: none;">만나는
                                                            장소의 이름을 입력해주세요.</small></div>
                                                </div>
                                                <div class="form-group clearfix">
                                                    <div class="col-xs-12">
                                                        <p class="help-block">• 만남을 위한 구체적인 장소를 알려주세요.<br>• 낯선 곳에서의 여행자의
                                                            불안감을 해소해줍니다.<br></p>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        
                                        <div class="col-xs-12">
                                            <div class="row">
                                                <div class="form-group clearfix"
                                                    data-desc="<span class=&quot;font-weight-600&quot;>만나는 장소 사진 예시</span><br/><br/>• 그린파크역 1번 출구의 사진<br/>">
                                                    <label class="control-label col-xs-12" for="meetingPointPhoto">
                                                        만나는 장소 사진
                                                    </label>
                                                    <div class="col-xs-12">
                                                        <div class="widget margin-5 photo-btn-add-container">
                                                            <div class="hide widget-header">
                                                                <div class="cover" id="meetingPointPhotoDelete">
                                                                    <div class="close">
                                                                        <i class="icon wb-close-mini"></i>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div
                                                                class="widget-body text-center bg-blue-grey-100 blue-grey-700">
                                                                <input name="offer[meeting_point_photo_temp_url]"
                                                                    type="hidden" value="">
                                                                <input name="meeting_point_photo_destroy" type="hidden"
                                                                    value="false">
                                                                <div class="img-container">
                                                                    <img id="msp_picture_img"class="img">
                                                                </div>
                                                                <div class="file-upload-btn">
                                                                    <input id="msp_picture_input" name="file"
                                                                        type="file">
                                                                    <div class="btn btn-default btn-picture-add btn-block ladda-button"
                                                                        data-spinner-color="DarkGrey"
                                                                        data-style="zoom-out" id="meetingPointBtn">
                                                                        <span class="ladda-label">
                                                                            <i class="icon fa-camera"></i>
                                                                            사진등록
                                                                        </span>
                                                                        <span class="ladda-spinner"></span></div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-xs-12">
                                                      
                                                            <p class="help-block">• 만나는 장소의 사진을 등록하시면 여행자들이 더 쉽게 찾아올 수
                                                                있습니다.<br>• 사진을 등록하지 않을 경우 구글 스트리트뷰로 보여집니다.<br>• 4mb 이하의
                                                                사진을 올려주세요.<br></p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
       <input id="p_code1" type="hidden"  name="p_code1" value="${p_code}"/>
       <input id="tablename_ms" type="hidden"  name="tablename_ms" value="ms_pic"/>
       <input id="ismpic" type="hidden"  name="ismpic" value="firstpic"/>
       <input id="msp_picture_name" type="hidden"  name="msp_picture_name" value="msp_picture"/>

                                        <div class="col-xs-12">
                                            <div class="checkbox-custom checkbox-primary">
                                                <input name="offer[pickup]" type="hidden" value="false">
                                                <input id="offerPickup" name="offer[pickup]" type="checkbox"
                                                    value="true">
                                                <label for="offerPickup">호텔 픽업입니다. 만나는 장소를 등록하지 않습니다.</label>
                                            </div>
                                        </div>
                                    </div>

                                    <hr class="divider">
                                    <div class="form-group clearfix">
                                        <label class="control-label col-lg-12 font-weight-600">
                                            투어 코스
                                        </label>
                                        <div class="col-lg-12">
                                            <p class="help-block">• 여행 중 방문할 장소 또는 활동에 대하여 설명해주세요.<br></p>
                                        </div>
                                        <script>
                      
                                        </script>
                                        <div class="col-xs-12">
                                            <ul id="big_ul" class="margin-top-20 sortable-list clearfix ui-sortable"
                                                id="sortableCourseList">
                                                <li  class="col-xs-12 course-item ui-state-default course_li">
                                                    <div class="widget widget-shadow widget-border">
                                                        <div class="widget-header">
                                                            <div class="cover">
                                                             <!--    <div  class="close" data-plugin="alertify">
                                                                    <i id="deleti" class="icon wb-close-mini"></i>
                                                                </div> -->
                                                            </div>
                                                        </div>
                                                     
                                                        
                                                        <div class="widget-body">
                                                            <input name="offer[courses_attributes][][id]" type="hidden">
                                                            <input name="offer[courses_attributes][][position]"
                                                                type="hidden" value="1">
                                                            <input name="offer[courses_attributes][][_destroy]"
                                                                type="hidden" value="0">
                                                            <div class="row">
                                                                <div class="col-xs-12">
                                                                    <div class="form-group clearfix"
                                                                        data-desc="• 투어를 진행할 장소나 활동의 이름을 써주세요.<br/>• 예) 리알토다리<br/>• 예) 바다 카약체험<br/>">
                                                                        <label class="control-label col-xs-12"
                                                                            for="offerCourseTitle">
                                                                            코스 제목
                                                                            <span>*</span>
                                                                        </label>
                                                                        <div class="col-xs-12">
                                                                            <input class="form-control"
                                                                                id="offerCourseTitle"
                                                                                name="tc_title"
                                                                                type="text"
                                                                                data-fv-field="offer[courses_attributes][][title]"
                                                                                value="현지문화체험">
                                                                            <small class="help-block"
                                                                                data-fv-validator="notEmpty"
                                                                                data-fv-for="offer[courses_attributes][][title]"
                                                                                data-fv-result="NOT_VALIDATED"
                                                                                style="display: none;">코스의 제목을
                                                                                작성해주세요.</small></div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="row">
                                                                <div class="col-lg-6 col-sm-6">
                                                                    <div class="form-group clearfix"
                                                                        data-desc="• 각 코스에서 여행자들이 어떤 경험을 할 수 있는지 종류를 선택해주세요.<br/>">
                                                                        <label class="control-label col-xs-12">
                                                                            카테고리
                                                                        </label>
                                                                        <div class="col-xs-12">
                                                                            <select class="form-control"
                                                                                name="tc_cate">
                                                                                <option value="tour">투어</option>
                                                                                <option value="transfer">
                                                                                    차량이동
                                                                                </option>
                                                                                <option value="eat">
                                                                                    식사
                                                                                </option>
                                                                                <option value="photo">
                                                                                    포토존
                                                                                </option>
                                                                                <option value="sleep">
                                                                                    숙박
                                                                                </option>
                                                                                <option value="show">
                                                                                    쇼/관람
                                                                                </option>
                                                                            </select>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="col-lg-6 col-sm-6">
                                                                    <div class="form-group clearfix"
                                                                        data-desc="• 이 코스에서 소요될 시간을 선택해주세요.<br/>">
                                                                        <label class="control-label col-xs-12">
                                                                            소요시간
                                                                        </label>
                                                                        <div class="col-xs-6">
                                                                            <select class="form-control"
                                                                                name="tc_hour">
                                                                                <option selected="" value="0">0 시간
                                                                                </option>
                                                                                <option value="1">한 시간</option>
                                                                                <option value="2">2 시간</option>
                                                                                <option value="3">3 시간</option>
                                                                                <option value="4">4 시간</option>
                                                                                <option value="5">5 시간</option>
                                                                                <option value="6">6 시간</option>
                                                                                <option value="7">7 시간</option>
                                                                                <option value="8">8 시간</option>
                                                                                <option value="9">9 시간</option>
                                                                                <option value="10">10 시간</option>
                                                                                <option value="11">11 시간</option>
                                                                                <option value="12">12 시간</option>
                                                                                <option value="13">13 시간</option>
                                                                                <option value="14">14 시간</option>
                                                                                <option value="15">15 시간</option>
                                                                                <option value="16">16 시간</option>
                                                                                <option value="17">17 시간</option>
                                                                                <option value="18">18 시간</option>
                                                                                <option value="19">19 시간</option>
                                                                                <option value="20">20 시간</option>
                                                                                <option value="21">21 시간</option>
                                                                                <option value="22">22 시간</option>
                                                                                <option value="23">23 시간</option>
                                                                                <option value="24">24 시간</option>
                                                                            </select>
                                                                        </div>
                                                                        <div class="col-xs-6">
                                                                            <select class="form-control"
                                                                                name="tc_min">
                                                                                <option selected="" value="0">00 분
                                                                                </option>
                                                                                <option value="10">10 분</option>
                                                                                <option value="20">20 분</option>
                                                                                <option value="30">30 분</option>
                                                                                <option value="40">40 분</option>
                                                                                <option value="50">50 분</option>
                                                                            </select>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            
                                                            <div class="row">
                                                                <div class="col-xs-12">
                                                                    <div class="form-group clearfix"
                                                                        data-desc="<span class=&quot;font-weight-600&quot;>코스 설명 예시</span><br/><br/>&quot;아치 모양이 아름다운 베네치아의 첫 번째 다리, 리알토 다리위에서 베네치아 운하를 감상하고 다리 위에 모여 있는 점포들을 구경합니다.&quot;<br/>">
                                                                        <label class="control-label col-xs-12">
                                                                            코스 내용
                                                                        </label>
                                                                        <div class="col-xs-12">
                                                                            <textarea class="form-control"
                                                                                name="tc_detail"
                                                                                placeholder="여행자들이 어떤 것을 기대할 수 있는지 사전에 머릿속에 그려볼 수 있도록 무엇을 하는 코스인지 자세하게 적어주세요."
                                                                                rows="4"
                                                                                style="overflow: hidden; overflow-wrap: break-word; resize: horizontal; height: 102px;"></textarea>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                         <%-- <div class="row">
                                                                <div class="col-xs-12">
                                                                    <div class="form-group clearfix"
                                                                        data-desc="• 직접 촬영하셨거나 상업적 이용이 허용된 선명한 사진을 사용하셔야 합니다.<br/>• 코스 내용에 가장 적합한 사진 사이즈는 815*460 입니다.<br/>• 브라우저에 따라 사진의 위, 아래가 잘려서 노출될 수 있습니다.<br/>• 7mb 이하의 사진을 올려주세요.<br/>">
                                                                        <div class="col-xs-12 course-photo-container">
                                                                            <div
                                                                                class="widget margin-5 photo-btn-add-container">
                                                                                <div
                                                                                    class="widget-body text-center bg-blue-grey-100 blue-grey-700">
                                                                                    <div class="img-container">
                                                                                        <img id="course_pic_img"class="img">
                                                                                    </div>
                                                                                    <div class="file-upload-btn">
                                                                                        <input class="course-photo-btn tc_pic"
                                                                                            name="tc_pic" type="file">
                                                                                        <div class="btn btn-default btn-picture-add btn-block ladda-button"
                                                                                            data-spinner-color="DarkGrey"
                                                                                            data-style="zoom-out">
                                                                                            <span class="ladda-label">
                                                                                                <i
                                                                                                    class="icon fa-camera"></i>
                                                                                                사진등록
                                                                                            </span>
                                                                                        </div>
                                                                                        <input
                                                                                            name="offer[courses_attributes][][photo_temp_url]"
                                                                                            type="hidden" value="">
                                                                                            
        <input id="tablename_tc" type="hidden"  name="tablename_tc" value="t_course"/>
       <input id="istcpic" type="hidden"  name="istcpic" value="firstpic"/>
       <input class="tc_picture_name" type="hidden"  name="tc_pic" value="tc_pic"/>
   		
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div> --%>
                                                        </div>
                                                    </div>
                                                </li>

                                            </ul>
                                        </div>
                                        <div class="col-xs-12">
                                            <div class="col-xs-12">
                                                <div class="widget widget-border-dashed" id="addCourse">
                                                    <div class="widget-body text-center bg-blue-grey-100 blue-grey-700">
                                                        <i class="fa fa-plus padding-right-5"></i>
                                                        코스 추가
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
    
                                                     

 

                                    <hr class="divider">

                                    <div class="form-group clearfix">
                                        <div class="col-xs-12 guide-box">
                                            <p class="help-block">• 이 여행의 코스가 포함하고 있는 관광 명소를 선택해주세요. (최대 3개 선택 가능)<br>•
                                                이 상품이 포함하고 있지 않은 관광 명소는 수정될 수 있습니다.<br></p>
                                        </div>
                                    </div>
                                </div>

                                <hr class="divider">
                                <div class="form-group clearfix"
                                    data-desc="• 여행자분들이 상품을 선택할때 가격과 시간을 비교하여 가성비를 계산합니다.<br/>• 총 소요시간을 꼭 작성해주세요.<br/>">
                                    <label class="control-label col-xs-2">
                                        총 소요시간
                                        <span>*</span>
                                    </label>
                                    <div class="col-xs-4">
                                        <input class="form-control" name="timer_size" type="number" value="0"
                                            data-fv-field="offer[duration_size]">
                                        <small class="help-block" data-fv-validator="notEmpty"
                                            data-fv-for="offer[duration_size]" data-fv-result="NOT_VALIDATED"
                                            style="display: none;">필수 항목입니다.</small><small class="help-block"
                                            data-fv-validator="greaterThan" data-fv-for="offer[duration_size]"
                                            data-fv-result="NOT_VALIDATED" style="display: none;">1 이상의 숫자를
                                            입력해주세요.</small><small class="help-block" data-fv-validator="lessThan"
                                            data-fv-for="offer[duration_size]" data-fv-result="NOT_VALIDATED"
                                            style="display: none;">24 시간 이상은 일 기준으로 입력해주세요.</small><small
                                            class="help-block" data-fv-validator="integer"
                                            data-fv-for="offer[duration_size]" data-fv-result="NOT_VALIDATED"
                                            style="display: none;">Please enter a valid number</small></div>
                                    <div class="col-xs-4">
                                        <select class="form-control" name="timer_unit"
                                            data-fv-field="offer[duration_unit]">
                                            <option selected="selected" value="시간">시간</option>
                                            <option value="일">일</option>
                                            <option value="미정">미정</option>
                                        </select>
                                        <small class="help-block" data-fv-validator="notEmpty"
                                            data-fv-for="offer[duration_unit]" data-fv-result="NOT_VALIDATED"
                                            style="display: none;">필수 항목입니다.</small></div>
                                </div>
                                <div class="form-group clearfix">
                                    <div class="col-xs-12">
                                        <p class="help-block">• 여행자분들이 일정 계획에 참고할 수 있도록 투어 총 소요시간을 기입해주세요.<br></p>
                                    </div>
                                </div>


                            </div>

                            <div class="wizard-buttons">
                                <a class="btn btn-default btn-outline" href="/partner/offers/60333/edit?step=1"
                                    role="button">이전 단계로</a>
                                <input class="btn btn-primary btn-outline pull-right" formnovalidate="0" name="save"
                                    role="button" type="submit" value="저장후 다음으로">
                            </div>
                        </form>
                    </div>


                </div>
                <div class="col-md-3 hidden-xs hidden-sm" id="sidebar">
                    <div class="widget widget-shadow margin-bottom-0">
                        <div class="widget-header bg-blue-grey-300 blue-grey-700 padding-30 text-center">
                            <b>
                                TIP
                            </b>
                        </div>
                        <div class="widget-body">
                            <div class="p" id="formHelperContent">• 여행자분들과 만날 장소는 처음 방문하는 여행자들도 쉽게 찾아갈 수 있는 곳으로
                                정해주세요.<br></div>
                        </div>
                        <div class="widget-footer">
                            <div class="list-group">
                                <a class="list-group-item list-borter-top" data-turbolinks="false" href="/offers/329"
                                    target="_blank">
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
                            <a class="btn btn-block btn-warning btn-outline" href="/offers/60333/preview"
                                target="_blank">미리보기</a>
                        </div>
                        <div class="col-xs-6">
                            <div class="btn btn-block btn-success btn-outline" id="sidebarSaveBtn">
                                저장후 다음으로
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
 <input type="hidden" id="p_code" name="p_code" value='t10033' />
 <script>

	 

</script>
     
<script>
 $(document).ready(function(){
	 
	 
	 //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	   p_code1 = $('#p_code1').val();
	   tablename_ms = $('#tablename_ms').val();
	  //alert(p_code1);
	  console.log("ismpic-----"+ismpic);
	  
	  
 	$("#msp_picture_input").on("change",function(){
	   ismpic = $('#ismpic').val();
	  var formData = new FormData();

      for (var i = 0; i < $('#msp_picture_input')[0].files.length; i++) {
          formData.append('msp_picture_input', $('#msp_picture_input')[0].files[i]);
         //alert(formData);
      }
      
		$.ajax({
		    url: '<%=request.getContextPath()%>/partner/regist_tour2/file/spotPic.do?p_code1='+p_code1+'&tablename='+tablename_ms+'&ispic='+ismpic,
		    data: formData,
		    processData: false,
		    contentType: false,
		    type: 'POST',
		    dataType: 'json',
		    success: function (data) {
		
		        //alert("ajax콜백함수로 돌아옴");
				console.log(data);
		        var filename = data[0].MSP_PICTURE;
		     //   var filepath = data[0].FILEPATH;
		      //  realsrc = filepath+"\"+filename;
		        console.log("filename : :"+filename);
		      //  console.log("filepath : :"+filepath);
		        var imgsrc = '<%=request.getContextPath()%>/img/tour/spot_pic/' + filename;
		
		      //  console.log("리얼경로" + realsrc);
		        console.log("그냥경로" + imgsrc);
		
		
		     //   var div = $('<div class="col-xs-12"></div>');
		     
		        
		        $('#msp_picture_img').attr('src', imgsrc);
		    //    $('#test').attr('src', realsrc);
		        $("#ismpic").attr('value','notfirst');
		      	$("#msp_picture_name").val(filename);
		    }

		 });

	});
 	
 	//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	  

 	<%-- 
 	
 	$(".tc_pic").on("change", function(){
 		
	 	 p_code1 = $('#p_code1').val();
		  tablename_tc = $('#tablename_tc').val();
		  alert(p_code1);
		  console.log("ismpic-----"+istcpic);
	 		
	 	   istcpic = $('#istcpic').val();
 	   
 	  var formData = new FormData();

       for (var i = 0; i < $('.tc_pic')[0].files.length; i++) {
           formData.append('tc_pic', $('.tc_pic')[0].files[i]);
           alert(formData);
       }
 		
 		

			 alert("투어코스사진선택");
 			$.ajax({
 			    url: '<%=request.getContextPath()%>/partner/regist_tour2/file/coursePic.do?p_code1='+p_code1+'&tablename='+tablename_tc+'&ispic='+istcpic,
 			    data: formData,
 			    processData: false,
 			    contentType: false,
 			    type: 'POST',
 			    dataType: 'json',
 			    success: function (data) {
 			
 			        alert("ajax콜백함수로 돌아옴");
 			
 			        $('#p_code').val(data.p_code);
 			        console.log($('#p_code').val());
 			
 			        var a = data[0].filename;
 			        var imgpath ='<%=request.getContextPath()%>/img/tour/course_pic/' + a;
 			
 			        console.log("파일이름" + a);
 			        console.log("경로" + imgpath);
 			        
 			
 			
 			     //   var div = $('<div class="col-xs-12"></div>');
 			     
 			          $("#istcpic").attr('value','notfirst');
 			        $(this).parent().prev().find('.img').attr('src', imgpath);
 			
 			    }

 			 });

 		}); --%>
 	///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    //  var n = 0;
      
  	$('#addCourse').on("click",function(){
  					
  			var clone=$('.course_li').clone();
  		//	clone.attr("id","course_li"+(++n));  
  			var delbox = $("<div  class='close' data-plugin='alertify'>"
                     +"<i class='icon wb-close-mini deletei'></i>"
                     +"</div>");
  			clone.find('.cover').append(delbox);
  			$("#big_ul").append(clone);
  			
  	
  	});
 	

	 $(document).on('click','.deletei' , function() {
		var r=$(this).parent().parent().parent().parent();
		r.remove();
	 });

 	///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
 	
 	
 	
 	
 	
 	
 	
});
	
</script>
                                        
     
                                        
                                        
                                        
</body>

</html>