<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.sql.*"%>
<html>
<head>
<link rel="stylesheet"   href="./resources/css/bootstrap.min.css">
<title>상품 편집</title>
<script type="text/javascript">
	function deleteConfirm(id){
		if(confirm("해당 상품을 삭제합니다!") == true){
			loaction.href = "./deleteProduct.jsp?id=" + id;
		}else{
			return;
		}
			
	}
</script>
</head>
<%
	String edit = request.getParameter("edit");
%>
<body>
  		 <jsp:include page="menu.jsp" />
   
   			<div class="jumbotron">
		<div class="container">
			<h1 class="display-4">상품 편집</h1>
		</div>
	
	</div>
							
		<div class="container">
      <%@ include file ="dbconn.jsp" %>
         <%
         	String sql = "select * from book"; //product 조회
         	pstmt = conn.prepareStatement(sql); //slecet 문을 사용하여 얻어온 레코드 값을 테이블 형태로 저장
         	rs = pstmt.executeQuery();
         	while(rs.next()){
         %>
         <div class="row" >
         <div class="col-md-3" align="center">     
            <img src="${pageContext.request.contextPath}/resources/images/<%=rs.getString("b_fileName")%>"
            style="width:100%">
            </div>
           <div class="col-md-7">	
				<p><h5 ><b>[<%=rs.getString("b_category")%>] <%=rs.getString("b_name")%></b></h5>
				<p style="padding-top: 20px"><%=rs.getString("b_description").substring(0, 100)%>... 
				<p> <%=rs.getString("b_author")%> |  <%=rs.getString("b_publisher")%> |  <%=rs.getString("b_unitPrice")%>원
			</div>
			
            <p>
            
            <%
            	if(edit.equals("update")){
            		
	           %>
	           <a href="./updateBook.jsp?id=<%=rs.getString("b_id")%>" class="btn btn-success" role="button">수정 &raquo;</a>
	           <%
	          } else if(edit.equals("delete")){
	           	%>
	          	<a href="#" onclick="deleteConfirm('<%=rs.getString("b_id")%>')" class="btn btn-danger" role="button">삭제 &raquo;</a>
	            </p>
	            
		 	          	
	            <%
	                 }
            %>
	             </div>
		 	  <hr> 
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
   <jsp:include page="footer.jsp"/>
</body>

</html>