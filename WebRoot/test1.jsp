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
	<td><marquee scrollAmount=10 width=600><font color=red >您当前处于记分员模式</font></marquee></td>
	<td><a href="test0.jsp">退出</a></td>
</div>
<div id="Nav">
<ul>
    	<li><a href="baoming.jsp"><h1>参赛报名</h1></a></li>
     	<li><a href="queryactor.jsp"><h1>查看报名</h1></a></li>
        <li><a href="queryplan.jsp"><h1>赛事查看</h1></a></li>
        <li><a href="query.jsp"><h1>战报查询</h1></a></li>
        <li><a href="jifen.jsp"><h1>常规记分</h1></a></li>
        <li><a href="record2.jsp"><h1>投篮记分</h1></a></li>
</ul>
</div>
<div id="Banner">
    <div class="pre"></div>
    <div class="next"></div>
    <div class="smalltitle">
      <ul>
        <li class="thistitle"></li>
        <li></li>
        <li></li>
        <li></li>
        <li></li>
        <li></li>
      </ul>
    </div>
    <ul class="oUlplay">
       <li><a href="test1.jsp" target="_blank"><img src="image/99.jpg"/></a></li>
       <li><a href="test1.jsp" target="_blank"><img src="image/687237_505653_234.jpg"/></a></li>
       <li><a href="test1.jsp" target="_blank"><img src="image/17659577_1358934737533_2345.jpg"/></a></li>
       <li><a href="test1.jsp" target="_blank"><img src="image/1363932000678.jpg"/></a></li>
       <li><a href="test1.jsp" target="_blank"><img src="image/19955421_1366189671589.jpg"/></a></li>
       <li><a href="test1.jsp" target="_blank"><img src="image/1348653583529.jpg"/></a></li>
    </ul>
</div>
<div id="Content">
    <div id="ContentL"><h1>赛事通知</h1>
        <strong> 本届计算机学院光熙杯篮球赛将于2014年6月举行 
    	<br>请计算机学院、软件学院各单位参赛之前完成报名</br>
    		届时请各参赛队伍做好准备,预祝本次比赛圆满成功</div>
    <div id="ContentR"><h1>温馨提示！</h1>
   <strong>友谊第一，比赛第二</strong>
    <strong>强身健体，共促和谐</strong>
	<strong>展现哈工大计算机人的风采！</strong>
    
    
    
    </div>
</div>
<div id="Footer">
    <p>哈尔滨工业大学</p>
    <p>fuzihang@hit.edu.cn</p>
</div>
</body>
</html>
