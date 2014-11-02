<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
<link href="file/css/test5.css" rel='stylesheet' type='text/css' />
  </head>
  <body>
     <div id="Nav">球员表现情况</div>
   <div id="Banner">
   <table width="900" border="1" align="left">
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
       </div>
    <div id="Content"></div>
     <div id="Footer">
 	<p><a href="result.jsp">返回上一层</a></p>
 	</div>
  </body>
</html>