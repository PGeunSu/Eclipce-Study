<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.ArrayList"%>
<!-- java-util.ArrayList 패키지 사용을 위해 page 디렉티브 태그의 import 속성을 작성 -->
<%@ page import="dto.Product"%>
<!-- 생성된 상품 클래스 dto.Product 패키지를 사용하기위해 page 디렉티브 태그의 import 속성을 작성-->
<jsp:useBean id="productDAO" class="dao.ProductRepository" scope="session"/>
<!-- 자바빈즈로 생성한 ProducRepsitory 클래스를 사용하도록 useBean 액션 태그를 작성 -->
<html>
<head>
<link rel="stylesheet"	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<title>상품 목록</title>
</head>
<body>
	<jsp:include page="menu.jsp"/>

	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">
				상품 목록
			</h1>
		</div>
	</div>
	<%
		ArrayList<Product> listOfProducts = productDAO.getAllProducts();
		//useBean 액션 태그의 id 값을 통해 ProductRepository 클래스의 getAllProducts()메소드를 호출하여 
		//반환된 결과값을 ArrayList<Product> 객체타입 변수 listOfProducts에 저장하도록 스크립틀릿 태그를 작성
	%>	
	<div class="container">
		<div class="row text-center">
			<%
				for(int i = 0; i < listOfProducts.size(); i++){
					Product product = listOfProducts.get(i);
					//listofProducts에 저장된 상품목록의 갯수 만큼 for문 실행하도록 작성
					//상품의 정보를 가져와  Product객체 타입의 변수 product에 저장
				
			%>
			<div>
				<div class="col-md-4" >
					<h3><%=product.getPname()%></h3>
					<p><%=product.getDescription()%></p>
					<p><%=product.getUnitPrice()%>원</p>
					<!-- product의 객체 타입의 변수 product에 저장된 상품명, 상품 상세 정보, 상품 가격 등을 출력 -->
				</div>
				<%
					}
				%>
			</div>
			
			
		</div>
		<hr>
	</div>	
	<%@ include file="footer.jsp"%>
</body>
</html>