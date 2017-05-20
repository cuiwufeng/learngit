<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, com.wt.db.*, java.util.*, com.wt.beans.*, com.wt.dateformt.*"%>

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
function checkArticleText(){
if(form2.title.value==""){
	alert("评论标题不许为空！");
	form2.title.focus();
	return false;
}
if(form2.cont.value==""){
	alert("评论内容不许为空！");
	form2.cont.focus();
	return false;
}
}
</script>

<!-- 进行管理员登录验证 -->
<%
boolean logined = false;
String adminLogined = (String)session.getAttribute("username");
String usernames = request.getParameter("username");

if(adminLogined != null && !adminLogined.trim().equals("")) {
	logined = true;
} 
%>
<!-- 创建javabean的user对象，并将结果集保存到javabean中 -->
<%
Users user=new Users(); //创建javabean对象
Connection conn = DB.getConn(); //建立与mysql数据库的连接

String sql="select * from users where username = '"+usernames+"'";
Statement stmtCount = DB.createStmt(conn);
ResultSet rsCount = DB.executeQuery(stmtCount,sql);
int uid=0,flag=0;
if(rsCount.next()){
	flag=1;
	//将结果集保存到javabean中
	user.initFromRs(rsCount);
}
DB.close(rsCount);
DB.close(stmtCount);
%>

