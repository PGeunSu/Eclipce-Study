<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.ArrayList"%>
<!--java.util.ArrayList 패키지 사용을 위해 page 디렉티브 태그의 import  속서을 작성 -->
<%@ page import="dto.Product"%>
<!--생성된 상품 클래스  dto.Product 패키지 사용하기위해 page 디렉티브 태그의 import  속서을 작성 -->
<%@ page import="dao.ProductRepository" %>
<!-- import시에는 클래스를 선언하거나 패키지를 선언해서 패키지내의 모든 클래스를 참조 할 수 있도록해줌  -->
<html>
<head>
<link rel="stylesheet"   href="./resources/css/bootstrap.min.css">

<title>상품 목록</title>
</head>
<body>
   <jsp:include page="menu.jsp" />
   
   <div class="jumbotron">
      <div class="container">
         <h1 class="display-3">
            상품목록
         </h1>
      </div>
   </div>
   <%
      ProductRepository dao =  ProductRepository.getInstance();
      ArrayList<Product> listOfProducts = dao.getAllProducts();
   
   %>
      
   <div class="container">
      <div class="row" align="center">
         <%
            for(int i = 0; i < listOfProducts.size(); i++){
               Product product = listOfProducts.get(i);
            // listOfProducts 저장된 상품목록의 갯수 만큼 실행하도록 반복문을 작성
            // 상품의 정보를 가져와  Product 객체 타입의 변수 product에 저장하도록 작성 
         %>
         
         <div class="col-md-4">
                        
            <img src="${pageContext.request.contextPath}/resources/images/<%=product.getFilename() %>"
            style="width:100%">
            
            <h3><%=product.getPname()%></h3>
            <p><%=product.getDescription()%>
            <p><%=product.getUnitPrice()%>원
            <!-- Product 의 객체 타입의 변수 product에 저장된 상품명, 상품 상세정보, 상품 가격 등을 출력-->
            <p><a href="./product.jsp?id=<%=product.getProductId()%>" 
            class="btn btn-secondary" role="button"> 상세정보 &raquo;</a>
         </div>
          <%
            }
          %>
      </div>
         
         
      </div>
      <hr>
   </div>   
   <jsp:include page="footer.jsp"/>
</body>
</html>




