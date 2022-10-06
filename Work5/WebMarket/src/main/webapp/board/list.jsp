<%@page import="mvc.model.BoardDTO"%>
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
	String sessionId = (String)session.getAttribute("sessionId");
	ArrayList<BoardDTO> boardList = (ArrayList<BoardDTO>)request.getAttribute("boardList");
	int totalRecord = ((Integer)request.getAttribute("totalRecord")).intValue(); //객체의 내용값을 정수로 변환
	int totalPage = ((Integer)request.getAttribute("totalPage")).intValue();
	int pageNum = ((Integer)request.getAttribute("pageNum")).intValue();

%>
<!DOCTYPE html>
<html>
<head>
<link rel ="stylesheet" href ="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" /> 
<meta charset="UTF-8">

<script type="text/javascript">
	function checkForm() {
		if (${sessionId==null}) {
		alert("로그인 해주세요.");
		return false;
		}
	
	location.href = "./boardWriteForm.do?id=<%=sessionId%>"
	}
</script>

	<title>게시판</title>
	</head>
<body>

 <jsp:include page="../menu.jsp" />   
   <div class="jumbotron">
      <div class="container">
         <h1 class="display-3">게시판</h1>
      </div>
   </div>
   
   <div class="container">
   		<form action='<c:url value="./boardListAction.do" />' method="post">
   			<div>
   			<div class="text-right">
   				<h2><span class="badge badge-danger">전제 건수 : <%=totalRecord %></span></h2>
   			</div>
   			</div>
   			<div style="padding-top:50px"><!-- 게시글 표시 -->
   				<table class="table table-hover">
   					<tr>
   						<th>번호</th>
   						<th>제목</th>
   						<th>작성일</th>
   						<th>조회</th>
   						<th>글쓴이</th>
   					</tr>
   					<%
   					for(int i=0; i<boardList.size(); i++) {
   						BoardDTO notice = boardList.get(i);
   					
   					%>
   					
   					<tr>
   						<td><%=notice.getNum() %></td>
   						<td><a href=".boardViewAction.do?num=<%=notice.getNum()%>&pageNum=<%=pageNum %>" ><%=notice.getSubject() %></a></td>
   						<td><%=notice.getRegist_day() %></td>
   						<td><%=notice.getHit() %></td>
   						<td><%=notice.getName() %></td>
   					</tr>
   					<%
   					}
   					%>
   				
   				</table>
   				
   				<div align="center">
   					<c:set var="pageNum" value="<%=pageNum %>"/><!-- 페이지수를 jstl로 표시 -->
   					<c:forEach var="i" begin="1" end="<%=totalPage %>">
   						<a href='<c:url value="./boardListAction.do?pageNum=${i}"/>'>
   							<c:choose>
   								<c:when test="${pageNum == i }">
   									<font color = "4C5317"><b>[${i}]</b></font>
   								</c:when>
   								<c:otherwise>
   									<font color="4C5317">[${i}]</font>
   								</c:otherwise>
   							</c:choose>
   						</a>
   					</c:forEach>
   				
   				</div>
   				
   				 <div align="left"> <!-- 검색 -->
   				 	<table>
   				 		<tr>
   				 			<td width="100%" align="left">&nbsp;
   				 				<select name="items" class="txt">
   				 					<option value="subject">제목</option>
   				 					<option value="content">본문</option>
   				 					<option value="name">글쓴이</option>
   				 				</select>
   				 				<input name="text" type="text">
   				 				<input type="submit" id="btnAdd" class="btn btn-primary" value="검색">
   				 			</td>
   				 			
   				 			<td width="100%" align="right">
   				 			<!-- 로그인 된 회원들만 글쓰기 가능하도록 하기위해서 checkform() 함수 추가 -->
   				 			<h3><a href="#" onclick="checkForm()" class="badge badge-primary">글쓰기</a></h3>
   				 			</td>
   				 		</tr>
   				 	
   				 	</table>
   				 </div>
   			
   			</div>
   			
   		</form>
   
   </div>

<jsp:include page="../footer.jsp" />  

</body>
</html>

