package com.wt.servlet;

import java.io.IOException;
import java.sql.Connection;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.wt.db.DB;

public class delete extends HttpServlet {

	public delete() {
		super();
	}

	@Override
	public void destroy() {
		super.destroy(); 

	}

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request,response);
	}

	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		try{
			int isleaf=Integer.parseInt(request.getParameter("isleaf"));
			int id=Integer.parseInt(request.getParameter("id"));
			int rootid=Integer.parseInt(request.getParameter("rootid"));
			String username=request.getParameter("username");
			
			String RedirectPage=null;
			
			DB db=new DB();
			Connection conn=DB.getConn();
			String sql=null;
			
			if(isleaf==0){
				//删除博文和所有评论
				sql="delete from articles where rootid = '" + rootid + "'";
				RedirectPage="article.jsp?username="+username;
			} else {
				//删除单个评论
				sql="delete from articles where id = '" + id + "'";
				RedirectPage="articleCont.jsp?username="+username+"&rootid="+rootid;
			}
			DB.executeUpdate(conn, sql);
			DB.close(conn);
			response.sendRedirect(RedirectPage); //重定向到新的页面
			
		} catch(Exception e){
			e.printStackTrace();
		}
	}

	@Override
	public void init() throws ServletException {
	
	}
}

