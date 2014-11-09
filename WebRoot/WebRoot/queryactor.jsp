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
     <div id="Nav">个人报名信息</div>
   <div id="Banner">
   <table width="900" border="1" align="left">
   <tr>
     <td width="180" colspan="1" align="center" >实验室名</td>
     <td width="180" colspan="1" align="center" >姓名</td>
     <td width="131" colspan="1" align="center" >职工号</td>
     <td width="180" colspan="1" align="center" >性别</td>
     <td width="180" colspan="1" align="center" >位置</td>
   </tr>
       <tr >
    	<td><%=request.getAttribute("one") %></td>
    	<td><%=request.getAttribute("two")%></td>
    	<td><%=request.getAttribute("three") %></td>
    	<td><%=request.getAttribute("four")%></td>
    	<td><%=request.getAttribute("five") %></td>
   </tr>
   </table>
       </div>
    <div id="Content"></div>
     <div id="Footer">
 	<p><a href=".jsp">返回上一层</a></p>
 	</div>
  </body>
</html>