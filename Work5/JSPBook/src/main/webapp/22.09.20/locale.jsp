<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import = "java.util.Locale" %>

<html>
<head>
<title>Internationalization</title>
</head>
<body>
	<h4>현재 로케일</h4>
	<%
		Locale locale = request.getLocale();
		String language = locale.getLanguage();
		String country = locale.getCountry();

		out.println("언어 : " + language + "<br />");
		out.println("국가  : " + country + "<br />");
	%>

</body>
</html>