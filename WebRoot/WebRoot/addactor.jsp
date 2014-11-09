<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'newbm.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
    <form action="addactor" method="post" name="form">
    <p><span >实验室名：</span>

  <input type="text" name="one" />

        <p><span >姓名：</span>

  <input type="text" name="two" />

          </p>
        <p><span >职工号：</span>

  <input type="text" name="three"  />

          </p>
<p>性别：
            <input type="radio" name="four" value="男" checked="">男
            <input type="radio" name="four" value="女">女
            </p>
<p>位置：
            <input type="radio" name="five" value="领队" checked="">领队
            <input type="radio" name="five" value="球员">球员      
            </p>
<input type="submit" name="submit" value="提交">
<input type="reset" name="reset" value="重置">
</form>
  </body>
</html>

