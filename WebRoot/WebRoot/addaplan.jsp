<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <link href="file/css/test3.css" rel='stylesheet' type='text/css' />
 </head>
  <body> 
  <div id="Nav">战区信息</div>
  <div id="Banner">
      <td width="900">
 <form  name="form" method="post" action='Addaplan'>
	<br>A组</br>
        <p><span >主场队伍：</span>

  <input type="text" name="one" />

        <p><span >客场队伍：</span>

  <input type="text" name="two" />

          </p>
        <p><span >比赛时间：</span>

  <input type="text" name="three"  />

          </p>
        <p><span >比赛地点：</span>

  <input type="text" name="four" />
    <p>
       <input name="submit" type="submit"  value="确定">&nbsp;&nbsp;&nbsp;
       <input name="reset" type="reset"   value="重置">
       </p>
      </form></td>
    </tr>
  </table>
  </div>
  <div id="Footer">
  
  <p><a href="test0.jsp">返回主页</a></p>
  </div>
  </body>
</html>

