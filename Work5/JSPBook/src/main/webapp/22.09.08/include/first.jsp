<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title> <!-- include 액션 태그의 기능과 사용법
		include 디렉티브 태그처럼 현재 JSP페이지의 특정 영역에 외부 파일의 내용을 포함하는 태그  -->
</head>
<body>
		<h3>이 파일은 first.jsp입니다.</h3>
		<jsp:include page="second.jsp" flush="false"/>
		<!-- flush 기본값은 false, true로 설정할 시 외부 파일로 제어가 이동할 때 현재 JSP페이지가 지금까지 풀력 버퍼에 저장된 내용을 웹 브라우저에
			 출력 후 출력 버퍼를 비움 -->
		<p>Java Server Page</p>
</body>
</html>