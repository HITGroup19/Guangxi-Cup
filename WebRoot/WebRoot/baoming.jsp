<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
	 <style type="text/css">    
	 body{    
      background-image: url(1411695729356.jpg);    
      background-repeat: repeat-x;    
	 }    
 	</style>

  </head>
  
  <body>
  	报名系统
     <br>
	<table width="50%" border="0" align="center" height="75">

		<td><A href = "addactor.jsp"><font color = red size = 8>报名处</font></A></td>
		<td><A href = "queryactor.jsp"><font color = red size = 8>报名队伍查询</font></A></td>
	</table>
	
	<p><a href="Main.jsp"><font color = grey size = 2>返回主页</a></p>
  </body>
</html>
