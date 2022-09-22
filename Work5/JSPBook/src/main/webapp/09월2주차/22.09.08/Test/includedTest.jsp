<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<% 
	String name = request.getParameter("name");
%>
	<p>페이지 : includedTest.jsp </p>
	<b><%=name%>님 안녕하세요</b>
