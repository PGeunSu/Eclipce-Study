<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="person" class="dao.Person" scope="request"/>
	<jsp:setProperty name="person" property="id" value="20182005"/>
	<jsp:setProperty name="person" property="name" value="홍길동"/>
	
	<p> 아이디 : <jsp:getProperty name="person" property="id"/></p>
	<p> 이 름 : <jsp:getProperty name="person" property="name"/></p>
	

</body>
</html>