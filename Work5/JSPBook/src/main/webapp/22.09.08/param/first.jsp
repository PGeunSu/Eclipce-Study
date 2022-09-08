<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title> <!-- param 액션 태그의 기능과 사용법
	다른 페이지에 정보를 전달하는 태그 : 이 태그는 단독으로 사용되지 못하여 forward나 include태그 내부에 사용가능하다 -->
</head>
<body>
	<h3>이 파일은 first.jsp 입니다</h3>
	<jsp:include page="second.jsp">
		<jsp:param name="date" value="<%=new java.util.Date() %>"/>
		
		</jsp:include>
		<p>Java server Page </p>
		</body>
</html>