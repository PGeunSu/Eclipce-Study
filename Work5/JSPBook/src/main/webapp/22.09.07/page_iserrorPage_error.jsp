<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
		<h4>erorPagee 디렉티브 태그</h4>
			에러가 발생했습니다.
		<%
			exception.printStackTrace(new java.io.PrintWriter(out));
		%>
</body>
</html>