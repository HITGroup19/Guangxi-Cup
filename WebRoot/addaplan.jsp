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
	<label for="name">场次号：</label>
  <input type="text" name="one" >  
  
        <p><span >主场队伍：</span>
        <select name="two">
         <option value="硬件实验室">硬件实验室</option>
		<option value="云服务与企业计算实验室">云服务与企业计算实验室</option>
		<option value="软件实验室">软件实验室</option>
		<option value="自然语言处理">自然语言处理</option>
		
</select>

        <p><span >客场队伍：</span>

        <select name="three">
         <option value="硬件实验室">硬件实验室</option>
		<option value="云服务与企业计算实验室">云服务与企业计算实验室</option>
		<option value="软件实验室">软件实验室</option>
		<option value="自然语言处理">自然语言处理</option>
		
</select>

          </p>
        <p><span >比赛时间：</span>

  <input type="text" name="four"  />

          </p>
        <p><span >比赛地点：</span>

  <input type="text" name="five" />
    <p>
       <input name="submit" type="submit"  value="确定">&nbsp;&nbsp;&nbsp;
       <input name="reset" type="reset"   value="重置">
       </p>
      </form></td>
    </tr>
  </table>
  </div>
  <div id="Footer">
  
  <p><a href="queryaplan.jsp">返回上一层</a></p>
  </div>
  </body>
</html>

