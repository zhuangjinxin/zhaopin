package com.zhaopin.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.net.URLEncoder;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;




import com.zhaopin.dao.UsersDAO;
import com.zhaopin.po.Companys;
import com.zhaopin.po.Users;

public class UserLoginServlet extends HttpServlet {

	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {	
		this.doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
			
			String useremail=request.getParameter("useremail");
	        String userpwd=request.getParameter("userpwd");
	        
	        Users users= new Users();
	        users.setUseremail(useremail);
	        users.setUserpwd(userpwd);
	        
	        UsersDAO udao=new UsersDAO();
	        
	        Users user=new Users();
	        user=udao.login(users);
	        
	        
	        if(user.getUsername()!=null){
	        	
	        	System.out.println("登录成功");
	        	String username=user.getUsername();
	        	System.out.println("个人用户"+username);
	        	
	        	//设置cookie user_name
	        	
	        	//Cookie cookie_name=new Cookie("name",URLEncoder.encode(username, "UTF-8"));
	        	//cookie_name.setMaxAge(36000);
	        	//response.addCookie(cookie_name);
	        	
	        	//设置cookie user_type
	        	//Cookie cookie_type=new Cookie("type","user");
	        	//cookie_type.setMaxAge(36000);
	        	//response.addCookie(cookie_type);
	        
	        	response.sendRedirect("/userhome.jsp");
	        	     	
	        	
	        }else{
	        	System.out.println("登录失败");
	        	request.setAttribute("error","登录失败，请重新登录");
	        	
	        	response.sendRedirect("index.jsp");
	        }
	        
	        
 
	}
	
	public void init() throws ServletException {
		// Put your code here
	}

}
