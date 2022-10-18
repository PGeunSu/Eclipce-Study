<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Date"%>	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://www.lottehotel.com/etc.clientlibs/lottehotel/clientlibs/clientlib-dependencies.min.ACSHASHd41d8cd98f00b204e9800998ecf8427e.css" type="text/css">
	<link rel="stylesheet" href="https://www.lottehotel.com/etc.clientlibs/lottehotel/clientlibs/templates/clientlib-basic.min.ACSHASH51a81fbda7b06de93c9f90f268cd5c56.css" type="text/css">
	<link rel="stylesheet" href="https://www.lottehotel.com/etc.clientlibs/lottehotel/clientlibs/clientlib-global/ko.min.ACSHASH90bb3e216f21b81b77438adfdac49bd1.css" type="text/css">	
	<link rel="stylesheet" href="https://www.lottehotel.com/etc.clientlibs/lottehotel/clientlibs/clientlib-base.min.ACSHASH985dfd4f4b8d35f936b21e46cd0c92c0.css" type="text/css">
	<link rel="stylesheet" href="https://www.lottehotel.com/etc.clientlibs/lottehotel/clientlibs/templates/clientlib-basic.min.ACSHASH51a81fbda7b06de93c9f90f268cd5c56.css" type="text/css">
	<script type="text/javascript" src="https://www.lottehotel.com/etc.clientlibs/lottehotel/clientlibs/clientlib-dependencies/library/common.min.ACSHASHc5c5b83d87f57a24c817c20db81839cf.js"></script>
	<link rel="stylesheet" href="./css/slide.css" type="text/css">
	<link rel="stylesheet"href="https://unpkg.com/swiper/swiper-bundle.min.css" /> <!-- swiper -->
	<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
	<script type="text/javascript" src="./js/Event.js"></script>
	<script>
	 $.getJSON(
	            "https://api.openweathermap.org/data/2.5/weather?id=1835848&appid=079b8942e0b5aa9292436aca492ee8f0&units=metric",
	            function (data) {

	                var $cTemp = data.main.temp;
	               

	                $(".ctemp").prepend($cTemp);
	              
	                var $now = new Date();
	                var $cDate = $now.getFullYear() + "년" + ($now.getMonth() + 1) + "월" + $now.getDate()
	                    + "일 " + $now.getHours() + " : " + $now.getMinutes() + "\n";

	                $(".cDate").prepend($cDate);
	            }
	        );
	
	</script>
	
