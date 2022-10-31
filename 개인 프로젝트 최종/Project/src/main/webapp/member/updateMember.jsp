<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

	<link rel="stylesheet" href="https://www.lottehotel.com/etc.clientlibs/lottehotel/clientlibs/clientlib-bootstrap.min.ACSHASH0c5c202b50a31842a06dfab3ada145f9.css" type="text/css">
	<link rel="stylesheet" href="https://www.lottehotel.com/etc.clientlibs/lottehotel/clientlibs/templates/clientlib-member-login.min.ACSHASH9442ec28ecc749a4f2a715a896637b26.css" type="text/css">
	<link rel="stylesheet" href="https://www.lottehotel.com/etc.clientlibs/lottehotel/clientlibs/clientlib-base.min.ACSHASH985dfd4f4b8d35f936b21e46cd0c92c0.css" type="text/css">
	<link rel="stylesheet" href="https://www.lottehotel.com/etc.clientlibs/lottehotel/clientlibs/clientlib-global/ko.min.ACSHASH90bb3e216f21b81b77438adfdac49bd1.css" type="text/css">
	<link rel="stylesheet" href="https://www.lottehotel.com/etc.clientlibs/lottehotel/clientlibs/templates/clientlib-member-signup.min.ACSHASHb8f719be1cfeddc68d3d08909e5e8824.css" type="text/css"> <!-- 회원가입 input 적용 css -->
	<script type="text/javascript" src="https://www.lottehotel.com/etc.clientlibs/lottehotel/clientlibs/clientlib-dependencies/library/common.min.ACSHASHc5c5b83d87f57a24c817c20db81839cf.js"></script>
	<link rel="stylesheet" href="../css/slide.css" type="text/css">
	<script type="text/javascript" src="../js/Event.js"></script>
	<script type="text/javascript" src="../js/member.js"></script>

<title>회원수정</title>

<% //session에 저장돼 있는 아이디 정보를 불러옴
	String sessionId = (String) session.getAttribute("sessionId");
%>

<sql:setDataSource var="dataSource" url="jdbc:mysql://localhost:3307/ProjectDB"
  	 driver="com.mysql.jdbc.Driver" user="root" password="1234" />


	<sql:query dataSource="${dataSource}" var="resultSet">
		select * from member where userID=?	
		<sql:param value ="<%=sessionId %>"/>
	</sql:query>

