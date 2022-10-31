<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

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
	int room_price = Integer.parseInt(request.getParameter("room_price"));
	int diffday = Integer.parseInt(request.getParameter("diffday"));
	int totalPrice = room_price * diffday;
%>

<style>
	</style>
<title>객실 예약 - 옵션 선택</title>
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
												<li><a href="#" class="is-done">객실 선택</a></li>
												<li><a href="#" class="is-active">옵션 선택</a></li>
											</ol>
										</div>
										
									<form action="reserveroom" method="post" name="regForm">
										<table width="80%" align="center" class="reserveOption">
											<tr height="15%">
												<th colspan="4" align="center"><font size="5">예약정보</font></th>
											</tr>
											<tr id="line">
												<td align="center" id="line"><img src="../images/reservation/${param.room_img}" width="280" height="200"></td>
												<td colspan="3" id="line">
													<table width="100%">
														<tr align="left">	
															<td>
																예약 객실 : <b>${param.room_type}</b>
																<input type="hidden" name="r_type" value="${param.room_type}" />
															</td>
															<td>
																체크인날짜 : <b>${param.r_checkin }</b>
																<input type="hidden" name="r_checkin" value="${param.r_checkin}" />
															</td>
														</tr>
														<tr align="left">
															<td>체크아웃 날짜 : <b>${param.r_checkout }</b>
																<input type="hidden" name="r_checkout" value="${param.r_checkout }"/>
															</td>
															<td>
																성인 투숙객 수 : <b>${param.r_adults}</b>명
																<input type="hidden" name="r_adults"  value="${param.r_adults }"/>
															</td>
														</tr>
														<tr align="left">
															<td>아동 투숙객 수 : <b>${param.r_kids }</b>명
																<input type="hidden" name="r_kids" value="${param.r_kids }"/>
															</td>
															<td> 
																총 금액 : <input type="number" name="r_price" id="input" readonly="readonly" value="<%=totalPrice %>" />원
																<input type="hidden" name="price" value="<%=totalPrice %>" />
															</td>
														</tr>
													</table>
												</td>
											</tr>
											<tr>
												<td colspan="4" align="center" style="font-weight:bold;" height="15%"><font size="5">옵션선택</font></td>
											</tr>
											<tr id="line">
												<td colspan="4" align="center" id="line">
													조식 인원 수 (1인당 20,000원) : 
													<input type="number" style="background-color:#e7eaed; text-align:center;" name="breakfast" id="input" size="5" min="0" max='${param.r_adults + param.r_kids - "" }' />&nbsp;&nbsp;
													<input type="button" id="btn" value=" 옵션 확인" onclick="breakfastCheck(${param.diffday})" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
													<input type="submit" id="btn" value="예약하기" />
												</td>
											</tr>
										</table>
									</form>
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