<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, com.wt.db.*, java.util.*, com.wt.beans.* ,com.wt.dateformt.* ,com.wt.partstring.*"%>

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
  <td width="15%" height="30"><span class="STYLE1">&nbsp;&nbsp;
      <input type="submit" name="Submit" value="用户登录" onclick="return checkdata()" />
  </span></td>
  <td width="33%"><span class="STYLE1"><a href="register.jsp">&nbsp;注册新用户</a><span class="STYLE7">&nbsp;|</span>&nbsp; <a href="alertUser.jsp">修改密码</a></span></td>
  <td width="26%"><div align="right" class="STYLE1">当前用户：<%= username %>&nbsp;&nbsp;&nbsp;&nbsp;	</div></td>
  </table>
</form>

<table width="95%" height="70%" align="center" style="border: 1px solid #C6B5AD;" bgcolor="#F4EFEB">
  <tr>
    <td height="421"><table width="96%" height="95%" border="0" align="center">
      <tr>
        <td width="25%">
        <font size=2.5px>
       <%
       		DB db = new DB();
        	String sql=null;
        	Connection conn = DB.getConn();
       		
        	sql = "select * from users where point = (select max(point) from users)";
       		Statement stmt = db.createStmt(conn);
       		ResultSet rs = db.executeQuery(stmt,sql);
       		rs.next();
       		Users user = new Users();
       		user.initFromRs(rs);
       		out.print("<img src=images/blogstar.gif width=150 height=150><br><br>");
       	
       		out.print("博客名称："+ user.getBlogtitle() + "<br>");
       		out.print("博主："+user.getUsername()+"<br>");
       		
       		String sex="男";
       		if(user.getSex()==0)
       			sex="男";
       		else if(user.getSex()==1)
       			sex="女";
       		else
       			sex="保密";
       		
      		out.print("性别："+ sex + "<br>");
      		out.print("年龄："+ user.getAge() + "<br>");
      		out.print("电子邮件：<a href=mailto:"+user.getEmail()+">" + user.getEmail() + "</a><br>");
      		out.print("博客点击（pv）：<font color=red>"+user.getPoint()+"次</font><br><br>");
      		out.print("<center><a href=article.jsp?username="+user.getUsername()+"><u>点击访问该用户的博客！</u></a></center>");
       		
       %>
       </font>       </td>
        <td width="5%">&nbsp;</td>
        <td width="40%"><table width="100%" height="100%" border="0">
          <tr>
            <td>
					
  <font size=2.8px>
        <%
        Statement Tstmt = DB.createStmt(conn);
        sql = "select * from articles where isleaf=0 order by pdate desc limit 0,20";
        ResultSet Trs = DB.executeQuery(Tstmt, sql);
        
        List<Articles> articles = new ArrayList<Articles>();
        
        while(Trs.next()) {
        	Articles a = new Articles();
        	a.initFromRs(Trs);
        	articles.add(a);
        }
        
        db.close(stmt);
        db.close(rs);
        db.close(Tstmt);
        db.close(Trs);
		
        out.print("<img src=images/newtop.gif><br><br>");
        
        for(Iterator<Articles> it = articles.iterator(); it.hasNext(); ) {
        	Articles a = it.next();
        	
        	String username1=null;
        	sql= "select username from users where id='"+a.getUid()+"'";
        	Statement Ustmt = db.createStmt(conn);
        	ResultSet Urs = db.executeQuery(Ustmt,sql);
        	Urs.next();
        	username1 = Urs.getString(1);
        	db.close(Urs);
        	db.close(Ustmt);
        	
        	DateFormat df=new DateFormat(a.getPdate());
        	PartString ps=new PartString(a.getTitle(),0,20);
        	out.print("<a href=articleCont.jsp?username=" + username1 + "&rootid="
        			  + a.getRootid() + "><u><li>"+ps.getPartString()+"</u></a> . . .</li><font color=#868686>（"+df.getDateFormat()+"）</font><br>");
        }
        
        %>		
        </font>
			
			</td>
          </tr>
          <tr>
            <td height="100%">&nbsp;</td>
          </tr>
        </table></td>
        <td width="3%"> </td>
        <td width="27%"><table width="100%" height="100%" border="0">
          <tr>
            <td>
            <font size=2.5px>
			<%
       			out.print("<img src=images/pvtop10.gif><br><br>");
				Statement Bstmt = DB.createStmt(conn);
	       	    sql = "select * from users order by point desc limit 0,20";
        		ResultSet Brs = DB.executeQuery(Bstmt,sql);
        		
        		List<Users> users = new ArrayList<Users>();
        		
        		while(Brs.next()){
        			Users u = new Users();
        			u.initFromRs(Brs);
        			users.add(u);
        		}
        		
                for(Iterator<Users> it = users.iterator(); it.hasNext(); ) {
                	Users u = it.next();
                	out.print(">>&nbsp;<a href=article.jsp?username="+u.getUsername()
                			+"><font color=#5C5C5C>"+u.getBlogtitle()+"</font></a>&nbsp;---&nbsp;&nbsp;点击数：<font color=red>"
                			+u.getPoint()+"</font><br>");
                }
        	%> 
        	</font>
			</td>
          </tr>
          <tr>
            <td height="100%">&nbsp;</td>
          </tr>
        </table></td>
      </tr>
      <tr>
        <td height="100%">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
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
  Copyright © 2017 <a href="hhttp://www.zafu.edu.cn/" target="_blank" title="浙江农林大学">浙江农林大学</a> Corporation, All Rights Reserved </span><span class="STYLE5"><br />
      </span>
      <div class="STYLE1 STYLE5">浙江农林大学版权所有</div>
</div>