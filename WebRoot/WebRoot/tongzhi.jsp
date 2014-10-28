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
      background-image: url(201192011454256.jpg);    
      background-repeat: repeat-x;    
	 }    
 	</style>

  </head>
  
  <body>
    <br><font color = orange size = 5>本次光熙杯篮球赛有HIT联合xx公司联合赞助，冠军大奖由xx企业赞助的百万现金 </br>
    <br><font color = green size = 5>希望各队球员本着友谊第一，比赛第二精神</br>
    <br><font color = red size = 7>加油!!!</br>
    <body>
  <%!int k=4 ;%>

  <form>
  <table align='left' width="650" height='430' cellspacing="0" cellpadding="0" >
    <tr align='center'>
     <td>
      <div id='picName' style='display:none';>       
      </div>     
    </td>
   </tr>  
   <tr align='left' >
     <td height='430'>
      <img src="" id="turn" width="650" height='430' border='1' style="filter:revealTrans(duration=1); margin：0em 0em 0em 0em;">   
    </td>
   </tr>      
  </table>
  </form>
<script type="text/javascript"> 
 var a_url=new Array(4);
 var a_name=new Array(4);
 <%ArrayList list=new ArrayList();
  list.add("20141018171211.jpg");
  list.add("20141018171231.jpg");
  list.add("Q20141025161837.jpg");
  list.add("QQ20141025161907.jpg");
  %>
  <% //把ArrayList的信息存放到数组中--图片路径传输入口
  for(int i=0;i<k;i++)
   out.println("a_url["+i+"]='"+list.get(i)+"'");
  %> 
 
 //图片名
 a_name[0]='1';
 a_name[1]='2';
 a_name[2]='3';
 a_name[3]='4';
//全局变量组
 var tag=true;//是否循环播放标志
 var total=4;//总页数
 var current=1;//当前页数
 var time=2000;//轮换时间间隔,单位毫秒
 var pic_obj=document.getElementById("turn") ;//捕获轮换图片对象
 var name_obj=document.getElementById("picName") ;//捕获轮换名对象
 //初始化
  name_obj.innerText=a_name[current-1];
  pic_obj.src=a_url[current-1];
  setTimeout("change()",time);
 
 function change()
 {//图片循环
 if(tag)
   {
  if(current!=total)
  {
   current+=1;   
  }
  else
  {
   current=1;   
  }
  name_obj.innerText=a_name[current-1];
  pic_obj.src=a_url[current-1];  
  setTimeout("change()",time);//无限循环
   } 
 }
 
</script>
	 <p><font color = red size = 2><a href="Main.jsp">返回主页</a></p>
  </body>
</html>
