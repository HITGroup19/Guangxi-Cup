<%@ page language="java" session ="true" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'jifen.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	 <link rel="stylesheet" href="file/css/style.css" type="text/css">

  </head>
  
  <body>
<form class="contact_form" action="Addrecord" method="post" name="contact_form">
 <ul>
   <li>
         <h2>比赛记录</h2>

    </li>
 <li>
     <label for="name">赛程号：</label>
  <input type="text" name="one" >  
  </li>
  </ul>
 <ul>
 <li>
    <label for="email">主场队伍：</label>
         <select name="two">
        <option value="计算机接口技术与接口系统国家重点专业实验室">计算机接口技术与接口系统国家重点专业实验室</option>
		<option value="模式识别研究中心">模式识别研究中心</option>
		<option value="航天软件工程研究中心">航天软件工程研究中心</option>
		<option value="社会计算与信息检索研究中心">社会计算与信息检索研究中心</option>
		<option value="信息对抗技术研究所">信息对抗技术研究所</option>
		<option value="智能接口与人机交互">智能接口与人机交互</option>
		<option value="语言技术研究中心">语言技术研究中心</option>
		<option value="计算机网络与信息安全技术">计算机网络与信息安全技术</option>
        <option value="容错与移动计算研究中心">容错与移动计算研究中心</option>
		<option value="海量数据计算研究中心">海量数据计算研究中心</option>
		<option value="生物信息学研究中心">生物信息学研究中心</option>
		<option value="多智能体机器人研究中心">多智能体机器人研究中心</option>
		<option value="机器人创新基地">机器人创新基地</option>
		<option value="国家计算机信息内容安全重点实验室">国家计算机信息内容安全重点实验室</option>
		<option value="哈工大语言语音教育部-微软重点实验室">哈工大语言语音教育部-微软重点实验室</option>
		<option value="计算机软件实验中心">计算机软件实验中心</option>
		<option value="计算机硬件实验中心">计算机硬件实验中心</option>
		<option value="信息安全教研室">信息安全教研室</option>
		<option value="生物信息技术教研室">生物信息技术教研室</option>
        <option value="容错与移动计算研究中心">容错与移动计算研究中心</option>
		<option value="计算机语言基础教研室">计算机语言基础教研室</option>
		<option value="计算机软件基础教研室">计算机软件基础教研室</option>
		<option value="计算机硬件基础教研室">计算机硬件基础教研室</option>
		<option value="计算机科学技术研究所">计算机科学技术研究所</option>
		<option value="感知计算研究中心">感知计算研究中心</option>
		<option value="哈工大机器人创新基地">哈工大机器人创新基地</option>
		<option value="计算机科学技术研究所">计算机科学技术研究所</option>	
</select>
</li>
</ul>
 <ul>
 <li> 
 <label for="website">客场队伍: </label>
         <select name="three">
        <option value="计算机接口技术与接口系统国家重点专业实验室">计算机接口技术与接口系统国家重点专业实验室</option>
		<option value="模式识别研究中心">模式识别研究中心</option>
		<option value="航天软件工程研究中心">航天软件工程研究中心</option>
		<option value="社会计算与信息检索研究中心">社会计算与信息检索研究中心</option>
		<option value="信息对抗技术研究所">信息对抗技术研究所</option>
		<option value="智能接口与人机交互">智能接口与人机交互</option>
		<option value="语言技术研究中心">语言技术研究中心</option>
		<option value="计算机网络与信息安全技术">计算机网络与信息安全技术</option>
        <option value="容错与移动计算研究中心">容错与移动计算研究中心</option>
		<option value="海量数据计算研究中心">海量数据计算研究中心</option>
		<option value="生物信息学研究中心">生物信息学研究中心</option>
		<option value="多智能体机器人研究中心">多智能体机器人研究中心</option>
		<option value="机器人创新基地">机器人创新基地</option>
		<option value="国家计算机信息内容安全重点实验室">国家计算机信息内容安全重点实验室</option>
		<option value="哈工大语言语音教育部-微软重点实验室">哈工大语言语音教育部-微软重点实验室</option>
		<option value="计算机软件实验中心">计算机软件实验中心</option>
		<option value="计算机硬件实验中心">计算机硬件实验中心</option>
		<option value="信息安全教研室">信息安全教研室</option>
		<option value="生物信息技术教研室">生物信息技术教研室</option>
        <option value="容错与移动计算研究中心">容错与移动计算研究中心</option>
		<option value="计算机语言基础教研室">计算机语言基础教研室</option>
		<option value="计算机软件基础教研室">计算机软件基础教研室</option>
		<option value="计算机硬件基础教研室">计算机硬件基础教研室</option>
		<option value="计算机科学技术研究所">计算机科学技术研究所</option>
		<option value="感知计算研究中心">感知计算研究中心</option>
		<option value="哈工大机器人创新基地">哈工大机器人创新基地</option>
		<option value="计算机科学技术研究所">计算机科学技术研究所</option>	
</select>
  </li>
  </ul>
<ul>
<li>
<input type="submit" name="submit" value="确定">
<input type="reset" name="reset" value="重置">
</li>
</ul>
</form>
</body>
</html>
