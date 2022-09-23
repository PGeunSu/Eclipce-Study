<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<title>Filter</title>
</head>
<body>
	<%
		String id = request.getParameter("id");
		String pw = request.getParameter("passwd");
		
		if(id.equals("admin") && pw.equals("1234")){
	%>
		<p>로그인 성공</p>
	<%
	 
		}else{	
	%>
	<p>로그인 실패</p>
	<% 
		}
	%>
</body>	
</html>