<%@page import="mvc.model.BoardDTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
	String sessionId = (String)session.getAttribute("sessionId");
	ArrayList<BoardDTO> boardList = (ArrayList<BoardDTO>)request.getAttribute("boardList");
	int totalRecord = ((Integer)request.getAttribute("totalRecord")).intValue(); //객체의 내용값을 정수로 변환
	int totalPage = ((Integer)request.getAttribute("totalPage")).intValue();
	int totalNum = ((Integer)request.getAttribute("totalNum")).intValue();

%>
<!DOCTYPE html>
<html>
<head>
<link rel ="stylesheet" href ="../resources/css/bootstrap.min.css" />
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

 <jsp:include page="../menu.jsp" />   
   <div class="jumbotron">
      <div class="container">
         <h1 class="display-3">게시ㅏㄴ</h1>
      </div>
   </div>
   
   <div class="container">
   		<form action ="" method="post">
   			<div class="text-right">
   				<h2><span class="badge badge-danger">전제 건수 : <%=totalRecord %></span></h2>
   			</div>
   		</form>
   
   </div>

</body>
</html>