<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="reservation.model.ReservationDAO" %>
<%@ page import="room.model.RoomDTO" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

	<link rel="stylesheet" href="https://www.lottehotel.com/etc.clientlibs/lottehotel/clientlibs/clientlib-bootstrap.min.ACSHASH0c5c202b50a31842a06dfab3ada145f9.css" type="text/css">
	<link rel="stylesheet" href="https://www.lottehotel.com/etc.clientlibs/lottehotel/clientlibs/clientlib-base.min.ACSHASH985dfd4f4b8d35f936b21e46cd0c92c0.css" type="text/css">
	<link rel="stylesheet" href="https://www.lottehotel.com/etc.clientlibs/lottehotel/clientlibs/templates/clientlib-member-signup.min.ACSHASHb8f719be1cfeddc68d3d08909e5e8824.css" type="text/css"> <!-- 회원가입 input 적용 css -->
	<link rel="stylesheet" href="https://www.lottehotel.com/etc.clientlibs/lottehotel/clientlibs/templates/clientlib-reservation.min.ACSHASHb6d12100e6653d69ffb6cb1fd2e8c021.css" type="text/css">
	<script type="text/javascript" src="https://www.lottehotel.com/etc.clientlibs/lottehotel/clientlibs/clientlib-dependencies/library/common.min.ACSHASHc5c5b83d87f57a24c817c20db81839cf.js"></script>
	<link rel="stylesheet" href="../css/slide.css" type="text/css">
	<link rel="stylesheet" href="../css/reserve.css" type="text/css">
	<script type="text/javascript" src="../js/reservation.js"></script>
	
	<%
	if(session.getAttribute("sessionId")==null){
		response.sendRedirect("../member/login.jsp");
	}
		Date today = new Date();
		SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
		String now = simpleDateFormat.format(today);

	%>
	

<style>
	</style>
<title>객실 예약 - 객실 선택</title>
</head>
<body>
<div class="root responsivergrid wrapper">
		<div class="aem-Grid aem-Grid--12 aem-Grid--default--12">
				<%@include file="/menu.jsp" %>
			<main class="main aem-GridColumn aem-GridColumn--default--12">
				  <div class="aem-Grid aem-Grid--12 aem-Grid--default--12">
				    <div id="container" class="ly-container">
						<div>
						<div class="responsivergrid aem-GridColumn aem-GridColumn--default--12">
							<div class="aem-Grid aem-Grid--12 aem-Grid--default--12">
								<div class="s009-content-h1 aem-GridColumn aem-GridColumn--default--12">
									<div class="s009  common-spacing-bottom--ss">
								        <div class="s009__inner-area">
								            <h1 class="s009__headline">객실 예약</h1>
								        </div>
								    </div>
								</div>
								<div class="d528-signup-join-member-info aem-GridColumn aem-GridColumn--default--12">
									<div class="d512 d512-reservation-step2">
										<div class="step-process-area type02">
											<!-- 절차 표시 -->
											<ol class="step-process">
												<li><a href="#" class="is-done">날짜, 인원 선택</a></li>
												<li><a href="#" class="is-active">객실 선택</a></li>
												<li><a href="#" class="is-done">옵션 선택</a></li>
											</ol>
										</div>
										<div class="d512-landing-hotel">
										    <div class="landing-hotel-img">
									
										        <div class="txt-hotel-name"><a href="#none" class="f-bold" >시그니엘 서울</a></div>
										        <div class="pos-hotel-info">
										            <div class="hotel-grade">
										                <span class="bar">5 성급</span>
										            </div>
										            <div class="txt-hotel-addr">
										                <span class="bar">서울특별시 송파구 올림픽로 300 롯데월드타워 76-101층</span>
										                <span>+82-2-3213-1000</span>
										            </div>
										        </div>
										        <a href="../main.jsp" target="_blank" class="btn-hotel"><span>공식 홈페이지</span></a>
										    </div>
										</div>
										
										<form action="reserveroom" method="get" name="regForm" style="margin:50px auto; width:60%; height:200px;">
											<table class="reserve1">
												<tr align="center" style="color:#a0a0a0; font-weight:bold; font-size:16px">
													<td>체크인</td>
													<td>체크아웃</td>
													<td width="10%"></td>
													<td width="10%">성인</td>
													<td width="10%">어린이</td>
												</tr>
												<tr align="center">
													<td><input type="date" name="r_checkin" min='<%=now %>' value="${r_checkin}" readonly/></td>
													<td><input type="date" name="r_checkout" value="${r_checkout }"readonly/></td>
													<td><input type="number" name="diffday" size="10" value="${diffday}" class="diff" readonly/><span style="font-size:18px">박</span></td>
													<td><input type="number" name="r_adults" min="1" value="${r_adults }"readonly/></td>
													<td><input type="number" name="r_kids" value="0" min="0" value="${r_kids }" readonly/></td>
													<td style="width:130px"><input type="submit" value="검색" id="btn" onclick="return reservationCheck()"/></td>
												</tr>
										
										</table>
										</form>
										
										<c:choose>
											<c:when test="${msg != '' }">
												${msg}
											</c:when>
											<c:otherwise>
												<c:forEach items="${totalroom}" var="tr">
												<div class="d512-landing-list">
													<div class="landing-list">
														<div class="exp-copy"> *평균가/1박 (세금, 봉사료 미포함) </div>
														<div class="landing-list-item accordion-wrap02">
															<div class="landing-room-img">
																<div class="img"><img src="../images/reservation/${tr.getRoom_img()}" ></div>
																<a>
																	<div style="font-size:24px;"class="txt-room-name f-bold">${tr.getRoom_type() }</div>
																	<div class="txt-room-price"><fmt:formatNumber value="${tr. getRoom_price() }" pattern="#,###" />원  (1박)</div>
																	<div class="txt-room-condition">객실크기 : ${tr.getRoom_size() }㎡</div>
																	<div class="txt-room-type">
																		<div class="room-type__title">최대 수용 인원 : ${tr.getRoom_capacity()}명</div>
																	</div>
																</a>
																<div class="landing-room-price">
																	<div class="txt-price">
																		<input type="button" class="btn-select" value="예약하기"
																		onclick="location.href='reservation3.jsp?room_price=${tr.getRoom_price()}&diffday=${diffday}&r_checkin=${param.r_checkin}&r_checkout=${param.r_checkout }&r_adults=${param.r_adults}&r_kids=${param.r_kids }&room_type=${tr.getRoom_type()}&room_img=${tr.getRoom_img()} '">
																	</div>
																</div>
															</div>
														</div>
													</div>
												</div>
												</c:forEach>
											</c:otherwise>	
										</c:choose>
									</div>
								</div>
							</div>
						</div>
						</div>
					</div>
				</div>
			</main>
			<%@include file="/footer.jsp" %>
		</div>
	</div>
</body>
</html>