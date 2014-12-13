<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort

()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <title>HTML5 Contact Form</title>
    <link rel="stylesheet" href="file/css/style.css" type="text/css">
</head>
<body>
<form class="contact_form" action="Addrecord_y" method="post" name="contact_form">
<ul>
    <li>
         <h2>投篮赛记分</h2>

    </li>
</ul>
<ul>  
   <li>
        <label for="name">名次：</label>
        <input type="text" name="one" />
   </li>
</ul>
<ul>
<li>
    <label for="email">球员姓名：</label>
    <input type="text" name="two" />

</li>
<li>
    <label for="website">命中个数: </label>
 <input type="text" name="three" />
</li>
</ul>
<ul>
<li>
    <button class="submit" type="submit">确定</button>
    <button class="reset" type="reset">重置</button>
</li>
</ul>
<ul>
<li>
<a href="test1.jsp">记分结束</a>
</li>
</ul>
</form>
</body>
</html>

