<%@ page language="java" session ="true" import="java.util.*" pageEncoding="utf-8"%>
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
	 <link rel="stylesheet" href="file/css/style.css" type="text/css">

  </head>
  
  <body>
<form class="contact_form" action="Addrecord" method="post" name="contact_form">
 <ul>
   <li>
         <h2>比赛记录</h2>

    </li>
 <li>
     <label for="name">场次号：</label>
  <input type="text" name="one" >  
  </li>
  </ul>
 <ul>
 <li>
    <label for="email">主场队伍：</label>
         <select name="two">
         <option value="硬件实验室">硬件实验室</option>
		<option value="云服务与企业计算实验室">云服务与企业计算实验室</option>
		<option value="软件实验室">软件实验室</option>
		<option value="自然语言处理">自然语言处理</option>	
</select>
</li>
</ul>
 <ul>
 <li> 
 <label for="website">客场队伍: </label>
         <select name="three">
         <option value="硬件实验室">硬件实验室</option>
		<option value="云服务与企业计算实验室">云服务与企业计算实验室</option>
		<option value="软件实验室">软件实验室</option>
		<option value="自然语言处理">自然语言处理</option>	
</select>
  </li>
  </ul>
<ul>
<li>
<input type="submit" name="submit" value="确定">
<input type="reset" name="reset" value="重置">
</li>
</ul>
</form>
</body>
</html>
