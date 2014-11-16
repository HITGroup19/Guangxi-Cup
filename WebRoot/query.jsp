<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head><title>test</title>
<link rel="stylesheet" href="file/css/test9.css" type="text/css">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
</head>
<body>
<div id="Nav">
</div>
<div id="Banner">
	<div id="BannerL">
     	<li><a href="queryresult.jsp">查询比赛名次</a></li>
     </div>
     <div id="BannerC">
      </div>
      <div id="BannerR">  
        <li><a href="queryrecord.jsp">查询比赛记录</a></li>
      </div>
</div>
<div id="Content">  
    </div>
<div id="Footer">

</div>
</body>
