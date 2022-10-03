<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>데이터 길이 검사</title>  <!-- 폼  페이지에서 입력한 데이터 길이 검사 -->
<script>
function checkLogin() { //입력 데이터 길이 검사 (document.폼 이름.입력양식 이름.value.length)
   var form = document.loginForm;
   if (form.id.value.length < 4 || form.id.value.length > 12) {
      alert("아이디는 4~12자 이내로 입력 가능합니다.");
      form.id.select(); //. select() : value값 드래그
      return;
   }if (form.passwd.value.length < 4) {
      alert("비밀번호는 4자 이상으로 입력해야 합니다.");
      form.passwd.select();
      return;
   }
   form.submit();
}


</script>


</head>
<body>
   <form name="loginForm" action="validation03_process.jsp" method="post" >
      <p>   아 이 디 : <input type="text" name="id">
      <p>   비밀번호 : <input type="password" name="passwd">
      <p>   <input type="button" value="전송" onclick="checkLogin()">
   </form>
</body>
</html>