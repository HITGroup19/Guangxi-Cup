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
  <div id="Nav">队伍详细信息</div>
  <div id="Banner">
      <td width="900"><form  name="form" method="post" action='addactor'>

        <p><span >年          级：</span>

  <input type="text" name="one" />

        <p><span >队伍名：</span>

  <input type="text" name="two" />

          </p>
        <p><span >小前锋：</span>

  <input type="text" name="three"  />

          </p>
        <p><span >大前锋：</span>

  <input type="text" name="four" />

          </p>
        <p><span >中锋：</span>
<label>
  <input type="text" name="five"  />
</label>
          </p>
        <p><span >组织后卫：</span>
<label>
  <input type="text" name="six"  />
</label>
          </p>
        <p><span >得分后卫：</span>
<label>
  <input type="text" name="seven"  />
</label>
</p>
        <p><span >一号替补：</span>

  <input type="text" name="eight"  />

</p>
        <p><span >二号替补：</span>

  <input type="text" name="nine"  />

</p>
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

