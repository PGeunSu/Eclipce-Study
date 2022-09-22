<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@page import="org.apache.commons.fileupload.*"%>
<%@page import="java.util.*"%>
<%@page import="java.io.*"%>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% 
   String path = "C:\\work5\\workspace5\\JSPBook\\src\\main\\webapp\\resources\\images";
   DiskFileUpload upload = new DiskFileUpload();
   
   upload.setSizeMax(1000000);//파일최대크기
   upload.setSizeThreshold(4096);//메로리상에저장할 최대 크기
   upload.setRepositoryPath(path);// 임시저장소
   
   List items = upload.parseRequest(request);
   Iterator params = items.iterator();
   
   while (params.hasNext()) {
      FileItem item = (FileItem) params.next();

      if (item.isFormField()) {
         String name = item.getFieldName();
         String value = item.getString("utf-8");
         out.println(name + "=" + value + "<br>");
         //폼페이지에서 전송된 요청 파라미터가 일반 데이터이면 요청 파라미터의 이름과 값을출력하도록
         //out 내장 객체의 printLn() 메소드를 작성
      }else{ //폼페이지에 전송된 요청 파라미터가 파일이면
         String fileFieldName  = item.getFieldName(); //파라미터 이름     
         String fileName = item.getName(); //저장 파일 이름
         String contentType = item.getContentType(); //파일 콘텐츠 유형
         fileName = fileName.substring(fileName.lastIndexOf("\\") + 1);
         long fileSize = item.getSize();
         //파일 크기에 대한 정보를 가져와서 출력하도록 out내장객체의 println() 메소드 작성

         File file = new File(path + "/" + fileName);
         item.write(file);

         out.println("-----------------------------------<br>");
         out.println("요청 파라미터 이름 : " + fileFieldName  + "<br>");
         out.println("저장 파일 이름 : " + fileName + "<br>");
         out.println("파일 콘텐츠 타입 : " + contentType + "<br>");
         out.println("파일 크기 : " + fileSize);

      }   
      
   }

%>
</body>
</html>








