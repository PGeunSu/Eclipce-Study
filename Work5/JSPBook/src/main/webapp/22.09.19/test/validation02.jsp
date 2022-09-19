<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>데이터 값 유무 검사</title>
<script>
function checkLogin() { 
	
	var form = document.loginForm;
	var id= document.getElementById("id").value;
	var passwd= document.getElementById("passwd").value;
	var newPasswd= document.getElementById("newPasswd").value;
	
	  if(passwd != newPasswd){
		  alert("입력한 두 개의 비밀번호가 서로 일치하지 않습니다.")
		  return false;
	  }
	  if(/(\w)\1\1\1/.test(newPasswd) || isContinuedValue(newPasswd)) {

			alert("영문, 숫자는 4자 이상 연속 입력할 수 없습니다."); 

			return false;

		}
	  form.submit();
}



</script>


</head>
<body>
    <form name="loginForm">
      <p>   아 이 디 : <input type="text" id="id" name="id">
      <p>   비밀번호 : <input type="password" id="passwd" name="passwd">
      <p>   비밀번호 확인 : <input type="password" id="newPasswd" name="newPasswd">
      <p>   <input type="button" value="전송" onclick="checkLogin()">
   </form>
</body>
</html>