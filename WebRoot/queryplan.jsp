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
        对战信息 </div>
	
  <div id="Banner">
  <tr>A组</tr>    
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
       	</form>
       	</td>
       	
   </tr>
    <%} else{%>
     <tr align="center" bgcolor="#ffffff">
    	<td><%=aplan.getOne() %></td>
      	<td><%=aplan.getTwo() %></td>  	
    	<td><%=aplan.getThree() %></td>
       	<td><%=aplan.getFour() %></td>
       	</form>
       	</td>
   </tr>  
   <%}}%> 
   </table>
	<%}%>
  <tr>B组</tr>
       <%
  	ArrayList<bplan> bplaninfo = Actionbase.showAllInfob();
  	if(bplaninfo!=null&&bplaninfo.size()>0){
  %>
   <table width="640" border="0" align="center" >
   <tr>
     <th width="120" colspan="1" align="center"  >主场队伍</th>
     <th width="120" colspan="1" align="center" >客场队伍</th>
     <th width="120" colspan="1" align="center" >比赛时间</th>
     <th width="120" colspan="1" align="center" >比赛场地</th>
   </tr>
    <tr></tr>
   <tr></tr>
   <%
   	for(int i=0;i<bplaninfo.size();i++){
   		bplan bplan=(bplan)bplaninfo.get(i);
   		if(i%2==0){
    %>
    <tr align="center" bgcolor="#99bbff">
    	<td><%=bplan.getOne() %></td>
      	<td><%=bplan.getTwo() %></td>  	
    	<td><%=bplan.getThree() %></td>
       	<td><%=bplan.getFour() %></td>
       	</form>
       	</td>
       	
   </tr>
    <%} else{%>
     <tr align="center" bgcolor="#ffffff">
    	<td><%=bplan.getOne() %></td>
      	<td><%=bplan.getTwo() %></td>  	
    	<td><%=bplan.getThree() %></td>
       	<td><%=bplan.getFour() %></td>
       	</form>
       	</td>
   </tr>  
   <%}}%> 
   </table>
	<%}%>
   <tr>C组</tr>
       <%
  	ArrayList<cplan> cplaninfo = Actionbase.showAllInfoc();
  	if(cplaninfo!=null&&cplaninfo.size()>0){
  %>
   <table width="640" border="0" align="center" >
   <tr>
     <th width="120" colspan="1" align="center"  >主场队伍</th>
     <th width="120" colspan="1" align="center" >客场队伍</th>
     <th width="120" colspan="1" align="center" >比赛时间</th>
     <th width="120" colspan="1" align="center" >比赛场地</th>
   </tr>
    <tr></tr>
   <tr></tr>
   <%
   	for(int i=0;i<cplaninfo.size();i++){
   		cplan cplan=(cplan)cplaninfo.get(i);
   		if(i%2==0){
    %>
    <tr align="center" bgcolor="#99bbff">
    	<td><%=cplan.getOne() %></td>
      	<td><%=cplan.getTwo() %></td>  	
    	<td><%=cplan.getThree() %></td>
       	<td><%=cplan.getFour() %></td>
       	</form>
       	</td>
       	
   </tr>
    <%} else{%>
     <tr align="center" bgcolor="#ffffff">
    	<td><%=cplan.getOne() %></td>
      	<td><%=cplan.getTwo() %></td>  	
    	<td><%=cplan.getThree() %></td>
       	<td><%=cplan.getFour() %></td>
       	</form>
       	</td>
   </tr>  
   <%}}%> 
   </table>
	<%}%>
   <tr>D组</tr>
       <%
  	ArrayList<dplan> dplaninfo = Actionbase.showAllInfod();
  	if(dplaninfo!=null&&dplaninfo.size()>0){
  %>
   <table width="640" border="0" align="center" >
   <tr>
     <th width="120" colspan="1" align="center"  >主场队伍</th>
     <th width="120" colspan="1" align="center" >客场队伍</th>
     <th width="120" colspan="1" align="center" >比赛时间</th>
     <th width="120" colspan="1" align="center" >比赛场地</th>
   </tr>
    <tr></tr>
   <tr></tr>
   <%
   	for(int i=0;i<dplaninfo.size();i++){
   		dplan dplan=(dplan)dplaninfo.get(i);
   		if(i%2==0){
    %>
    <tr align="center" bgcolor="#99bbff">
    	<td><%=dplan.getOne() %></td>
      	<td><%=dplan.getTwo() %></td>  	
    	<td><%=dplan.getThree() %></td>
       	<td><%=dplan.getFour() %></td>
       	</form>
       	</td>
       	
   </tr>
    <%} else{%>
     <tr align="center" bgcolor="#ffffff">
    	<td><%=dplan.getOne() %></td>
      	<td><%=dplan.getTwo() %></td>  	
    	<td><%=dplan.getThree() %></td>
       	<td><%=dplan.getFour() %></td>
       	</form>
       	</td>
   </tr>  
   <%}}%> 
   </table>
	<%}%>
<div id="content"></div>
  </body>
</html>



