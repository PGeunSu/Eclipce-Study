<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%
	request.setCharacterEncoding("UTF-8");
	
	String id = request.getParameter("userID");
	String password = request.getParameter("userPassword");
	String email = request.getParameter("userEmail");
	String firstName = request.getParameter("userEnFirstName");
	String lastName = request.getParameter("userEnLastName");
	String enName = firstName + lastName;
	String koName = request.getParameter("userKoName");
	String birth = request.getParameter("userBirth");	
	String number = request.getParameter("userNumber");
%>
	<sql:setDataSource var="dataSource"
		url="jdbc:mysql://localhost:3307/ProjectDB"
		driver="com.mysql.jdbc.Driver" user="root" password="1234" />
	<sql:update dataSource="${dataSource}" var="resultSet">
		INSERT INTO member VALUES (?,?,?,?,?,?,?)
		<sql:param value="<%=id%>" />
		<sql:param value="<%=password%>" />
		<sql:param value="<%=email%>" />
		<sql:param value="<%=enName%>" />
		<sql:param value="<%=koName%>" />
		<sql:param value="<%=birth%>" />
		<sql:param value="<%=number%>" />
	</sql:update>	
		
<c:if test="${resultSet>=1}">
	<c:redirect url="resultMember.jsp?msg=1" />
</c:if>







