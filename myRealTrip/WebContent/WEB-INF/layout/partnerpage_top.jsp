<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<nav class="site-navbar navbar navbar-default navbar-fixed-top navbar-mega" role="navigation">
    <div class="navbar-header">
        <button class="navbar-toggle hamburger hamburger-close navbar-toggle-left hided" data-toggle="menubar"
            type="button">
            <span class="sr-only">Toggle navigation</span>
            <span class="hamburger-bar"></span>
        </button>
        <button class="navbar-toggle collapsed" data-target="#site-navbar-collapse" data-toggle="collapse"
            type="button">
            <i aria-hidden="true" class="icon wb-more-horizontal"></i>
        </button>
        <a class="navbar-brand navbar-brand-center" data-turbolinks="false" href="<%=request.getContextPath() %>/partner/dashboard.do">
            <img alt="logo" class="navbar-brand-logo all-size-logo" height="24px"
                src="https://d2yoing0loi5gh.cloudfront.net/assets/logo/web_logo@2x-28009c0e4079c659687972395c2e69a80850c7d6cc8ab8394af117848cd4660a.png"
                title="파트너" width="108px">
            <img alt="logo" class="navbar-brand-logo tablet-logo" height="46px"
                src="https://d2yoing0loi5gh.cloudfront.net/assets/logo/ic-mobile-76-59c4321eae219afd9cebfb870646b877f48a5b63adab68a37604891800aed0da.png"
                title="파트너" width="46px">
            <span class="navbar-brand-text hidden-xs">파트너</span>
        </a>
    </div>
    <div class="navbar-container container-fluid">
        <!-- Navbar Collapse -->
        <div class="collapse navbar-collapse navbar-collapse-toolbar" id="site-navbar-collapse">
            <!-- Navbar Toolbar Right -->
            <ul class="nav navbar-toolbar navbar-right navbar-toolbar-right">
                <li class="dropdown">
                    <a aria-expanded="false" class="navbar-avatar dropdown-toggle" data-animation="scale-up"
                        data-toggle="dropdown" data-turbolinks="false" href="#" role="button">
                        <span class="avatar avatar-online">
                            <img alt="partner image"
                                src="//d2yoing0loi5gh.cloudfront.net/assets/default/user_profile_image-414acc60b27f0a258bec14c82b70dc361fc6768da9289f924f887bec1fc33849.png">
                        </span>
                        <span>${authUser.member_name}</span>
                        <span class="caret"></span>
                    </a>
                    <ul class="dropdown-menu" role="menu">
                        <li role="presentation">
                            <span class="label label-outline label-default center-block">
                                휴면중
                                정보입력중
                            </span>
                        </li>
                        <li role="presentation">
                            <a href="/partner/edit" role="menuitem">
                                <i aria-hidden="true" class="icon wb-settings"></i>
                                계정 관리
                            </a>
                        </li>
                        <li class="divider" role="presentation"></li>
                        <li role="presentation">
                            <a data-turbolinks='false' href='<%= request.getContextPath() %>/logout.do'
                                role='menuitem'>
                                <i aria-hidden='true' class='icon wb-power'></i>
                                로그아웃
                            </a>
                        </li>
                    </ul>
                </li>
                <li>
                    <a class='btn btn-default btn-block btn-primary' data-turbolinks='false'
                        href='<%=request.getContextPath() %>/myRealTrip.do' role='button'>
                        여행자 모드
                    </a>
                </li>
            </ul>
            <!-- End Navbar Toolbar Right -->
        </div>
        <!-- End Navbar Collapse -->
    </div>
</nav>