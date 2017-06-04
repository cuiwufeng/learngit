<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<%
	String username;
	if(session.getAttribute("username")!=null&&!session.getAttribute("username").equals(""))
		username="<u><font color=red>"+session.getAttribute("username").toString()
				+"</font></u> <font color=#CCCCCC> | </font> <a href='logout.jsp'>退出</a>";
	else
		username="<font color=red>未登录</font>";	
 %>

<!-- 导入css文件，用于网页美化 -->
<link href="styles.css" rel="stylesheet" type="text/css">


<!-- javascript验证用户名或者密码是否为空 -->
<script>
function checkdata(){
if(form1.username.value==""){
	alert("用户名不能为空！请重新输入。");
	form1.username.focus();
	return false;
}
if(form1.password.value==""){
	alert("密码不能为空！请重新输入。");
	form1.password.focus();
	return false;
}
}
</script>


<style type="text/css">
<!--
.STYLE5 {color: #555555}
.STYLE7 {color: #CCCCCC}
.STYLE10 {
	font-family: "隶书";
	color: #3E2D23;
	font-size: large;
}
.STYLE11 {font-size: 13px}
.STYLE12 {color: #FF0000}
.STYLE13 {color: #0000FF}
.STYLE14 {
	font-size: 30px;
	color: #FF0000;
 
}
-->
</style>
<title>博客</title>

<div id=header>
  <table width="100%" border="0" cellspacing="0" >
    <tr>
      <td width="5%"><img src="images/logo.gif" width="98" height="30" /></td>
      <td width="35%" height="32"><span class="STYLE1"><a href="index.jsp"><span class="STYLE7">&nbsp;|</span>&nbsp;&nbsp;博客首页</a></span></td>
      <td width="60%"> <div align="right"><span class="STYLE1"><strong>→&nbsp;</strong><a href="login.jsp">用户登录</a><span class="STYLE7">&nbsp;&nbsp;|</span>&nbsp; <a href="register.jsp">注册新用户&nbsp;&nbsp;</a></span></div></td>
    </tr>
  </table>
</div>

<table width="100%" height="254" border="0">
  <tr>
    <td width="8%" height="250">&nbsp;</td>
    <td width="30%"><div align="center" class="STYLE10">欢迎光临 <br />
    博客</div></td>
    <td><p class="STYLE1">博客地址：<%= basePath %><br />
           </td>
  </tr>
</table>

<form action="loginUser" method="post" name="form1">
  <table width="95%" height="36" class="STYLE4" align="center">
  <tr>
  <td width="7%" height="30"><span class="STYLE1">&nbsp;用户名:</span></td>
  <td width="8%"><input name="username" type="text" class="STYLE1" id="username" size="9" maxlength="12"/></td>
  <td width="7%"><span class="STYLE1">&nbsp;&nbsp; 密 &nbsp;码:</span></td>
  <td width="8%"><input name="password" type="password" class="STYLE1" id="password" size="9" maxlength="12" /></td>
  <td width="11%"><span class="STYLE1">&nbsp;&nbsp;
      <input type="submit" name="Submit" value="用户登录" onclick="return checkdata()" />
  </span></td>
  <td width="33%"><span class="STYLE1"><a href="register.jsp">&nbsp;注册新用户</a><span class="STYLE7">&nbsp;|</span>&nbsp; <a href="alertUser.jsp">修改密码</a></span></td>
  <td width="26%"><div align="right" class="STYLE1">当前用户：<%= username %>&nbsp;&nbsp;&nbsp;&nbsp;	</div></td>
  </table>
</form>

<!-- 调用Ajax做用户是否存在的验证 -->
 <script type="text/javascript">
  var http_request = false;
  	function send_request(url){
	//开始初始化XMLHttpRequest 对象
		if(window.XMLHttpRequest) { //Mozilla 浏览器
			http_request = new XMLHttpRequest();
			if (http_request.overrideMimeType) {//设置MiME 类别
			http_request.overrideMimeType("text/xml");
			}
		}
		else if (window.ActiveXObject) { // IE 浏览器
			try {
			http_request = new ActiveXObject("Msxml2.XMLHTTP");
			} catch (e) {
			try {
			http_request = new ActiveXObject("Microsoft.XMLHTTP");
			} catch (e) {}
			}
		}		
		if (!http_request) { // 异常，创建对象实例失败
			window.alert("不能创建XMLHttpRequest 对象实例.");
			return false;
		}
		//processRequest为回调函数，负责处理服务器交互，并接受服务器数据，注意函数的书写不能有“（）”
		http_request.onreadystatechange = processRequest;
		//建立服务器端的连接,并设置是否异步才组操作
		http_request.open("get",url,true);
		//发送数据
		http_request.send(null);
  	}
  	//回调函数
  	function processRequest(){
  		if(http_request.readyState==4){// 判断对象状态
  			if(http_request.status==200){// 信息已经成功返回，开始处理信息
  			//接收服务器端发送的数据
  			//改变客户端页面的状态

  				if(http_request.responseText=="0"){
  					document.getElementById("disp").innerHTML="用户名存在！";	
  				}
  				else
  				{
  					document.getElementById("disp").innerHTML="";
  				}
  			}
  			else{//页面不正常
  				alert("您所请求的页面有异常。");
  			}
  		}
  	}
  	function checkUserName(username){
  		var url="RegServlet?username="+username;
  		send_request(url);
  	}
</script> 

<script type="text/javascript">
function checkRegister(){
	if(form2.username.value==""){
		form2.username.focus();
		return false;
	}
	if(form2.password.value==""){
		form2.password.focus();
		return false;
	}
	if(form2.confirmpassword.value==""){
		form2.confirmpassword.focus();
		return false;
	}
	if(form2.blogtitle.value==""){
		form2.blogtitle.focus();
		return false;
	}
	if(form2.password.value!=form2.confirmpassword.value){
		window.alert("密码和确认密码不可以相同！请重新输入。");
		form2.confirmpassword.focus();
		return false;
	}
	
	if(document.getElementById("disp").innerHTML!=""){
		window.alert("用户名重复！ 请重新输入。");
		form2.username.focus();
		return false;
	}
	
}
</script> 

<table width="95%" height="70%" align="center" style="border: 1px solid #C6B5AD;" bgcolor="#F4EFEB">
  <tr>
    <td height="421"><div align="center">
      <form action="RegisterUser" method="post" name="form2">
	   <p class="STYLE14">请输入您要注册的用户名信息：</p>
	    <table width="424" border="0">
        <tr>
          <td width="81"><span class="STYLE11">用户名：</span></td>
          <td width="333"><span class="STYLE11">
            <input name="username" type="text" id="username" onblur="checkUserName(document.form2.username.value)" size="12" maxlength="12">
            <span class="STYLE12">*</span>&nbsp;<span class="STYLE13" id="disp"></span></span></td>
        </tr>
        <tr>
          <td><span class="STYLE11">密码：</span></td>
          <td><span class="STYLE11">
            <input name="password" type="password" id="password" size="12" maxlength="12" />
            <span class="STYLE12">*</span></span></td>
        </tr>
        <tr>
          <td><span class="STYLE11">确认密码：</span></td>
          <td><span class="STYLE11">
            <input name="confirmpassword" type="password" size="12" maxlength="12" />
            <span class="STYLE12">*</span></span></td>
        </tr>
        <tr>
          <td><span class="STYLE11">博客名称：</span></td>
          <td><span class="STYLE11">
            <input name="blogtitle" type="text" size="20" maxlength="20" />
            <span class="STYLE12">*</span></span></td>
        </tr>
        <tr>
          <td><span class="STYLE11">真实姓名：</span></td>
          <td><input name="truename" type="text" size="10" maxlength="10" /></td>
        </tr>
        <tr>
          <td><span class="STYLE11">性别：</span></td>
          <td><span class="STYLE11">
            <select name="sex">
              <option value="0">男</option>
              <option value="1">女</option>
              <option value="2">未知</option>
            </select>
          </span></td>
        </tr>
        <tr>
          <td><span class="STYLE11">年龄：</span></td>
          <td><input name="age" type="text" size="3" maxlength="2" /></td>
        </tr>
        <tr>
          <td><span class="STYLE11">电子邮件：</span></td>
          <td><input name="email" type="text" size="30" maxlength="255" /></td>
        </tr>
        <tr>
          <td></td>
          <td></td>
        </tr>
        <tr>
          <td><span class="STYLE11"></span></td>
          <td><span class="STYLE11">
  <input name="submit" type="submit" onclick="return checkRegister()" value="注册用户" />
  &nbsp;&nbsp;
            <input name="reset" type="reset" value="重新填写" />
          </span></td>
        </tr>
      </table>
	  </form>
    </div></td>
  </tr>
</table>
<br />
<div align="center">
      <span class="STYLE1 STYLE5"><a href="about.jsp">
      <u><br />
      关于博客</u></a>&nbsp;&nbsp;&nbsp;<a href="mailto:1489897665@qq.com"><u>联系作者</u></a>&nbsp;&nbsp;&nbsp;<a href="register.jsp"><u>会员注册</u></a><a href="register.jsp"></a> &nbsp;&nbsp;
	  
	  <script>
var message="我们还很年轻，离不开您的批评和建议。"
var n=0;
if (document.all){
document.write('<font size="12px" color="EFEFEF">')
for (m=0;m<message.length;m++)
document.write('<span id="neonlight" style="font-size:12px">'+message.charAt(m)+'</span>')
document.write('</font>')
var tempref=document.all.neonlight
}
else
document.write(message)
function neon(){
if (n==0){
for (m=0;m<message.length;m++)
tempref[m].style.color="ffffff"
}
tempref[n].style.color="d50000"
if (n<tempref.length-1)
n++
else{
n=0
clearInterval(flashing)
setTimeout("beginneon()",2500)
return
}
}
function beginneon(){
if (document.all)
flashing=setInterval("neon()",30)
}
beginneon()
</script>
	  <br />
	  
	  <br />
  Copyright © 2017 <a href="http://www.zafu.edu.cn" target="_blank" title="浙江农林大学">浙江农林大学</a> Corporation, All Rights Reserved </span><span class="STYLE5"><br />
      </span>
      <div class="STYLE1 STYLE5">浙江农林大学 版权所有</div>
</div>