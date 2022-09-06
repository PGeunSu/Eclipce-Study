<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">	
<title>Welcome</title>
<link rel="stylesheet" href="css/bootstrap.min.css"/>


</head>
<body>
	<%!
		String greeting =  "Welcome to Web Shopping Mall";
		String tagline =  "Welcome to Web Market";
	%>
	
	<div class="jumbotron">
		<div class="container">
			<h1>
				<%=greeting %>
			</h1>
		</div>
	</div>
	<div class="container">
	<div class="text-center">
		<h3>
			<%=tagline %>
		</h3>
	</div>
		<hr>
	</div>
	
	<footer class="container">
		<p>&copy; WebMarket</p>
	</footer>
	
</body>
</html>