<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

		<%
		String msg = request.getParameter("msg");
		
		if (msg != null) {
			if (msg.equals("0")){%>
				<script> 
					alert("회원정보가 수정 되었습니다.");
					location.href = "../main.jsp";
				</script>
				
			<%}else if (msg.equals("1")){%>
				<script> 
					alert("회원가입이 완료되었습니다.");
					location.href = "login.jsp";
				</script>
			<%}else if (msg.equals("2")){ %>
				<script>
					
					alert("로그인 성공");
					location.href = "../main.jsp";		
				</script>
			<%}				
		} else {
			response.sendRedirect("logoutMember.jsp");
		}
		%>
