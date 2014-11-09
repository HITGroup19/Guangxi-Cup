<%@ page language="java" import="java.util.*,po.*,action.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
<link href="file/css/test6.css" rel='stylesheet' type='text/css' />
  </head>
  
  <body>
 <div id="Logo">战绩统计</div>
 <div id="Nav">
  <%
	ArrayList<outsider> osinfo = Actionbase.showAllInfo3();
  	if(osinfo!=null&&osinfo.size()>0){
  %>
   <table width="640" border="0" align="center" >
   <tr>
     <th width="80" colspan="1" align="center"  >队伍名</td>
     <th width="80" colspan="1" align="center" >胜场</td>
     <th width="80" colspan="1" align="center" >负场</td>
      <th width="80" colspan="1" align="center" >名次</td>
   </tr>
   <%
   	for(int i=0;i<osinfo.size();i++){
   		outsider outsider=(outsider)osinfo.get(i);
   		 if(i%2==0){
    %>
    <tr align="center" bgcolor="#99bbff">
    	<td align="center"> <form  name="form" method='post' action='Showinsider'> 
		<input type="hidden" name="name" value=<%=outsider.getName()%> >
		<input type="submit" name="action" value=<%=outsider.getName()%> ></form></td>
      	<td ><%=outsider.getWin() %></td>  	
    	<td ><%=outsider.getLose() %></td>
    	<td ><%=outsider.getRank() %></td>
   </tr>
 <%} else{%>
     <tr align="center" bgcolor="#ffffff">
    	<td align="center"> <form  name="form" method='post' action='Showinsider'> 
		<input type="hidden" name="name" value=<%=outsider.getName()%> >
		<input type="submit" name="action" value=<%=outsider.getName()%> ></form></td>
      	<td ><%=outsider.getWin() %></td>  	
    	<td ><%=outsider.getLose() %></td>
    	<td ><%=outsider.getRank() %></td>
   </tr>
   <%}} %>
   </table>
	<%} %>
 </div>
 <div id="Banner">
 </div>
   <div id="Content"></div>
     <div id="Footer">
 	<p><a href="test0.jsp">返回主页</a></p>
 	</div>
  </body>
</html>