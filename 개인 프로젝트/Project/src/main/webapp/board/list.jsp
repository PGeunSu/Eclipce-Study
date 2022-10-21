<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://www.lottehotel.com/etc.clientlibs/lottehotel/clientlibs/clientlib-dependencies.min.ACSHASHd41d8cd98f00b204e9800998ecf8427e.css" type="text/css">
<link rel="stylesheet" href="https://www.lottehotel.com/etc.clientlibs/lottehotel/clientlibs/templates/clientlib-application.min.ACSHASH51a81fbda7b06de93c9f90f268cd5c56.css" type="text/css">
<link rel="stylesheet" href="https://www.lottehotel.com/etc.clientlibs/lottehotel/clientlibs/clientlib-base.min.ACSHASH985dfd4f4b8d35f936b21e46cd0c92c0.css" type="text/css">
<script type="text/javascript" src="https://www.lottehotel.com/etc.clientlibs/lottehotel/clientlibs/clientlib-dependencies/library/common.min.ACSHASHc5c5b83d87f57a24c817c20db81839cf.js"></script>
<link rel="stylesheet" href="./css/slide.css" type="text/css">
<script type="text/javascript" src="../js/Event.js"></script>
<title>게시판</title>
</head>
<body>
	<div class="root responsivergrid wrapper">
		<div class="aem-Grid aem-Grid--12 aem-Grid--default--12">
		 <%@ include file="/menu.jsp" %>
			<main class="main aem-GridColumn aem-GridColumn--default--12">
			  <div class="aem-Grid aem-Grid--12 aem-Grid--default--12">
			    <div id="container" class="ly-container">
			    	<div>
			    		<div class="d000 d000-">
					      <div class="location">
					            <span> <a href="#">홈</a> </span>
					          <span> <a href="#">시그니엘 서울 소개</a></span>
					              <span> 공지사항</span>
						 </div>
					      </div>
					</div>
					
			      	<div class="responsivegrid aem-GridColumn aem-GridColumn--default--12">
			        <div class="aem-Grid aem-Grid--12 aem-Grid--default--12">
				        	<div class="s009-content-h1 aem-GridColumn aem-GridColumn--default--12">
							    <div class="s009  common-spacing-bottom--l">
							        <div class="s009__inner-area">
							                <h1 class="s009__headline">공지사항</h1>
							        </div>
							    </div> 
							</div>
							<div class="d016-board-news-list aem-GridColumn aem-GridColum--deafault--12">
								<div class="d016 common-spacing-bottom--ss" id="newsListVueApp">
									<div class="d016-option">
									  <div class="d016-option__content">
									    <div class="d016-option__detail">
									      <div class="d016-option__select">
									        <div data-js="combobox" class="combobox combobox--2" style="z-index: 97">
									          <select name="list_type" id="list_type" title="검색" class="combobox combobox--2 is-ready" tabindex="-1">
									            <option value="all">전체</option>
									            <option value="title">제목</option>
									            <option value="contents">내용</option>
									          </select>
									          <div class="combobox__button" tabindex="0" role="combobox" aria-autocomplete="list" title="검색" id="combobox__button--2">
									            <span class="combobox__status" data-id="0">전체</span>
									          </div>
									          <div class="combobox__scroll" style="max-height: 154px">
									            <ul class="combobox__list" id="combobox__list--2" role="listbox">
									              <li class="combobox__item is-active" id="combobox__item--2-0">전체</li>
									              <li class="combobox__item" id="combobox__item--2-1">제목</li>
									              <li class="combobox__item" id="combobox__item--2-2">내용</li>
									            </ul>
									          </div>
									        </div>
									      </div>
									
									      <div class="d016-option__search">
									        <div class="input input--2">
									          <div class="input__wrap input__wrap--text">
									            <span class="input__placeholder" id="phd-input_search">검색어를 입력해주세요</span>
									            <input type="text" class="o-input o-input--text" id="label-input_search" title="검색어" autocomplete="off" />
									            <button type="button" class="input__removetext">삭제</button>
									          </div>
									        </div>
									        <button type="button" class="d016-option__button">
									          <span> 검색 </span>
									        </button>
									      </div>
									    </div>
									  </div>
									</div>
									<div class="d016-list">
										<ul class="list__head">
										  <li class="list__row">
										    <p class="list__col list__col--1">번호</p>
										    <p class="list__col list__col--2">제목</p>
										    <p class="list__col list__col--3">첨부파일</p>
										    <p class="list__col list__col--4">작성일</p>
										  </li>
										</ul>
										<ul class="list_body">
											<li class="list__row">
												<p class="list__col list__col--1"><!-- 내용 추가 예정 --></p>
												<p class="list__col list__col--2"></p>
												<p class="list__col list__col--3"></p>
												<p class="list__col list__col--4"></p>
											</li>
											<li class="list__row"></li>
											<li class="list__row"></li> <!-- 추가 예정 -->
											<li class="list__row"></li>
										</ul>
									</div>
										
									<div class="d016__paging"><!-- 페이징 번호 추가 예정 --></div>
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
</body>
</html>