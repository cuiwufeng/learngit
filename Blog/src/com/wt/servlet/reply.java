package com.wt.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.wt.db.DB;

public class reply extends HttpServlet {

	public reply() {
		super();
	}

	@Override
	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
	}

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request,response);
	}

	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		int rootid = Integer.parseInt(request.getParameter("rootid"));
		int uid = Integer.parseInt(request.getParameter("uid"));
		String title = request.getParameter("title");
		String cont = request.getParameter("cont");
		String username = request.getParameter("username");
		
		Connection conn = DB.getConn();
		String sql = "insert into articles values (null, ?, ?, now(), ?, ? ,? ,?)";
		PreparedStatement pstmt = DB.prepareStmt(conn, sql);
		
		try {
			pstmt.setString(1, title);
			pstmt.setString(2, cont);
			pstmt.setInt(3, 1);
			pstmt.setInt(4, rootid);
			pstmt.setInt(5, 0);
			pstmt.setInt(6, uid);
			pstmt.executeUpdate();
			
			DB.close(pstmt);
			DB.close(conn);
			
			response.sendRedirect("articleCont.jsp?username="+username+"&rootid="+rootid);
			
		} catch (SQLException e) {
			e.printStackTrace();
		}	
	}

	@Override
	public void init() throws ServletException {

	}
}
