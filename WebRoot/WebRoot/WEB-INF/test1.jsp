<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML>
<html>
<head>
<meta charset="utf-8">
<title>光熙杯篮球赛</title>
<link href="file/css/test1.css" rel='stylesheet' type='text/css' />
</head>
<body>
<div id="area">
  <header id="header"><font size = 6>光熙杯篮球赛</font> </header>
  <div id="container">
    <nav>
      <h3>导航栏</h3>
      <a href="baoming.jsp">报名处</a> <a href="plan.jsp">赛事安排</a><a href="tongzhi.jsp">精彩瞬间</a><a href="record.jsp">现场记录</a><a href="result.jsp">结果查询</a> </nav>
    <article>
      <header>公告栏</header>
      <p> 2014年计算机学院光熙杯篮球赛将于10月17到19日举行 
    	<br>请参赛班级/联队负责人于15日之前到报名处报名</br>
    		届时请各参赛队伍做好准备,预祝本次比赛圆满成功。
    		</p>
      <footer> 日期：2014-10-24 </footer>
    </article>
    <aside>
      <h3>侧边栏</h3>
    </aside>
  </div>
  <footer id="footer"> 页脚：2014&copy; </footer>
</div>
</body>
</html>