<title>Main</title>
</head>
<body>
	<div class="root responsivergrid wrapper">
		<div class="aem-Grid aem-Grid--12 aem-Grid--default--12">
			<header class="header aem-GridColumn aem-GridColumn--default--12">
			 <%@ include file="menu.jsp"%>
			</header>
			<main class="main aem-GridColumn aem-Grid--default--12">
				<div class="aem-Grid aem-Grid--12 aem-Grid--default--12">
					<div id="container" class="ly-container">
						<div class="aem-Grid aem-Grid--12 aem-Grid--default--12"><!-- 미삽입 --></div>
						<!-- 메인 슬라이드 이미지 -->
						<div class="s501-main-image aem-GridColumn aem-GridColumn--default--12">
							<div class="s501">
								<div class="s501-slider__wrap">
									<div class="swiper mySwiper">
										<div class="swiper-wrapper">
											<div class="swiper-slide"><img src="./images/mainSlide/mainSlide1.jpg"></div>
											<div class="swiper-slide"><img src="./images/mainSlide/mainSlide2.jpg"></div>
											<div class="swiper-slide"><img src="./images/mainSlide/mainSlide3.jpg"></div>
										
										</div>
									
									<div class="swiper-button-next"></div>
									<div class="swiper-button-prev"></div>
									<div class="swiper-button-pagination"></div>
									
									</div>
								</div>
							</div>
						</div>
						<!--시그니엘 서울 추천 프로모션 페이지-->
						<div class="s504-main-promotion aem-GridColumn aem-GridColumn--default--12">
							<div class="s504 common-spacing-top--xxl common-spacing-bottom-mm">
								<div class="s504-inner s501-ui-page-target">
									 <div class="rewards-title"> <!-- 제목 -->
										<span>시그니엘 서울 추천 프로모션</span>
										<a href="https://www.lottehotel.com/seoul-signiel/ko/hotel-offers/packages.html" class="btn-ttl-more">프로모션 더 보기</a>									 	
									 </div>
									<div class="promotion-item-wrap">
										<div class="slickNew" style="opacity: 1;">
											<div class="slickNew-carousel slick-initialized slick-slider" role="complementary">
											
												<div aria-live="polite" aria-atomic="true" class="slick-ada screen--out">현재 1번째 슬라이드 (전체 3개)</div>
													<div class="slick-list draggable"><div class="slick-track" style="opacity: 1; width: 1650px; transform: translate3d(0px, 0px, 0px);">
														<div class="slick-slide slick-current slick-active" data-slick-index="0" aria-hidden="false" tabindex="0" style="width: 502px;">
															<div>
																<div class="slickNew-item promotion-item" style="width: 100%; display: inline-block;">
													<div class="item-img">
														<span class="flag only f-bold"><span>회원 전용</span></span>
														<a href="#" tabindex="0">
															<img src="./images/promotion/promotion1.jpg">
														</a>
													</div>
													<div class="txt-promotion">
														<a href="#" class="go-promotion" tabindex="0">
															<div class="category-hotel">시그니엘 서울</div>
														<div class="promotion-ttl f-bold">Hope on the Lake</div>
														<div class="promotion-copy"><span>객실 + 러버덕 골프공 세트</span></div>
															<div class="promotion-date">
																<strong class="f-bold">투숙 : </strong>
																<span data-target="conversionDateFormat">2022년 09월 30일</span> - <span data-target="conversionDateFormat">2022년 10월 31일</span>
															</div> <!-- 투숙 -->
															<div class="promotion-date">
																<strong class="f-bold">예약 : </strong>
																<span data-target="conversionDateFormat">2022년 09월 30일</span> - <span data-target="conversionDateFormat">2022년 10월 30일</span>
															</div> <!-- 예약 -->
																</a>
																	</div>
							 								<div class="promotion-price">
																<span class="category">PACKAGE</span>
																		<a href="/seoul-signiel/ko/hotel-offers/packages/2022/09/hope-on-the-lake.html" class="btn-go" tabindex="0">
																			<span class="promotion-price__currency">최저</span>
																			<strong class="price__number "><span class="f-bold" data-target="conversionCurrency" data-orgnprice="520,000">520,000</span></strong>
																			<span class="price__currency f-bold" data-target="conversionCurrency" data-orgnprice="KRW">KRW</span>
																		</a>
																	</div>								 								
									 							</div>
									 						</div>
									 					</div>
									 					<div class="slick-slide slick-active" data-slick-index="2" aria-hidden="false" tabindex="0" style="width:502px;'">
									 						<div>
									 							<div class="slickNew-item promotion-item" style="width: 100%; display: inline-block;">
									 								<div class="item-img">
									 									
									 									<a href="#" tabindex="0">
									 										<img src="./images/promotion/promotion2.jpg">
									 									</a>
									 								</div>
									 								<div class="txt-promotion">
																		<a href="#" class="go-promotion" tabindex="0">
																				<div class="category-hotel">시그니엘 서울</div>
																			<div class="promotion-ttl f-bold">누구나 나눔</div>
																			<div class="promotion-copy"><span>객실 + 대한적십자사 캠페인 키트 + 헌혈증 제시 시 특전(리워즈 추가 적립)</span></div>
																				<div class="promotion-date">
																					<strong class="f-bold">투숙 : </strong>
																					<span data-target="conversionDateFormat">2022년 10월 11일</span> - <span data-target="conversionDateFormat">2022년 12월 01일</span>
																				</div> <!-- 투숙 -->
																				<div class="promotion-date">
																					<strong class="f-bold">예약 : </strong>
																					<span data-target="conversionDateFormat">2022년 09월 20일</span> - <span data-target="conversionDateFormat">2022년 11월 30일</span>
																				</div> <!-- 예약 -->
																		</a>
																	</div>
									 								<div class="promotion-price">
																		<span class="category">PACKAGE</span>
																				<a href="#" class="btn-go" tabindex="0">
																					<span class="promotion-price__currency">최저</span>
																					<strong class="price__number "><span class="f-bold" data-target="conversionCurrency" data-orgnprice="520,000">520,000</span></strong>
																					<span class="price__currency f-bold" data-target="conversionCurrency" data-orgnprice="KRW">KRW</span>
																				</a>
																	</div>								 								
									 							</div>
									 						</div>
									 					</div>
									 					<div class="slick-slide slick-active" data-slick-index="3" aria-hidden="false" tabindex="0" style="width:502px;'">
									 						<div>
									 							<div class="slickNew-item promotion-item" style="width: 100%; display: inline-block;">
									 								<div class="item-img">
									 								
									 									<a href="#" tabindex="0">
									 										<img src="./images/promotion/promotion3.jpg">
									 									</a>
									 								</div>
									 								<div class="txt-promotion">
																		<a href="#" class="go-promotion" tabindex="0">
																				<div class="category-hotel">시그니엘 서울</div>
																			<div class="promotion-ttl f-bold">Glimps of Napa Valley</div>
																			<div class="promotion-copy"><span>객실 + 본드 와인 1병 + 시그니엘 클럽 이용 권한 + 16시 레이트 체크아웃</span></div>
																				<div class="promotion-date">
																					<strong class="f-bold">투숙 : </strong>
																					<span data-target="conversionDateFormat">2022년 09월 27일</span> - <span data-target="conversionDateFormat">2022년 12월 23일</span>
																				</div> <!-- 투숙 -->
																				<div class="promotion-date">
																					<strong class="f-bold">예약 : </strong>
																					<span data-target="conversionDateFormat">2022년 09월 27일</span> - <span data-target="conversionDateFormat">2022년 12월 22일</span>
																				</div> <!-- 예약 -->
																		</a>
																	</div>
									 								<div class="promotion-price">
																		<span class="category">PACKAGE</span>
																				<a href="#" class="btn-go" tabindex="0">
																					<span class="promotion-price__currency">최저</span>
																					<strong class="price__number "><span class="f-bold" data-target="conversionCurrency" data-orgnprice="3,000,000">3,000,000</span></strong>
																					<span class="price__currency f-bold" data-target="conversionCurrency" data-orgnprice="KRW">KRW</span>
																				</a>
																	</div>								 								
									 							</div>
									 						</div>
									 					</div>
									 				</div>
									 			</div>
									 		</div>
									 	</div>
									 </div>
								</div>
							</div>
						</div>
						<!-- 시그니엘 서울 소개 Map API -->
						<div class="d088-main-hotel-information aem-GridColumn aem-GridColumn--defalut--12">
							<script type="text/javascript" src="https://www.lottehotel.com/etc.clientlibs/lottehotel/clientlibs/vendor/googlemap.min.ACSHASHeb6728f04c99e4d95376746c40222b83.js"></script>
							<script type="text/javascript" src="https://www.lottehotel.com/etc.clientlibs/lottehotel/components/common/content/common/d088-main-hotel-information/clientlibs/data.min.ACSHASH7aa54e3007cb01ea0e8af162efd15053.js"></script>
							
							<div class="d088 common-spacing-bottom--1">
								<div class="d088__inner">
									<div class="d088-section">
										<div class="d088-section__left signiel">
											<div class="d088-title" data-code="LTSG"><h2 class="f-bold">시그니엘 서울 소개</h2></div>
											<div class="d088-text">
												<p>국내 최고증 건물인 롯데월드타워 76층~101층에 위치한 시그니엘 서울은 한국의 아름다움을 현대적인 감각으로 풀어낸 객실(235실)에서 서울의 파로나믹한 스카이라인과 환상적인
													야경을 조망할 수 있으며 일몰과 일출을 한 자리의 감상할 수 있는 구내 유일의 호텔입니다.	
												</p>
											</div>
											<div class="d088-weather">
							                    <p class="d088-weather__title">현재 날씨</p>
							                    <div class="d088-weather__info">
							                        <div class="d088-weather__text">
							                            <span id="spanTime" class="cDate">
							                            </span>
							                        </div>
							                        <div class="d088-weather__text2">
							                            <span class="d088-weather__image">
							                                <img id="weatherImg" src="./images/weather/ico_weathr_04.png" alt="weather image" class="retinaimg">
							                            </span>
							                            <span class="ctemp">℃</span>
							                        </div>	
							                    </div>
							                </div>
										</div>
										<div class="d088-section__right">
											<div class="d088-map">
												<div class="d088-map__area">
                        							<div id="map" class="d088-map__area" style="border:0;width:100%;"></div>
                        							 <script type="text/javascript" src="https://dapi.kakao.com/v2/maps/sdk.js?appkey=25865c9220776c3ab30a64088a76e6db"></script>
                        							 <script>
												        var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
												            mapOption = {
												                center: new kakao.maps.LatLng(37.8282, 127.0685), // 지도의 중심좌표
												                level: 5 // 지도의 확대 레벨
												            };
												
												        // 지도를 표시할 div와  지도 옵션으로  지도를 생성합니다
												        var map = new kakao.maps.Map(mapContainer, mapOption); 
												    </script>
                        							 	
                    							</div>
												<div class="d088-map__location">
							                        <p>
							                            <span>위치 : </span>
							                            <span>서울특별시 송파구 올림픽로 300 롯데월드타워 76-101층</span>
							                        </p>
							                        <div>
							                            <a href="#" class="d088__button signiel">
							                                <span> 오시는 길 </span>
							                            </a>
							                        </div>
							                    </div>
											</div>
										</div>
									</div>
									<div class="d088-info">
							            <div class="d088-info__time">
							                <p class="d088-info__item">
							                    <strong>체크인</strong>
							                    <span>15:00</span>
							                </p>
							                <p class="d088-info__item">
							                    <strong>체크아웃</strong>
							                    <span>11:00</span>
							                </p>
							            </div>
							            <div class="d088-info__room">
							                <p class="d088-info__item">
							                    <strong>객실 : </strong>
							                    <span>235</span>
							                </p>
							                <p class="d088-info__item">
							                    <strong>다이닝 : </strong>
							                    <span>6</span>
							                </p>
							                <p class="d088-info__item">
							                    
							                    
							                        <strong>컨벤션 : </strong>
							                    
							                    <span>5</span>
							                </p>
							            </div>
							            <div class="d088-info__tel">
							                    <p class="d088-info__item">
							                        <strong>대표번호 :</strong>
							                        <span>+82-2-3213-1000</span>
							                        <a href="tel:+82-2-3213-1000" class="d088-button__tel o-tel">
							                            <span class="screen--out">전화걸기</span>
							                        </a>
							                    </p>
							                    <p class="d088-info__item">
							                        <strong>객실 예약 :</strong>
							                        <span>+82-2-3213-1111</span>
							                        <a href="tel:+82-2-3213-1111" class="d088-button__tel o-tel">
							                            <span class="screen--out">전화걸기</span>
							                        </a>
							                    </p>
							            </div>
							            <div class="d088-info__facilities">
							                <p class="d088-info__item">
							                    <strong>대표 부대시설 : </strong>
							                    <span> 레스토랑,&nbsp;바 &amp; 라운지,&nbsp;스파,사우나,&nbsp;수영장,&nbsp;피트니스센터,&nbsp;살롱 드 시그니엘
							                        
							                    </span>
							                </p>
							            </div>
							        </div>
								</div>
							</div>
						</div>
						<!-- 호텔 룸 소개 슬라이드 페이지 -->
						<div class="s619-main-hotel-introduction aem-GridColumn aem-GridColumn--default--12">
							<div class="s619 common-spacing-top--xxl common-spacing-bottom--xxl">
								<div class="s619__inner">
									<div class="s619__content">
										<div class="s619-room">
											<div class="s619-carousel slick-initialized slick-slider slick-dotted slick-keyboard" role="comlemntary">
												<div aria-live="polite" aria-atomic="true" class="slick-ada screen--out"></div>
												<button class="slick-prev slick-arrow" aria-label="Previous" type="button" style="display:block;">이전 슬라이드</button>
												<div class="slick-list draggable">
													<div class="slick-track" style="opacity:1; width:17918px; transform:translate3d(-1054px,0px,0px);">
														<div class="slick-slide" data-slick-index="0" aria-hidden="true" tabindex="0" role="tabpanel" id="slick-slide00" 
														aria-descripedby="slick-slide-control00" style="width: 1054px;">
															<div>
																<div class="s619-room__item" style="width:100%; display:inline-block;">
																	<div class="s619-room__img">
																		<img src="./images/roomSlide/room1.jpg" class="retinaimg">
																	</div>
																	<div class="s619-room__cont">
											                            <strong class="s619-room__title">그랜드 디럭스 룸</strong>
											                            <div class="s619-info">       
											                                <p class="s619-info__item">
											                                    <span class="s619-info__dt">침대타입</span>
											                                    <span class="s619-info__dd">더블</span>
											                                </p>
											                                <p class="s619-info__item">
											                                    <span class="s619-info__dt">투숙인원</span>
											                                    <span class="s619-info__dd">2 명</span>
											                                </p>
											                                <p class="s619-info__item">
											                                    <span class="s619-info__dt">전망</span>
											                                    <span class="s619-info__dd">시티뷰 / 리버뷰 / 전망욕실 </span>
											                                </p>
											                                <p class="s619-info__item">
											                                    <span class="s619-info__dt">객실면적</span>
											                                    <span class="s619-info__dd">40~50 ㎡</span>
											                                </p>                             
											                            </div>
											                            <div class="s619-room__cta">
											                                <a href="#" class="s619-room__button" target="_self" tabindex="0">자세히 보기</a>
											                            </div>
											                        </div>
																</div>
															</div>
														</div>
														<div class="slick-slide" data-slick-index="1" aria-hidden="true" tabindex="-1" role="tabpanel" id="slick-slide01" 
														aria-descripedby="slick-slide-control01" style="width: 1054px;">
															<div>
																<div class="s619-room__item" style="width:100%; display:inline-block;">
																	<div class="s619-room__img">
																		<img src="./images/roomSlide/room2.jpg" class="retinaimg">
																	</div>
																	<div class="s619-room__cont">
											                            <strong class="s619-room__title">시그니엘 프리미어 룸</strong>
											                            <div class="s619-info">       
											                                <p class="s619-info__item">
											                                    <span class="s619-info__dt">침대타입</span>
											                                    <span class="s619-info__dd">더블/트윈</span>
											                                </p>
											                                <p class="s619-info__item">
											                                    <span class="s619-info__dt">투숙인원</span>
											                                    <span class="s619-info__dd">2 명</span>
											                                </p>
											                                <p class="s619-info__item">
											                                    <span class="s619-info__dt">전망</span>
											                                    <span class="s619-info__dd">시티뷰 / 전망욕실 / 리버뷰 및 전망욕실 </span>
											                                </p>
											                                <p class="s619-info__item">
											                                    <span class="s619-info__dt">객실면적</span>
											                                    <span class="s619-info__dd">56~65 ㎡</span>
											                                </p>                             
											                            </div>
											                            <div class="s619-room__cta">
											                                <a href="#" class="s619-room__button" target="_self" tabindex="-1">자세히 보기</a>
											                            </div>
											                        </div>
																</div>
														 	</div>
													   </div>
														<div class="slick-slide" data-slick-index="2" aria-hidden="true" tabindex="-1" role="tabpanel" id="slick-slide02" 
														aria-descripedby="slick-slide-control02" style="width: 1054px;">
															<div>
																<div class="s619-room__item" style="width:100%; display:inline-block;">
																	<div class="s619-room__img">
																		<img src="./images/roomSlide/room3.jpg" class="retinaimg">
																	</div>
																	<div class="s619-room__cont">
											                            <strong class="s619-room__title">시그니엘 프리미어 룸</strong>
											                            <div class="s619-info">       
											                                <p class="s619-info__item">
											                                    <span class="s619-info__dt">침대타입</span>
											                                    <span class="s619-info__dd">더블/트윈</span>
											                                </p>
											                                <p class="s619-info__item">
											                                    <span class="s619-info__dt">투숙인원</span>
											                                    <span class="s619-info__dd">2 명</span>
											                                </p>
											                                <p class="s619-info__item">
											                                    <span class="s619-info__dt">전망</span>
											                                    <span class="s619-info__dd">시티뷰 / 전망욕실 / 리버뷰 및 전망욕실 </span>
											                                </p>
											                                <p class="s619-info__item">
											                                    <span class="s619-info__dt">객실면적</span>
											                                    <span class="s619-info__dd">56~65 ㎡</span>
											                                </p>                             
											                            </div>
											                            <div class="s619-room__cta">
											                                <a href="#" class="s619-room__button" target="_self" tabindex="-1">자세히 보기</a>
											                            </div>
											                        </div>
																</div>
														 	</div>
														
														</div>
														<div class="slick-slide" data-slick-index="3" aria-hidden="true" tabindex="-1" role="tabpanel" id="slick-slide03" 
														aria-descripedby="slick-slide-control03" style="width: 1054px;">
															<div>
																<div class="s619-room__item" style="width:100%; display:inline-block;">
																	<div class="s619-room__img">
																		<img src="./images/roomSlide/room4.jpg" class="retinaimg">
																	</div>
																	<div class="s619-room__cont">
											                            <strong class="s619-room__title">프리미어 스위트 룸</strong>
											                            <div class="s619-info">       
											                                <p class="s619-info__item">
											                                    <span class="s619-info__dt">침대타입</span>
											                                    <span class="s619-info__dd">더블/트윈</span>
											                                </p>
											                                <p class="s619-info__item">
											                                    <span class="s619-info__dt">투숙인원</span>
											                                    <span class="s619-info__dd">2 명</span>
											                                </p>
											                                <p class="s619-info__item">
											                                    <span class="s619-info__dt">전망</span>
											                                    <span class="s619-info__dd">시티뷰 </span>
											                                </p>
											                                <p class="s619-info__item">
											                                    <span class="s619-info__dt">객실면적</span>
											                                    <span class="s619-info__dd">70~86 ㎡</span>
											                                </p>                             
											                            </div>
											                            <div class="s619-room__cta">
											                                <a href="#" class="s619-room__button" target="_self" tabindex="-1">자세히 보기</a>
											                            </div>
											                        </div>
																</div>
														 	</div>
														
														</div>
														<div class="slick-slide" data-slick-index="4" aria-hidden="true" tabindex="-1" role="tabpanel" id="slick-slide04" 
														aria-descripedby="slick-slide-control04" style="width: 1054px;">
															<div>
																<div class="s619-room__item" style="width:100%; display:inline-block;">
																	<div class="s619-room__img">
																		<img src="./images/roomSlide/room5.jpg" class="retinaimg">
																	</div>
																	<div class="s619-room__cont">
											                            <strong class="s619-room__title">코리안 스위트 룸</strong>
											                            <div class="s619-info">       
											                                <p class="s619-info__item">
											                                    <span class="s619-info__dt">침대타입</span>
											                                    <span class="s619-info__dd">더블</span>
											                                </p>
											                                <p class="s619-info__item">
											                                    <span class="s619-info__dt">투숙인원</span>
											                                    <span class="s619-info__dd">2 명</span>
											                                </p>
											                                <p class="s619-info__item">
											                                    <span class="s619-info__dt">전망</span>
											                                    <span class="s619-info__dd">리버뷰</span>
											                                </p>
											                                <p class="s619-info__item">
											                                    <span class="s619-info__dt">객실면적</span>
											                                    <span class="s619-info__dd">84 ㎡</span>
											                                </p>                             
											                            </div>
											                            <div class="s619-room__cta">
											                                <a href="#" class="s619-room__button" target="_self" tabindex="-1">자세히 보기</a>
											                            </div>
											                        </div>
																</div>
														 	</div>
														</div>
														<div class="slick-slide" data-slick-index="5" aria-hidden="true" tabindex="-1" role="tabpanel" id="slick-slide05" 
														aria-descripedby="slick-slide-control05" style="width: 1054px;">
															<div>
																<div class="s619-room__item" style="width:100%; display:inline-block;">
																	<div class="s619-room__img">
																		<img src="./images/roomSlide/room6.jpg" class="retinaimg">
																	</div>
																	<div class="s619-room__cont">
											                            <strong class="s619-room__title">코리안 스위트 룸</strong>
											                            <div class="s619-info">       
											                                <p class="s619-info__item">
											                                    <span class="s619-info__dt">침대타입</span>
											                                    <span class="s619-info__dd">더블</span>
											                                </p>
											                                <p class="s619-info__item">
											                                    <span class="s619-info__dt">투숙인원</span>
											                                    <span class="s619-info__dd">2 명</span>
											                                </p>
											                                <p class="s619-info__item">
											                                    <span class="s619-info__dt">전망</span>
											                                    <span class="s619-info__dd">리버뷰</span>
											                                </p>
											                                <p class="s619-info__item">
											                                    <span class="s619-info__dt">객실면적</span>
											                                    <span class="s619-info__dd">84 ㎡</span>
											                                </p>                             
											                            </div>
											                            <div class="s619-room__cta">
											                                <a href="#" class="s619-room__button" target="_self" tabindex="-1">자세히 보기</a>
											                            </div>
											                        </div>
																</div>
														 	</div>
														</div>
														<div class="slick-slide" data-slick-index="6" aria-hidden="true" tabindex="-1" role="tabpanel" id="slick-slide06" 
														aria-descripedby="slick-slide-control06" style="width: 1054px;">
															<div>
																<div class="s619-room__item" style="width:100%; display:inline-block;">
																	<div class="s619-room__img">
																		<img src="./images/roomSlide/room7.jpg" class="retinaimg">
																	</div>
																	<div class="s619-room__cont">
											                            <strong class="s619-room__title">로얄 스위트 룸</strong>
											                            <div class="s619-info">       
											                                <p class="s619-info__item">
											                                    <span class="s619-info__dt">침대타입</span>
											                                    <span class="s619-info__dd">더블</span>
											                                </p>
											                                <p class="s619-info__item">
											                                    <span class="s619-info__dt">투숙인원</span>
											                                    <span class="s619-info__dd">2 명</span>
											                                </p>
											                                <p class="s619-info__item">
											                                    <span class="s619-info__dt">전망</span>
											                                    <span class="s619-info__dd">시티뷰</span>
											                                </p>
											                                <p class="s619-info__item">
											                                    <span class="s619-info__dt">객실면적</span>
											                                    <span class="s619-info__dd">353 ㎡</span>
											                                </p>                             
											                            </div>
											                            <div class="s619-room__cta">
											                                <a href="#" class="s619-room__button" target="_self" tabindex="0">자세히 보기</a>
											                            </div>
											                        </div>
																</div>
														 	</div>	
														</div>
												</div>
												<button class="slick-next slick-arrow" aria-label="Next" type="button" style="display:block;">다음 슬라이드</button>
											</div>
										</div>
									</div>
										<div class="s619-introduction">
								                    <a href="#" target="_self" class="s619-introduction__item">             
								                         <div class="s619-introduction__img">
								                            <img src="./images/roomSlide/20190102-350-1-mai-LTSG.jpg.thumb.480.480.jpg " alt="시그니엘 바 81" class="retinaimg" data-mobile="/content/dam/lotte-hotel/signiel/seoul/main/20190102-350-1-mai-LTSG.jpg.thumb.480.480.jpg " data-tablet="/content/dam/lotte-hotel/signiel/seoul/main/20190102-350-1-mai-LTSG.jpg.thumb.1440.1440.jpg " data-web="/content/dam/lotte-hotel/signiel/seoul/main/20190102-350-1-mai-LTSG.jpg.thumb.480.480.jpg ">
								                         </div>
								                         <p class="s619-introduction__text">다이닝</p>                   
								                    </a>
								                    <a href="#" target="_self" class="s619-introduction__item">             
								                         <div class="s619-introduction__img">
								                            <img src="./images/roomSlide/20190102-350-2-mai-LTSG.jpg.thumb.480.480.jpg " alt="시그니엘 웨딩" class="retinaimg" data-mobile="/content/dam/lotte-hotel/signiel/seoul/main/20190102-350-2-mai-LTSG.jpg.thumb.480.480.jpg " data-tablet="/content/dam/lotte-hotel/signiel/seoul/main/20190102-350-2-mai-LTSG.jpg.thumb.1440.1440.jpg " data-web="/content/dam/lotte-hotel/signiel/seoul/main/20190102-350-2-mai-LTSG.jpg.thumb.480.480.jpg ">
								                         </div>
								                         <p class="s619-introduction__text">웨딩</p>                   
								                    </a>
								                    <a href="#" target="_self" class="s619-introduction__item">             
								                         <div class="s619-introduction__img">
								                            <img src="./images/roomSlide/20190102-350-3-mai-LTSG.jpg.thumb.480.480.jpg " alt="서울월드타워" class="retinaimg" data-mobile="/content/dam/lotte-hotel/signiel/seoul/main/20190102-350-3-mai-LTSG.jpg.thumb.480.480.jpg " data-tablet="/content/dam/lotte-hotel/signiel/seoul/main/20190102-350-3-mai-LTSG.jpg.thumb.1440.1440.jpg " data-web="/content/dam/lotte-hotel/signiel/seoul/main/20190102-350-3-mai-LTSG.jpg.thumb.480.480.jpg ">
								                         </div>
								                         <p class="s619-introduction__text">주요명소</p>                   
								                    </a>
								        </div>
								</div>
							</div>	
						</div>
					</div>
						<!-- 호텔 리워즈 혜택 -->
						<div class="s508-main-membership-benefit aem-GridColumn aem-GridColumn--default--12">
						  <div class="s508 common-spacing-top--m common-spacing-bottom--m">
						    <div class="s508-rewords-benefit">
						      <div class="inner">
						        <div class="tit-area">
						          <p class="tit">롯데호텔 리워즈 혜택</p>
						        </div>
						        <div class="benefit-list">
						          <div class="benefit-item">
						            <div class="img-area">
						              <img src="./images/reward/pc-mai-rewards1.png" alt="선물 아이콘" />
						            </div>
						            <div class="txt-area">
						              <span>회원 전용 이벤트를 누려보세요.</span>
						            </div>
						          </div>
						
						          <div class="benefit-item">
						            <div class="img-area">
						              <img src="./images/reward/pc-mai-rewards2.png" alt="멤버십 할인 아이콘" />
						            </div>
						            <div class="txt-area">
						              <span>멤버십 회원만을 위해 할인된 가격을 제공합니다.</span>
						            </div>
						          </div>
						
						          <div class="benefit-item">
						            <div class="img-area">
						              <img src="./images/reward/pc-mai-rewards3.png" alt="포인트 아이콘" />
						            </div>
						            <div class="txt-area">
						              <span>포인트를 적립하고, 현금처럼 실용적으로 사용하세요.</span>
						            </div>
						          </div>
						        </div>
						        <div class="btn-area">
						          <a href="#" target="_blank" class="rewords-join-btn">
						            <span>롯데호텔 리워즈 가입하기</span>
						          </a>
						        </div>
						      </div>
						    </div>
						  </div>
						</div>
						<!-- 유튜브 영상 -->
						<div class="s191-pkg-video aem-GridColumn aem-GridColumn--default--12">
						  <div class="s191 common-spacing-top--xl common-spacing-bottom--mm">
						    <div>
						      <div class="s191__titles s191__title-2"></div>
						
						      <div class="s191__list s191__single-full s191__single-full-3" data-modal="group">
						        <div class="card-item card-type card-type--video">
						          <div class="card-item__inner">
						            <div class="card-item__content">
						              <a href="https://www.youtube.com/watch?v=XHvXMdJRswU&ab_channel=%EC%B6%98%EC%82%AC%EA%B5%AD%EC%A0%9C%EC%98%81%ED%99%94%EC%A0%9CChunsaInternationalFilmFestival" class="card-item__anchor" target="_blank" data-type="video" data-vendor="youtube" data-video="XHvXMdJRswU" title="레이어 열기">
						                <img src="./images/reward/200721-1-1090-mai-seoul-signiel.jpg.thumb.1440.1440.jpg" class="card-item__img" />
						                <span class="card-item__play" aria-hidden="true"></span>
						              </a>
						            </div>
						          </div>
						        </div>
						      </div>
						    </div>
						
						  </div>
					</div>
						<!-- 마지막 설명문 -->
						<div class="s125-main-seo-copy aem-GridColumn aem-GridColumn--default--12">
						    <div class="s125-main-seo-copy">
						        <div class="s125 common-spacing-top--xl common-spacing-bottom--xxxl">
						            <p class="s125__copy">시그니엘 서울은 한국을 대표하는 최초의 호화 랜드마크 호텔로 국내 최대 호텔 그룹인 롯데호텔앤리조트의 프리미엄 서비스를 즐기실 수 있습니다. 서울 송파구 잠실 역 인근에 위치한 시그니엘 서울은 롯데 백화점, 롯데 면세점, 롯데월드몰, 
						            롯데월드 어드벤처 및 석촌호수와 인접해 있어 다양한 여가 시설들로의 이동이 매우 편리합니다. 국내 최고층 건물인 롯데월드타워에 위치한 시그니엘 서울은 한국의 아름다움을 현대적인 감각으로 풀어낸 객실에서 서울의 파노라믹한 스카이라인과 환상적인 야경을 조망할 수 
						            있으며 일몰과 일출을 한 자리에서 감상할 수 있는 국내 유일의 호텔입니다. 뿐만 아니라 미식가들을 위한 천국으로 불리는 시그니엘 서울은 미쉐린 3스타 셰프 ‘야닉 알레노(Yannick Alléno)’가 ‘스테이(STAY)’ 레스토랑 운영과 더불어 호텔 내 모든 식음료에 대해 
						            총괄 디렉팅을 전담하여 웨딩에서부터 인룸다이닝 메뉴에 이르기까지 세계적인 스타 셰프가 제안하는 맛과 스타일을 경험할 수 있습니다. 시그니엘 서울의 호텔 패키지, 객실 프로모션, 특별 할인상품, 객실 예약 할인 정보를 공식사이트에서 지금 바로 확인 해 보세요.</p>
						        </div>
						    </div>
 						</div>
				</div>
			</main>
			 <%@ include file="footer.jsp"%>
		</div>
	</div>
	
	<script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
	<script type="text/javascript" src="./js/Event.js"></script>
</body>	
</html>