<%@page import="com.model.LoginBean"%>
<%@ page language="java" contentType="text/html; charset=utf-8"%>
<!DOCTYPE html>
<html>
<head>

<title>MVC</title>
</head>
<body>
	<p> 로그인 성공했습니다
	<p>
	<%
		LoginBean bean = (LoginBean) request.getAttribute("bean");
		out.print("아이디 : " + bean.getId() + "<br>");
		out.print("비밀번호 : " + bean.getPassword());
	%>
</body>
</html>