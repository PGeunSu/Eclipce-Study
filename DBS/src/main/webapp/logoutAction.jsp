<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
 	 <%
		session.invalidate();
 	 	//접속한 세션을 끊어주는 로그아웃 로직담당하는 페이지
	%>
	<script>
		alert("로그아웃 되었습니다.");
		location.href="main.jsp"
	</script>
</body>
</html>