<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ page isErrorPage="true" %><!-- page디렉티브 태그에 isErrorpage 속성을 이용하여 오류페이지 만들기 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ERRORPAGE</title>
</head>
<body>
	<h4>오류 발생</h4>
	<table border="1">
		<tr>
			<th>Error</th>
			<td><%=exception.getClass().getName()%> 오류 발생!!!</td>
		</tr>
		<tr>
			<th>URI</th>
			<td><%=request.getRequestURI() %></td>
		</tr>
		
		<tr>
			<th>Status Code</th>
			<td><%=response.getStatus()%></td>
		</tr>
	</table>
</body>
</html>