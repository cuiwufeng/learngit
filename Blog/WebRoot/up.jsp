<%@ page language="java" import="java.util.*" contentType="text/html;charset=UTF-8"
pageEncoding="UTF-8" %>
<%@ page import="java.io.*" %>
<%@ page import="com.oreilly.servlet.*" %>
<%@ page import="com.wt.blog.*" %>

<%

String FileName=null; 

try{

String saveDirectory=request.getRealPath("upload");
File file=new File(saveDirectory);
if(!file.exists()) file.mkdir();//判断目录是否存在，不存在则创建
int maxPostSize=2*1024*1024; //限制上传文件大小2M

MultipartRequest multi=new MultipartRequest(request,saveDirectory,maxPostSize,"UTF-8");

File UpFile = multi.getFile("file");
FileName=multi.getParameter("username");

FileRename fr=new FileRename(); //创建为文件名改名类的一个对象
File NewFile=new File(saveDirectory,fr.rename(FileName,UpFile));

UpFile.renameTo(NewFile); //重命名文件

response.sendRedirect("loginSuccess.jsp?url=index.jsp");
} catch(Exception e) {
//发生异常则跳回原来上传文件的页面
response.sendRedirect("upload.jsp?username="+FileName);
}
%>