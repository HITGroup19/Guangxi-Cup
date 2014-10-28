 <%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
 
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
　<html>
　　<head>
<script> 
　　function openwin(){ 
　　window.open("page.html","","width=200,height=200") 
　　} 
　　function get_cookie(Name) { 
　　var search = Name + "=" 
　　var returnvalue = ""; 
　　if (document.cookie.length ゝ 0) { 
　　offset = document.cookie.indexOf(search) 
　　if (offset != -1) { 
　　offset += search.length 
　　end = document.cookie.indexOf(";", offset); 
　　if (end == -1) 
　　end = document.cookie.length; 
　　returnvalue=unescape(document.cookie.substring(offset, 

end)) 
　　} 
　　} 
　　return returnvalue; 
　　} 
　　function loadpopup(){ 
　　if (get_cookie(＞popped＞)==＞＞){ 
　　openwin() 
　　document.cookie="popped=yes" 
　　} 
　　} 
　　</script> 
　　</head>
　<body>
　　<a href="#" onclick="openwin()">嬉蝕匯倖完笥</a>
　　<input type="button" onclick="openwin()" value="嬉蝕完笥">
　　</body>
　　</html>