package com.zhaopin.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.zhaopin.dao.AdminDAO;
import com.zhaopin.po.Users;


public class AdminuserServlet extends HttpServlet {

	public void destroy() {
		super.destroy();
	}
	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
	this.doPost(request, response);

	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		AdminDAO adao =new AdminDAO();
		
		List<Users> users=adao.queryuser();
		request.setAttribute("user", users);
		request.getRequestDispatcher("/adminuser.jsp").forward(request, response);


	}

	public void init() throws ServletException {
	
	}

}
