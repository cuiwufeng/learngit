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

<script type="text/javascript">
  function changeImg() {
  	document.getElementById("disp").src="ShowCertPic";
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
.STYLE12 {
	font-size: 14px;
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
    <td width="30%"><div align="center" class="STYLE10"> 欢迎光临 <br />
    博客</div></td>
    <td><p class="STYLE1">博客地址：<%= basePath %><br />
          <a href="JavaScript: window.external.addFavorite('<%=basePath%>','简易多用户博客');" 
          title='点击将本站加入收藏夹'><img src="images/addfavorite.gif" width="11" height="12" border="0" /> 加入收藏夹</a></p>    </td>
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

<table width="95%" height="70%" align="center" style="border: 1px solid #C6B5AD;" bgcolor="#F4EFEB">
  <tr>
    <td height="421"><br />
	<form action="validateImg" method="post" name="form2">
      <div align="center">
      <p><span class="STYLE12">请输入您要登录的用户名和密码！</span><br />
      </p>
      <table width="364" border="0">
        <tr>
          <td width="61"><span class="STYLE11">用户名：</span></td>
          <td width="351"><span class="STYLE11">
            <label>
              <input name="username" type="text" size="12" maxlength="12" />
              </label>
          </span></td>
        </tr>
        <tr>
          <td><span class="STYLE11">密&nbsp;&nbsp;&nbsp;&nbsp;码：</span></td>
          <td><span class="STYLE11">
            <label>
              <input name="password" type="password" size="12" maxlength="12" />
              </label>
          </span></td>
        </tr>
        <tr>
          <td><span class="STYLE11">验证码：</span></td>
          <td><span class="STYLE11">
            <label>
            <input name="certCode" type="text" id="certCode" size="4" maxlength="4" />
&nbsp;          </label>
            <img id="disp",name="disp" src="ShowCertPic"/> <a href="javascript:changeImg()">&nbsp;<span class="STYLE1">看不清，再换一张</span></a></span></td>
        </tr>
        <tr>
          <td><span class="STYLE11"></span></td>
          <td><span class="STYLE11"></span></td>
        </tr>
        <tr>
          <td><span class="STYLE11"></span></td>
          <td><span class="STYLE11">
            <label>
              <input type="submit" name="Submit2" value="用户登录" />
              &nbsp;
              <input type="reset" name="Submit3" value="重新填写" />
              </label>
          </span></td>
        </tr>
      </table>
      <br />
      <br />
      <br />
      <br />
      <br />
      <br />
      </div>
	</form>
	</td>
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
  Copyright © 2017 <a href="http://www.zafu.edu.cn" target="_blank" title"浙江农林大学">浙江农林大学</a> Corporation, All Rights Reserved </span><span class="STYLE5"><br />
      </span>
      <div class="STYLE1 STYLE5">浙江农林大学 版权所有</div>
</div>