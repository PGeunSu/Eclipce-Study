<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<% request.setCharacterEncoding("utf-8"); %>
<%
	String id = request.getParameter("id");
	String subject = request.getParameter("subject");
	String fileName1 = request.getParameter("fileName1");
	String fileName2 = request.getParameter("fileName2");
	String orgFileName1 = request.getParameter("orgFileName1");
	String orgFileName2 = request.getParameter("orgFileName2");
%>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	���̵� : <%=id %> <br/>
	�� �� : <%=subject %> <br/>
	÷������(Ŭ�� �� �ٿ�ε�)<br/>
	<!-- download.jsp ���Ϸ� ����� ������ �̸��� �Ѱ���  -->
	-����1 : <a href="download.jsp?fileName=<%=fileName1 %>"><%=orgFileName1 %></a><br/>
	-����2 : <a href="download.jsp?fileName=<%=fileName2 %>"><%=orgFileName2 %></a><br/>
</body>
</html>