<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import ="java.util.Enumeration" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
		<%
			String name;
			String value;
			
			Enumeration en = session.getAttributeNames();
			//세션에 저장된 모든 세션 속성 이름을 가져 오도록 session 내장 객체의 getAttributeName() 메소드 작성 
			int i = 0;
			//Enumeraition 객체의 hasMorElements() 메소드를 통해 저장된 세션 속성 이름이 있을 떄 까지 반복 while문 작성
			
			while(en.hasMoreElements()){
				
				i++;
				name = en.nextElement().toString();
				//세션 속성 이름을 가져오도록 Enumeration 객체의 nextElment() 작성
				value = session.getAttribute(name).toString();
				//세션 속성이름의 속성값을 가져오도록 session 내장객체의 getAttribute() 메소드 작성
				out.println("설정된 세션의 속성 이름 [" + i + "] : "  + name + "<br>");
				out.println("설정된 세션의 속성 값 [" + i + "] : "  + value + "<br>");
			}
			
			
		%>
</body>
</html>