<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<% request.setCharacterEncoding("UTF-8");%>

<%
	String pageName = request.getParameter("pageName");
	pageName += ".jsp";
	
%>

	페이지 : includeTest.jsp
	
<hr>
<jsp:include page="<%=pageName%>" flush="false"/> <br>
	includeTest.jsp의 나머지 내용입니다.