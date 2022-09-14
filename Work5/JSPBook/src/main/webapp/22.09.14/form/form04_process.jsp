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
	 request.setCharacterEncoding("UTF-8");
	 String id = request.getParameter("id");
	 String passwd = request.getParameter("passwd");
	 String number1 = request.getParameter("phone1");
	 String number2 = request.getParameter("phone2");
	 String number3 = request.getParameter("phone3");
	 String sex = request.getParameter("sex");
	 String hobby1 = request.getParameter("hobby1");
	 String hobby2 = request.getParameter("hobby2");
	 String hobby3 = request.getParameter("hobby3");
	 String hobby4 = request.getParameter("hobby4");
	 String comment = request.getParameter("comment");
	 
	%>
	
	<p>아 이 디 : <%=id %></p>
	<p>비밀번호 : <%=passwd %></p>
	<p>연 락 처 : <%=number1%>-<%=number2%>-<%=number3%></p>
	<p>성 별 : <%=sex%></p>
	<p>취 미 : <%=hobby1%><%=hobby2%><%=hobby3%><%=hobby4%></p>
	<p>가입인사 : <%=comment%></p>
</body>
</html>