<%@ page language="java" import="java.util.*,po.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
     <link href="file/css/test5.css" rel='stylesheet' type='text/css' />
  </head>
  <body>
   <div id="Nav">队员表现信息</div>
   <div id="Banner">
    <table width="706" border="0" align="center">
   <tr>
     <th width="180" colspan="1" align="center" >队伍名</td>
      <th width="180" colspan="1" align="center" >球员名</td>
           <th width="180" colspan="1" align="center" >得分</td>
      <th width="180" colspan="1" align="center" >抢断</td>
           <th width="180" colspan="1" align="center" >篮板</td>
   </tr>
    <tr></tr>
   <tr></tr>
    <%
    	List list=(List)request.getAttribute("list");
    	Iterator iter=list.iterator();
    	while(iter.hasNext()){
    		insider insider=(insider)iter.next();
    		    	%>
    	<tr align="center" bgcolor="#99bbff">
    	<td><%=insider.getName() %></td>
    	<td><%=insider.getPname() %></td>
    	<td><%=insider.getDefen()  %></td>
    	<td><%=insider.getQiangduan()  %></td>
    	<td><%=insider.getLanban() %></td>
    	<% 
    	} 
    	%>
    </table>
    </div>
    <div id="Content"></div>
     <div id="Footer">
 	<p><a href="result.jsp">返回上一层</a></p>
 	</div>
  </body>
</html>