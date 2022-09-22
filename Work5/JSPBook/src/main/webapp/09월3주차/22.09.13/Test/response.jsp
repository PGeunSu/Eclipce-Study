<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
		response.setHeader("Refresh","5");
		out.println("현재 시간은");
		out.println(java.util.Calendar.getInstance().getTime());
	%>
	
	<p><a href="response_data.jsp">Google 홈페이지로 이동하기</a></p>
</body>
</html>