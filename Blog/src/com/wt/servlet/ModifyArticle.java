package com.wt.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.wt.db.DB;

public class ModifyArticle extends HttpServlet {

	public ModifyArticle() {
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
			int id = Integer.parseInt(request.getParameter("id"));
			System.out.print(id);

			String certCode = request.getParameter("certCode");// 读取验证码

			// 进行验证码输入是否正确进行判断
			if (certCode.equals(session.getAttribute("certCode2"))) {

				Connection conn = DB.getConn();
				PreparedStatement pstmt = DB
						.prepareStmt(conn,
								"update articles set title = ? , cont = ? where id = ?");
				try {
					pstmt.setString(1, title);
					pstmt.setString(2, cont);
					pstmt.setInt(3, id);
					pstmt.executeUpdate();

				} catch (SQLException e) {
					e.printStackTrace();
				}
				DB.close(pstmt);
				DB.close(conn);
				response.sendRedirect(u);

			} else { // 验证失败
				response.sendRedirect("modify.jsp?username=" + session.getAttribute("username")
									   + "&id=" + id + "&u=" + u);
			}
		}
	}

	@Override
	public void init() throws ServletException {

	}
}
