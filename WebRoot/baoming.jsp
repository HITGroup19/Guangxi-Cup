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
            <dt><a>报名</a></dt> 
            <dd><a href="check1.jsp">男子常规赛</a></dd> 
            <dd><a href="check2.jsp">女子常规赛</a></dd> 
            <dd><a href="check.jsp">混合娱乐赛</a></dd> 
        </dl> 
      </div>
      <div id="BannerR">  
      	<dl>
      		<dt><a>删除报名信息</a></dt>
            <dd><a href="dactor_m.jsp">男子常规赛</a></dd> 
            <dd><a href="dactor_w.jsp">女子常规赛</a></dd> 
            <dd><a href="dactor.jsp">混合娱乐赛</a></dd> 
         </dl>
      </div>
</div>
<div id="Content">
    <div id="ContentL"><h1>报名须知</h1>
        <strong><font color ="red" size ="4">要求参赛队员须是哈尔滨工业大学正式在职教职工
        <br></br>
    	<br>以基层工会为单位，每单位可报一队，每队限报男队员12人、女队员10人，领队、教练各1人。
    	
    	女队报名超过四个队以上（含四个队），组织比赛每名队员只能代表一个队参加比赛</br>
    		
    	<br>	严谨外借队员，一经查实取消该队成绩及资格</br>
    	<br> 删除信息对三种模式报名都有效，修改信息只对娱乐赛有效</br>
    	</font></strong>
    		</div>
    	
    
    </div>
<div id="Footer">
<a href="test0.jsp">返回主页
</div>
</body>
