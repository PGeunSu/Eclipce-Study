<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

	<link rel="stylesheet" href="https://www.lottehotel.com/etc.clientlibs/lottehotel/clientlibs/clientlib-bootstrap.min.ACSHASH0c5c202b50a31842a06dfab3ada145f9.css" type="text/css">
	<link rel="stylesheet" href="https://www.lottehotel.com/etc.clientlibs/lottehotel/clientlibs/clientlib-base.min.ACSHASH985dfd4f4b8d35f936b21e46cd0c92c0.css" type="text/css">
	<link rel="stylesheet" href="https://www.lottehotel.com/etc.clientlibs/lottehotel/clientlibs/templates/clientlib-member-signup.min.ACSHASHb8f719be1cfeddc68d3d08909e5e8824.css" type="text/css"> <!-- 회원가입 input 적용 css -->
	<script type="text/javascript" src="https://www.lottehotel.com/etc.clientlibs/lottehotel/clientlibs/clientlib-dependencies/library/common.min.ACSHASHc5c5b83d87f57a24c817c20db81839cf.js"></script>
	<link rel="stylesheet" href="../css/slide.css" type="text/css">
	<script type="text/javascript" src="../js/Event.js"></script>
	<script type="text/javascript" src="../js/member.js"></script>

<style>
		li{
			list-style :none;	
		}
	</style>
<title>객실 예약 - 날짜,인원 선택</title>
</head>
<body>
<div class="root responsivergrid wrapper">
		<div class="aem-Grid aem-Grid--12 aem-Grid--default--12">
				<%@include file="/menu.jsp" %>
			<main class="main aem-GridColumn aem-GridColumn--default--12">
				  <div class="aem-Grid aem-Grid--12 aem-Grid--default--12">
				    <div id="container" class="ly-container">
						<div>
							<div class="d000 d000-">
								<div class="d000__inner">
									<div class="location">
							            <span> <a href="#">홈</a> </span>
							             <span> <a href="#">롯데호텔 회원가입 및 오프라인 가입 회원 인증 | 롯데호텔</a> </span>  
							            <span> 회원 정보 입력</span>
							        </div>
								</div>
							</div>
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
									<div class="d528">
										<div class="step-process-area type02">
											<!-- 절차 표시 -->
											<ol class="step-process">
												<li><a href="#" class="is-active">날짜, 인원 선택</a></li>
												<li><a href="#" class="is-done">객실 선택</a></li>
												<li><a href="#" class="is-done">옵션 선택</a></li>
											</ol>
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