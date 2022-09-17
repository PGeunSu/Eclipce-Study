<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h5>선택한 과일</h5>
	
	<p><%
	
		/* String value = " "; */
		String[] fruit = request.getParameterValues("fruit");
		
				if(fruit != null){
					for(int i = 0;i<fruit.length; i++){						
						out.println(" " + fruit[i]);
					/* 	value = value + fruit[i] + " "; */
					}
				}	
					%></p>
				<%-- <%=value%> --%>
</body>
</html>