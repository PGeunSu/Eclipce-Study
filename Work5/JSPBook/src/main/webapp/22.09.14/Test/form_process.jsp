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
	 request.setCharacterEncoding("UTF-8");
	 String name = request.getParameter("name");
	 String address = request.getParameter("address");
	 String email = request.getParameter("email");
	 
	 StringBuffer buffer = new StringBuffer();
	 buffer.append("아이디 : " + name);
	 buffer.append("</br>");
	 buffer.append("주소 : " + address);
	 buffer.append("</br>");
	 buffer.append("이메일 : " + email);
	 buffer.append("</br>");
	 
	%>
	<%=buffer.toString() %>
</body>
</html>