<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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
      background-image: url(t0179dba75371c7bdad.jpg);    
      background-repeat: repeat-x;    
	 }    
 	</style>
  </head>
  <body> 
  <table width="441" height="332" border="1" align="left">
    <tr>
      <td width="169" ><h3><span><strong>队伍详细信息</strong></span></h3><h3><strong>&nbsp;&nbsp;</strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br></h3></td>
      <td width="700"><form  name="form" method="post" action='addactor'>
        <p><span >队伍名</span>
<label>
  <input type="text" name="one" />
</label>
          </p>
        <p><span >小前锋：</span>
<label>
  <input type="text" name="two"  />
</label>
          </p>
        <p><span >大前锋：</span>
<label>
  <input type="text" name="three" />
</label>
          </p>
        <p><span >中锋：</span>
<label>
  <input type="text" name="four"  />
</label>
          </p>
        <p><span >组织后卫：</span>
<label>
  <input type="text" name="five"  />
</label>
          </p>
        <p><span >得分后卫：</span>
<label>
  <input type="text" name="six"  />
</label>
</p>
        <p><span >一号替补：</span>
<label>
  <input type="text" name="seven"  />
</label>
</p>
        <p><span >二号替补：</span>
<label>
  <input type="text" name="eight"  />
</label>
</p>
    <p>
       <input name="submit" type="submit"  value="确定">&nbsp;&nbsp;&nbsp;
       <input name="reset" type="reset"   value="重置">
       </p>
      </form></td>
    </tr>
  </table>
  <p><a href="Main.jsp">返回主页</a></p>
  </body>
</html>

