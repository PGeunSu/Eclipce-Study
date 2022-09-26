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
			String user_id = request.getParameter("id");
			String user_pw = request.getParameter("passwd");
			
			if(user_id.equals("admin")&& user_pw.equals("1234")){
				session.setAttribute("userID",user_id);
				session.setAttribute("userPW",user_pw);
				out.println("세선 설정에 성공했습니다<br>");
				out.println(user_id + "님 환영합니다.");
			}else{
				out.println("세선 설정에 실패했습니다.");
			}
			//전송된 아이디와 비번이 가각 admin,1234 에 일치하면 세션 속성이름 userID, userPW에 값을 설정하도록 session 내장객체의 setAttribute() 메소드를 작성 후 메세지 출력
		%> 
</body>
</html>