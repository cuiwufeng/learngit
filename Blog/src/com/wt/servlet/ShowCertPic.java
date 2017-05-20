package com.wt.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.wt.blog.MakeCertPic;

public class ShowCertPic extends HttpServlet {

	@Override
	public void service(HttpServletRequest request,HttpServletResponse response)
				throws ServletException,IOException{
		MakeCertPic image = new MakeCertPic();
		String str = image.getCertPic(0, 0, response.getOutputStream());
		//将验证码存入session中
		request.getSession().setAttribute("certCode2", str);
	}
	public ShowCertPic() {
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
	}

	@Override
	public void init() throws ServletException {
		
	}

}