<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head><title>test</title>
<link rel="stylesheet" href="file/css/reset.css" type="text/css">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
</head>
<body>
<div id="Nav">
</div>
<div id="Banner">
	<div id="BannerL">
		<dl>
        <dt><a href="check3.jsp">修好报名信息</a></dt>
        </dl>
     </div>
     <div id="BannerC">
         <dl> 
            <dt><a href="check1.jsp">报名</a></dt>  
        </dl> 
      </div>
      <div id="BannerR">  
            <dt><a href="dactor_m.jsp">删除报名信息</a></dt> 
      </div>
</div>
<div id="Content">
    <div id="ContentL"><h1>报名须知</h1>
        <strong><font color ="blue" size ="4">
        <br>1.每队报名人数为18人以内：1名领队，1名教练，16名运动员，其中女运动员不少于3人</br>
        <br>2.各参赛单位上场运动员中：男教师不少于2人，男学生不多于2人，学生运动员须为在读硕士生，博士生</br>
    	<br>3.实验中心允许有至多同时2名本科生上场；教研室允许有同时1名本科生上场；其它单位不允许本科生上场</br>
    	<br>4.参加过三好杯或年龄超过四十五岁的球员请在备注中声明</br>
    	<br>5.对具有双重身份的参赛运动员，报名时只能代表一个单位，不可一人同时代表多个队参加比赛，否则将取消此人的参赛资格</br>
    	</font></strong>
    		</div>
    	
    
    </div>
<div id="Footer">
<a href="test0.jsp">返回主页
</div>
</body>
