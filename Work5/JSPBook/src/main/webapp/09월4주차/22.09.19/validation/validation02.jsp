<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>데이터 값 유무 검사</title>  <!-- 폼  페이지에서 입력한 데이터 값의 유무 검사 -->
<script>
function checkLogin() { //입력 데이터의 유무를 검사하는 형식 (document.폼 이름.입력양식 이름.value == "")
   var form = document.loginForm;
   if (form.id.value == "") {
      alert("아이디를 입력해 주세요.");
      form.id.focus();
      return false;
   } else if (form.passwd.value == "") {
      alert("비밀번호를 입력해 주세요");
      form.passwd.focus();
      return false;
   }
   form.submit();
}


</script>


</head>
<body>
   <form name="loginForm" action="validation02_process.jsp" method="post" >
      <p>   아 이 디 : <input type="text" name="id">
      <p>   비밀번호 : <input type="password" name="passwd">
      <p>   <input type="button" value="전송" onclick="checkLogin()">
   </form>
</body>
</html>