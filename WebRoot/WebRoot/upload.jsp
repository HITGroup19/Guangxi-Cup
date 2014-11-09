<%@ page language="java" contentType="text/html" import="java.util.*,java.io.*"import="com.oreilly.servlet.MultipartRequest"  pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<meta http-equiv="refresh" content="1;URL=record.jsp">
<html>
 <head> 
 <title></title> 
 </head>  
 <script language="javascript" type="text/javascript">     
         
 	alert("照片上传成功！");     

 </script>  
	<style type="text/css">    
	 body{    
      background-image: url(images/1363931951521.jpg);    
      background-repeat: repeat-x;    
	 }    
 	</style>
  <body>
  <%
 	 MultipartRequest theMultipartRequest = new MultipartRequest(request,"C:\\record\\",10*1024*1024);
 	 Enumeration theEnumeration= theMultipartRequest.getFileNames();
 	 int fileCount = 0;
 	 while(theEnumeration.hasMoreElements()){
 	 	fileCount++;
 	 	String fieldName = (String)theEnumeration.nextElement();
 	 	String fileName = theMultipartRequest.getFilesystemName(fieldName);
 	 	String contentType = theMultipartRequest.getContentType(fieldName);
 	 	File theFile = theMultipartRequest.getFile(fieldName);
 	 }  
   %>
  </body>
</html>
