<%@ page language="java" import="java.util.*,po.*,action.*" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>Table 排序</title>
<script src="CJL.0.1.min.js"></script>
<script type="text/javascript">
var TableOrder = function(table, options) {
	this._checked = [];//存放checkbox和radio集合
	
	var tBody = $$(table).tBodies[0];
	this._tBody = tBody;//tbody对象
	this._rows = $$A.map(tBody.rows, function(o){ return o; });//行集合
	
	this._setOptions(options);
}
TableOrder.prototype = {
  _repair: $$B.ie6 || $$B.ie7,//在ie6/7才需要修复bug
  //设置默认属性
  _setOptions: function(options) {
    this.options = {//默认值
		index:		0,//td索引
		property:	"innerHTML",//获取数据的属性 
		type:		"string",//比较的数据类型
		desc:		true,//是否按降序
		compare:	null,//自定义排序函数
		value:		null,//自定义取值函数
		repair:		this._repair,//是否解决checkbox和radio状态恢复bug
		onBegin:	function(){},//排序前执行
		onEnd:		function(){}//排序后执行
    };
    $$.extend(this.options, options || {});
  },
  //排序并显示
  sort: function() {
	//没有排序对象返回
	if(!arguments.length){ return false };
	var orders = Array.prototype.slice.call(arguments);
	//执行附加函数
	orders[0].onBegin();
	//排序
	this._rows.sort($$F.bind( this._compare, this, orders, 0 ));
	//获取集合
	var repair = this._repair && $$A.some(orders, function(o){ return o.repair; });
	repair && this._getChecked();
	//显示表格
	var frag = document.createDocumentFragment();
	$$A.forEach(this._rows, function(o){ frag.appendChild(o); });
	this._tBody.appendChild(frag);
	//恢复状态
	repair && this._setChecked();
	//执行附加函数
	orders[0].onEnd();
  },
  //比较函数
  _compare: function(orders, i, tr1, tr2) {
	var od = orders[i], value1 = this._value(od, tr1), value2 = this._value(od, tr2)
		,result = od.compare ? od.compare(value1, value2) ://使用自定义排序函数
			typeof value2 == "string" ? value1.localeCompare(value2) : (value1 - value2);
	//如果result是0(值相同)同时有下一个排序对象的话继续比较否则根据desc修正结果并返回
	return !result && od[++i] ? this._compare(orders, i, tr1, tr2) : (od.desc ? -1 : 1) * result;
  },
  //获取比较值
  _value: function(order, tr) {
	var td = tr.cells[order.index], att = order.property
		,data = order.value ? order.value(td) ://使用自定义取值函数
			att in td ? td[att] : td.getAttribute(att);
	//数据转换
	switch (order.type.toLowerCase()) {
		case "int":
			return parseInt(data, 10) || 0;
		case "float":
			return parseFloat(data, 10) || 0;
		case "date":
			return Date.parse(data) || 0;
		case "bool":
			return data === true || String(data).toLowerCase() == "true" ? 1 : 0;
		case "string":
		default:
			return data.toString() || "";
	}
  },
  //创建并返回一个排序对象
  creat: function(options) {
	return $$.extend($$.extend({}, this.options), options || {});
  },
  //获取要修正的checkbox和radio集合
  _getChecked: function() {
	this._checked = $$A.filter(this._tBody.getElementsByTagName("input"), function(o){
		return (($$B.ie6 && o.type == "checkbox") || o.type == "radio") &&
			o.checked != o.defaultChecked;
	});
  },
  //设置checkbox和radio集合的checked
  _setChecked: function() {
	$$A.forEach(this._checked, function(o){ o.checked = !o.defaultChecked; });
  }
}
</script>
</head>
<body>
<style type="text/css">
.odTable {width:500px;border:1px solid #ebebeb;line-height:20px;font-size:12px;background:#FFF;}
.odTable thead {background-color:#ebebeb;}
.odTable span {color:#333;padding-right:15px;cursor:pointer;}
.odTable .desc, .odTable .asc {background:url(http://images.cnblogs.com/cnblogs_com/cloudgamer/169629/r_2.jpg) right center no-repeat;}
.odTable .desc {background-image:url(http://images.cnblogs.com/cnblogs_com/cloudgamer/169629/r_1.jpg);}
</style>
<table border="0" cellspacing="0" cellpadding="5" class="odTable" id="idTable">
	<thead>
		<tr>
			<td align="center"><span id="idNum">ID</span></td>
			<td>&nbsp;<span id="idTitle">名称</span> / <span id="idExt">类型</span></td>
			<td width="100" align="center"><span id="idAddtime">上传时间</span></td>
			<td width="50" align="center"><span id="idSize">大小</span></td>
			<td width="30" align="center"><span id="idCheckbox">Ｃ</span></td>
			<td width="30" align="center"><span id="idRadio">Ｒ</span></td>
		</tr>
	</thead>
	<tbody>
		<tr>
			<td align="center">1</td>
			<td _ext="htm">new.htm</td>
			<td align="center">2008/9/12</td>
			<td align="right" _order="433244">423.09 K</td>
			<td align="center"><input type="checkbox"/></td>
			<td align="center"><input name="c" type="radio"/></td>
		</tr>
		<tr>
			<td align="center">2</td>
			<td _ext="js">Scroller.js</td>
			<td align="center">2008/9/23</td>
			<td align="right" _order="2560">2.5 K</td>
			<td align="center"><input type="checkbox"/></td>
			<td align="center"><input name="c" type="radio"/></td>
		</tr>
		<tr>
			<td align="center">3</td>
			<td _ext="js">AlertBox.js</td>
			<td align="center">2008/9/23</td>
			<td align="right" _order="3563">3.48 K</td>
			<td align="center"><input type="checkbox"/></td>
			<td align="center"><input name="c" type="radio"/></td>
		</tr>
		<tr>
			<td align="center">4</td>
			<td _ext="xml">1.xml</td>
			<td align="center">2008/10/4</td>
			<td align="right" _order="11397">11.13 K</td>
			<td align="center"><input type="checkbox"/></td>
			<td align="center"><input name="c" type="radio"/></td>
		</tr>
		<tr>
			<td align="center">5</td>
			<td _ext="xml">4.xml</td>
			<td align="center">2008/10/4</td>
			<td align="right" _order="108">108 b</td>
			<td align="center"><input type="checkbox"/></td>
			<td align="center"><input name="c" type="radio"/></td>
		</tr>
		<tr>
			<td align="center">6</td>
			<td _ext="htm">news.htm</td>
			<td align="center">2008/10/4</td>
			<td align="right" _order="14074">13.74 K</td>
			<td align="center"><input type="checkbox"/></td>
			<td align="center"><input name="c" type="radio"/></td>
		</tr>
		<tr>
			<td align="center">7</td>
			<td _ext="js">function.js</td>
			<td align="center">2008/10/4</td>
			<td align="right" _order="2844">2.78 K</td>
			<td align="center"><input type="checkbox"/></td>
			<td align="center"><input name="c" type="radio"/></td>
		</tr>
		<tr>
			<td align="center">8</td>
			<td _ext="mp3">神秘园 - Nocturne.mp3</td>
			<td align="center">2008/9/20</td>
			<td align="right" _order="3111293">2.97 M</td>
			<td align="center"><input type="checkbox"/></td>
			<td align="center"><input name="c" type="radio"/></td>
		</tr>
		<tr>
			<td align="center">9</td>
			<td _ext="doc">详细功略+剧情流程（一）.doc</td>
			<td align="center">2009/2/2</td>
			<td align="right" _order="63488">62 K</td>
			<td align="center"><input type="checkbox"/></td>
			<td align="center"><input name="c" type="radio"/></td>
		</tr>
		<tr>
			<td align="center">10</td>
			<td _ext="doc">详细功略+剧情流程（二）.doc</td>
			<td align="center">2009/2/2</td>
			<td align="right" _order="164352">160.5 K</td>
			<td align="center"><input type="checkbox"/></td>
			<td align="center"><input name="c" type="radio"/></td>
		</tr>
		<tr>
			<td align="center">11</td>
			<td _ext="txt">禁止文件预览功能.txt</td>
			<td align="center">2008/8/7</td>
			<td align="right" _order="860">860 b</td>
			<td align="center"><input type="checkbox"/></td>
			<td align="center"><input name="c" type="radio"/></td>
		</tr>
		<tr>
			<td align="center">12</td>
			<td _ext="txt">超级无敌精彩的效果集合.txt</td>
			<td align="center">2009/2/2</td>
			<td align="right" _order="351">351 b</td>
			<td align="center"><input type="checkbox"/></td>
			<td align="center"><input name="c" type="radio"/></td>
		</tr>
	</tbody>
</table>
<br />
有中文的先排前面，再按时间倒序，ID倒序排序：
<input name="" type="button" value="Sort" id="idBtn" />
<script type="text/javascript">
var to = new TableOrder("idTable"), odID = to.creat({ type: "int", desc: false }), arrOrder = [];

function ClearCss(){ $$A.forEach(arrOrder, function(o){ o.className = ""; }); }

function SetCheck(td){ return td.getElementsByTagName("input")[0].checked; }

$$A.forEach([
	["idNum", { type: "int" }],
	["idTitle", { index: 1 }],
	["idExt", { index: 1, property: "_ext" }],
	["idAddtime", { index: 2, type: "date" }],
	["idSize", { index: 3, property: "_order", type: "int" }],
	["idCheckbox", { index: 4, type: "bool", value: SetCheck }],
	["idRadio", { index: 5, type: "bool", value: SetCheck }]
], function (arr){
	var o = $$(arr[0]), order = to.creat(arr[1]);
	order.onBegin = function(){ ClearCss(); odID.desc = this.desc; }
	order.onEnd = function(){
		o.className = this.desc ? "desc" : "asc";//设置样式
		this.desc = !this.desc;//取反排序
	}
	o.onclick = function(){ to.sort(order, odID); }
	arrOrder.push(o);//记录排序项目（这里主要用来设置样式）
});

$$("idNum").onclick();

//////////////////////////////////////////////////////////////////////

var od1 = to.creat({ index: 1, onEnd: ClearCss,
		compare: function(value1, value2) {
			var re = /[\u4E00-\u9FA5]/, v1 = re.test(value1), v2 = re.test(value2);
			return v1 == v2 ? 0 : (v1 ? 1 : -1);
		}
	})
	,od2 = to.creat({ index: 2, type: "date" }) ,od3 = to.creat({ type: "int" });

$$("idBtn").onclick = function(){ to.sort(od1, od2, od3); }
</script>
</body>
</html>
