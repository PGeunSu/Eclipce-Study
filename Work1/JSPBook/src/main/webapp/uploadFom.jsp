<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<form action="upload.jsp" method = "post" enctype="multipart/form-data">
		아이디 : <input type="text" name="id"> <br/>
		제 목 : <input type="text" name="subject"> <br/>
		파일첨부1 : <input type="file" name="file1"> <br/>
		파일첨부2 : <input type="file" name="file2"> <br/>
		<input type="submit" value="확인">
	</form>
</body>
</html>