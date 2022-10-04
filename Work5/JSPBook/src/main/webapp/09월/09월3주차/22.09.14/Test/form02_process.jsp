<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ page import="java.util.Enumeration" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	 request.setCharacterEncoding("UTF-8");
	 Enumeration<String> paramEnumeration = request.getParameterNames();
	 StringBuffer buffer = new StringBuffer();
	 while(paramEnumeration.hasMoreElements()){
		 String paramName = paramEnumeration.nextElement();
		 String paramValue = request.getParameter(paramName);
		 buffer.append(paramName + " : " + paramValue);
		 buffer.append("</br>");
	 }
	 
	%>
	<%=buffer.toString() %>
</body>
</html>