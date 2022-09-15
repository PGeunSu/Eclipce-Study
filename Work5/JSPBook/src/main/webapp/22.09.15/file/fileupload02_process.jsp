<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="com.oreilly.servlet.*"%>
<%@ page import="com.oreilly.servlet.multipart.*"%>
<%@ page import="java.util.*"%>
<%@ page import="java.io.*"%>

<html>
<head>
<title>File Upload</title>
</head>
<body>
<%

	MultipartRequest multi = new MultipartRequest(
	request, "C:\\work5\\workspace5\\JSPBook\\src\\main\\Webapp\\resources\\images", 5 * 1024 * 1024, "utf-8",	new DefaultFileRenamePolicy());

	String name1 = multi.getParameter("name1");
	String subject1 = multi.getParameter("subject1");
	
	String name2 = multi.getParameter("name2");
	String subject2 = multi.getParameter("subject2");
	
	String name3 = multi.getParameter("name1");
	String subject3 = multi.getParameter("subject3");
	
	//getParameterNames() 폼에서 전송한 파라미터 들의 이름을 변환(file 속성은 제외)
	//getFileNames() 폼에서의 전송한 file속성 피라미터 들의 이름을 반환

	Enumeration files = multi.getFileNames();

	String file3 = (String) files.nextElement();
	String filename3 = multi.getFilesystemName(file3);
	//file 속성으로 지정된 input태그에 의해 서버상에 실제로 업로된 파일 이름을 String객체 타입으로 변환
	
	String file2 = (String) files.nextElement();
	String filename2 = multi.getFilesystemName(file2);
	
	String file1 = (String) files.nextElement();
	String filename1 = multi.getFilesystemName(file1);
	
	//getOriginalFileName()은 사용자가 지정해서 업로드 되는 파일명 변환
	
	%>
	
	<table border="1">
		<tr>
	 		<th width="100">이름</th>
	 		<th width="100">제목</th>
	 		<th width="100">파일</th>
	 	</tr>
	 	<%
	 		out.print("<tr><td>" + name1 + "</td>");
	 		out.print("<td>" +subject1 + "</td>");
	 		out.print("<td>" + filename1 + "</td></tr>\n");
	 		
	 		out.print("<tr><td>" + name2 + "</td>");
	 		out.print("<td>" +subject2 + "</td>");
	 		out.print("<td>" + filename2 + "</td></tr>\n");
	 		
	 		out.print("<tr><td>" + name3 + "</td>");
	 		out.print("<td>" +subject3 + "</td>");
	 		out.print("<td>" + filename3 + "</td></tr>\n");
	 	 %>
	</table>
</body>
</html>