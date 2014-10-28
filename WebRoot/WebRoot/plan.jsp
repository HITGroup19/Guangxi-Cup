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
      background-image: url(1365738376787.jpg);    
      background-repeat: repeat-x;    
	 }    
 	</style>

  </head>
  
  <body>
   本次光熙杯篮球赛对战信息 <br> 
       <%
  	ArrayList<tongzhi> tzinfo = Actionbase.showAllInfo1();
  	if(tzinfo!=null&&tzinfo.size()>0){
  %>
  <table width="706" border="1" align="center"valign="bottom">
  <tr>
     <td colspan="6" align="center" >对战列表</td>
   </tr>
   </table>
   <table width="706" border="1" align="center" valign="bottom">
   <tr>
     <td width="180" colspan="1" align="center" >对战时间</td>
     <td width="180" colspan="1" align="center" >对战队伍</td>
   </tr>
   <%
   	for(int i=0;i<tzinfo.size();i++){
   		tongzhi tongzhi=(tongzhi)tzinfo.get(i);
    %>
    <tr >
    	<td><%=tongzhi.getDate() %></td>
    	<td><%=tongzhi.getActor()%></td>
   </tr>
    <%} %>
   </table>
	<%} %>
	<p><a href="Main.jsp">返回主页</a></p>
  </body>
</html>

