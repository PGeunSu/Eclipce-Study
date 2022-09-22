<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	 <h4>구구단 출력하기</h4>
	 
	 <jsp:useBean id="Test" class="dao.GuGuDan" />
	
	<%
	 for(int i=1;i<=9;i++){
	      out.println(5+"*"+(i)+"="+Test.process(5,i)+"<br>");
	   }
	%>
</body>
</html>