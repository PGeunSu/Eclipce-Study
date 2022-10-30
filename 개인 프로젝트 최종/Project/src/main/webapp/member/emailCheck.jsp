<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>

<%
	request.setCharacterEncoding("UTF-8");

	String email = request.getParameter("userEmail");
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	String dbUrl = "jdbc:mysql://localhost:3307/ProjectDB";
	String dbId = "root";
	String dbPassword ="1234";
	Class.forName("com.mysql.jdbc.Driver");
	conn = DriverManager.getConnection(dbUrl,dbId,dbPassword);
	
	String sql = "select * from member where userEmail = ?";
	pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, email);
	rs = pstmt.executeQuery();
	
%>
<%
		if(rs.next()){%>
		<script>
			alert("중복된 이메일입니다.");
			location.href = "signup.jsp";
		</script>
	<%
		}else{%>
		<script>
			alert("사용가능한 이메일 입니다.")	
			window.history.back();
		</script>
		<%} %>
	