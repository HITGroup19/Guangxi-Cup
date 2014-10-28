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
      background-image: url(1363932024836.jpg);    
      background-repeat: repeat-x;    
	 }    
 	</style>

  </head>
  
  <body>
  	查询系统
     <br>
	<table width="706" border="0" align="center" height="75">
    <tr>
      <td align="right" width="1000"> <form  name="form" method="post" action="Showoutsider"><font color = blue size = 5> 请输入队伍名：
      	<input type="text" name="name">
      	<input type="submit"  value="队伍得分查询" ></form></td>
    </tr>
    <tr>
      <td align="right" width="1000"> <form  name="form" method="post" action="Showinsider"><font color = blue size = 5> 请输入队伍名：
      	<input type="text" name="name">
      	<input type="submit"  value="球员表现查询" ></form></td>
    </tr>
	</table>
	<p><a href="Main.jsp">返回主页</a></p>
  </body>
</html>