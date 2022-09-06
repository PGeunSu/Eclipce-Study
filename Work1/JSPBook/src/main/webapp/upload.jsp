<%@page import="java.util.Enumeration"  %>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"  %>
<%@page import="com.oreilly.servlet.MultipartRequest"  %>

<%@ page language="java" contentType="text/html; charset=UTF-8"	
    pageEncoding="UTF-8"%>
    
<%
	String id = "";
	String subject = "";
	String fileName1 = "";
	String fileName2 = "";
	String orgFileName1 = "";
	String orgFileName2 = "";
	
	String uploadPath = request.getRealPath("upload"); //upload는 폴더명 / 폴더의 경로를 구해옴
	out.print(uploadPath);
	
	try{
		MultipartRequest multi = new MultipartRequest( //MultipartaRequest 인스턴스 생성(cos.jar)
				request, 
				uploadPath, //파일을 저장할 디렉토르 지정
				100 * 1024 * 1024, //첨부파일의 최대 용량 설정 (byte)
				"utf-8", //인코딩
				new DefaultFileRenamePolicy() //중복파일 처리(동일한 파일명이 업로드되면 뒤에 숫자등을 붙여 중복회피)
				);
		id = multi.getParameter("id"); //form name="id'인 값을 구함
		subject = multi.getParameter("subject"); //form의 name = "subject"인 값을 구함
		
		//form의 <input type = "file"> name값을 모를 경우 name을 구할 떄 사용
		Enumeration files = multi.getFileNames(); //form의 type = "file" name을 구함
		String file1 = (String) files.nextElement(); //첫번 째 type = "file"의 내용을 저장
		String file2 = (String) files.nextElement();
		
		fileName1 = multi.getFilesystemName("file1");
		// name = file1의 업로드된 시스템 파일명을 구함 (중복된 파일이 있으면, 중복 처리 후 파일 이름)
		orgFileName1 = multi.getOriginalFileName("file1");
		fileName2 = multi.getFilesystemName("file2");
		orgFileName2 = multi.getOriginalFileName("file2");
				
		
	}catch(Exception e){
		e.getStackTrace();
	}//업로드 종료
	
	
    
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<form action ="check.jsp" method="post">
		<input type="hidden" name="id" value="<%=id %>">
		<input type="hidden" name="subject" value="<%=subject %>">
		<input type="hidden" name="fileName1" value="<%=fileName1 %>">
		<input type="hidden" name="fileName2" value="<%=fileName2 %>">
		<input type="hidden" name="orgFIleName1" value="<%=orgFileName1 %>">
		<input type="hidden" name="orgFileName2" value="<%=orgFileName2 %>">
		<input type="submit" value="업로드 확인">
	</form>
</body>
</html>