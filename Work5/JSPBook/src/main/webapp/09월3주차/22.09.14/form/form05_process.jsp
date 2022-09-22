<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	 request.setCharacterEncoding("UTF-8");
	 String id = request.getParameter("id");
	 String passwd = request.getParameter("passwd");
	 String number1 = request.getParameter("phone1");
	 String number2 = request.getParameter("phone2");
	 String number3 = request.getParameter("phone3");
	 String sex = request.getParameter("sex");
	 String[] hobby = request.getParameterValues("hobby");
	 String comment = request.getParameter("comment");
	 
	%>
	
	<p>아 이 디 : <%=id %></p>
	<p>비밀번호 : <%=passwd %></p>
	<p>연 락 처 : <%=number1%>-<%=number2%>-<%=number3%></p>
	<p>성 별 : <%=sex%></p>
	<p>취 미 : <%
				if(hobby != null){
					for(int i = 0;i<hobby.length; i++){						
						out.println(" " + hobby[i]);
					}
				}	
					%></p>
				
	<p>가입인사 : <%=comment%></p>
</body>
</html>