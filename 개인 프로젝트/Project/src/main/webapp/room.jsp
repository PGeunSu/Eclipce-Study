<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<link rel="stylesheet" href="https://www.lottehotel.com/etc.clientlibs/lottehotel/clientlibs/clientlib-dependencies.min.ACSHASHd41d8cd98f00b204e9800998ecf8427e.css" type="text/css">
<link rel="stylesheet" href="https://www.lottehotel.com/etc.clientlibs/lottehotel/clientlibs/templates/clientlib-application.min.ACSHASH51a81fbda7b06de93c9f90f268cd5c56.css" type="text/css">
<link rel="stylesheet" href="https://www.lottehotel.com/etc.clientlibs/lottehotel/clientlibs/templates/clientlib-basic.min.ACSHASH51a81fbda7b06de93c9f90f268cd5c56.css" type="text/css">
<link rel="stylesheet" href="https://www.lottehotel.com/etc.clientlibs/lottehotel/clientlibs/clientlib-base.min.ACSHASH985dfd4f4b8d35f936b21e46cd0c92c0.css" type="text/css">
<link rel="stylesheet" href="https://www.lottehotel.com/etc.clientlibs/lottehotel/clientlibs/clientlib-global/ko.min.ACSHASH90bb3e216f21b81b77438adfdac49bd1.css" type="text/css">
<link rel="stylesheet" href="http://localhost:8080/Project/css/slide.css" type="text/css">
<script type="text/javascript" src="http://localhost:8080/Project/js/Event.js"></script>
<link rel="stylesheet"href="https://unpkg.com/swiper/swiper-bundle.min.css" /> 

<style>
	.room-info__text{
			font-weight : 550;	
		}
