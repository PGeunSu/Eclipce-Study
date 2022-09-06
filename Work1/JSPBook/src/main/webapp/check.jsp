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
	아이디 : <%=id %> <br/>
	제 목 : <%=subject %> <br/>
	첨부파일(클릭 시 다운로드)<br/>
	<!-- download.jsp 파일로 저장된 파일의 이름을 넘겨줌  -->
	-파일1 : <a href="download.jsp?fileName=<%=fileName1 %>"><%=orgFileName1 %></a><br/>
	-파일2 : <a href="download.jsp?fileName=<%=fileName2 %>"><%=orgFileName2 %></a><br/>
</body>
</html>