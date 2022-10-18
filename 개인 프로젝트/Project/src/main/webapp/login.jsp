<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" href="https://www.lottehotel.com/etc.clientlibs/lottehotel/clientlibs/templates/clientlib-basic.min.ACSHASH51a81fbda7b06de93c9f90f268cd5c56.css" type="text/css">
	<link rel="stylesheet" href="https://www.lottehotel.com/etc.clientlibs/lottehotel/clientlibs/clientlib-global/ko.min.ACSHASH90bb3e216f21b81b77438adfdac49bd1.css" type="text/css">	
	<link rel="stylesheet" href="https://www.lottehotel.com/etc.clientlibs/lottehotel/clientlibs/clientlib-base.min.ACSHASH985dfd4f4b8d35f936b21e46cd0c92c0.css" type="text/css">
	<link rel="stylesheet" href="https://www.lottehotel.com/etc.clientlibs/lottehotel/clientlibs/templates/clientlib-basic.min.ACSHASH51a81fbda7b06de93c9f90f268cd5c56.css" type="text/css">
	<link rel="stylesheet" href="https://www.lottehotel.com/etc.clientlibs/lottehotel/clientlibs/clientlib-bootstrap.min.ACSHASH0c5c202b50a31842a06dfab3ada145f9.css" type="text/css">
	<link rel="stylesheet" href="https://www.lottehotel.com/etc.clientlibs/lottehotel/clientlibs/templates/clientlib-member-login.min.ACSHASH9442ec28ecc749a4f2a715a896637b26.css" type="text/css">
	<script type="text/javascript" src="https://www.lottehotel.com/etc.clientlibs/lottehotel/clientlibs/clientlib-dependencies/library/common.min.ACSHASHc5c5b83d87f57a24c817c20db81839cf.js"></script>
	<link rel="stylesheet" href="./css/slide.css" type="text/css">
	<script type="text/javascript" src="./js/Event.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="root responsivergrid wrapper">
		<div class="aem-Grid aem-Grid--12 aem-Grid--default--12">
		<%@ include file="menu.jsp" %>
			<main class="main aem-GridColumn aem-GridColumn--default--12">
			  <div class="aem-Grid aem-Grid--12 aem-Grid--default--12">
			    <div id="container" class="ly-container">
			      <div class="responsivegrid aem-GridColumn aem-GridColumn--default--12">
			        <div class="aem-Grid aem-Grid--12 aem-Grid--default--12">
						<div class="d532-login-id-pw aem-GridColumn aem-GridColumn--default--12">
					            <script type="text/javascript" src="https://www.lottehotel.com/etc.clientlibs/lottehotel/components/common/content/common/d532-login-id-pw/clientlibs/data.min.ACSHASH8875d6b0f70c7c53a94c5227cf3a77c3.js"></script>
					            <script type="text/javascript" src="https://www.lottehotel.com/etc.clientlibs/lottehotel/clientlibs/clientlib-dependencies/library/plugins/rsacrypt.min.ACSHASH32b7ad2e83d9e747cbd8cdb3867e51f9.js"></script>
					            <div class="d532" data-returnurl="#" data-eshopgateurl="https://eshop.lottehotel.com/eshop/auth/eshop_gateway">
					              <div class="d532__inner">
					                <div class="d532__inner-area">
					                  <div class="d532-form input-form" data-validation="true">
					                    <form action="#" method="post" id="loginForm" name="loginForm">
					                      <div class="d532-form__title">
					                        <h1>로그인</h1>
					                      </div>
					                      <fieldset>
					                        <legend class="screen--out">로그인 폼</legend>
					                        <div class="d532-form__box">
					                          <div class="row notview">
					                            <label for="inp-id" class="row__label screen--out">아이디 또는 리워즈 번호</label>
					                            <div class="col">
					                              <div class="input">
					                                <div class="input__wrap input__wrap--text" data-required="required">
					                                  <input type="text" class="o-input o-input--text offf" placeholder="아이디 혹은 리워즈 번호를 입력하세요" id="inp-id" maxlength="100" title="아이디 또는 리워즈 번호"
					                                    aria-describedby="phd-id" value="" data-onlyn="engNumSpcIdLogin" data-checktype="vali" autocomplete="off" aria-required="true"/>
					                              <!--     <button type="button" class="input__removetext">삭제</button> -->
					                                </div>
					                              </div>
					                            </div>
					                            <div class="validation__text__wrap"></div>
					                          </div>
					                          <div class="row">
					                            <label for="inp-pw" class="row__label screen--out">비밀번호</label>
					                            <div class="col">
					                              <div class="input">
					                                <div class="input__wrap input__wrap--password" data-required="required">
					                                  <input type="password" class="o-input o-input--password offf" placeholder="비밀번호를 입력하세요." id="inp-pw"maxlength="20" title="비밀번호"
					                                    aria-describedby="phd-pw" name="password" value="" data-onlyn="vnull"data-checktype="vali"aria-required="true"
					                                  />
					                                <!--   <button type="button" class="input__removetext">삭제</button> -->
					                                </div>
					                              </div>
					                            </div>
					                            <div class="validation__text__wrap"></div>
					                          </div>
					                          <div class="d532__cta">
					                            <button type="submit" class="d532__button d532__button--login bg-gold">
					                              <span> 로그인 </span>
					                            </button>
					                          </div>
					                        </div>
					                        <div class="d532-form__btn">
					                          <div class="row">
					                            <div class="input">
					                              <div class="input__icheck">
					                                <span class="check-item">
					                                  <input type="checkbox" id="chk-save" class="o-input o-input--checkbox o-input--checkbox-2 o-input--checkbox-gold" name="chk-save" />
					                                  <label for="chk-save">아이디 또는 리워즈 번호 저장</label>
					                                </span>
					                              </div>
					                            </div>
					                          </div>
					                          <div class="row d532-txt-btn-box">
					                            <a href="/global/ko/member/login/forgot-privilege-number.html" class="d532-txt-btn mgr15">
					                              <span class="d532-txt-btn--rewards"> 리워즈 번호 / 아이디 찾기 </span>
					                            </a>
					                            <a href="/global/ko/member/login/forgot-password.html" class="d532-txt-btn d532-txt-btn--password mal15">
					                              <span> 비밀번호 찾기 </span>
					                            </a>
					                          </div>
					                        </div>
					                      </fieldset>
					                    </form>
					                  </div>
					             </div>
							</div>
						</div>
				   	</div>
			          	</div>
					</div>
				</div>				
			</div>
		</main>
				<%@ include file="footer.jsp" %>
		</div>
	</div>
</body>
</html>