<%@ page language="java" import="java.util.*" contentType="text/html" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>

 <center><font color =red  size = 6><p>光熙杯篮球赛欢迎您</p></font></center>
<table cellSpacing ="1" cellPadding = "1" width = "560" align ="center" border ="0">
<td><A href = "tongzhi.jsp"><font color = red size = 3>学院赛事通知</font></A></td>
<td><A href = "baoming.jsp"><font color = yellow size = 3>报名处</font></A></td>
<td><A href = "plan.jsp"><font color = blue size = 3>对战日程安排</font></A></td>
<td><A href = "record.jsp"><font color = green size = 3>现场记录</font></A></td>
<td><A href = "result.jsp"><font color = orange size = 3>季赛结果查询</font></A></td>
</table>
  </head>
    
  <body bgcolor = grey><font size = 2><center>
    <image src = "u=3541338615,2336176351&fm=56.jpg" width = 80% height = 80%></image>
  </body>
</html>
