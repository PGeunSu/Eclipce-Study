<%@ page contentType="text/html; charset=utf-8" %>
<%@ page import="java.sql.*"%>
					<html>

					<head>
						<link rel="stylesheet" href="resources/css/bootstrap.min.css">
						<title>상품 상제 정보</title>
						<script type="text/javascript">
							function addToCart() {
								if (confirm("상품을 장바구니에 추가하시겠습니까?")) {
									document.addForm.submit();
								} else {
									document.addForm.reset();
								}
							}
						</script>
					</head>

					<body>
						<jsp:include page="menu.jsp" />

						<div class="jumbotron">
							<div class="container">
								<h1 class="display-3">상품 정보</h1>
							</div>
						</div>
				         
							<div class="container">
								<div class="row">
								 <%@ include file ="dbconn.jsp" %>
					         <%
					         
					         	String productId = request.getParameter("id");
					         	
					         	String sql = "select * from product where p_id = ?";
					         	pstmt = conn.prepareStatement(sql); //slecet 문을 사용하여 얻어온 레코드 값을 테이블 형태로 저장
					    		pstmt.setString(1, productId);
					         	rs = pstmt.executeQuery();
					         	if	(rs.next()){
					         %>
									<div class="col-md-5">
										 <img src="${pageContext.request.contextPath}/resources/images/<%=rs.getString("p_fileName")%>"
            						style="width:100%">
									</div>
									<div class="col-md-6">
										<h3>
											<%=rs.getString("p_name")%>
										</h3>
										<p>
											<%=rs.getString("p_description")%>
										</p>
										<p><b>상품 코드 : </b><span class="badge badge-danger">
												<%=rs.getString("p_id")%>
											</span></p>
										<p><b>제조사 : </b>
											<%=rs.getString("p_manufacturer")%>
										</p>
										<p><b>분류 : </b>
											<%=rs.getString("p_category")%>
										</p>
										<p><b>재고 수 : </b>
											<%=rs.getString("p_unitsInStock")%>
										</p>
										<h4>
											<%=rs.getString("p_UnitPrice")%>원
										</h4>
										<p>
										<form name="addForm" action="./addCart.jsp?id=<%=rs.getString("p_id")%>"
											method="post">
											<p><a href="#" class="btn btn-info" onclick="addToCart()">상품 주문 &raquo;</a>
												<a href="./cart.jsp" class="btn btn-warning">장바구니 &raquo;</a>
												<a href="products.jsp" class="btn btn-secondary">상품 목록 &raquo;</a>
											</p>
										</form>
										<%
					         		}
								           if(rs != null){
								          	rs.close();
								          } 
								          if(pstmt != null){
								            	pstmt.close();
								            }
								          if(conn != null){
								            	conn.close();
								            }
								
								        %>
									</div>
								</div>
								<!-- 33-40 Product객체 타입의 변수 Product에 저장된 상품명. 상품상세정보, 상품코드, 제조사, 분류, 재고 수, 상품가격등을 출력하도록 표현문 태그에 작성-->
							</div>
							<hr>
							<%@ include file="footer.jsp" %>
					</body>

					</html>