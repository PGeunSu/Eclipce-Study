<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title> <!-- include 액션 태그의 기능과 사용법
		include 디렉티브 태그처럼 현재 JSP페이지의 특정 영역에 외부 파일의 내용을 포함하는 태그  -->
</head>
<body>
		<h3>이 파일은 second.jsp입니다.</h3>
		Today is : <%=new java.util.Date() %>
</body>
</html>