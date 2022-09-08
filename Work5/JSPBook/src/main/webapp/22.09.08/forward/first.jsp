<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title> <!-- forward 액션 태그의 기능과 사용법 -->
</head>
<body>
	<h3>이 파일은 first.jsp입니다.</h3>
	<jsp:forward page="second.jsp"/>  <!-- 현재 JSP페이지에서 다른 페이지로 이동하는 태그 
		그 전까지 출력 버퍼에 저장되어 있던 내용을 모두 삭제하고 태그에 설정된 페이지로 프로그램의 제어가 이동-->
	
	<p>===first.jsp의 페이지</p>
</body>
</html>