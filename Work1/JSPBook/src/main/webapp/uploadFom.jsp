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
		���̵� : <input type="text" name="id"> <br/>
		�� �� : <input type="text" name="subject"> <br/>
		����÷��1 : <input type="file" name="file1"> <br/>
		����÷��2 : <input type="file" name="file2"> <br/>
		<input type="submit" value="Ȯ��">
	</form>
</body>
</html>