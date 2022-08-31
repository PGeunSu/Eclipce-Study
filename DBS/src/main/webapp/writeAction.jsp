<%@ page import="java.io.PrintWriter" %>
<%@ page import="bbs.BbsDAO" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <% request.setCharacterEncoding("utf-8"); %>
 <jsp:useBean id="bbs" class="bbs.Bbs" scope="page"/>
 <jsp:setProperty name="bbs" property="bbsTitle"/>
 <jsp:setProperty name="bbs" property="bbsContent"/>
 <!-- useBean 액션 태그는 특정한 자파빈 파일을 사용한다고 명시 -->
 <!-- setProperty는 자바빈 파일의 setter메소드를 사용하여 데이터 값을 설정 -->
 <!-- getProperty는 자바빈 파일의 getter메소드를 사용하여 데이터 값을 읽어올 때 사용 -->
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
   <%
 	 //현재 세션 상태를 체크한다.
 	 String userID = null;
   	 if(session.getAttribute("userID") != null){
   		 userID = (String)session.getAttribute("userID");
   	 }
   	 //로그인한 사람만 글을 쓸 수 있도록 코드 작성
   	 if(userID == null){
   		 PrintWriter script = response.getWriter();
   		 script.println("<script>");
   		 script.println("alert('로그인 하세요')");
   		 script.println("location.href='login.jsp'");
   		 script.println("</script>");
   	 }else{
   		 //입력이 안 된 부분이 있는 지 체크
   		 if(bbs.getBbsTitle() == null || bbs.getBbsContent() == null ){
   			 PrintWriter script = response.getWriter();
   			 script.println("<script>");
   	   		 script.println("alert('입력이 안 된 사항이 있습니다.')");
   	   		 script.println("history.back()");
   	   		 script.println("</script>");
   		 }else{
   			 //정상적으로 입력이 되었다면 글쓰기 로직을 수행한다.
   			 BbsDAO bbsDAO = new BbsDAO();
   			 int result = bbsDAO.write(bbs.getBbsTitle(),userID, bbs.getBbsContent());
   			 
   			 //데이터 베이스 오류
   			 if(result == -1 ){
   				 PrintWriter script = response.getWriter();
   	   			 script.println("<script>");
   	   	   		 script.println("alert('글쓰기에 실패하였습니다.')");
   	   	   		 script.println("history.back()");
   	   	   		 script.println("</script>");
   			 }else{
   				 PrintWriter script = response.getWriter();
   	   			 script.println("<script>");
   	   	   		 script.println("alert('글쓰기 완료')");
   	   	   		 script.println("location.href ='bbs.jsp'");
   	   	   		 script.println("</script>");
   			 }
   		 }
   		 
   		 //1. 먼저 로그인을 한 사람만이 글을 쓸 수 있도록 코드를 수정
   		 //2. 글 제목과 내중 누락된 사항이 있는 지 체크한다.
   		 //3. 로그인을 하였고 모든 내용이 정상적으로 입력이 되었을 때 '글쓰기 완료' 알림
   		 //4. 창을 띄우고 게시판 메인 페이지('bbs.jsp')로 이동할 수 있도록 코드 작성.
   	 }
  		
 	%>
</body>
</html>