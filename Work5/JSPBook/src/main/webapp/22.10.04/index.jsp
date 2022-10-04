<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="http://code.jquery.com/jquery-3.1.1.js"></script>

<script>
$(function(){
	$("#btnHelloWorldGet").bind('click',function(){
		$.ajax({
			type : "GET",
            url : "HelloWorld.do",
            success : function(data){
                $("#inputHelloWorld").val(data);
            },
        	error : function(){
            	alert('통신실패!!');
       		},
		});
	});
	$("#btnHelloWorldPost").bind('click',function(){
		$.ajax({
			type : "POST",
            url : "HelloWorld.do",
            success : function(data){
                $("#inputHelloWorld").val(data);
            },
        	error : function(){
            	alert('통신실패!!');
       		},
		});
	});
	
});
	
			
</script>
</head>
<body>
	<button id="btnHelloWorldGet">HelloWorld Get 호출</button>   
	<button id="btnHelloWorldPost">HelloWorld Post 호출</button>   
	<input type="text" id="inputHelloWorld">
</body>
</html>