<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="dto.Book"%>
<%@ page import="dao.BookRepository"%>

<%  //전송된 상품 id 
	String id = request.getParameter("id");
	if (id == null || id.trim().equals("")) {
		response.sendRedirect("products.jsp");
		return;
	}
    //상품데이터 접근 클래스의 인스턴스 생성
	BookRepository dao = BookRepository.getInstance();

	//id값으로 상품상세정보를 얻어오는 코드
    Book book = dao.getBookById(id);
	if (book == null) {
		response.sendRedirect("exceptionNoProductId.jsp");
	}

	//모든상품 가져옴
	ArrayList<Book> goodsList = dao.getAllBooks();
	Book goods = new Book();
	for (int i = 0; i < goodsList.size(); i++) {
		goods = goodsList.get(i);
		//상품리스트주에서 사용자 주문을 한 그상품의 id 가 일치하는 코드를 얻어서 product에 대입
		if (goods.getBookId().equals(id)) { 			
			break;
		}
	}
	//세션 속성의 이름이 cartlist인 세션 정보(장바구니에 담겨져있는 물품목록)을 가져와서 ArrayList에 대입
	ArrayList<Book> list = (ArrayList<Book>) session.getAttribute("cartlist");
	if (list == null) { //cardlist값이  null 
		//세션에 ArrayList를 만들고 세션에 cardlist이름으로 list라는 값을 대입
		list = new ArrayList<Book>();
		session.setAttribute("cartlist", list);
	}

	
	//사용자가 주문한 상품이 장바구니에 이미  담긴 물품인지 검색해서 있다면 수량을 증가
	int cnt = 0;
	Book goodsQnt = new Book();
	for (int i = 0; i < list.size(); i++) {
		goodsQnt = list.get(i);
		if (goodsQnt.getBookId().equals(id)) {
			cnt++;
			int orderQuantity = goodsQnt.getQuantity() + 1;
			goodsQnt.setQuantity(orderQuantity);
		}
	}
	//사용자가 주문한 상품이 장바구니에 이미  담긴 물품인지 검색해서 없다면 수량을 1로 바꿔주고 
	// 장바구니 역할을 하고 있는 ArrayList에 추가
	if (cnt == 0) { 
		goods.setQuantity(1);
		list.add(goods);
	}

	response.sendRedirect("book.jsp?id=" + id);
%>