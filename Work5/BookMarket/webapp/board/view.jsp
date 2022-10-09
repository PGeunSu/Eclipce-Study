<%@page import="mvc.model.BoardDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

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
  <title>글 상세보기 - WebStore</title>
   <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css"> 
</head>
<body>
	<jsp:include page="../menu.jsp"/>
	
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">게시판</h1>
		</div>
	</div>
	
	<div class="container">
		<form name="newUpdate"
			action="boardUpdateAction.do?num=<%=notice.getNum()%>&pageNum=<%=nowPage%>"
			class="form-horizontal" method="post">
			<div class="form-group row">
				<label class="col-sm-2 control-label">이름</label>
				<div class="col-sm-3">
					<input name="name" class="form-control" value="<%=notice.getName() %>" readonly> <!-- DB에 저장되어 있는 이름값 출력  -->
				</div>
			</div>
			
			<div class="form-group row">
				<label class="col-sm-2 control-label">제목</label>
				<div class="col-sm-3">
					<input name="subject" class="form-control" value="<%=notice.getSubject() %>"> <!-- DB에 저장되어 있는 제목 출력  -->
				</div>
			</div>
			
			<div class="form-group row">
				<label class="col-sm-2 control-label">내용</label>
				<div class="col-sm-8" style="word-break:break-all">
					<textarea rows="5" cols="50" name="content" class="form-control"><%=notice.getContent() %></textarea>
				</div>
			</div>
			<div class="form-group row">
				<div class="col-sm-offset-2 col-sm-10 ">	
					<c:set var="userId" value="<%=notice.getId()%>" />
					<c:if test="${sessionId==userId || sessionId == userId.equals(admin)}">
						<p>
							<a	href="./boardDeleteAction.do?num=<%=notice.getNum()%>&pageNum=<%=nowPage%>"	
							class="btn btn-danger"> 삭제</a> 
							<input type="submit" class="btn btn-success" value="수정 ">
					</c:if>
					<a href="./boardListAction.do?pageNum=<%=nowPage%>"		class="btn btn-primary"> 목록</a>
				</div>
			</div>
		</form>
	</div>
</body>
</html>