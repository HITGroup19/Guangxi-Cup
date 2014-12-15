<%@ page language="java" import="java.util.*,po.*,action.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
	<link href="file/css/test4.css" rel='stylesheet' type='text/css' />

	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
    <div id="Nav">
        光熙杯篮球赛战报 </div>
	
  <div id="Banner">
       <%
  	ArrayList<result> resultinfo = Actionbase.showAllInfo1();
  	if(resultinfo!=null&&resultinfo.size()>0){
  %>
   <table width="640" border="0" align="center" >
   <tr>
     <th width="80" colspan="1" align="center"  >队伍名</th>
     <th width="80" colspan="1" align="center" >战区名</th>  
     <th width="80" colspan="1" align="center" >胜场数</th>
     <th width="80" colspan="1" align="center" >负场数</th> 
   </tr>
    <tr></tr>
   <tr></tr>
   <%
   	for(int i=0;i<resultinfo.size();i++){
   		result result=(result)resultinfo.get(i);
   		if(i%2==0){
    %>
    <tr align="center" bgcolor="#99bbff">
    	<td><%=result.getOne() %></td>
      	<td><%=result.getTwo() %></td>  	
    	<td><%=result.getThree() %></td>
    	<td><%=result.getFour() %></td>
   </tr>
    <%} else{%>
     <tr align="center" bgcolor="#ffffff">
    	<td><%=result.getOne() %></td>
      	<td><%=result.getTwo() %></td>  	
    	<td><%=result.getThree() %></td>
    	<td><%=result.getFour() %></td>
   </tr>  
   <%}}%> 
   </table>
	<%}%>
  </body>
</html>