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
	
	if(!/^[a-zA-Z0-9!@#$%^&*()?_~]{8,16}$/.test(passwd)) { 

		alert("비밀번호는 영문+숫자+특수기호 조합으로 8~16자리로 구성하여야 합니다."); 

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