</head>
<body>
		<c:forEach var="row" items="${resultSet.rows}">
			
	<div class="root responsivergrid wrapper">
		<div class="aem-Grid aem-Grid--12 aem-Grid--default--12">
				<%@include file="/menu.jsp" %>
			<main class="main aem-GridColumn aem-GridColumn--default--12">
				  <div class="aem-Grid aem-Grid--12 aem-Grid--default--12">
				    <div id="container" class="ly-container">
						<div>w
							<div class="d000 d000-">
								<div class="d000__inner">
									<div class="location">
							            <span> </span>
							             <span> </span>  
							            <span> 회원 수정</span>
							        </div>
								</div>
							</div>
						<div class="responsivergrid aem-GridColumn aem-GridColumn--default--12">
							<div class="aem-Grid aem-Grid--12 aem-Grid--default--12">
								<div class="s009-content-h1 aem-GridColumn aem-GridColumn--default--12">
									<div class="s009  common-spacing-bottom--ss">
								        <div class="s009__inner-area">
								            <h1 class="s009__headline">회원 수정</h1>
								        </div>
								    </div>
								</div>
								<div class="d528-signup-join-member-info aem-GridColumn aem-GridColumn--default--12">
									<style>.grecaptcha-badge{display:none;}</style>
									<div class="d528">
										<div class="step-process-area type02">
											<!-- 절차 표시 -->
											<ol class="step-process">
												<li><a href="#" class="is-active">회원 수정</a></li>
												<li><a href="#" class="is-done">수정 완료</a></li>
											</ol>
										</div>
										<form action="processUpdateMember.jsp" method="get" class="join__form" id="memberInfoForm" name="memberInfoForm" onsubmit="return checkForm()">
											<div class="d528-inner">
												<div class="non-member input-form" data-validation="true">
													<div class="form-area rewords-join-area">
														<!-- 필수 입력 제목 -->
														<div class="title-area">
															<div class="sub-title-area">
																<span class="txt color-lotte">*필수입력</span>
															</div>
														</div>
														<!-- 입력칸 -->
														<div class="input-section">
															<div class="col-inner">
																<!-- 아이디 -->
																<div class="col row">
																	<div class="col-box">
																		<div class="input-wrap col-1 wid-340 wid-70p mo-col-1">
																			<label for="inp-userId" class="input-title f-bold">아이디*</label>
																			<div class="input">
																				<div class="input-box input__wrap input__wrap--text" data-required="required">
																					<input name="userID" type="text" class="o-input o-input--text vali" placeholder="사용할 아이디를 입력하세요" id="inp-userId" title="아이디" maxlength="30" value="<c:out value='${row.userID}'/>" readonly>
													
																				</div>
																			</div>
																		</div>
																		
																	</div>
																</div>
																<!-- 이메일 -->
																<div class="col row">
																	<div class="col-box">
																		<div class="input-wrap col-1 mo-col-1 wid-70p" data-hotel="wrap">
																			<label for="inp-userEmail" class="input-title f-bold">이메일*</label>
																			<div class="input">
																				<div class="input-box input__wrap input__wrap--text" data-required="required">
																					<input data-input="targetAuthEmail" name="userEmail" type="email" data-onlyn="emailn" data-checktype="vali|overlap|auth" class="vali o-input o-input--email" placeholder="사용할 이메일을 입력하세요" id="inp-userEmail" title="이메일" maxlength="100" value="<c:out value='${row.userEmail}'/>" readonly>
																			</div>
																			</div>
																		</div>
													
																	</div>
																</div>
																<!-- 비밀번호 -->
																<div class="col row">
																	<div class="col-box">
																		<div class="input-wrap col-2 mo-col-1">
																			<label for="inp-userPassword" class="input-title f-bold">비밀번호*</label>
																			<input type="hidden">
																			<div class="input">
																				<div class="input-box input__wrap input__wrap--password" data-required="required">
																					<input type="password" class="o-input o-input--password" placeholder="비밀번호를 입력하세요." id="inp-userPassword" aria-describedby="phd-userPassword" name="userPassword" maxlength="20" title="비밀번호" value="<c:out value='${row.userPassword}'/>">
																					
																				</div>
																			</div>
																		</div>
																		<div class="input-wrap col-2 mo-col-1">
																			<label for="inp-userRePassword" class="input-title f-bold"></label>
																			<input type="hidden">
																			<div class="input">
																				<div class="input-box input__wrap input__wrap--password" data-required="required">
																					<input type="password" class="o-input o-input--password" placeholder="한번 더 같은 비밀번호를 입력하세요" id="inp-userRePassword" aria-describedby="phd-userRePassword" name="UserPassword_confirm" maxlength="20" title="비밀번호재입력" data-v-id="repassword" aria-required="true">
																					
																				</div>
																			</div>
																		</div>
																	</div>
																</div>
																<!-- 영문 이름 -->
																<div class="col row">
																	<div class="col-box">
																		<div class="input-wrap col-2 mo-col-1">
																			<label for="inp-lastNmEngOnly" class="input-title f-bold">영문 이름*</label>
																			<div class="input">
																				
																				<div class="input-box input__wrap input__wrap--text" data-required="required">
																					<input name="userEnFirstName" type="text" class="o-input o-input--text" placeholder="영문 성을 입력하세요." id="inp-lastNmEngOnly" title="Hong(성)" maxlength="30" value="<c:out value='${row.userEnFirstName}'/>">
																					
																				</div>
																				
																			</div>
																		</div>
																		<div class="input-wrap col-2 mo-col-1">
																			<label for="inp-firstNmEngOnly" class="input-title f-bold"></label>
																			<div class="input">
																			
																				<div class="input-box input__wrap input__wrap--text" data-required="required">
																					<input name="userEnLastName" type="text" class="o-input o-input--text" placeholder="영문 이름을 입력하세요." id="inp-firstNmEngOnly" title="Gildong(이름)" maxlength="30"value="<c:out value='${row.userEnLastName}'/>">
																					
																				</div>
																				
																			</div>
																		</div>
																	</div>
																	<div class="notice-box">
																		<span class="tit f-bold">여권 이름을 입력하세요.</span>
																		<span class="txt">영문 이름은 반드시 여권 이름을 입력 바랍니다.</span>
																		<span class="txt">띄어쓰기도 문자로 인식됩니다.</span>
																	</div>
																</div>
																<!-- 한글 이름 -->
																<div class="col row">
																	<div class="col-box">
																		<div class="input-wrap col-1 wid-340 mo-col-1">
																			<label for="inp-nameKor" class="input-title f-bold">한글 이름*</label>
																			<div class="input">
																				<div class="input-box input__wrap input__wrap--text" data-required="required">
																					<input name="userKoName" type="text" class="o-input o-input--text" placeholder="성명(한글)" id="inp-nameKor" title="성명(한글)" maxlength="12" value="<c:out value='${row.userKoName}'/>">
																					
																				</div>
																			</div>
																		</div>
																	</div>
																</div>
																<!-- 생년월일 -->
																<div class="col row">
																	<div class="col-box">
																		<div class="input-wrap col-1 wid-340 mo-col-1">
																			<label for="birthdayY" class="input-title f-bold">생년월일*</label>
																			<div class="input">
																				<div class="input-box input__wrap input__wrap--text" data-day-type="year" data-required="required">
																					
																						<input name="userBirth" type="text" class="o-input o-input--text" placeholder="YYYY.MM.DD" id="birthdayY" title="생년월일" maxlength="10" value="<c:out value='${row.userBirth}'/>">
																				</div>
																			</div>
																		</div>
																	</div>
																</div>
																<!-- 전화번호 -->
																<div class="col row form--sucess">
																	<div class="input-wrap col-2 wid-365 wid-60p mo-col-1 wid-100px ">
																		<label for="inp-phoneNo" class="input-title f-bold">전화번호*</label>
																	<div class="input">
																		<div class="input-box input__wrap input__wrap--tel" data-required="required">
																			<!-- 비회원 > 회원전환 시 연락처인증 필요 -->
																			
																			
																				<input data-input="targetAuthTel" name="userNumber" type="tel" class="o-input o-input--tel vali" placeholder="전화번호를 입력하세요" id="inp-phoneNo" title="연락처" maxlength="30" value="<c:out value='${row.userNumber}'/>">
																			
																		
																		</div>
																	</div>
																</div>
																</div>
															</div>
														</div>
													</div>
												</div>
											</div>
											<!-- 이전 다음 항목 버튼 (하단 고정) -->
											<div class="confirm-bar">
												<div class="inner ui-footer-static static">
												  <div class="btn-group">
												    <div class="btn-area">
												      <button type="submit" class="btn prev-btn bg-black">
												        <span>수정</span>
												      </button>
												      <button type="button" class="btn next-btn bg-red" onclick="deleteMemberConfirm()">
												        <span>회원 탈퇴</span>
												      </button>
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
		</c:forEach>
</body>

<script type="text/javascript">
function deleteMemberConfirm(){
	var result = confirm("정말 회원탈퇴를 하시겠습니까?");
	if(result){
		location.href="deleteMember.jsp";
		alert("탈퇴되었습니다.");
	}else{
		alert("취소되었습니다");
		return;
	}
}
</script>
</html>


