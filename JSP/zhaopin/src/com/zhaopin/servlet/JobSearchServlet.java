package com.zhaopin.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.zhaopin.dao.JobSearchDAO;
import com.zhaopin.po.Joblist;



public class JobSearchServlet extends HttpServlet {


	public void destroy() {
		super.destroy(); 

	}


	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		this.doPost(request, response);
	}


	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String keyword=request.getParameter("keyword");
		
		JobSearchDAO jsdao =new JobSearchDAO();
		
		if(keyword==null||keyword.equals("")){
			//默认显示全部			
			List<Joblist> joblist=jsdao.query();
			request.setAttribute("JobSearch", joblist);
			request.getRequestDispatcher("/job.jsp").forward(request, response);
		}
		
		else{
			//搜索查询条件	
			List<Joblist> list=jsdao.query(keyword);
			request.setAttribute("JobSearch", list);
			request.getRequestDispatcher("/job.jsp").forward(request, response);		
		}
	}

	public void init() throws ServletException {
		
	}

}
