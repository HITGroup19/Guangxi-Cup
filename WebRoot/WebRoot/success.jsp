<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">

   <title>成功</title>
	 <style type="text/css">    
	 body{    
      background-image: url(nbzbs32.jpg);    
      background-repeat: repeat-x;    
	 }    
 	</style>
  </head>
  <body>
    <font color = red size = 5><%=request.getAttribute("message") %> <br></font>
    <p><a href="Main.jsp"><font color = green size = 1>返回主页</font></a></p>
  </body>
</html>

