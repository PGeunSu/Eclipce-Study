<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title> <!-- forward 액션 태그의 기능과 사용법 -->
</head>
<body>
	<p>오늘의 날짜 및 시각</p>
	<p><%=(new java.util.Date()).toLocaleString()%></p>
</body>
</html>