package com.wt.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.wt.db.DB;

public class alertUser extends HttpServlet {

	public alertUser() {
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

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		String username=request.getParameter("username");
		String password=request.getParameter("password");
		String newpassword=request.getParameter("newpassword");
		String confirmpassword=request.getParameter("confirmpassword");
		
		
		if(!newpassword.equals(confirmpassword)){
			response.sendRedirect("loginFailure.jsp?url=alertUser.jsp");
		}
		else
		{
			DB db=new DB();
			try{
				Connection con=DB.getConn();
				String sql="select * from users where username=? and password=?";
				PreparedStatement ps=DB.prepareStmt(con, sql);
				ps.setString(1, username);
				ps.setString(2, password);
				ResultSet rs=ps.executeQuery();
				
				if(rs.next()){ //判断是否输入正确的用户名或者密码
					
					//执行更新
					sql="update users set password=? where username=?";
					ps=DB.prepareStmt(con, sql);
					ps.setString(1, newpassword);
					ps.setString(2, username);
					ps.executeUpdate();
					
					//关闭连接
					DB.close(rs);
					DB.close(ps);
					DB.close(con);
					
					response.sendRedirect("loginSuccess.jsp?url=index.jsp");
				}
				else{
					response.sendRedirect("loginFailure.jsp?url=alertUser.jsp");
				}
				
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}

	@Override
	public void init() throws ServletException {

	}

}
