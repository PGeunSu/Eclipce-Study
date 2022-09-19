<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>숫자 여부 확인</title>  <!-- 폼 페이지에서 입력한 비밀번호 값이 숫자인지 검사 -->
<script>
function checkLogin() { //입력 데이터 길이 검사 (document.폼 이름.입력양식 이름.value.length)
   var form = document.loginForm;
  
   for(i=0; i<form.id.value.length;i++){
	   var ch = form.id.value.charAt(i);
	   
	   if((ch<'a'||ch>'z') && (ch>'A' || ch<'Z') && (ch>'0' || ch<'9')){
		   alert("아이디는 영문 소문자만 입력 가능합니다.")
		   form.id.select();
		   return;
	   }
   }
   if(isNaN(form.passwd.value)){ //is Not a Number 의 약자 (인자값이 숫자이면 false를 반환하고 숫자가 아니면 true를 반환)
		alert("비밀번호는 숫자만 입력 가능합니다!");   
		form.passwd.select();
		return;
   	 }
   	form.submit();
   }
</script>


</head>
<body>
   <form name="loginForm" action="validation04_process.jsp" method="post" >
      <p>   아 이 디 : <input type="text" name="id">
      <p>   비밀번호 : <input type="password" name="passwd">
      <p>   <input type="button" value="전송" onclick="checkLogin()">
   </form>
</body>
</html>