<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head><title>test</title>
<link rel="stylesheet" href="file/css/test2.css" type="text/css">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
</head>
<body>
<div id="Nav">
</div>
<div id="Banner">
		<td><A href = "addactor.jsp" style="text-decoration:none"><font size ="8">报名</font></A></td>
		<td><A href = "queryactor.jsp" style="text-decoration:none"><font size ="8">报名队伍查询</font></A></td>
</div>
<div id="Content">
    <div id="ContentL"><h1>报名须知</h1>
        <strong><font color ="red" size ="5">光熙杯篮球赛仅限大二大三年学生参加 
    	<br>报名队伍为七人组，五人在场上加两名替补人员</br>
    		报名结束后请按报名队伍查询检查是否报名成功</font>
    		</div>
    	
    
    </div>
</div>
<div id="Footer">
<p><a href="test0.jsp">返回主页</a></p>
</div>
</body>
