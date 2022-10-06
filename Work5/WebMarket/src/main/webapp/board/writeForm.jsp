<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%
 	request.setCharacterEncoding("utf-8");
 	String name = (String) request.getAttribute("name");
 	System.out.println("writeForm.jsp 진입");
 %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet"	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<title>글쓰기</title>
</head>
<body>
	<jsp:include page="../menu.jsp"/>
	
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">게시글</h1>
		</div>
	</div>
	
	<div class="container">
		<form action="./boardWriteAction.do" name = "newWrite" class="form-horizontal" method="get" onsubmit="return checkForm()" >
			<input name="id" type="hidden" class="form-contorl" value="${sessionId}">
			
			<div class="form-group row"> 
				<label class="col-sm-2 control-label">이름</label>
					<div class="col-sm-3">
						<input name="name" type="text" class="form-control" value="${name}" readonly> <!-- 게시글 작성자 이름 표시 -->
					</div>
			</div>
			<div class="form-group row"> 
				<label class="col-sm-2 control-label">제목</label>
					<div class="col-sm-5">
						<input name="subject" type="text" class="form-control" placeholder="제목을 입력하세요"> <!-- 게시글 제목 표시 -->
					</div>
			</div>
			<div class="form-group row"> 
				<label class="col-sm-2 control-label">내용</label>
					<div class="col-sm-8">
						<textarea rows="5" cols="50" name="content" class="form-control" placeholder="내용을 입력하세요"></textarea> <!-- 게시글 내용 표시 -->
					</div>
			</div>
			
			<div class="form-group row">
				<div class="col-sm-offset-2 col-sm-10">
					<input type="submit" class="btn btn-primary" value="등록">
					<input type="reset" class="btn btn-danger" value="취소">
				</div>
			
			</div>
		</form>
	
	</div>
	
	<jsp:include page="../footer.jsp"/>
	<script>
		function checkForm(){
			if(!document.newWrite.subject.value){
				alert("제목을 입력하세요");
				return false;
			}
			if(!document.newWrite.content.value){
				alert("내용을 입력하세요");
				return false;
			}
		}
	</script>
</body>
</html>