<%@ page language="java" import="java.util.*,po.*,action.*" pageEncoding="UTF-8"%>
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
      background-image: url(2011053016141095.jpg);    
      background-repeat: repeat-x;    
	 }    
 	</style>

	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
    本次光熙杯篮球赛对战信息 <br>
       <%
  	ArrayList<baoming> bminfo = Actionbase.showAllInfo2();
  	if(bminfo!=null&&bminfo.size()>0){
  %>
  <table width="640" border="1" align="center">
  <tr>
     <td colspan="8" align="center">报名队伍</td>
   </tr>
   </table>
   <table width="640" border="1" align="center" >
   <tr>
     <td width="80" colspan="1" align="center"  >队伍名</td>
     <td width="80" colspan="1" align="center" >小前锋</td>
     <td width="80" colspan="1" align="center" >大前锋</td>
     <td width="80" colspan="1" align="center" >中锋</td>
     <td width="80" colspan="1" align="center" >组织后卫</td>
     <td width="80" colspan="1" align="center"  >得分后卫</td>
     <td width="80" colspan="1" align="center"  >一号替补</td>
     <td width="80" colspan="1" align="center"  >二号替补</td>
   </tr>
   <%
   	for(int i=0;i<bminfo.size();i++){
   		baoming baoming=(baoming)bminfo.get(i);
    %>
    <tr >
    	<td><%=baoming.getOne() %></td>
      	<td><%=baoming.getTwo() %></td>  	
    	<td><%=baoming.getThree() %></td>
       	<td><%=baoming.getFour() %></td>
       	<td><%=baoming.getFive() %></td>
     	<td><%=baoming.getSix() %></td>
      	<td><%=baoming.getSeven() %></td>
    	<td><%=baoming.getEight() %></td>
   </tr>
    <%} %>
   </table>
	<%} %>
	<p><a href="Main.jsp">返回主页</a></p>
  </body>
</html>

