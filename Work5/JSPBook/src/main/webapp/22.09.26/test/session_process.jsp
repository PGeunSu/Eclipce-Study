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
		String user_id = request.getParameter("id");
		String user_pw = request.getParameter("passwd");
		
		if(user_id.equals("admin")&& user_pw.equals("1234")){
			session.setAttribute("userID",user_id);
			session.setAttribute("userPW",user_pw);
			
			response.sendRedirect("welcome.jsp");
		}

	%> 
</body>
</html>