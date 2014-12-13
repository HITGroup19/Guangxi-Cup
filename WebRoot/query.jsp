<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head><title>test</title>
<link rel="stylesheet" href="file/css/test10.css" type="text/css">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
</head>
<body>
<div id="Nav">
</div>
<div id="Banner">
	<div id="BannerL">
     	<li><a href="queryresult.jsp">查询常规赛名次</a></li>
     </div>
     <div id="BannerC">
     <li><a href="queryresult_y.jsp">查询投篮赛名次</a></li>
      </div>
      <div id="BannerR">  
        <li><a href="queryrecord.jsp">查询比赛记录</a></li>
      </div>
</div>
<div id="Content">  
	 <div id="ContentL"><h1>规则说明</h1>
        <strong><font color ="blue" size ="4">
        <br>1.常规赛以参赛队伍为单位进行排名次</br>
        <br>2.投篮赛以参赛选手为单位进行排名次</br>
    	<br>3.常规赛名次为当前名次，随着进行不断更改</br>
    	<br>4.投篮赛名次实时发布，即为最终名次</br>
    	<br>5.查询比赛记录可观察到已经结束的队伍和正在进行比赛的队伍，正在进行比赛的队伍得分实时更新</br>
    	</font></strong>
    		</div>

    </div>
<div id="Footer">

</div>
</body>
