package com.wt.servlet;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class validateImg extends HttpServlet {

	public validateImg() {
		super();
	}

	@Override
	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		HttpSession session = request.getSession();
		String certCode = request.getParameter("certCode");
		if(certCode.equals(session.getAttribute("certCode2"))){
			//这里利用RequestDispatcher进行跳转主要使得表单可以传递给下一个页面
			RequestDispatcher dispatcher=request.getRequestDispatcher("loginUser");
			dispatcher.forward(request, response);
		}
		else{
			response.sendRedirect("loginFailure.jsp?url=login.jsp");
		}
	}
	

	@Override
	public void init() throws ServletException {
		
	}

}
