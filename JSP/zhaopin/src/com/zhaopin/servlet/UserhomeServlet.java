package com.zhaopin.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.zhaopin.dao.JoblistDAO;
import com.zhaopin.dao.UsersDAO;
import com.zhaopin.po.Experience;
import com.zhaopin.po.Joblist;
import com.zhaopin.po.Users;

public class UserhomeServlet extends HttpServlet {

	public void destroy() {
		super.destroy(); 
	}

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		this.doPost(request, response);

	}


	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
			System.out.println("执行UserhomeServlet");
		
			UsersDAO udao =new UsersDAO();
			
			int userid =2;
		
			List<Users> userlist=udao.queryuserinfo(userid);
			request.setAttribute("userinfolist",userlist);
		
			List<Experience> Experiencelist=udao.queryuserexperience(userid);
			request.setAttribute("experiencelist", Experiencelist);
		
			request.getRequestDispatcher("/userhome.jsp").forward(request, response);

	}


	public void init() throws ServletException {
		// Put your code here
	}

}
