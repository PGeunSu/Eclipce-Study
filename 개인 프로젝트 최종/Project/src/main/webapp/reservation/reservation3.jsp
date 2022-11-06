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
	<link rel="https://www.lottehotel.com/etc.clientlibs/lottehotel/clientlibs/templates/clientlib-reservation.min.ACSHASHb6d12100e6653d69ffb6cb1fd2e8c021.css" type="text/css">
	<script type="text/javascript" src="https://www.lottehotel.com/etc.clientlibs/lottehotel/clientlibs/clientlib-dependencies/library/common.min.ACSHASHc5c5b83d87f57a24c817c20db81839cf.js"></script>
	<link rel="stylesheet" href="../css/slide.css" type="text/css">
	<link rel="stylesheet" href="../css/reserve.css" type="text/css">
	<script type="text/javascript" src="../js/reservation.js"></script>
	
	<%
	int room_price = Integer.parseInt(request.getParameter("room_price"));
	int diffday = Integer.parseInt(request.getParameter("diffday"));
	int tax = room_price / 5;
	int totalPrice = room_price * diffday + tax;

%>

<style>
	</style>
<title>객실 예약 - 옵션 선택</title>
</head>
<body>
<body>
<div class="root responsivergrid wrapper">
		<div class="aem-Grid aem-Grid--12 aem-Grid--default--12">
				<%@include file="/menu.jsp" %>
			<main class="main aem-GridColumn aem-GridColumn--default--12">
				  <div class="aem-Grid aem-Grid--12 aem-Grid--default--12">
				    <div id="container" class="ly-container">
				    	<div class="d000 d000-">
								<div class="d000__inner">
									<div class="location">
							            <span> <a href="#">홈</a> </span>
							             <span> <a href="#">객실 예약</a> </span>  
							            <span>옵션 선택</span>
							        </div>
								</div>
							</div>
						<div>
						<div class="responsivergrid aem-GridColumn aem-GridColumn--default--12">
							<div class="aem-Grid aem-Grid--12 aem-Grid--default--12">
								<div class="s513-reservation-step3 aem-GridColumn aem-GridColumn--default--12">
									<div class="d513">
										<div class="d513-step-process">
											<ol class="step-process">
												<li><a href="#" class="is-done">날짜, 인원 선택</a></li>
												<li><a href="#" class="is-done">객실 선택</a></li>
												<li><a href="#" class="is-active">옵션 선택</a></li>
											</ol>
        								</div>
        								
        								<form action="reserveroom" method="post" name="regForm">
										<div class="d513-detail-view">
											<div class="slickNew" style="opacity: 1;"> 
												<div class="slickNew-item__layout">
													<div class="slickNew-item__center hover">
														<img class="slcik-retina" src="../images/reservation/${param.room_img}">
													</div>
												</div>
											</div>
											<div class="d513-title-box">
												<p class="sub-tit">시그니엘 서울</p>
												<p class="tit f-bold">${param.room_type}</p>
												<input type="hidden" name="r_type" value="${param.room_type}" />
												<div class="pkg-info">
													<a><p class="tit">룸 프로모션 정보</p></a>
												</div>
											</div>
										</div>
										<div class="d513-detail-info">
											<div class="inner">
												<div class="section-info currnecy-check">
													<p class="tit">예약 옵션</p>
													<div class="column">
														<div class="select-info ui-reservation-options-wrap">
															<p class="tit tit01">객실 1</p>
															<div class="use-person-info">투숙인원 : 성인${param.r_adults}인, 어린이${param.r_kids}인
															<input type="hidden" name="r_adults"  value="${param.r_adults }"/>
															<input type="hidden" name="r_kids" value="${param.r_kids }"/>
															</div>
															<div class="info-group">
															<!-- 왼쪽 -->
																<div class="info-area">
																	<div class="info-item">
																			<p class="tit">
											                                    조식신청 (성인)
										                                    <span class="sub-tit">모든 투숙일에 적용됩니다.</span>
										                                </p>
																		<div class="add-btn-group">
																			<div class="add-btn">
																				<p>
										                                            <span class="label-txt">성인 조식</span>
										                                            <span class="price-txt">
										                                                        <span class="price">50,000</span>
										                                                        KRW
										                                                        <span class="person"> / 1인, 1박</span>
										                                                    </span>
										                                        </p>
																				<div class="d513-person__count otp-bfa-control"> 
																					<input type="number" style="background-color:white; width:100px; text-align:center;" name="breakfast" id="input" size="5" min="0" max='${param.r_adults + param.r_kids - "" }' />&nbsp;&nbsp;
																					<input type="button" id="btn" value=" 옵션 확인" onclick="breakfastCheck(${param.diffday})" />
																		
																				</div>
																			</div>
																		</div>
																	</div>
																	<div class="info-item">
												                        <p class="tit">추가요청</p>
												                        <div class="add-sub-tit">
												                            <ul class="sub-tit"></ul>
												                        </div>
																		 <div class="check-list">
												                            <div class="text-box">
												                                <textarea name="comment" placeholder="예시) 추가 배드를 요청합니다." style="resize:none;"></textarea>
												                            </div>
												                        </div>
												                    </div>
																</div>
															<!-- 오른쪽 -->
																<div class="info-area">
																	<div class="detail-section">
																	<!-- 체크인 날짜에 따른 객실 요금 -->
																		<p class="tit">
																			<span class="label-txt">객실 요금</span>
																			<span class="option-txt">
																				<span>${param.r_checkin} ~ ${param.r_checkout} </span>
																				<input type="hidden" name="r_checkin" value="${param.r_checkin}" />
																				<input type="hidden" name="r_checkout" value="${param.r_checkout }"/>
																				<span class="price-txt">
																					<span class="price roomPrice"> <%=totalPrice %> KRW</span>
																				</span>
																			</span>
																		</p>
																	
																		<!-- 세금 및 봉사료  -->
																		<p class="tit tax-area">
																			<span class="label-txt">세금 및 봉사료</span>
																			<span class="price-txt"> 
																				<span class="price taxPrice"><%=tax%> KRW</span>
																			</span>
																		</p>
																		<!-- 총 합계 금액 -->
																		<p class="total-price total-price-area">
																			객실<em>1</em> 총 요금
																			<span class="price-txt">
																				<span class="price totalPrice">
																				<input type="number" name="r_price" id="input" readonly="readonly" value="<%=totalPrice %>" />원
																						<input type="hidden" name="price" value="<%=totalPrice %>" />
																				</span>
																			</span>
																		</p>
																		<input style="position: absolute; right:50px; bottom:50px;" type="submit" id="btn" value="예약하기" />
																	</div>
																</div>
															</div>
														</div>
													</div>
												</div>
												<div class="section-info">
								                    <p class="tit">요금정책</p>
								                    <div class="column">
								                        <ul class="cancel-guide">
								                            <li>상기 요금에 세금 및 봉사료 각 10%가 가산됩니다. (총 21%) </li><li>상기 요금에 조식은 포함되어 있지 않습니다. </li><li>한강 조망 (리버뷰) 및 전망 욕실은 추가요금이 발생 되며, 예약 희망 시 유선 문의 또는 추가요청 기재 부탁드립니다. </li><li>한강 조망 (리버뷰) ￦50,000 (1박당) / 전망 욕실 ￦50,000 (1박당) / 한강 조망 및 전망 욕실 ￦100,000      (1박당)</li>
								                        </ul>
								                    </div>
								                </div>
												<div class="section-info">
								                    <p class="tit">취소규정</p>
								                    <div class="column">
								                        <ul class="cancel-guide">
								                            <li>상기 홈페이지 요금은 정상가에서 할인된 금액으로 중복 할인은 불가능합니다.</li>
								                            <li>예약 취소 및 변경은 체크인 하루 전 18:00(한국시간)까지 가능합니다. 
															 예약하신 일자에 체크인 되지 않거나 또는 위의 지정 시간 이후에 예약을 취소했을 경우에는 예약 사항에 대해 노-쇼 (No Show) 처리 되며, 
															 이에 따른 위약금으로 예약 첫날에 해당하는 1박 객실요금이 청구되오니 유의하시기 바랍니다.</li>
															<li>일부 프로모션 특가상품은 별도의 취소규정이 적용되며, 취소 시 첫날 1박 요금의 100%가 위약금으로 부과됩니다.</li>
															<li>일부 객실(코리안 스위트, 프레지덴셜 스위트, 로얄 스위트)은 예약 시점에 객실요금의 보증용으로 카드 선승인이 이루어지며, 카드 승인 불가 시 예약이 임의로 취소될 수 있습니다.</li>
								                        </ul>
								                    </div>
								                </div>
											</div>
										</div>	
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