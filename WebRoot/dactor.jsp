<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'check.jsp' starting page</title>
    
<link rel="stylesheet" href="file/css/test0.css" type="text/css">

  </head>
  
<body>
<div id="Logo"></div>
<div id="Banner">
      <form action="Dactor" method="post" name="form">
            <p><span >请输入您的职工号：</span>

  	<input type="text" style="height:27" name="three" placeholder="请输入您的职工号"/>
	<input type="image" src="file/css/16.png" value="提交">
	</form>
</div>
<div id="Content"></div>
</body>
</html>


