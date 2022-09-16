<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.ArrayList"%>
<!-- java-util.ArrayList 패키지 사용을 위해 page 디렉티브 태그의 import 속성을 작성 -->
<%@ page import="dto.Book"%>
<!-- 생성된 상품 클래스 dto.Product 패키지를 사용하기위해 page 디렉티브 태그의 import 속성을 작성-->
<%-- <jsp:useBean id="bookDAO" class="dao.BookRepository" scope="session"/> --%>
<!-- 자바빈즈로 생성한 ProducRepsitory 클래스를 사용하도록 useBean 액션 태그를 작성 -->
<%@ page import="dao.BookRepository" %>
<html>
<head>
<link rel="stylesheet"	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<title>도서 정보</title>
</head>
<body>
	<jsp:include page="menu.jsp"/>

	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">
				도서 정보
			</h1>
		</div>
	</div>
	<%
		String id = request.getParameter("id");
		BookRepository dao = BookRepository.getInstance();
		Book book = dao.getBookById(id);
	%>	
	<div class="container">
		<div class="row">
			<div class="col-md-4">
				 <img src="${pageContext.request.contextPath}/images/<%=book.getFilename() %>"style="height:100%; width:100%">
			</div>
			<div class="col-md-8">
				<h3>[<%=book.getCategory()%>]<%=book.getName() %></h3>
				<p><%=book.getDescription() %></p>
				<p><b>도서 코드 : </b><span class="badge badge-danger">
				<%=book.getBookId() %></span></p>
				<p><b>출판사 : </b><%=book.getPublisher() %></p>
				<p><b>저자 : </b><%=book.getAuthor() %></p>
				<p><b>재고 수 : </b><%=book.getUnitsInStock() %></p>
				<p><b>페이지 수: </b><%=book.getTotalPages() %></p>
				<p><b>출판일 : </b><%=book.getReleaseDate() %></p>
			 	<h4><%=book.getUnitPrice() %>원</h4>
			 	<p><a href="#" class="btn btn-info">상품 주문 &raquo;</a>
				<a href="books.jsp" class="btn btn-secondary">상품 목록 &raquo;</a></p>
			</div>
			
		</div>
			
	</div>
	<%@ include file="footer.jsp"%>
</body>
</html>