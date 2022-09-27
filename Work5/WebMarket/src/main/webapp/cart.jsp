<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="dto.Product"%>
<%@ page import="dao.ProductRepository"%>
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
<%
   String cartId = session.getId();
%>
<title>장바구니</title>
</head>
<body>
   <jsp:include page="menu.jsp" />
   <div class="jumbotron">
      <div class="container">
         <h1 class="display-3">장바구니</h1>
      </div>
   </div>
   <div class="container">
      <div class="row">
         <table width="100%">
            <tr>
               <td align="left"><a href="./deleteCart.jsp?cartId=<%=cartId%>" class="btn btn-danger">삭제하기</a></td>
               <td align="right"><a href="./shippingInfo.jsp?cartId=<%=cartId %>" class="btn btn-success">주문하기   </a></td>
            </tr>
         </table>
      </div>
      <div style="padding-top: 50px">
         <table class="table table-hover">
            <tr>
               <th>상품</th>
               <th>가격</th>
               <th>수량</th>
               <th>소계</th>
               <th>비고</th>
            </tr>
            <%            
               int sum = 0;
            	//세선 속성이름인 cartList인 세션정보(장바구니에 담긴 물품목록)을 가져와서 ArrayList에서 
               ArrayList<Product> cartList = (ArrayList<Product>) session.getAttribute("cartlist");
               if (cartList == null)
                  cartList = new ArrayList<Product>();
				//deleteCart에서 session.invalidate()를 호출하게 되면 cartList == null 때문에 필요함
               for (int i = 0; i < cartList.size(); i++) { // 상품리스트 하나씩 출력하기
                  Product product = cartList.get(i);
                  int total = product.getUnitPrice() * product.getQuantity(); //가격 * 수량
                  sum = sum + total;
            %>
            <tr>
               <td><%=product.getProductId()%> - <%=product.getPname()%></td>
               <td><%=product.getUnitPrice()%></td>
               <td><%=product.getQuantity()%></td>
               <td><%=total%></td>
               <td><a href="./removeCart.jsp?id=<%=product.getProductId()%>" 
               class="badge badge-danger">삭제</a></td>
            </tr>
            <%
               }
            %>
            <tr>
               <th></th>
               <th></th>
               <th>총액</th>
               <th><%=sum%></th>
               <th></th>
            </tr>
         </table>
         <a href="./products.jsp" class="btn btn-secondary"> &laquo; 쇼핑 계속하기</a>
      </div>
      <hr>
   </div>
   <jsp:include page="footer.jsp" />
</body>
</html>