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
 男子常规赛
       <%
  	ArrayList<baoming_m> bm_minfo = Actionbase.showAllInfo2_m();
  	if(bm_minfo!=null&&bm_minfo.size()>0){
  %>
   <table width="640" border="0" align="center" >
   <tr>
     <th width="120" colspan="1" align="center"  >实验室名</th>
     <th width="120" colspan="1" align="center" >教师姓名</th>
     <th width="120" colspan="1" align="center" >职工号</th>
     <th width="120" colspan="1" align="center" >身份</th>
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
   </tr>
    <%} else{%>
     <tr align="center" bgcolor="#ffffff">
    	<td><%=baoming_m.getOne() %></td>
      	<td><%=baoming_m.getTwo() %></td>  	
    	<td><%=baoming_m.getThree() %></td>
       	<td><%=baoming_m.getFour() %></td>
   </tr>  
   <%}}%> 
   </table>
	<%}%>
 女子常规赛
       <%
  	ArrayList<baoming_w> bm_winfo = Actionbase.showAllInfo2_w();
  	if(bm_winfo!=null&&bm_winfo.size()>0){
  %>
   <table width="640" border="0" align="center" >
   <tr>
     <th width="120" colspan="1" align="center"  >实验室名</th>
     <th width="120" colspan="1" align="center" >教师姓名</th>
     <th width="120" colspan="1" align="center" >职工号</th>
     <th width="120" colspan="1" align="center" >身份</th>
   </tr>
    <tr></tr>
   <tr></tr>
   <%
   	for(int i=0;i<bm_winfo.size();i++){
   		baoming_w baoming_w=(baoming_w)bm_winfo.get(i);
   		if(i%2==0){
    %>
    <tr align="center" bgcolor="#99bbff">
    	<td><%=baoming_w.getOne() %></td>
      	<td><%=baoming_w.getTwo() %></td>  	
    	<td><%=baoming_w.getThree() %></td>
       	<td><%=baoming_w.getFour() %></td>
   </tr>
    <%} else{%>
     <tr align="center" bgcolor="#ffffff">
    	<td><%=baoming_w.getOne() %></td>
      	<td><%=baoming_w.getTwo() %></td>  	
    	<td><%=baoming_w.getThree() %></td>
       	<td><%=baoming_w.getFour() %></td>
   </tr>  
   <%}}%> 
   </table>
	<%}%>
 混合娱乐赛
       <%
  	ArrayList<baoming> bminfo = Actionbase.showAllInfo2();
  	if(bminfo!=null&&bminfo.size()>0){
  %>
   <table width="640" border="0" align="center" >
   <tr>
     <th width="120" colspan="1" align="center"  >实验室名</th>
     <th width="120" colspan="1" align="center" >教师姓名</th>
     <th width="120" colspan="1" align="center" >职工号</th>
     <th width="120" colspan="1" align="center" >参赛项目</th>
   </tr>
    <tr></tr>
   <tr></tr>
   <%
   	for(int i=0;i<bminfo.size();i++){
   		baoming baoming=(baoming)bminfo.get(i);
   		if(i%2==0){
    %>
    <tr align="center" bgcolor="#99bbff">
    	<td><%=baoming.getOne() %></td>
      	<td><%=baoming.getTwo() %></td>  	
    	<td><%=baoming.getThree() %></td>
       	<td><%=baoming.getFour() %></td>
   </tr>
    <%} else{%>
     <tr align="center" bgcolor="#ffffff">
    	<td><%=baoming.getOne() %></td>
      	<td><%=baoming.getTwo() %></td>  	
    	<td><%=baoming.getThree() %></td>
       	<td><%=baoming.getFour() %></td>
   </tr>  
   <%}}%> 
   </table>
	<%}%>
</div>
<div id="content"></div>
  </body>
</html>