<style type="text/css">
<!--
.STYLE5 {color: #555555}
.STYLE7 {color: #CCCCCC}
.STYLE10 {
	font-family: "隶书";
	color: #3E2D23;
	font-size: large;
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
          <a href="JavaScript: window.external.addFavorite('<%=basePath%>','博客');" 
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
    <td height="421"><table width="100%" height="100%" border="0">
      <tr>
        <td width="20%"><table width="100%" height="100%" border="0">
          <tr>
            <td>

<!-- 用户信息模块 -->
<%
if(flag==1)
{
	String sex="男";
	if(user.getSex()==0)
		sex="男";
	else if(user.getSex()==1)
		sex="女";
	else
		sex="不公开";
		
	out.print("<font size='2px'>");
	out.print("<img src='upload/" + user.getUsername() +".jpg' width='150' height='150' ><br><br>");
	out.print("博客名称："+ user.getBlogtitle() + "<br>");
	out.print("姓名："+ user.getTruename() + "<br>");
	out.print("性别："+ sex + "<br>");
	out.print("年龄："+ user.getAge() +"<br>");
	out.print("电子邮件：<a href=mailto:"+user.getEmail()+">" + user.getEmail() + "</a><br><br>");
	out.print("<font color=blue>点击次数：</font><b><font color=red>"+ user.getPoint() + "</font></b>");
	out.print("</font>");
}
%>
		</td>
          </tr>
          <tr>
            <td height="100%">&nbsp;</td>
          </tr>
        </table></td>
        <td width="74%">
          <table width="99%" height="100%" border="0">
            <tr>
              <td>
			  
<%
int aid=0; //定义变量用来存取文章的id

if(flag==0){
	out.print("<br><br><font size=2.5px color=red>Sorry! 暂无此用户开通简易博客！ 请核实您输入的用户名是否正确。<br><br>如果您要注册成为简易博客用户，请点击<a href=register.jsp>这里</a>进行用户注册。</font>");	
} else {
	String rootid=request.getParameter("rootid");
%>
<font size="2.5px">

<!-- 搜索文章模块 -->
<form name="form3" action="search.jsp" method="post">
<img src="images/publish.gif">
<a href="publish.jsp?username=<%=user.getUsername() %>&u=articleCont.jsp?username=<%=user.getUsername() %>%26rootid=<%=rootid %>">发表新博文</a>
&nbsp;&nbsp;
博文搜索：<input type="text" name="searchtext" size=8  />
<select name="search">
<option value="0">按关键字</option>
<option value="1">按日期</option>
<option value="2">按用户名</option>
</select>
<input type="hidden" name="username" value="<%=user.getUsername() %>" />
<input type="submit" value="搜索">
</form>
<!-- End of search -->

<% 
List<Articles> articles = new ArrayList<Articles>();
sql = "select * from articles where rootid = " + rootid;
Statement stmt = DB.createStmt(conn);
ResultSet rs = DB.executeQuery(stmt, sql); 
try {
		while(rs.next()){
		Articles a = new Articles();
		a.initFromRs(rs);
		articles.add(a);
		}
		
} catch (SQLException e) {
		e.printStackTrace();
} finally {	
	DB.close(rs);
	DB.close(stmt);
	DB.close(conn);
}

for(Iterator<Articles> it = articles.iterator(); it.hasNext(); ) {
	Articles a = it.next();
	if(a.getIsleaf()==0){
		
		aid=a.getId();//将文章的id存取到变量aid中

	 	if(logined){ 
 		out.print("<a href=delete?isleaf="+a.getIsleaf()+"&id="+a.getId()+"&rootid="
				   +a.getRootid()+"&username="+user.getUsername()+">删除博文</a>");
		out.print("&nbsp;&nbsp;&nbsp;");
		out.print("<a href=modify.jsp?username="+user.getUsername()+"&id="+a.getId()
					+"&u=articleCont.jsp?username="+user.getUsername()+"%26rootid="
					+a.getRootid()+">修改博文</a>");
		out.print("<br>");
	 	}
		
		out.print("<b><font color=#4C151A>"+ a.getTitle()+"</font></b><br><br>");
		out.print(a.getCont()+"<br><br><br>");
		
 		DateFormat df=new DateFormat(a.getPdate()); //调用javabean进行日期格式转换
		
		out.print("<div align='right'><font color=#868686>作者："+user.getUsername()+"&nbsp;&nbsp;|&nbsp;&nbsp;点击次数："+a.getPoint()
 				  + "&nbsp;&nbsp;|&nbsp;&nbsp;发布时间：" + df.getDateFormat() +"</font></div><br><br><br>");
		
	} else {
		
		DateFormat df=new DateFormat(a.getPdate()); //调用javabean进行日期格式转换
		out.print("评论："+a.getTitle()+"&nbsp;&nbsp;&nbsp;<font color=#595959>（"+ df.getDateFormat() +")</font><br>");
		
		if(logined)
			out.print(a.getCont()+"&nbsp;&nbsp;&nbsp;<a href=delete?isleaf="+a.getIsleaf()
					 +"&id="+a.getId()+"&rootid="+a.getRootid()+"&username="+user.getUsername()
					 +">删除</a><br>");
		else
			out.print(a.getCont());
		out.print("<hr><br><br>");
	}
}
%>

<!-- 调用计数器页面 -->
<script src="count.jsp?uid=<%=user.getId() %>&aid=<%=aid %>" type="text/javascript"></script>

<form action="reply" name="form2" method="post">
<br><b>请在下面发表您的评论：</b><br>
<div>
<table width="409">
<tr>
<td width="75">
<font size="2.5px"><em>评论标题：</em></font></td>
<td width="239">
<input name="title" value="给你评论一下！" />
</td>
<td width="79">
<input type="submit" value="发表评论" onclick="return checkArticleText()">
<input type="hidden" name="rootid" value="<%=rootid %>" >
<input type="hidden" name="uid" value="<%=user.getId() %>" >
<input type="hidden" name="username" value="<%=user.getUsername() %>" >
</td>
</tr>
</table>
<textarea name="cont" textarea rows="3" cols="50"></textarea>
</div>
</form>
</font>
<% } %></td>
      </tr>
            <tr>
              <td height="100%">&nbsp;</td>
            </tr>
          </table>	
          </td>
      </tr>
    </table></td>
  </tr>
</table>
<br />
<div align="center">
      <span class="STYLE1 STYLE5"><a href="about.jsp">
      <u><br />
      关于博客</u></a>&nbsp;&nbsp;&nbsp;<a href="mailto:595706705@qq.com"><u>联系作者</u></a>&nbsp;&nbsp;&nbsp;<a href="register.jsp"><u>会员注册</u></a><a href="register.jsp"></a> &nbsp;&nbsp;
	  
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
  Copyright © 2017 <a href="http://www.xulongkang.wanye68.com" target="_blank" title="浙江农林大学">浙江农林大学</a> Corporation, All Rights Reserved </span><span class="STYLE5"><br />
      </span>
      <div class="STYLE1 STYLE5">浙江农林大学 版权所有</div>
</div>