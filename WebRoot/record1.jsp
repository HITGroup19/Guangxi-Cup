<%@ page language="java" session ="true" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head><title>test</title>
<link rel="stylesheet" href="file/css/test8.css" type="text/css">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
</head>
 <body>
  <%	String oo = (String)session.getAttribute("ff0");
  String ooo = (String)session.getAttribute("ff1");
  String oooo = (String)session.getAttribute("ff2");
   
			System.out.println(oo);
			System.out.println(ooo);
			System.out.println(oooo);%>
<div id="Banner">
场次号：<td><%=oo%></td>
</div>
<div id="Content">
	<div id="ContentL">
	<tr>主场队名：<td><%=ooo%></td></tr>

	<form action="Update1" method="post" name="form">
	<input type="hidden" name="one" value=<%=oo%> ></input>
	<input type="hidden" name="two" value=<%=ooo%> ></input>
	<input type="hidden" name="three" value=<%=oooo%> ></input>
	<input type="hidden" name="four"></input>
	<input type="hidden" name="five"></input>
	<input type="hidden" name="six"></input>
	<input type="hidden" name="seven"></input>
	<input type="hidden" name="eight"></input>
	<input type="submit" class="input01"name="submit" value="一分"></input>
	</form>

 	<form action="Update2" method="post" name="form">
	<input type="hidden" name="one" value=<%=oo%> ></input>      
	<input type="hidden" name="two" value=<%=ooo%> ></input>
	<input type="hidden" name="three" value=<%=oooo%> ></input>
	<input type="hidden" name="four"></input>
	<input type="hidden" name="five"></input>
	<input type="hidden" name="six"></input>
	<input type="hidden" name="seven"></input>
	<input type="hidden" name="eight"></input>
 	<input type="submit" class="input01"name="submit" value="两分"></input>
	</form>

 	<form action="Update3" method="post" name="form">
	<input type="hidden" name="one" value=<%=oo%> > </input>    
	<input type="hidden" name="two" value=<%=ooo%> ></input>
	<input type="hidden" name="three" value=<%=oooo%> ></input>
	<input type="hidden" name="four"></input>
	<input type="hidden" name="five"></input>
	<input type="hidden" name="six"></input>
	<input type="hidden" name="seven"></input>
	<input type="hidden" name="eight"></input>
 	<input type="submit" class="input01"name="submit" value="三分"></input>
	</form>
	</tr>
 	<form action="Update31" method="post" name="form">
	<input type="hidden" name="one" value=<%=oo%> ></input>      
	<input type="hidden" name="two" value=<%=ooo%> ></input>
	<input type="hidden" name="three" value=<%=oooo%> ></input>
	<input type="hidden" name="four"></input>
	<input type="hidden" name="five"></input>
	<input type="hidden" name="six"></input>
	<input type="hidden" name="seven"></input>
	<input type="hidden" name="eight"></input>
	<input type="submit" class="input01"name="submit" value="犯规"></input>
	</form>
	</div>
	<tr></tr>
	<tr></tr>
	<div id="ContentR">
	<td>客场队名：<%=oooo%></td>
  	<form action="Update21" method="post" name="form">
	<input type="hidden" name="one" value=<%=oo%> ></input>      
	<input type="hidden" name="two" value=<%=ooo%> ></input>
	<input type="hidden" name="three" value=<%=oooo%> ></input>
	<input type="hidden" name="four"></input>
	<input type="hidden" name="five"></input>
	<input type="hidden" name="six"></input>
	<input type="hidden" name="seven"></input>
	<input type="hidden" name="eight"></input>
 	<input type="submit" class="input01"name="submit" value="一分"></input>
	</form>

 	<form action="Update22" method="post" name="form">
	<input type="hidden" name="one" value=<%=oo%> ></input>      
	<input type="hidden" name="two" value=<%=ooo%> ></input>
	<input type="hidden" name="three" value=<%=oooo%> ></input>
	<input type="hidden" name="four"></input>
	<input type="hidden" name="five"></input>
	<input type="hidden" name="six"></input>
	<input type="hidden" name="seven"></input>
	<input type="hidden" name="eight"></input>
 	<input type="submit" class="input01"name="submit" value="两分"></input>
	</form>

 	<form action="Update23" method="post" name="form">
	<input type="hidden" name="one" value=<%=oo%> ></input>      
	<input type="hidden" name="two" value=<%=ooo%> ></input>
	<input type="hidden" name="three" value=<%=oooo%> ></input>
	<input type="hidden" name="four"></input>
	<input type="hidden" name="five"></input>
	<input type="hidden" name="six"></input>
	<input type="hidden" name="seven"></input>
	<input type="hidden" name="eight"></input>
 	<input type="submit" class="input01"name="submit" value="三分"></input>
	</form>

 	<form action="Update32" method="post" name="form">
	<input type="hidden" name="one" value=<%=oo%> ></input>      
	<input type="hidden" name="two" value=<%=ooo%> ></input>
	<input type="hidden" name="three" value=<%=oooo%> ></input>
	<input type="hidden" name="four"></input>
	<input type="hidden" name="five"></input>
	<input type="hidden" name="six"></input>
	<input type="hidden" name="seven"></input>
	<input type="hidden" name="eight"></input>
	<input type="submit" class="input01"name="submit" value="犯规"></input>
	</form>
	</div>
</div>
<div id="Footer">
	
	<form action="Updateresult" method="post" name="form">
	<input type="hidden" name="rone" value=<%=ooo%> ></input>
	<p>主场胜负：
            <input type="radio" name="rtest" value="1" checked="">胜</input>
            <input type="radio" name="rtest" value="0">负</input>  
	<input type="submit"class="input03" name="submit" value="确定"></input>
	</p>
	</form>
	
	<form action="Updateresult" method="post" name="form">
	<input type="hidden" name="rone" value=<%=oooo%> ></input>
	<p>客场胜负：
            <input type="radio" name="rtest" value="1" checked="">胜</input>
            <input type="radio" name="rtest" value="0">负</input>
	<input type="submit"class="input03" name="submit" value="确定"></input>
	</p>
	</form>
	<form action="Update4" method="post" name="form">
	<input type="hidden" name="one" value=<%=oo%> />    
	<p>主场总分：<input type="text" name="four" size ="15"/></p>
	<p>客场总分：<input type="text" name="five" size ="15"/></p>
	<p><input type="submit" class="input02" name="submit" value="比赛结束" /></p>
	</form>
</div>
</body>
</html>
