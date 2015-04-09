package com.zhaopin.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.zhaopin.dao.CompanysDAO;
import com.zhaopin.po.Companys;

public class CompanyLoginServlet extends HttpServlet {

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
		
        String companyemail=request.getParameter("companyemail");
        String companypwd=request.getParameter("companypwd");
        
        Companys companys= new Companys();
        companys.setCompanyemail(companyemail);
        companys.setCompanypwd(companypwd);
        
        CompanysDAO cdao=new CompanysDAO();
        if(cdao.login(companys)!=null){
        	System.out.println("登录成功");	
        }else{
        	System.out.println("登录失败");
        	request.setAttribute("error","登录失败，请重新登录");
        }


	}

	public void init() throws ServletException {
		// Put your code here
	}

}
