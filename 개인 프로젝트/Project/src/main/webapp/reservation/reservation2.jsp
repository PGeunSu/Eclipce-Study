<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
	<script type="text/javascript" src="../js/Event.js"></script>
	<script type="text/javascript" src="../js/member.js"></script>

<style>
		li{
			list-style :none;	
		}
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
									<div class="d512">
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
										
										<form> <!--추가 예정 --></form>
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