<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<% int index=1; %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>호텔 오버튼 - 예약 내역 조회</title>
		<link rel="stylesheet" href="https://www.lottehotel.com/etc.clientlibs/lottehotel/clientlibs/clientlib-bootstrap.min.ACSHASH0c5c202b50a31842a06dfab3ada145f9.css" type="text/css">
	<link rel="stylesheet" href="https://www.lottehotel.com/etc.clientlibs/lottehotel/clientlibs/clientlib-base.min.ACSHASH985dfd4f4b8d35f936b21e46cd0c92c0.css" type="text/css">
	<link rel="stylesheet" href="https://www.lottehotel.com/etc.clientlibs/lottehotel/clientlibs/templates/clientlib-member-signup.min.ACSHASHb8f719be1cfeddc68d3d08909e5e8824.css" type="text/css"> <!-- 회원가입 input 적용 css -->
	<link rel="stylesheet" href="https://www.lottehotel.com/etc.clientlibs/lottehotel/clientlibs/templates/clientlib-reservation.min.ACSHASHb6d12100e6653d69ffb6cb1fd2e8c021.css" type="text/css">
	<script type="text/javascript" src="https://www.lottehotel.com/etc.clientlibs/lottehotel/clientlibs/clientlib-dependencies/library/common.min.ACSHASHc5c5b83d87f57a24c817c20db81839cf.js"></script>
	<link rel="stylesheet" href="../css/slide.css" type="text/css">
	<link rel="stylesheet" href="../css/reserve.css" type="text/css">
	<link rel="stylesheet" href="../css/user.css" type="text/css">
	<script type="text/javascript" src="../js/Event.js"></script>
	<script type="text/javascript" src="../js/reservation.js"></script>
	<style>
		#btn{
			margin-top:15px;
			margin-bottom:15px;
			background-color: #382f24;
		    width:120px;
		    height:50px;
		    border: none;
		    font-size:medium;
		    color:#f1ebd5;
			}
		
	</style>
</head>

<body>
	<%@ include file="/menu.jsp" %>
	<br/><br />
	<h1 id="reserveTitle">예약 내역</h1>

	<c:if test="${dto.size() == 0  }">
					<div id="reserveComment">예약 내역이 존재하지 않습니다</div>
				</c:if>
				<c:if test="${dto.size() != 0 }">
					<table align="center" class="reserveInfo">
						<tr align="center" id="list" >
							<td>no</td>
							<td>성인 투숙객 수(명)</td>
							<td>어린이 투숙객 수(명)</td>
							<td>체크인</td>
							<td>체크아웃</td>
							<td>객실</td>
							<td>금액(원)</td>
							<td>예약시간</td>
						</tr>
					
						<c:forEach items="${dto }" var="d">
							<tr align="center">
								<td><%=index++ %></td>
								<td>${d.getR_adults() }</td>
								<td>${d.getR_kids() }</td>
								<td>${d.getR_checkin() }</td>
								<td>${d.getR_checkout() }</td>
								<td>${d.getR_type() }</td>
								
								<td><fmt:formatNumber value="${d.getR_price()}" pattern="#,###" /></td>
								<td>${d.getR_time() }</td>
							</tr>
						</c:forEach>
						
						<tr align="center">
							<td colspan="8">
								<form action="reserveinfo" method="post">
									<input type="submit" id="btn" value="예약 취소" />
								</form>
							</td>
						</tr>
					</table>
					
				</c:if>
	
	
	<c:if test="${num != null }">
		<c:if test="${num>0 }">
			<script>
				alert("선택하신 예약 내역이 취소되었습니다");
			</script>
		</c:if>
		<c:if test="${num==0 }">
			<script>
				alert("예약이 취소되지 않았습니다");
			</script>
		</c:if>
	</c:if>
	
	
	<%@ include file="/footer.jsp" %>
</body>
</html>