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
        本次光熙杯篮球赛报名名单 </div>
	
  <div id="Banner">
       <%
  	ArrayList<baoming_m> bm_minfo = Actionbase.showAllInfo2_m();
  	if(bm_minfo!=null&&bm_minfo.size()>0){
  %>
   <table width="840" border="0" align="center" >
   <tr>
     <th width="60" colspan="1" align="center" >参赛单位</th>
     <th width="60" colspan="1" align="center" >球员姓名</th>
     <th width="60" colspan="1" align="center" >球员号码</th>
     <th width="60" colspan="1" align="center" >球员性别</th>
     <th width="60" colspan="1" align="center" >联系方式</th>
     <th width="60" colspan="1" align="center" >学/职工号</th>
     <th width="60" colspan="1" align="center" >身份</th>
     <th width="60" colspan="1" align="center" >学历</th>
     <th width="60" colspan="1" align="center" >三好杯球员</th>
     <th width="60" colspan="1" align="center" >年龄段</th>
   </tr>
    <tr></tr>
   <tr></tr>
   <%
   	for(int i=0;i<bm_minfo.size();i++){
   		baoming_m baoming_m=(baoming_m)bm_minfo.get(i);
   		if(i%2==0){
    %>
    <tr align="center" bgcolor="#99bbff">
    	<td><%=baoming_m.getOne() %></td>
      	<td><%=baoming_m.getTwo() %></td>
      	<td><%=baoming_m.getThree() %></td>  	  	
       	<td><%=baoming_m.getFour() %></td>
       	<td><%=baoming_m.getFive() %></td>
      	<td><%=baoming_m.getSix() %></td>  	
    	<td><%=baoming_m.getSeven() %></td>
       	<td><%=baoming_m.getEight() %></td>
    	<td><%=baoming_m.getNine() %></td>
       	<td><%=baoming_m.getTen() %></td>
   </tr>
    <%} else{%>
     <tr align="center" bgcolor="#ffffff">
    	<td><%=baoming_m.getOne() %></td>
      	<td><%=baoming_m.getTwo() %></td> 
      	<td><%=baoming_m.getThree() %></td>   	
       	<td><%=baoming_m.getFour() %></td>
       	<td><%=baoming_m.getFive() %></td>
      	<td><%=baoming_m.getSix() %></td>  	
    	<td><%=baoming_m.getSeven() %></td>
       	<td><%=baoming_m.getEight() %></td>
    	<td><%=baoming_m.getNine() %></td>
       	<td><%=baoming_m.getTen() %></td>
   </tr>  
   <%}}%> 
   </table>
	<%}%>
</div>
<div id="content"></div>
  </body>
</html>