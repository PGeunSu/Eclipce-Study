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
		
		String user_id = (String) session.getAttribute("userID");
		String user_pw = (String) session.getAttribute("userPW");
		
		if(user_id == null && user_pw == null){
			response.sendRedirect("session_out.jsp");
		}
	%> 
	<h4><%=user_id %>님 반값습니다</h4>
	<p><a href="session.jsp" <%session.invalidate(); %>>로그아웃</a></p>
</body>
</html>