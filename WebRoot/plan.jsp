<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <link href="file/css/test3.css" rel='stylesheet' type='text/css' />
 </head>
  <body> 
  <div id="Nav">战区信息</div>
  <div id="Banner">
      <td width="900">
        <li><a href="queryaplan.jsp"><h1>A组</h1></a></li>
        <li><a href="querybplan.jsp"><h1>B组</h1></a></li>
        <li><a href="querycplan.jsp"><h1>C组</h1></a></li>
        <li><a href="querydplan.jsp"><h1>D组</h1></a></li>
  </div>
  <div id="Footer">
  
  <p><a href="test2.jsp">返回主页</a></p>
  </div>
  </body>
</html>

