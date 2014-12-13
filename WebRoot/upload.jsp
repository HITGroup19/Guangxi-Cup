<%@ page language="java" contentType="text/html" import="java.util.*,java.io.*"import="com.oreilly.servlet.MultipartRequest"  pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>    
  <HEAD>    
  <TITLE>Image   File   </TITLE>    
  <meta   http-equiv="Content-Type"   content="text/html;   charset=gb2312">    
  </HEAD>    
  <FORM   METHOD=POST   ACTION="testimage.jsp">    
  <INPUT   TYPE="text"   NAME="content"><BR>    
  <INPUT   TYPE="file"   NAME="image"><BR>    
  <INPUT   TYPE="submit" name="提交"></FORM>    
  <BODY>    
  </BODY>    
  </HTML>  