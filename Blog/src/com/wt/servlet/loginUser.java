package com.wt.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.wt.db.DB;

public class loginUser extends HttpServlet {

	public loginUser() {
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
		
		DB db=new DB();
		Connection con=null;
		PreparedStatement ps=null;
		ResultSet rs=null;
		
		String sql = "select * from users where username=? and password=?";
		try {
			con=DB.getConn();
			ps=DB.prepareStmt(con, sql);
			ps.setString(1, username);
			ps.setString(2, password);
			rs=DB.executeQuery(ps);
			
			RequestDispatcher dispatcher;
			
			System.out.print(rs);
			
			if(rs.next()){ //判断登录成功
				//将登录的用户名保存到session对象中
				HttpSession session=request.getSession();
				session.setAttribute("username", username); //设置session对象username
				
				response.sendRedirect("loginSuccess.jsp?url=article.jsp?username="+username);
				
			} else {
				response.sendRedirect("loginFailure.jsp?url=login.jsp");
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}	
	}

	@Override
	public void init() throws ServletException {

	}

}
