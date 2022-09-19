<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>데이터 형식 유효성 검사</title>  
<script>

	function checkForm(){
		var str = document.frm.name.value;
		var regExp = /^[a-z|A-Z|ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/;
		if(!regExp.test(str)){ //text() : 매개변수 값으로 전달되는 문자열이 정규표현식에 부합한지 판단하여 true/false를 반환
			alert("이름은 숫자로 시작할 수 없습니다.");
			return;
		}
	}
</script>


</head>
<body>
  		<form name="frm">
  			<p> 이름 : <input type="text" name="name">
  				<input type="submit" value="전송" onclick="checkForm()"></p>
  		</form>
</body>
</html>