<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.ArrayList"%>
<!-- java-util.ArrayList 패키지 사용을 위해 page 디렉티브 태그의 import 속성을 작성 -->
<%@ page import="dto.Book"%>
<!-- 생성된 상품 클래스 dto.Product 패키지를 사용하기위해 page 디렉티브 태그의 import 속성을 작성-->
<%-- <jsp:useBean id="productDAO" class="dao.BookRepository" scope="session"/> --%>
<!-- 자바빈즈로 생성한 ProducRepsitory 클래스를 사용하도록 useBean 액션 태그를 작성 -->
<%@ page import="dao.BookRepository" %>
<html>
<head>
<link rel="stylesheet"	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<title>도서 목록</title>
</head>
<body>
	<jsp:include page="menu.jsp"/>

	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">
				도서 목록
			</h1>
		</div>
	</div>
	<%
		BookRepository dao = BookRepository.getInstance();
		ArrayList<Book> listOfBook = dao.getAllProducts();
	%>	
	<div class="container">
			<%
				for(int i = 0; i < listOfBook.size(); i++){
					Book Bookproduct = listOfBook.get(i);				
			%>
		<div class="row">
				<div class="col-md-10" >
					<p><h5><b>[<%=Bookproduct.getCategory()%>]<%=Bookproduct.getName()%></b></h5></p>
					<p style="padding-top:20px"><%=Bookproduct.getDescription().substring(0,100)%>...</p>
					<p><%=Bookproduct.getAuthor()%> | <%=Bookproduct.getPublisher()%> | <%=Bookproduct.getUnitPrice()%>원</p>
					
				</div>
				<div class="col-md-2">
					<p><a href="book.jsp?id=<%=Bookproduct.getBookId()%>"
					class="btn btn-secondary" role="button" style="margin-top:70px"> 상세정보 &raquo;</a></p>
					
				</div>
		</div>
				<hr>
				<%
					}
				%>
			
			
			
	</div>	
	<%@ include file="footer.jsp"%>
</body>
</html>