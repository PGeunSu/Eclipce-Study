<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="com.oreilly.servlet.*"%>
<%@ page import="com.oreilly.servlet.multipart.*"%>
<%@ page import="java.util.*"%>
<%@ page import ="dto.Book" %>
<%@ page import ="dao.BookRepository" %>
 
 
 <%
  	request.setCharacterEncoding("UTF-8");
 
 	String filename = "";
 	String realFolder = "C:\\work5\\workspace5\\BookMarekt\\src\\main\\webapp\\images"; //웹 어플리케이션상의 절대 경로
 	String encType = "utf-8"; //인코딩 타입
 	int maxSize = 5 * 1024 * 1024; //최대 업로드될 파일의 크기5Mb
 
 	MultipartRequest multi = new MultipartRequest(request, realFolder, maxSize, encType, new DefaultFileRenamePolicy());
 
 	String bookId = multi.getParameter("bookId");
 	String name = multi.getParameter("name");
 	String unitPrice = multi.getParameter("unitPrice");
 	String author = multi.getParameter("author");
 	String publisher = multi.getParameter("publisher");
 	String releaseDate = multi.getParameter("releaseDate");
 	String totalPages = multi.getParameter("totalPages");
 	String description =  multi.getParameter("description");
 	String category =  multi.getParameter("category");
 	String unitsInStock = multi.getParameter("unitsInStock");
 	String condition =  multi.getParameter("condition");
 	
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
 	
 	Enumeration files = multi.getFileNames();
    String fname = (String) files.nextElement();
    String fileName = multi.getFilesystemName(fname);
 	
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
 	newBook.setFilename(fileName);
 	
 	dao.addBook(newBook);
 	//폼 페이지에서 입력된 데이터를 저장하도록 - ProductRepository 클래스 add Product() 메소드를 호출
 	
 	response.sendRedirect("books.jsp");
 	//products.jsp 페이지로 response 내장객체 sendRedirect() 메소드를 작성
 	
 %>