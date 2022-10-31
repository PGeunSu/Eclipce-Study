<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>

<%
	request.setCharacterEncoding("UTF-8");

	String id = request.getParameter("userID");
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	String dbUrl = "jdbc:mysql://localhost:3307/ProjectDB";
	String dbId = "root";
	String dbPassword ="1234";
	Class.forName("com.mysql.jdbc.Driver");
	conn = DriverManager.getConnection(dbUrl,dbId,dbPassword);
	
	String sql = "select * from member where UserID = ?";
	pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, id);
	rs = pstmt.executeQuery();
	
%>


	<%
		if(rs.next()){%>
		<script>
			alert("중복된 아이디입니다.");
			location.href = "signup.jsp";
		</script>
	<%
		}else{%>
		<script>
			alert("사용가능한 아이디 입니다.")	
			window.history.back();
		</script>
		<%} %>
	