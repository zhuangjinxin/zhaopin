package com.zhaopin.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.zhaopin.dao.CompanysDAO;
import com.zhaopin.dao.UsersDAO;
import com.zhaopin.po.Companys;
import com.zhaopin.po.Users;

public class UserLoginServlet extends HttpServlet {

	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}

	public void doGet(HttpServletRequest req, HttpServletResponse res)
			throws ServletException, IOException {	
		this.doPost(req, res);
	}

	public void doPost(HttpServletRequest req, HttpServletResponse res)
			throws ServletException, IOException {
			
			String useremail=req.getParameter("useremail");
	        String userpwd=req.getParameter("userpwd");
	        
	        Users users= new Users();
	        users.setUseremail(useremail);
	        users.setUserpwd(userpwd);
	        
	        UsersDAO udao=new UsersDAO();
	        if(udao.login(users)!=null){
	        	System.out.println("登录成功");	
	        }else{
	        	System.out.println("登录失败");
	        	req.setAttribute("error","登录失败，请重新登录");
	        }
 
	}
	
	public void init() throws ServletException {
		// Put your code here
	}

}
