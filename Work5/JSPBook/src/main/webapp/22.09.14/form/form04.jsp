<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="form04_process.jsp" name="member" method="post">
		<p>아 이 디 : <input type="text" name="id"> <input type="button" value="아이디 중복검사"></p>
		<p>비밀번호 : <input type="password" name="passwd"></p>
		<p>연 락 처 : <select name="phone1"> 
					<option value="010">010</option>		
					<option value="011">011</option>
					<option value="015">015</option>
					<option value="017">017</option>
					<option value="018">018</option>
					<option value="019">019</option>
		</select> - <input type="text" maxlength="4" size="4" name="phone2"> - 
		<input type="text" maxlength="4" size="4" name="phone3"></p>
		<p>성별 : <input type="radio" name="sex" value="남성" checked>남성
				 <input type="radio" name="sex" value="여성">여성</p>
		<p>취미 : 독서<input type="checkbox" name="hobby1" checked>
				 운동<input type="checkbox" name="hobby2">
				 영화<input type="checkbox" name="hobby3">
				 음악<input type="checkbox" name="hobby4">
				 <p><textarea name="coment" cols="30" rows="3" placeholder="가입인사를 입력해주세요"></textarea></p>	
		<p><input type="submit" value="가입하기">
		   <input type="reset" value="다시쓰기"></p>
		
		
	</form>
</body>
</html>