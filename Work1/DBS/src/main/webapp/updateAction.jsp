<%@ page import="java.io.PrintWriter" %>
<%@ page import="bbs.BbsDAO" %>
<%@ page import = "bbs.Bbs" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <% request.setCharacterEncoding("utf-8"); %>

 
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
   	 }
   	 
   	 int bbsID = 0;
     if(request.getParameter("bbsID") != null){
  	 	bbsID = Integer.parseInt(request.getParameter("bbsID"));  
     };
     
     if(bbsID == 0){
  	   PrintWriter script = response.getWriter();
  	   script.println("<script>");
  	   script.println("alert('유효하지 않는글 입니다.')");
  	   script.println("location.href='bbs.jsp'");
  	   script.println("</script>");
  	   
     };
     
     //해당 'bbsID'에 대한 게시글을 가져온 다음 세션을 통하여 작성자 본인이 맞는 지 체크
     Bbs bbs = new BbsDAO().getBbs(bbsID);
     
     if(!userID.equals(bbs.getUserID())){
  	   PrintWriter script = response.getWriter();
  	   script.println("<script>");
  	   script.println("alert('권한이 없습니다.')");
  	   script.println("location.href='bbs.jsp'");
  	   script.println("</script>");
  	   
     }else{
    	 //입력이 안 됐거나 빈값이 있는 지 체크
    	 if(request.getParameter("bbsTitle")==null || request.getParameter("bbsContent") == null ||
    	 	request.getParameter("bbsTitle").equals("") || request.getParameter("bbsContent").equals("")){
    		 	
    		 PrintWriter script = response.getWriter();
    		 script.println("<script>");
    	  	 script.println("alert('입력이 안 된 사항이 있습니다.')");
   			 script.println("history.back()");
    	  	 script.println("</script>");
    	
    	 }else{
    		 BbsDAO bbsDAO = new BbsDAO();
    		 int result = bbsDAO.update(bbsID, request.getParameter("bbsTitle"),request.getParameter("bbsContent"));
    		 
    		 //데이터베이스 오류인경우
    		 if(result == -1){
    			 PrintWriter script = response.getWriter();
        		 script.println("<script>");
        	  	 script.println("alert('글 수정에 실패하였습니다.')");
       			 script.println("history.back()");
        	  	 script.println("</script>");
        	  	 
        	  	 //글 수정이 정상적으로 실행되면 알림창을 띄우고 게시판 메인으로 이동
    		 }else{
    			 PrintWriter script = response.getWriter();
        		 script.println("<script>");
        	  	 script.println("alert('글 수정이 완료되었습니다.')");
       			 script.println("location.href='bbs.jsp'");
        	  	 script.println("</script>");
    		 }
    	 }
    	 
     }
  		
 	%>
</body>
</html>