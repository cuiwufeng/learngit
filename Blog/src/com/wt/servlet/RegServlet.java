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

public class RegServlet extends HttpServlet {

	public RegServlet() {
		super();
	}

	@Override
	public void destroy() {
		super.destroy(); 
	}


	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		process(request,response);
	}

	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		process(request,response);
	}

	@Override
	public void init() throws ServletException {

	}
	
	private void process(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		PrintWriter out=response.getWriter();
		String username=request.getParameter("username");
		
		DB db=new DB();
		Connection con=null;
		PreparedStatement ps=null;
		ResultSet rs=null;
		
		String sql = "select * from users where username = ?";
		try {
			con=DB.getConn();
			ps=DB.prepareStmt(con, sql);
			ps.setString(1, username);
			rs=DB.executeQuery(ps);
			
			if(rs.next()){
				out.print(""+"0".toString());
			} else {
				out.print(""+"1".toString());
			}
			
			rs.close();
			ps.close();
			con.close();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		out.flush();
		out.close();
	}

}
