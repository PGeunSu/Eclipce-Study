<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>

<%
	request.setCharacterEncoding("UTF-8");

	String id = request.getParameter("userID");
	String password = request.getParameter("userPassword");
	
%>
	<sql:setDataSource var="dataSource" url="jdbc:mysql://localhost:3307/ProjectDB"
	driver="com.mysql.jdbc.Driver" user="root" password="1234" />
	
	<!-- sql쿼리문 실행하는 코드. executeQuery() -->
	<sql:query dataSource="${dataSource}" var="resultSet">
	SELECT * FROM MEMBER WHERE userID =? and userPassword=?  
		<sql:param value="<%=id%>"/>
		<sql:param value="<%=password%>"/>
	</sql:query>
	
	<c:forEach var="row" items="${resultSet.rows}">
		<%
			session.setAttribute("sessionId",id);
			//로그인이 되면 사용자 아이디를 세션에 설정(저장)
		%>
		<c:redirect url="resultMember.jsp?msg=2"/>
		<!-- 로그인 의미로 사용할 것 -->
	</c:forEach>
	
	<c:redirect url="login.jsp?error"/>