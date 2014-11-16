<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  <link href="file/css/test1.css" rel='stylesheet' type='text/css' />
    <base href="<%=basePath%>">

 <!--
 <link rel="stylesheet" type="text/css" href="styles.css">
 -->

  </head>
  
    <body>
    <div id="Nav"></div>
    <div id="Banner" align="center"><font size="6" color="">精彩瞬间</font></div>
	<div id="Content">
		<div id="ContentL"></div>
		<div id="ContentC">
  <%!int k=4 ;%>

  <form>
  <table align='center' width="750" height='480' cellspacing="0" cellpadding="0" >
    <tr align='center'>
     <td>
      <div id='picName' style='display:none'>       
      </div>     
    </td>
   </tr>  
   <tr align='center' >
     <td height='480'>
      <img src="" id="turn" width="750" height='480' border='1' style="filter:revealTrans(duration=1); margin：0em 0em 0em 0em;">   
    </td>
   </tr>  
   <tr align='center'>
     <td>
     <img src='images/9.png' onclick='lastM();' width='40' height='40' border='1' alt="上一张"> 
      <img src='images/11.png' id='psId' onclick='stopM();' width='40' height='40' border='1' alt="暂停">       
      <img src='images/1.png' onclick='nextM();'width='40' height='40' border='1' alt="下一张">   
    </td>
   </tr>        
  </table>
  </form>
<script type="text/javascript"> 
 var a_url=new Array(4);
 var a_name=new Array(4);
 <%ArrayList list=new ArrayList();
  list.add("images/20141018171211.jpg");
  list.add("images/20141018171231.jpg");
  list.add("images/Q20141025161837.jpg");
  list.add("images/QQ20141025161907.jpg");
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
 var ps_obj=document.getElementById("psId");
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
  function stopM()
 {  
  if(tag)
  {//想要停止播放
  tag=false;
  //按钮切换到播放按钮
  ps_obj.src='images/12.png';
  ps_obj.width='40';
  ps_obj.height='40';
  ps_obj.alt='播放';
  ps_obj.border='1';
  }
  else
  {//想要开始播放
  tag=true;  
  //按钮切换到停止按钮
  ps_obj.src='images/11.png';
  ps_obj.width='40';
  ps_obj.height='40';
  ps_obj.alt='停止';
  ps_obj.border='1';
  ps_obj.onclick=stopM;
  
  setTimeout("change()",time);
  }
 }
  
 
 //上一张
 function lastM()
 {
  if(current!=1)
  {
   current-=1;   
  }
  else
  {
   current=total;   
  }
  name_obj.innerText=a_name[current-1];
  pic_obj.src=a_url[current-1];
 }
 //下一张
 function nextM()
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
 }
</script>
</div>
<div id="ContentR"></div>
</div>
  </body>
</html>