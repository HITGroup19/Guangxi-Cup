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
        本次光熙杯篮球赛报名队伍 </div>
	
  <div id="Banner">
       <%
  	ArrayList<aplan> aplaninfo = Actionbase.showAllInfoa();
  	if(aplaninfo!=null&&aplaninfo.size()>0){
  %>
   <table width="640" border="0" align="center" >
   <tr>
     <th width="120" colspan="1" align="center"  >主场队伍</th>
     <th width="120" colspan="1" align="center" >客场队伍</th>
     <th width="120" colspan="1" align="center" >比赛时间</th>
     <th width="120" colspan="1" align="center" >比赛场地</th>
     <th width="120" colspan="1" align="center" >操作</th>
   </tr>
    <tr></tr>
   <tr></tr>
   <%
   	for(int i=0;i<aplaninfo.size();i++){
   		aplan aplan=(aplan)aplaninfo.get(i);
   		if(i%2==0){
    %>
    <tr align="center" bgcolor="#99bbff">
    	<td><%=aplan.getOne() %></td>
      	<td><%=aplan.getTwo() %></td>  	
    	<td><%=aplan.getThree() %></td>
       	<td><%=aplan.getFour() %></td>
       	<td>
       	<form  name="form" method="post" action='Daplan'>
       	<input type="hidden" name="one" value=<%=aplan.getOne() %>>
       	<input name="submit" type="submit"  value="删除">
       	</form>
       	</td>
       	
   </tr>
    <%} else{%>
     <tr align="center" bgcolor="#ffffff">
    	<td><%=aplan.getOne() %></td>
      	<td><%=aplan.getTwo() %></td>  	
    	<td><%=aplan.getThree() %></td>
       	<td><%=aplan.getFour() %></td>
       	 <td>
       	<form  name="form" method="post" action='Daplan'>
       	<input type="hidden" name="one" value=<%=aplan.getOne() %>>
       	<input name="submit" type="submit"  value="删除">
       	</form>
       	</td>
   </tr>  
   <%}}%> 
   </table>
	<%}%>
	<p><a href="test0.jsp">返回主页</a></p>
  </body>
</html>



