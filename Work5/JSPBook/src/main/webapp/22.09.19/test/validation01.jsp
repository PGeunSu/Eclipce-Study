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
	
	   if (id == "") {
		  alert("아이디를 입력해 주세요.");
	      form.id.focus();
	      return false;
	   } else if (passwd == "") {
	      alert("비밀번호를 입력해 주세요");
	      form.passwd.focus();
	      return false;
	   }else if(passwd.search(id) > -1){
		   alert("비밀번호는 ID를 포함할 수 없습니다.")
		   return false;
	   }
	   form.submit();
	}



</script>


</head>
<body>
    <form name="loginForm" action="validation_process.jsp" method="post" >
      <p>   아 이 디 : <input type="text" id="id" name="id">
      <p>   비밀번호 : <input type="password" id="passwd" name="passwd">
      <p>   <input type="button" value="전송" onclick="checkLogin()">
   </form>
</body>
</html>