<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort

()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <meta charset="utf-8">
    <title>HTML5 Contact Form</title>
    <link rel="stylesheet" href="file/css/style.css" type="text/css">
</head>
<body>
 <% String xxx = (String)session.getAttribute("hao1");
  %>
<form class="contact_form" action="addactor" method="post" name="contact_form">
<ul>
    <li>
         <h2>球员报名</h2>

    </li>
    <li>
        <label for="name">实验室名：</label>
         <select name="one">
         <option value="硬件实验室">硬件实验室</option>
		<option value="云服务与企业计算实验室">云服务与企业计算实验室</option>
		<option value="软件实验室">软件实验室</option>
		<option value="自然语言处理">自然语言处理</option>
		
</select>
         
    </li>
        <li>
        <label for="name">姓名：</label>
         <input type="text" name="two" />
    </li>
</ul>
<ul>
<li>
    <label for="email">职工号：</label>
	<td><input type="hidden" name="three" value=<%=xxx%> >
	<%=xxx%>
</li>
<li>
    <label for="website">参赛项目: </label>
           <select name="four">
<option value="三分王">三分王</option>
<option value="定点投篮">定点投篮</option>
<option value="障碍投篮赛">障碍投篮赛</option>
</select>
</li>
</ul>
<ul>
<li>
    <button class="submit" type="submit">提交</button>
    <button class="reset" type="reset">重置</button>
</li>
</ul>
</form>
</body>
</html>

