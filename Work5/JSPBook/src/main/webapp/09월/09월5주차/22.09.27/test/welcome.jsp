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
		
		Cookie [] cookies = request.getCookies();
		
		for(int i = 0; i < cookies.length; i++){
			
			if(cookies[i].getName() == null && cookies[i].getValue() == null){
					
				response.sendRedirect("cookie_out.jsp");
				
			}
		}
	%> 
	<h4><%=cookies[0].getValue() %>님 반값습니다</h4>
	<p><a href="cookie.jsp" <%cookies[0].setMaxAge(0); %>>로그아웃</a></p>
</body>
</html>