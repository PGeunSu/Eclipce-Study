<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ page errorPage = "isErrorPage_error.jsp" %>
 <!-- page디렉티브 태그에 isErrorpage 속성을 이용하여 오류페이지 만들기 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	name 피라미터 : <%=request.getParameter("name").toUpperCase()%>
	<!-- toUpperCase() 메소드는 피라미터 값을 대문자로 변환하여 출력한다. 이 떄 파라미터 name이 존재하지않아 오류가 발생함 -->
</body>
</html>