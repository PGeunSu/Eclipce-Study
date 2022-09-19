<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>숫자 여부 확인</title>  <!-- 폼 페이지에서 입력한 비밀번호 값이 숫자인지 검사 -->
<script>

	function checkForm(){
		var regExp = /Java/i; //var regExp = new RegExp ("java",'i'); 와 같음
		var str = document.frm.title.value;
		var result = regExp.exec(str); //exec() 매개변수 값으로 전달되는 문자열에서 정규 표현식에 부합된 문자열을 추출하여 반환합니다.
		alert(result[0]);
	}
</script>


</head>
<body>
  		<form name="frm">
  			<p> 제목 : <input type="text" name="title">
  				<input type="submit" value="전송" onclick="checkForm()"></p>
  		</form>
</body>
</html>