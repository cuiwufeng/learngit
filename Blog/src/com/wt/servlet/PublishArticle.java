package com.wt.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.wt.db.DB;

public class PublishArticle extends HttpServlet {

	public PublishArticle() {
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

		HttpSession session = request.getSession(); // 创建session对象

		if (session.getAttribute("username") == null
				|| session.getAttribute("username").equals("")) {
			response.sendRedirect("loginFailure.jsp?url=login.jsp");
		} else {

			// 获得表单内容
			request.setCharacterEncoding("utf-8");
			String title = request.getParameter("title");
			String cont = request.getParameter("cont");
			String u = request.getParameter("u");
			int uid = Integer.parseInt(request.getParameter("uid"));

			String certCode = request.getParameter("certCode");// 读取验证码

			// 进行验证码输入是否正确进行判断
			if (certCode.equals(session.getAttribute("certCode2"))) {
				
				try {
					
					Connection conn = DB.getConn();
					boolean autoCommit;
					autoCommit = conn.getAutoCommit();
					conn.setAutoCommit(false);
					
					int rootId = -1;
					
					String sql = "insert into articles values (null, ?, ?, now(), ?, ?, ?, ?)";
					PreparedStatement pstmt = DB.prepareStmt(conn, sql, Statement.RETURN_GENERATED_KEYS);
					
					pstmt.setString(1, title);
					pstmt.setString(2, cont);
					pstmt.setInt(3, 0);
					pstmt.setInt(4, rootId);
					pstmt.setInt(5, 0);
					pstmt.setInt(6, uid);
					pstmt.executeUpdate();
					
					ResultSet rsKey = pstmt.getGeneratedKeys();
					rsKey.next();
					rootId = rsKey.getInt(1);
					
					Statement stmt = DB.createStmt(conn);
					stmt.executeUpdate("update articles set rootid ='" + rootId + "' where id ='" + rootId + "'");

					conn.commit();
					conn.setAutoCommit(autoCommit);
					
					DB.close(pstmt);
					DB.close(stmt);
					DB.close(conn);
					
					String SplitString[] = u.split("\\?"); // \\?是java的“?”的正则表达式
					
					if(SplitString[0].equals("article.jsp")){
						response.sendRedirect(u);
					} else {
						response.sendRedirect(SplitString[0] + "?username="+session.getAttribute("username")
								  + "&rootid=" + rootId);
					}
					
					
				} catch (SQLException e) {
					//发生异常则跳转到错误页面
					response.sendRedirect("loginFailure.jsp?url=article.jsp?username=" + session.getAttribute("username"));
				}
				
			} else { // 验证失败
				response.sendRedirect("publish.jsp?username=" + session.getAttribute("username")
									   + "&u=" + u);
			}
		}
	}
		
	@Override
	public void init() throws ServletException {

	}

}
