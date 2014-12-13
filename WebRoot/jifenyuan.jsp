<%@ page language="java" import="java.util.*,po.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" lang="zh-CN">

<head>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<title>Form demo</title>
<link rel="stylesheet" href="file/css/tenglu.css" type="text/css">

</head>

<body>
<div id="top"></div>
<div id="formwrapper">

  <form action="Jifen" method="post" name="apLogin" id="apLogin">

    <fieldset>

    <legend>记分员登录</legend>

    <div>

      <label for="Name">用户名</label>

      <input type="text" name="username" id="username" size="18" maxlength="30" ></input>

      <br>

    </div>

    <div>

      <label for="password">密码</label>

      <input type="password" name="password" id="password" size="18" maxlength="30" ></input>

      <br/>

    </div>

    <div class="cookiechk">

      <input name="submit" type="submit" value="登录" ></input>

    </div>
    </fieldset>

  </form>

</body>

</html>