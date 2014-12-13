<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title></title>
<link href="file/css/test11.css" rel="stylesheet" type="text/css" />
</head>
<body>
<style>
/*
	作用描述：给INPUT添加美化的样式，兼容IE8,IE9,FF,chrome,safari等
	效果描述；
		- 1.边框带圆角
		- 2.指定INPUT高度
		- 3.INPUT文本上下居中，添加左边距
		- 4.背景色为白色
		- 5.当INPUT获得光标的时候，边框高亮显示天蓝色。
		- 6.IE7下没有高亮效果
		- 7.chrome下聚焦后边框是2px。
*/
.cssInput{
	border:1px solid #7A6F6F;
	border:1px solid #7A6F6F \9;/*IE*/
	width:600px;
	height:200px;/*非IE高度*/
	padding-left:5px; /*all*/
	line-height:20px \9;/*IE*/
	-moz-border-radius:3px;/*Firefox*/
	-webkit-border-radius:3px;/*Safari和Chrome*/
	border-radius:3px;/*IE9+*/
	background-color:white;
	outline:none;
}
.cssInput:focus{/*IE8+*/
	border-color:#78BAED;
	[;outline:1px solid #78BAED;/*chrome*/
}</style>
<div id="Banner">
	<form class="contact_form" action="Update0" method="post" name="contact_form">
	<input type="hidden" name="one" vlaue="1"></input>
	<input type="text" class="cssInput" id="txt_id" name="two" ><br/><br/></input>
	 <button class="submit" type="submit">提交</button>
	</form>
</div>
</body>
</html>