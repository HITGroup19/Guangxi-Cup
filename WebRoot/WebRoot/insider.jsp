<%@ page language="java" import="java.util.*,po.*" pageEncoding="UTF-8"%>
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
      background-image: url(t011aacc8de19e7f5eb.jpg);    
      background-repeat: repeat-x;    
	 }    
 	</style>
  </head>
  <body>
    <table width="706" border="1" align="left">
   <tr>
     <td width="180" colspan="1" align="center" >队伍名</td>
      <td width="180" colspan="1" align="center" >球员名</td>
           <td width="180" colspan="1" align="center" >得分</td>
      <td width="180" colspan="1" align="center" >抢断</td>
           <td width="180" colspan="1" align="center" >篮板</td>
   </tr>
    <%
    	List list=(List)request.getAttribute("list");
    	Iterator iter=list.iterator();
    	while(iter.hasNext()){
    		insider insider=(insider)iter.next();
    		    	%>
    	<tr>
    	<td><%=insider.getName() %></td>
    	<td><%=insider.getPname() %></td>
    	<td><%=insider.getDefen()  %></td>
    	<td><%=insider.getQiangduan()  %></td>
    	<td><%=insider.getLanban() %></td>
    	<% 
    	} 
    	%>
    </table>
 	<p><a href="Main.jsp">返回主页</a></p>
  </body>
</html>