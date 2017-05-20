package com.wt.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.wt.db.DB;

public class RegisterUser extends HttpServlet {
	
	public RegisterUser() {
		super();
	}

	@Override
	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log

	}

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		//ÉèÖÃ×Ö·û¼¯Í³Ò»£¬·ÀÖ¹ÂÒÂë
		request.setCharacterEncoding("UTF-8");
		
		int ret=0;
		String username=request.getParameter("username");
		String password=request.getParameter("password");
		String blogtitle=request.getParameter("blogtitle");
		String truename=request.getParameter("truename");
		int sex=Integer.parseInt(request.getParameter("sex"));
		int age=0;
		String email=request.getParameter("email");
		
		
		//·ÀÖ¹¿ÕÖµ´íÎó
		if(!request.getParameter("age").toString().equals("")){
			age=Integer.parseInt(request.getParameter("age"));
		}
			
		DB db=new DB();
		Connection con=null;
		PreparedStatement ps=null;
		ResultSet rs=null;
		
		String sql = "insert users (username,password,blogtitle,truename,sex,age,email) values (?,?,?,?,?,?,?);";
		try {
			con=DB.getConn();
			ps=DB.prepareStmt(con, sql);
			ps.setString(1, username);
			ps.setString(2, password);
			ps.setString(3, blogtitle);
			ps.setString(4, truename);
			ps.setInt(5, sex);
			ps.setInt(6, age);
			ps.setString(7, email);
			
			ret=DB.executeUpdate(ps);
			
			if(ret==1)
				response.sendRedirect("upload.jsp?username="+username);
			else
				response.sendRedirect("loginFailure.jsp?url=register.jsp");
			
		} catch (SQLException e) {
			e.printStackTrace();
		}	
	}

	@Override
	public void init() throws ServletException {

	}

}
