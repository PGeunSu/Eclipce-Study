<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.io.PrintWriter" %>
<%@ page import = "bbs.Bbs" %>
<%@ page import = "bbs.BbsDAO" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/bootstrap.css">
</head>
<body>
<% 
   //메인페이지로 이동했을 때 세션에 값이 담겨져있는 지 체크
 String userID = null;
   if(session.getAttribute("userID") != null){
      userID = (String)session.getAttribute("userID");
   }
   
   if(userID == null){
	   PrintWriter script = response.getWriter();
	   script.println("<script>");
	   script.println("alert('로그인을 하세요')");
	   script.println("location.href='login.jsp'");
	   script.println("<script>");
	   
   };
   
   int bbsID = 0;
   if(request.getParameter("bbsID") != null){
	 	bbsID = Integer.parseInt(request.getParameter("bbsID"));  
   };
   
   if(bbsID == 0){
	   PrintWriter script = response.getWriter();
	   script.println("<script>");
	   script.println("alert('유효하지 않는글 입니다.')");
	   script.println("location.href='bbs.jsp'");
	   script.println("<script>");
	   
   };
   
   //해당 'bbsID'에 대한 게시글을 가져온 다음 세션을 통하여 작성자 본인이 맞는 지 체크
   Bbs bbs = new BbsDAO().getBbs(bbsID);
   
   if(!userID.equals(bbs.getUserID())){
	   PrintWriter script = response.getWriter();
	   script.println("<script>");
	   script.println("alert('권한이 없습니다.')");
	   script.println("location.href='bbs.jsp'");
	   script.println("<script>");
	   
   };
%>
  
	<nav class="navbar navbar-default">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed" 
					data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
					aria-ecpanded="false">
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="main.jsp"> JSP 게시판 웹 사이트</a>
		</div>
		<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav">
				<li class="active"><a href="main.jsp">메인</a></li>
				<li><a href="bbs.jsp">게시판</a></li>
			</ul>
			
			<ul class="nav navbar-nav navbar-right">
				<li class="dropdown">
					<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button"
						aria-haspopup="ture" aria-ecpanded="false">회원관리 <span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="logoutAction.jsp">로그아웃</a></li>
					</ul>
				</li>
			</ul>
			
		</div>
	</nav>
	<!--게시판 메인 페이지 영역 시작 -->
	<div class="container">
		<div class="row">
			<form method="post" action="updateAction.jsp?bbsID=<%=bbsID%>">
				<table class="table table=striped" style="text-align:center; border:1px solid #dddddd">
					<thead>
						<tr>
							<th colspan="2" style="background-color:#eeeeee; text-align:center;">게시판 글 수정 양식</th>
						</tr>	
					</thead>
					<tbody>
						<tr>
							<td><input type="text" class="form-control" placeholder="글제목" name="bbsTitle" maxlength="50"
							value ="<%=bbs.getBbsTitle().replaceAll(" ", "&nbsp;").replaceAll("<","&lt;").replaceAll(">","&gt;").replaceAll("\n","<br/>") %>"></td>
						</tr>
						<tr>
							<td><textarea class="form-control" name="bbsContent" maxlength="2048" style="height:350px" ><%=bbs.getBbsContent().
							replaceAll(" ", "&nbsp;").replaceAll("<","&lt;").replaceAll(">","&gt;")%></textarea></td>
						</tr>
					</tbody>
				</table>
				<input type="submit" class="btn btn-primary pull-rifght" value="글수정">		
			</form>
		</div>	
		
	</div>


<script src="http://code.jquery.com/jquery-3.6.0.js"></script>
<script src="js/bootstrap.js"></script>
</body>
</html>