<%@page import="mvc.model.BoardDTO"%>
<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%
	BoardDTO notice = (BoardDTO)request.getAttribute("boardDTO");
	int num = (Integer)request.getAttribute("num");
	int nowPage = (Integer)request.getAttribute("pageNum");
	String sessionId = (String)session.getAttribute("sessionId");
	String userId = notice.getId();
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://www.lottehotel.com/etc.clientlibs/lottehotel/clientlibs/clientlib-dependencies.min.ACSHASHd41d8cd98f00b204e9800998ecf8427e.css" type="text/css">
<link rel="stylesheet" href="https://www.lottehotel.com/etc.clientlibs/lottehotel/clientlibs/templates/clientlib-application.min.ACSHASH51a81fbda7b06de93c9f90f268cd5c56.css" type="text/css">
<link rel="stylesheet" href="https://www.lottehotel.com/etc.clientlibs/lottehotel/clientlibs/clientlib-base.min.ACSHASH985dfd4f4b8d35f936b21e46cd0c92c0.css" type="text/css">
<link rel="stylesheet" href="https://www.lottehotel.com/etc.clientlibs/lottehotel/clientlibs/clientlib-global/ko.min.ACSHASH90bb3e216f21b81b77438adfdac49bd1.css" type="text/css">
<script type="text/javascript" src="https://www.lottehotel.com/etc.clientlibs/lottehotel/clientlibs/clientlib-dependencies/library/common.min.ACSHASHc5c5b83d87f57a24c817c20db81839cf.js"></script>
<link rel="stylesheet" href="http://localhost:8080/Project/css/slide.css" type="text/css">
<link rel="stylesheet" href="http://localhost:8080/Project/css/writeForm.css" type="text/css">
<script type="text/javascript" src="http://localhost:8080/Project/js/Event.js"></script>
<title>게시판</title>
</head>
<body>
	<div class="root responsivergrid wrapper">
		<div class="aem-Grid aem-Grid--12 aem-Grid--default--12">
		 <%@ include file="/menu.jsp" %>
			<main class="main aem-GridColumn aem-GridColumn--default--12">
			  <div class="aem-Grid aem-Grid--12 aem-Grid--default--12">
			    <div id="container" class="ly-container">
			   
			      	<div class="responsivegrid aem-GridColumn aem-GridColumn--default--12">
			        <div class="aem-Grid aem-Grid--12 aem-Grid--default--12">
				        	<div class="s009-content-h1 aem-GridColumn aem-GridColumn--default--12">
							    <div class="s009  common-spacing-bottom--l">
							        <div class="s009__inner-area">
							                <h1 class="s009__headline">게시판</h1>
							        </div>
							    </div> 
							</div>
							<div class="s072-board-news-detail aem-GridColumn aem-GridColumn--default--12">
							<form name="newUpdate" action="boardUpdateAction.do?num=<%=notice.getNum()%>&pageNum=<%=nowPage%>" class="form-horizontal" method="post">
								<div class="s072">
									<div class="s072__wrap">
										<!-- 글 내용-->
										<div class="s072__detail">
											<div class="s072-headline">
												<strong class="s072-headline__title"> 
													<input name="subject" type="text" class="subject" value="<%=notice.getSubject() %>"> 
												</strong>
												<p class="s072-headline__date"> 
													<span data-target="conversionDateFormat">
														<input name="name" type="text" class="name" value="<%=notice.getName() %>" readonly>
													</span>
												</p>
											</div>
											<div class="s072__content">
												<div class="aem-Grid aem-Grid--12 aem-Grid--default--12">
													<div class="s022-content-text aem-GridColumn aem-GridColumn--default--12">
														<div class="s022">
															<div class="s022__inner s022-space--left-  s022-space--right-">
														        <div class="s022-content">
															        <p class="s022-content__text text-align--left  s022-content__text--size-16 s022-content__text--666 ">
															           <textarea rows="5" cols="50" name="content" class="form-control"><%=notice.getContent() %></textarea>
															        </p>	 
														         </div>
														    </div>
														</div>
													</div>
												</div>
											</div>
										</div>
										<!-- 목록 버튼 -->
										<div class="s072__cta">
											<a href="<c:url value="/boardListAction.do?pageNum=1"/>" class="s072__button"><span>목록</span></a>
												<c:set var="userId" value="<%=notice.getId()%>" />
													<c:if test="${sessionId==userId}">
														<a><span><input class="s072__button" type="submit" value="수정"></span></a>
														<a class="s072__button" href="./boardDeleteAction.do?num=<%=notice.getNum()%>&pageNum=<%=nowPage%>"	
															class="btn btn-danger">삭제</a> 
													</c:if>
										</div>
									
									</div>
								</div>
								</form>
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

<script>
		function checkForm(){
			if(!document.newWrite.subject.value){
				alert("제목을 입력하세요");
				return false;
			}
			if(!document.newWrite.content.value){
				alert("내용을 입력하세요");
				return false;
			}
		}
	</script>
</html>