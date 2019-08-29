<%@page import="java.util.ArrayList"%>
<%@page import="myRealTrip.auth.model.Member"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.util.ConnectionProvider"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%
Member auth =(Member)session.getAttribute("authUser");
int memberId =auth.getMemberId();
PreparedStatement ps = null;
ResultSet rs  =null;
Connection conn = ConnectionProvider.getConnection();
ArrayList<String> gmtype = new ArrayList<>();

String sql="select gm_type from GNP_MATCH where memberId=? ";

ps = conn.prepareStatement(sql);
ps.setInt(1, memberId);
rs=ps.executeQuery();
while(rs.next()){
	gmtype.add(rs.getString("gm_type"));
}
System.out.println(gmtype.toString());

boolean Tour=gmtype.contains("Tour");
boolean Ticket=gmtype.contains("Ticket");
boolean HotDeal=gmtype.contains("HotDeal");
boolean Lodging=gmtype.contains("Lodging"); 

request.setAttribute("Tour", Tour);
request.setAttribute("Ticket", Ticket);
request.setAttribute("HotDeal", HotDeal);
request.setAttribute("Lodging", Lodging);
%>

<div class="site-menubar">
    <div class="site-menubar-body scrollable scrollable-inverse is-enabled scrollable-vertical"
        style="position: relative;">
        <div class="scrollable-container" style="height: 811px; width: 281px;">
            <div class="scrollable-content" style="width: 260px;">
                <ul class='site-menu'>
                    <li class='site-menu-category'></li>
                    <li class='site-menu-item'>
                        <a class='animsition-link' href='<%=request.getContextPath() %>/partner/dashboard.do'>
                            <i aria-hidden='true' class='site-menu-icon wb-stats-bars'></i>
                            <span class='site-menu-title'>대시보드</span>
                        </a>
                    </li>
                    <c:if test="${Tour eq true }">
                        <li class='site-menu-item has-sub'>
                            <a href='javascript:void(0)'>
                                <i aria-hidden='true' class='site-menu-icon wb-book'></i>
                                <span class='site-menu-title'>투어예약관리 </span>
                                <span class='site-menu-arrow'></span>
                            </a>
                            <ul class='site-menu-sub'>
                                <li class='site-menu-item'>
                                    <a class='animsition-link'
                                        href='/partner/tour_reservations?order=created_at&amp;status=ongoing'>
                                        <span class='site-menu-title'>진행중인 예약</span>
                                    </a>
                                </li>
                                <li class='site-menu-item'>
                                    <a class='animsition-link'
                                        href='/partner/tour_reservations?order=status_updated_at&amp;status=confirm'>
                                        <span class='site-menu-title'>확정된 예약</span>
                                    </a>
                                </li>
                                <li class='site-menu-item'>
                                    <a class='animsition-link'
                                        href='/partner/tour_reservations?order=status_updated_at&amp;status=finish'>
                                        <span class='site-menu-title'>다녀온 여행</span>
                                    </a>
                                </li>
                                <li class='site-menu-item'>
                                    <a class='animsition-link'
                                        href='/partner/tour_reservations?order=status_updated_at&amp;status=cancel'>
                                        <span class='site-menu-title'>취소된 여행</span>
                                    </a>
                                </li>
                            </ul>
                        </li>
                    </c:if>
                    <c:if test="${Ticket eq true }">
                        <li class='site-menu-item has-sub'>
                            <a href='javascript:void(0)'>
                                <i aria-hidden='true' class='site-menu-icon wb-book'></i>
                                <span class='site-menu-title'>티켓예약관리</span>
                                <span class='site-menu-arrow'></span>
                            </a>
                            <ul class='site-menu-sub'>
                                <li class='site-menu-item'>
                                    <a class='animsition-link'
                                        href='/partner/ticket_reservations?order=created_at&amp;status=ongoing'>
                                        <span class='site-menu-title'>신규주문</span>
                                    </a>
                                </li>
                                <li class='site-menu-item'>
                                    <a class='animsition-link'
                                        href='/partner/ticket_reservations?order=status_updated_at&amp;status=confirm'>
                                        <span class='site-menu-title'>발권완료</span>
                                    </a>
                                </li>
                                <li class='site-menu-item'>
                                    <a class='animsition-link'
                                        href='/partner/ticket_reservations?order=status_updated_at&amp;status=finish'>
                                        <span class='site-menu-title'>여행완료</span>
                                    </a>
                                </li>
                                <li class='site-menu-item'>
                                    <a class='animsition-link'
                                        href='/partner/ticket_reservations?order=status_updated_at&amp;status=cancel'>
                                        <span class='site-menu-title'>취소</span>
                                    </a>
                                </li>
                            </ul>
                        </li>
                    </c:if>
                    <c:if test="${HotDeal eq true }">

                        <li class='site-menu-item has-sub'>
                            <a href='javascript:void(0)'>
                                <i aria-hidden='true' class='site-menu-icon wb-book'></i>
                                <span class='site-menu-title'>에어텔/항공권 예약관리</span>
                                <span class='site-menu-arrow'></span>
                            </a>
                            <ul class='site-menu-sub'>
                                <li class='site-menu-item'>
                                    <a class='animsition-link'
                                        href='/partner/hot_deal_reservations?order=created_at&amp;status=ongoing'>
                                        <span class='site-menu-title'>진행중인 예약</span>
                                    </a>
                                </li>
                                <li class='site-menu-item'>
                                    <a class='animsition-link'
                                        href='/partner/hot_deal_reservations?order=status_updated_at&amp;status=confirm'>
                                        <span class='site-menu-title'>확정된 예약</span>
                                    </a>
                                </li>
                                <li class='site-menu-item'>
                                    <a class='animsition-link'
                                        href='/partner/hot_deal_reservations?order=status_updated_at&amp;status=finish'>
                                        <span class='site-menu-title'>다녀온 여행</span>
                                    </a>
                                </li>
                                <li class='site-menu-item'>
                                    <a class='animsition-link'
                                        href='/partner/hot_deal_reservations?order=status_updated_at&amp;status=cancel'>
                                        <span class='site-menu-title'>취소된 여행</span>
                                    </a>
                                </li>
                            </ul>
                        </li>
                    </c:if>
                    <c:if test="${Lodging eq true }">
                        <li class='site-menu-item has-sub'>
                            <a href='javascript:void(0)'>
                                <i aria-hidden='true' class='site-menu-icon wb-book'></i>
                                <span class='site-menu-title'>민박예약관리</span>
                                <span class='site-menu-arrow'></span>
                            </a>
                            <ul class='site-menu-sub'>
                                <li class='site-menu-item'>
                                    <a class='animsition-link'
                                        href='/partner/lodging_reservations?order=created_at&amp;status=ongoing'>
                                        <span class='site-menu-title'>진행중인 예약</span>
                                    </a>
                                </li>
                                <li class='site-menu-item'>
                                    <a class='animsition-link'
                                        href='/partner/lodging_reservations?order=status_updated_at&amp;status=confirm'>
                                        <span class='site-menu-title'>확정된 예약</span>
                                    </a>
                                </li>
                                <li class='site-menu-item'>
                                    <a class='animsition-link'
                                        href='/partner/lodging_reservations?order=status_updated_at&amp;status=finish'>
                                        <span class='site-menu-title'>다녀온 여행</span>
                                    </a>
                                </li>
                                <li class='site-menu-item'>
                                    <a class='animsition-link'
                                        href='/partner/lodging_reservations?order=status_updated_at&amp;status=cancel'>
                                        <span class='site-menu-title'>취소된 여행</span>
                                    </a>
                                </li>
                            </ul>
                        </li>
                    </c:if>
                    <li class='site-menu-item'>
                        <a class='animsition-link' href='/partner/calendar'>
                            <i aria-hidden='true' class='site-menu-icon wb-calendar'></i>
                            <span class='site-menu-title'>일정 관리</span>
                        </a>
                    </li>
                    <li class='site-menu-item has-sub'>
                        <a href='javascript:void(0)'>
                            <i aria-hidden='true' class='site-menu-icon wb-heart'></i>
                            <span class='site-menu-title'>후기 관리</span>
                            <span class='site-menu-arrow'></span>
                        </a>
                        <ul class='site-menu-sub'>
                            <li class='site-menu-item'>
                                <a class='animsition-link' href='/partner/reviews'>
                                    <span class='site-menu-title'>답글 달지 않은 후기</span>
                                </a>
                            </li>
                            <li class='site-menu-item'>
                                <a class='animsition-link' href='/partner/reviews?category=replied'>
                                    <span class='site-menu-title'>답변한 후기</span>
                                </a>
                            </li>
                        </ul>
                    </li>
                    <li class='site-menu-item'>
                        <a class='animsition-link'
                            href='<%=request.getContextPath() %>/partner/manage_i_itemlist.do'>
                            <i aria-hidden='true' class='site-menu-icon wb-flag'></i>
                            <span class='site-menu-title'>상품 관리</span>
                        </a>
                    </li>
                    <li class='site-menu-item'>
                        <a href='javascript:void(0)'>
                            <i aria-hidden='true' class='site-menu-icon wb-payment'></i>
                            <span class='site-menu-title'>정산 관리</span>
                            <span class='site-menu-arrow'></span>
                        </a>
                        <ul class='site-menu-sub'>
                            <li class='site-menu-item'>
                                <a class='animsition-link' href='/partner/profits'>
                                    <span class='site-menu-title'>현재 수익 내역</span>
                                </a>
                            </li>
                            <li class='site-menu-item'>
                                <a class='animsition-link' href='/partner/profits/pending'>
                                    <span class='site-menu-title'>수익 예정 내역</span>
                                </a>
                            </li>
                            <li class='site-menu-item'>
                                <a class='animsition-link' href='/partner/remittances'>
                                    <span class='site-menu-title'>송금 신청 내역</span>
                                </a>
                            </li>
                            <li class='active site-menu-item'>
                                <a class='animsition-link' href='<%=request.getContextPath() %>/partner/account.do'>
                                    <span class='site-menu-title'>정산 계좌 설정</span>
                                </a>
                            </li>
                        </ul>
                    </li>
                    <li class='site-menu-item'>
                        <a class='animsition-link' href='/partner/messenger/rooms'>
                            <i aria-hidden='true' class='site-menu-icon wb-chat-text'></i>
                            <span class='site-menu-title'>메시지</span>
                            <div class='site-menu-label'>
                                <span class='label label-danger label-round hidden' id='new-messages-ico'>NEW</span>
                            </div>
                        </a>
                    </li>
                    <li class='site-menu-item'>
                        <a class='animsition-link' href='/partner/edit'>
                            <i aria-hidden='true' class='site-menu-icon wb-user'></i>
                            <span class='site-menu-title'>계정관리</span>
                        </a>
                    </li>
                    <li class='site-menu-item'>
                        <a class='animsition-link' href='<%=request.getContextPath() %>/partner/info.do'>
                            <i aria-hidden='true' class='site-menu-icon wb-bell'></i>
                            <span class='site-menu-title'>공지사항</span>
                        </a>
                    </li>
                </ul>
                <div class="external-menu-item hidden-sm hidden-md">
                    <a class="link" href="https://blog.myrealtrip.com" target="_blank">
                        <i aria-hidden="true" class="site-menu-icon wb-home"></i>
                        <span>가이드 블로그</span>
                    </a>
                </div>
            </div>
        </div>
        <div class="scrollable-bar scrollable-bar-vertical is-disabled scrollable-bar-hide" draggable="false">
            <div class="scrollable-bar-handle"></div>
        </div>
    </div>
</div>