<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort

()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <meta charset="utf-8">
    <title>HTML5 Contact Form</title>
    <link rel="stylesheet" href="file/css/style.css" type="text/css">
</head>
<body>
 <% String xx = (String)session.getAttribute("hao0");
  %>
<form class="contact_form" action="Update" method="post" name="contact_form">
<ul>
    <li>
         <h2>球员报名</h2>

    </li>
    <li>
        <label for="name">参赛单位：</label>
         <select name="one">
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
        <li>
        <label for="name">队员姓名：</label>
         <input type="text" name="two" />
    </li>
</ul>

<ul>
<li>
    <label >号码：</label>
    <input type="text" name="four" />
</li>
</ul>
<ul>
<li>
    <label for="name">性别：</label>
    <input type="text" name="five" />
</li>
</ul>
<ul>
	<li>
    	<label for="website">身份: </label>
        <select name="six">
			<option value="领队">领队</option>
			<option value="教练">教练</option>
			<option value="球员">球员</option>
			<option value="志愿者">志愿者</option>
		</select>
	</li>
</ul>
<ul>
	<li>
    	<label for="name">学历: </label>
        <select name="seven">
			<option value="教师">教师</option>
			<option value="本科">本科</option>
			<option value="硕士">硕士</option>
			<option value="博士">博士</option>
		</select>
	</li>
</ul>
<ul>
	<li>
    <label for="email">学号或职工号：</label>
	<input type="hidden" name="eight" value=<%=xx%> >
	<%=xx%>
	</li>
</ul>
<ul>
	<li>
    <label for="name">联系方式：</label>
    <input type="text" name="nine" />
	</li>
</ul>
<ul>
<li>
    <label for="name">备注：</label>
    <input type="text" name="ten" />
</li>
</ul>
<ul>
<li>
    <button class="submit" type="submit">提交</button>
    <button class="reset" type="reset">重置</button>
</li>
</ul>
</form>
</body>
</html>