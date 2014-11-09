<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'jifen.jsp' starting page</title>
    
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

<form action="Addrecord" method="post" name="form">
     <p><span >主场队名：</span>

  <input type="text" name="one" />

        <p><span >客场队名：</span>

  <input type="text" name="two" />

          </p>
        <p><span >主场得分：</span>

  <input type="text" name="three"  />

          </p>
        <p><span >客场得分：</span>

  <input type="text" name="four" />

	<p>主场胜负：
            <input type="radio" name="five" value="胜" checked="">胜
            <input type="radio" name="five" value="负">负  
    </p>
<input type="submit" name="submit" value="提交">
<input type="reset" name="reset" value="重置">
</form>
</html>
