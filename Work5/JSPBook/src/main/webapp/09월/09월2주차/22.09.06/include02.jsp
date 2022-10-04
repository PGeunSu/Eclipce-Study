<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@ include file = "include02_header.jsp" %>
	<p>방문해 주셔서 감사합니다.</p>  
	Today is : <%= new java.util.Date() %><br/><br/>
	<%@ include file = "include02_footer.jsp" %>
</body>
</html>