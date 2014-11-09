<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head><title>test</title>
<link rel="stylesheet" href="file/css/test.css" type="text/css">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
</head>
<body>
<div id="Logo">
	<td>您当前处于记分员模式</td>
</div>
<div id="Nav">
<ul>
     	<li><a href="baoming.jsp"><h1>参赛报名</h1></li>
        <li><a href="plan.jsp"><h1>赛事查看</h1></a></li>
        <li><a href="tongzhi.jsp"><h1>战绩查询</h1></a></li>
        <li><a href="result.jsp"><h1>记分统计</h1></a></li>
    </ul>
</div>
<div id="Banner"></div>
<div id="Content">
    <div id="ContentL"><h1>赛事公告</h1>
        <strong> 2014年计算机学院光熙杯篮球赛将于10月17到19日举行 
    	<br>请参赛班级/联队负责人于15日之前到报名处报名</br>
    		届时请各参赛队伍做好准备,预祝本次比赛圆满成功</div>
    <div id="ContentR"><h1>温馨提示！</h1>
    <strong>友谊第一 比赛第二</strong>
	<strong>希望大家在本次比赛中玩的开心！</strong>
    
    
    </div>
</div>
<div id="Footer">
    <p>哈尔滨工业大学</p>
    <p>网页制作人:徐天宇/卞昊/陈焱锋/李会峰</p>
</div>
</body>
</html>
