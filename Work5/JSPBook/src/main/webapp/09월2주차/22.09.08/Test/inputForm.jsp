<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>include 액션태그 예제</h2>
	<form method="post" action="includeTest.jsp">
		이름 : <input type="text" name="name"> <br/>
		페이지 이름 : <input type="text" name="pageName" value="includedTest"> <br/>
		<input type="submit" value="OK">
	</form>
</body>
</html>	