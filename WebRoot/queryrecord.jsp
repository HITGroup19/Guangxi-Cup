<%@ page language="java" import="java.util.*,po.*,action.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<meta http-equiv="refresh" content="4"> 
  <head>
    <base href="<%=basePath%>">
	<link href="file/css/test4.css" rel='stylesheet' type='text/css' />

	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
    <div id="Nav">
        光熙杯篮球赛当前战报 </div>
	
  <div id="Banner">
       <%
  	ArrayList<record> recordinfo = Actionbase.showAllInfo();
  	if(recordinfo!=null&&recordinfo.size()>0){
  %>
   <table width="800" border="0" align="center" >
   <tr>
     <th width="100" colspan="1" align="center"  >比赛号</th>
     <th width="100" colspan="1" align="center" >主场队伍</th>
     <th width="100" colspan="1" align="center" >客场队伍</th>
     <th width="100" colspan="1" align="center" >主场得分</th>
     <th width="100" colspan="1" align="center" >客场得分</th>
     <th width="100" colspan="1" align="center" >主犯规数</th>
     <th width="100" colspan="1" align="center" >客犯规数</th>   
      <th width="100" colspan="1" align="center" >当前状态</th> 
   </tr>
    <tr></tr>
   <tr></tr>
   <%
   	for(int i=0;i<recordinfo.size();i++){
   		record record=(record)recordinfo.get(i);
   		if(i%2==0){
    %>
    <tr align="center" bgcolor="#99bbff">
    	<td><%=record.getOne() %></td>
      	<td><%=record.getTwo() %></td>  	
    	<td><%=record.getThree() %></td>
       	<td><%=record.getFour() %></td>
       	<td><%=record.getFive() %></td>
       	<td><%=record.getSix() %></td>
       	<td><%=record.getSeven() %></td>
       	<td><%=record.getEight() %></td>
   </tr>
    <%} else{%>
     <tr align="center" bgcolor="#ffffff">
    	<td><%=record.getOne() %></td>
      	<td><%=record.getTwo() %></td>  	
    	<td><%=record.getThree() %></td>
       	<td><%=record.getFour() %></td>
       	<td><%=record.getFive() %></td>
       	<td><%=record.getSix() %></td>
       	<td><%=record.getSeven() %></td>
       	<td><%=record.getEight() %></td>
   </tr>  
   <%}}%> 
   </table>
	<%}%>
  </body>
</html>