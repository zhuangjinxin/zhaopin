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

public class RegisterServlet extends HttpServlet {

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
		
		String type=request.getParameter("type");
		
        if(type.equals("user")){
			String useremail=request.getParameter("email");
	        String userpwd=request.getParameter("pwd");
	        
	        Users users= new Users();
	        users.setUseremail(useremail);
	        users.setUserpwd(userpwd);
	        
	        UsersDAO udao=new UsersDAO();
	        if(udao.add(users)==true){
	        	System.out.println("用户注册登录成功");	
	        }else{
	        	System.out.println("用户注册失败");
	        	request.setAttribute("error","用户注册失败，请重新注册");
	        }
	        
		}else {
	        String companyemail=request.getParameter("email");
	        String companypwd=request.getParameter("pwd");
	        
	        Companys companys= new Companys();
	        companys.setCompanyemail(companyemail);
	        companys.setCompanypwd(companypwd);
	        
	        CompanysDAO cdao=new CompanysDAO();
	        if(cdao.add(companys)==true){
	        	System.out.println("企业注册成功");	
	        }else{
	        	System.out.println("企业注册登录失败");
	        	request.setAttribute("error","企业注册失败，请重新注册");
	        }			
		}     
	}

	public void init() throws ServletException {
		// Put your code here
	}

}
