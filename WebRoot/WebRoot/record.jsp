<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>	
  <head>
    <base href="<%=basePath%>">
	 <style type="text/css">    
	 body{    
      background-image: url(133242265.jpg);    
      background-repeat: repeat-x;    
	 }    
 	</style>
  </head>
  <body> 
   <form  name="form" method="post" action='Addrecord'>
        <p><span >记录队伍</span>
<label>
  <input type="text" name="team" />
</label>
          </p>
        <p><span >记录时间</span>
<label>
  <input type="text" name="time"  />
</label>
          </p>
        <p><span >记录信息</span>
<label>
  <input type="text" name="news" />
</label>
</p>
    <p>
       <input name="submit" type="submit" value="上传">&nbsp;&nbsp;&nbsp;
       <input name="reset" type="reset"   value="重置">
       </p>
      </form>
     <form action = "upload.jsp" enctype ="multipart/form-data" name = theFile method ="post">
		<input type="file" name="theFirstfile" size =50/><br>
     	<input type="submit" name="submitButton" value ="照片上传"/></form>
    <form action = "uploadvideo.jsp" enctype ="multipart/form-data" name = theFile method ="post">
		<input type="file" name="theFirstfile" size =50/><br>
     	<input type="submit" name="submitButton" value ="音频上传"/></from>
  <p><a href="Main.jsp">返回主页</a></p>
  </body>
</html>

