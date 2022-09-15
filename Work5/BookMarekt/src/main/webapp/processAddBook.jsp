<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ page import = "dto.Book" %>
 <%@ page import = "dao.BookRepository" %>
 
 <%
  	request.setCharacterEncoding("UTF-8");
 	String bookId = request.getParameter("bookId");
 	String name = request.getParameter("name");
 	String unitPrice = request.getParameter("unitPrice");
 	String author = request.getParameter("author");
 	String publisher = request.getParameter("publisher");
 	String releaseDate = request.getParameter("releaseDate");
 	String totalPages = request.getParameter("totalPages");
 	String description =  request.getParameter("description");
 	String category =  request.getParameter("category");
 	String unitsInStock = request.getParameter("unitsInStock");
 	String condition =  request.getParameter("condition");
 	
 	Integer price;
 	//폼 페이지에서 상품 가격이 입력되지 않은 경우 0으로 설정, 입력된 경우 정수형으로 변경
 	if(unitPrice.isEmpty()){
 		price = 0;
 	}else{
 		price=Integer.valueOf(unitPrice);
 	}
 	
 	long stock;
 	if(unitsInStock.isEmpty()){
 		stock = 0;
 	}else{
 		stock = Long.valueOf(unitsInStock);
 	}
 	
 	long totalPage;
 	
 	if(totalPages.isEmpty()){
 		totalPage = 0;
 	}else{
 		totalPage = Long.valueOf(totalPages);
 	}
 	
 	BookRepository dao = BookRepository.getInstance();
 	
 	Book newBook = new Book();
 	newBook.setBookId(bookId);
 	newBook.setName(name);
 	newBook.setUnitPrice(price);
 	newBook.setAuthor(author);
 	newBook.setPublisher(publisher);
 	newBook.setReleaseDate(releaseDate);
 	newBook.setTotalPages(totalPage);
 	newBook.setDescription(description);
 	newBook.setCategory(category);
 	newBook.setUnitsInStock(stock);
 	newBook.setCondition(condition);
 	
 	dao.addBook(newBook);
 	//폼 페이지에서 입력된 데이터를 저장하도록 - ProductRepository 클래스 add Product() 메소드를 호출
 	
 	response.sendRedirect("books.jsp");
 	//products.jsp 페이지로 response 내장객체 sendRedirect() 메소드를 작성
 	
 %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>