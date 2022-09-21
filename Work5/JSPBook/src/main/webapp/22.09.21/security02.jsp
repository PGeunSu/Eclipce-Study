<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<p>사용자명 : <%=request.getRemoteUser()%></p>
	<!-- 인증된 사용자를 가져오도록 request 내장객체인 getRemoteUser() -->
	<p>인증방법 : <%=request.getAuthType()%></p>
		<!-- 인증된 처리 방식을 가져오도록 request 내장객체인 getAuthType() -->
	<p>인증한 사용자명이 역할명 "tomcat"에 속하는 사용자 인가요? <%=request.isUserInRole("tomcat") %></p>
	<p>인증한 사용자명이 역할명 "role1"에 속하는 사용자 인가요? <%=request.isUserInRole("role1") %></p>
	<!-- 로그인시 인증한 사용자의 역할 이름이 tomcat인지, role인지 확인하고 request내장객체인 isUserInRole()-->
	
</body>
</html>