</style>
<title>객실 소개</title>
</head>
<body>
	<div class="root responsivergrid wrapper">
		<div class="aem-Grid aem-Grid--12 aem-Grid--default--12">
		 <%@ include file="/menu.jsp" %>
			<main class="main aem-GridColumn aem-GridColumn--default--12">
			  <div class="aem-Grid aem-Grid--12 aem-Grid--default--12">
			    <div id="container" class="ly-container">
			    	<div>
			    		<div	 class="d000 d000-">
					      <div class="location">
					            <span> <a href="#">홈</a> </span>
					          <span> <a href="#">객실</a></span>
					              <span> 공지사항</span>
						 </div>	
					      </div>
					</div>
			      	<div class="responsivegrid aem-GridColumn aem-GridColumn--default--12">
			        <div class="aem-Grid aem-Grid--12 aem-Grid--default--12">
				        	<div class="s009-content-h1 aem-GridColumn aem-GridColumn--default--12">
							  <div class="s009 common-spacing-bottom--l">
							    <div class="s009__inner-area">
							      <h1 class="s009__headline">객실</h1>
							      <p class="s009__subcopy">
							        잠실에서 바라보는 서울 시내의 환상적인 전망이 어우러진 시그니엘 서울의 최고급 호텔 사우나, 헬스장, 실내 수영장은 새로운 힐링과 활력의 시간을 제안합니다. 
							        투숙객 전용 라운지에서는 한강 전망을 바라보며 티 타임을 즐기실 수 있습니다.
							      </p>
							    </div>
							  </div>
							</div>
							<div class="s005-room-list aem-GridColumn aem-GridColumn--default--12">
								<div class="d005">
									<div class="d005__inner">
										<ul class="d005__list">
											<li class="room">
												<div class="d005-carousel slick-intialized slick-slider slick-dotted">
													<div class="swiper mySwiper">
														<div class="swiper-wrapper">
															<div class="swiper-slide"><img src="./images/room/room1-1.jpg"></div>
															<div class="swiper-slide"><img src="./images/room/room1-2.jpg"></div>
														</div>
														<div class="swiper-button-next"></div>
														<div class="swiper-button-prev"></div>
														<div class="swiper-button-pagination"></div>
													</div>
												</div>
												<!-- 객실 설명 -->
												<div class="room__content">
													<div class="room__inside">
														<h2>
								                            <span><span class="room__type">그랜드 디럭스</span></span>
								                            <a href="#" class="room__name">그랜드 디럭스 룸</a>
								                        </h2>
								                        <div class="room-info" style="min-height: 50px">
														  <div class="room-info__item">
														    <strong class="room-info__title">침대타입</strong>
														    <span class="room-info__text">더블</span>
														  </div>
														  <div class="room-info__item">
														    <strong class="room-info__title">전망</strong>
														    <span class="room-info__text">시티뷰 / 리버뷰 / 전망욕실 </span>
														  </div>
														  <div class="room-info__item">
														    <strong class="room-info__title">투숙인원</strong>
														    <span class="room-info__text">2 명</span>
														  </div>
														  <div class="room-info__item">
														    <strong class="room-info__title">객실면적</strong>
														    <span class="room-info__text">40~50 ㎡</span>
														  </div>
														</div>
													</div>
												</div>
											</li>
											<li class="room">
												<div class="d005-carousel slick-intialized slick-slider slick-dotted">
													<div class="swiper mySwiper">
														<div class="swiper-wrapper">
															<div class="swiper-slide"><img src="./images/room/room2-1.jpg"></div>
															<div class="swiper-slide"><img src="./images/room/room2-2.jpg"></div>
															<div class="swiper-slide"><img src="./images/room/room2-3.jpg"></div>
														</div>
														<div class="swiper-button-next"></div>
														<div class="swiper-button-prev"></div>
														<div class="swiper-button-pagination"></div>
													</div>
												</div>
												<!-- 객실 설명 -->
												<div class="room__content">
													<div class="room__inside">
														<h2>
								                            <span><span class="room__type">프리미어</span></span>
								                            <a href="#" class="room__name">프리미어 룸</a>
								                        </h2>
								                        <div class="room-info" style="min-height: 50px">
														  <div class="room-info__item">
														    <strong class="room-info__title">침대타입</strong>
														    <span class="room-info__text">더블/트윈</span>
														  </div>
														  <div class="room-info__item">
														    <strong class="room-info__title">전망</strong>
														    <span class="room-info__text">시티뷰 / 리버뷰 / 전망욕실 </span>
														  </div>
														  <div class="room-info__item">
														    <strong class="room-info__title">투숙인원</strong>
														    <span class="room-info__text">2 명</span>
														  </div>
														  <div class="room-info__item">
														    <strong class="room-info__title">객실면적</strong>
														    <span class="room-info__text">40~60 ㎡</span>
														  </div>
														</div>
													</div>
												</div>
											</li>
											<li class="room">
												<div class="d005-carousel slick-intialized slick-slider slick-dotted">
													<div class="swiper mySwiper">
														<div class="swiper-wrapper">
															<div class="swiper-slide"><img src="./images/room/room3-1.jpg"></div>
															<div class="swiper-slide"><img src="./images/room/room3-2.jpg"></div>
															<div class="swiper-slide"><img src="./images/room/room3-3.jpg"></div>
														</div>
														<div class="swiper-button-next"></div>
														<div class="swiper-button-prev"></div>
														<div class="swiper-button-pagination"></div>
													</div>
												</div>
												<!-- 객실 설명 -->
												<div class="room__content">
													<div class="room__inside">
														<h2>
								                            <span><span class="room__type">시그니엘 프리미어</span></span>
								                            <a href="#" class="room__name">시그니엘 프리미어 룸</a>
								                        </h2>
								                        <div class="room-info" style="min-height: 50px">
														  <div class="room-info__item">
														    <strong class="room-info__title">침대타입</strong>
														    <span class="room-info__text">더블/트윈</span>
														  </div>
														  <div class="room-info__item">
														    <strong class="room-info__title">전망</strong>
														    <span class="room-info__text">시티뷰 / 전망욕실 / 리버뷰 및 전망욕실 </span>
														  </div>
														  <div class="room-info__item">
														    <strong class="room-info__title">투숙인원</strong>
														    <span class="room-info__text">2 명</span>
														  </div>
														  <div class="room-info__item">
														    <strong class="room-info__title">객실면적</strong>
														    <span class="room-info__text">56~65 ㎡</span>
														  </div>
														</div>
													</div>
												</div>
											</li>
											<li class="room">
												<div class="d005-carousel slick-intialized slick-slider slick-dotted">
													<div class="swiper mySwiper">
														<div class="swiper-wrapper">
															<div class="swiper-slide"><img src="./images/room/room4-1.jpg"></div>
															<div class="swiper-slide"><img src="./images/room/room4-2.jpg"></div>
															<div class="swiper-slide"><img src="./images/room/room4-3.jpg"></div>
														</div>
														<div class="swiper-button-next"></div>
														<div class="swiper-button-prev"></div>
														<div class="swiper-button-pagination"></div>
													</div>
												</div>
												<!-- 객실 설명 -->
												<div class="room__content">
													<div class="room__inside">
														<h2>
								                            <span><span class="room__type">스위트</span></span>
								                            <a href="#" class="room__name">디럭스 스위트 룸</a>
								                        </h2>
								                        <div class="room-info" style="min-height: 50px">
														  <div class="room-info__item">
														    <strong class="room-info__title">침대타입</strong>
														    <span class="room-info__text">더블/트윈</span>
														  </div>
														  <div class="room-info__item">
														    <strong class="room-info__title">전망</strong>
														    <span class="room-info__text">시티뷰</span>
														  </div>
														  <div class="room-info__item">
														    <strong class="room-info__title">투숙인원</strong>
														    <span class="room-info__text">2 명</span>
														  </div>
														  <div class="room-info__item">
														    <strong class="room-info__title">객실면적</strong>
														    <span class="room-info__text">59~73 ㎡</span>
														  </div>
														</div>
													</div>
												</div>
											</li>
											<li class="room">
												<div class="d005-carousel slick-intialized slick-slider slick-dotted">
													<div class="swiper mySwiper">
														<div class="swiper-wrapper">
															<div class="swiper-slide"><img src="./images/room/room5-1.jpg"></div>
															<div class="swiper-slide"><img src="./images/room/room5-2.jpg"></div>
															<div class="swiper-slide"><img src="./images/room/room5-3.jpg"></div>
														</div>
														<div class="swiper-button-next"></div>
														<div class="swiper-button-prev"></div>
														<div class="swiper-button-pagination"></div>
													</div>
												</div>
												<!-- 객실 설명 -->
												<div class="room__content">
													<div class="room__inside">
														<h2>
								                            <span><span class="room__type">스위트</span></span>
								                            <a href="#" class="room__name">프리미어 스위트 룸</a>
								                        </h2>
								                        <div class="room-info" style="min-height: 50px">
														  <div class="room-info__item">
														    <strong class="room-info__title">침대타입</strong>
														    <span class="room-info__text">더블/트윈</span>
														  </div>
														  <div class="room-info__item">
														    <strong class="room-info__title">전망</strong>
														    <span class="room-info__text">시티뷰</span>
														  </div>
														  <div class="room-info__item">
														    <strong class="room-info__title">투숙인원</strong>
														    <span class="room-info__text">2 명</span>
														  </div>
														  <div class="room-info__item">
														    <strong class="room-info__title">객실면적</strong>
														    <span class="room-info__text">70~86 ㎡</span>
														  </div>
														</div>
													</div>
												</div>
											</li>
											<li class="room">
												<div class="d005-carousel slick-intialized slick-slider slick-dotted">
													<div class="swiper mySwiper">
														<div class="swiper-wrapper">
															<div class="swiper-slide"><img src="./images/room/room6-1.jpg"></div>
															<div class="swiper-slide"><img src="./images/room/room6-2.jpg"></div>
														</div>
														<div class="swiper-button-next"></div>
														<div class="swiper-button-prev"></div>
														<div class="swiper-button-pagination"></div>
													</div>
												</div>
												<!-- 객실 설명 -->
												<div class="room__content">
													<div class="room__inside">
														<h2>
								                            <span><span class="room__type">프리미어</span></span>
								                            <a href="#" class="room__name">코리안 프리미어 룸</a>
								                        </h2>
								                        <div class="room-info" style="min-height: 50px">
														  <div class="room-info__item">
														    <strong class="room-info__title">침대타입</strong>
														    <span class="room-info__text">더블</span>
														  </div>
														  <div class="room-info__item">
														    <strong class="room-info__title">전망</strong>
														    <span class="room-info__text">리버뷰 및 전망욕실</span>
														  </div>
														  <div class="room-info__item">
														    <strong class="room-info__title">투숙인원</strong>
														    <span class="room-info__text">2 명</span>
														  </div>
														  <div class="room-info__item">
														    <strong class="room-info__title">객실면적</strong>
														    <span class="room-info__text">40 ㎡</span>
														  </div>
														</div>
													</div>
												</div>
											</li>
											<li class="room">
												<div class="d005-carousel slick-intialized slick-slider slick-dotted">
													<div class="swiper mySwiper">
														<div class="swiper-wrapper">
															<div class="swiper-slide"><img src="./images/room/room7-1.jpg"></div>
															<div class="swiper-slide"><img src="./images/room/room7-2.jpg"></div>
															<div class="swiper-slide"><img src="./images/room/room7-3.jpg"></div>
														</div>
														<div class="swiper-button-next"></div>
														<div class="swiper-button-prev"></div>
														<div class="swiper-button-pagination"></div>
													</div>
												</div>
												<!-- 객실 설명 -->
												<div class="room__content">
													<div class="room__inside">
														<h2>
								                            <span><span class="room__type">시그니엘 프리미어</span></span>
								                            <a href="#" class="room__name">코리안 시그니엘 프리미어 룸</a>
								                        </h2>
								                        <div class="room-info" style="min-height: 50px">
														  <div class="room-info__item">
														    <strong class="room-info__title">침대타입</strong>
														    <span class="room-info__text">더블</span>
														  </div>
														  <div class="room-info__item">
														    <strong class="room-info__title">전망</strong>
														    <span class="room-info__text">리버뷰</span>
														  </div>
														  <div class="room-info__item">
														    <strong class="room-info__title">투숙인원</strong>
														    <span class="room-info__text">2 명</span>
														  </div>
														  <div class="room-info__item">
														    <strong class="room-info__title">객실면적</strong>
														    <span class="room-info__text">43 ㎡</span>
														  </div>
														</div>
													</div>
												</div>
											</li>
											<li class="room">
												<div class="d005-carousel slick-intialized slick-slider slick-dotted">
													<div class="swiper mySwiper">
														<div class="swiper-wrapper">
															<div class="swiper-slide"><img src="./images/room/room8-1.jpg"></div>
															<div class="swiper-slide"><img src="./images/room/room8-2.jpg"></div>
															<div class="swiper-slide"><img src="./images/room/room8-3.jpg"></div>
														</div>
														<div class="swiper-button-next"></div>
														<div class="swiper-button-prev"></div>
														<div class="swiper-button-pagination"></div>
													</div>
												</div>
												<!-- 객실 설명 -->
												<div class="room__content">
													<div class="room__inside">
														<h2>
								                            <span><span class="room__type">스위트</span></span>
								                            <a href="#" class="room__name">코리안 스위트 룸</a>
								                        </h2>
								                        <div class="room-info" style="min-height: 50px">
														  <div class="room-info__item">
														    <strong class="room-info__title">침대타입</strong>
														    <span class="room-info__text">더블</span>
														  </div>
														  <div class="room-info__item">
														    <strong class="room-info__title">전망</strong>
														    <span class="room-info__text">리버뷰</span>
														  </div>
														  <div class="room-info__item">
														    <strong class="room-info__title">투숙인원</strong>
														    <span class="room-info__text">2 명</span>
														  </div>
														  <div class="room-info__item">
														    <strong class="room-info__title">객실면적</strong>
														    <span class="room-info__text">84 ㎡</span>
														  </div>
														</div>
													</div>
												</div>
											</li>
											<li class="room">
												<div class="d005-carousel slick-intialized slick-slider slick-dotted">
													<div class="swiper mySwiper">
														<div class="swiper-wrapper">
															<div class="swiper-slide"><img src="./images/room/room9-1.jpg"></div>
															<div class="swiper-slide"><img src="./images/room/room9-2.jpg"></div>
															<div class="swiper-slide"><img src="./images/room/room9-3.jpg"></div>
															<div class="swiper-slide"><img src="./images/room/room9-4.jpg"></div>
															<div class="swiper-slide"><img src="./images/room/room9-5.jpg"></div>
														</div>
														<div class="swiper-button-next"></div>
														<div class="swiper-button-prev"></div>
														<div class="swiper-button-pagination"></div>
													</div>
												</div>
												<!-- 객실 설명 -->
												<div class="room__content">
													<div class="room__inside">
														<h2>
								                            <span><span class="room__type">스위트</span></span>
								                            <a href="#" class="room__name">프레지덴셜 스위트 룸</a>
								                        </h2>
								                        <div class="room-info" style="min-height: 50px">
														  <div class="room-info__item">
														    <strong class="room-info__title">침대타입</strong>
														    <span class="room-info__text">더블</span>
														  </div>
														  <div class="room-info__item">
														    <strong class="room-info__title">전망</strong>
														    <span class="room-info__text">시티뷰</span>
														  </div>
														  <div class="room-info__item">
														    <strong class="room-info__title">투숙인원</strong>
														    <span class="room-info__text">2 명</span>
														  </div>
														  <div class="room-info__item">
														    <strong class="room-info__title">객실면적</strong>
														    <span class="room-info__text">143 ㎡</span>
														  </div>	
														</div>
													</div>
												</div>
											</li>
											<li class="room">
												<div class="d005-carousel slick-intialized slick-slider slick-dotted">
													<div class="swiper mySwiper">
														<div class="swiper-wrapper">
															<div class="swiper-slide"><img src="./images/room/room10-1.jpg"></div>
															<div class="swiper-slide"><img src="./images/room/room10-2.jpg"></div>
															<div class="swiper-slide"><img src="./images/room/room10-3.jpg"></div>
															<div class="swiper-slide"><img src="./images/room/room10-4.jpg"></div>
															<div class="swiper-slide"><img src="./images/room/room10-5.jpg"></div>
														</div>
														<div class="swiper-button-next"></div>
														<div class="swiper-button-prev"></div>
														<div class="swiper-button-pagination"></div>
													</div>
												</div>
												<!-- 객실 설명 -->
												<div class="room__content">
													<div class="room__inside">
														<h2>
								                            <span><span class="room__type">스위트</span></span>
								                            <a href="#" class="room__name">로얄 스위트 룸</a>
								                        </h2>
								                        <div class="room-info" style="min-height: 50px">
														  <div class="room-info__item">
														    <strong class="room-info__title">침대타입</strong>
														    <span class="room-info__text">더블</span>
														  </div>
														  <div class="room-info__item">
														    <strong class="room-info__title">전망</strong>
														    <span class="room-info__text">시티뷰</span>
														  </div>
														  <div class="room-info__item">
														    <strong class="room-info__title">투숙인원</strong>
														    <span class="room-info__text">2 명</span>
														  </div>
														  <div class="room-info__item">
														    <strong class="room-info__title">객실면적</strong>
														    <span class="room-info__text">353 ㎡</span>
														  </div>
														</div>
													</div>
												</div>
											</li>
										</ul>
									</div>
								</div>
							</div>
			          	</div>
					</div>
					
				</div>				
			</div>
		</main>
		<%@ include file="/footer.jsp" %>
		</div>
	</div>
		<script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
	<script type="text/javascript">
	 var swiper = new Swiper(".mySwiper", {
	        spaceBetween: 30,
	        centeredSlides: true,
	        loop : true,
	        pagination: {
	          el: ".swiper-pagination",
	          clickable: true,
	        },
	        navigation: {
	          nextEl: ".swiper-button-next",
	          prevEl: ".swiper-button-prev",
	        },
	      });
	</script>
</body>
</html>