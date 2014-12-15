<%@ page language="java" import="java.util.*,java.sql.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head><title>test</title>
<link rel="stylesheet" href="file/css/test.css" type="text/css">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script type="text/javascript" src="file/js/zzsc.js"></script>
</head>
<body>
<div id="Logo">
	<td><marquee scrollAmount=10 width=550><font color=red >您当前处于管理员模式</font></marquee></td>
	<td><a href="test0.jsp"><font color=blue>退出</font></a></td>
</div>
</div>
<div id="Nav">
<ul>
     	<li><a href="baoming.jsp"><h1>参赛报名</h1></li>
     	<li><a href="queryactor.jsp"><h1>查看报名</h1></li>
        <li><a href="queryplan.jsp"><h1>赛事查看</h1></a></li>
        <li><a href="querycicle.jsp"><h1>战区划分</h1></a></li>
        <li><a href="queryaplan.jsp"><h1>赛程安排</h1></a></li>
        <li><a href="tongzhi.jsp"><h1>更新通知</h1></a></li>
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
      </ul>
    </div>
    <ul class="oUlplay">
       <li><a href="test2.jsp" target="_blank"><img src="image/40.jpg"/></a></li>
       <li><a href="test2.jsp" target="_blank"><img src="image/cba2.jpg"/></a></li>
       <li><a href="test2.jsp" target="_blank"><img src="image/36.jpg"/></a></li>
       <li><a href="test2.jsp" target="_blank"><img src="image/97.jpg"/></a></li>
    </ul>
</div>
<div id="Content">
    <div id="ContentL"><h1>赛事通知</h1>
    		<%
//JSP页面直接访问数据库
Connection conn = null;
Statement stmt = null;
ResultSet rs = null;
try{
   	Class.forName("com.mysql.jdbc.Driver");
   	conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/game?characterEncodeing="+"utf-8", "root", "lhf0");
   	stmt = conn.createStatement();
   	rs = stmt.executeQuery("select * from tongzhi");
   	while(rs.next()){
   		String two = rs.getString("two");  
%>
	<strong><%= two %></strong>
<%
   	}
}catch(Exception e){
e.printStackTrace();
}finally{
try{
if(rs != null) rs.close();
if(stmt != null) stmt.close();
if(conn != null) conn.close();
}catch(Exception e1){
e1.printStackTrace();
}
}
%>
</div>

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
