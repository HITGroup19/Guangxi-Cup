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
      background-image: url(t015883c588849fa546.jpg);    
      background-repeat: repeat-x;    
	 }    
 	</style>
  </head>
  <body>
   <table width="706" border="1" align="left">
   <tr>
     <td width="180" colspan="1" align="center" >队伍名</td>
     <td width="180" colspan="1" align="center" >胜场</td>
     <td width="131" colspan="1" align="center" >负场</td>
   </tr>
       <tr >
    	<td><%=request.getAttribute("name") %></td>
    	<td><%=request.getAttribute("win")%></td>
    	<td><%=request.getAttribute("lose") %></td>
   </tr>
   </table>
 <p><a href="Main.jsp">返回主页</a></p>
  </body>
</html>