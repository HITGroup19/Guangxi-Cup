<%@ page language="java" import="java.util.*,po.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
<head>
<title>获取HTML下拉菜单选定值对应的显示值，即value对应的text</title>
</head>
<body>
<script language="JavaScript" type="text/javascript">
//获取HTML下拉菜单选定值对应的显示值，即value对应的text
function getSelectText(selectId){
    if(null==selectId || selectId.length==0){
        alert('select下拉菜单的id不应为空，请返回检查！');
        return '';
    }
    var objSel = document.getElementByIdx(selectId);
    if(null == objSel){
        alert('id为' + selectId +'的下拉菜单不存在，请返回检查！');
        return '';
    }
    var selectVal = objSel.value;    //获取下拉菜单的当前选定值
   
    var ops = objSel.options;
    if(null==ops || ops.length==0){
        return '';
    }
    for(var i=0; i<ops.length; i++){
        if(selectVal == ops[i].value){
            return ops[i].text;    //返回当前选定值对应的显示值
        }
    }
    return '';
}
</script>
<form method=post action="">
<select name="sel1" id="sel1">
   <option value="1">选项A</option>
   <option value="2">选项B</option>
</select>
<input type="button" value="获取菜单显示值" onclick="alert(getSelectText('sel1'));">
</form>
</body>
</html>