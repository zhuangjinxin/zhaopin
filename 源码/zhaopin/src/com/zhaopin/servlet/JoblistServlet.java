package com.zhaopin.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.zhaopin.dao.JoblistDAO;
import com.zhaopin.po.Joblist;

public class JoblistServlet extends HttpServlet {


	public void destroy() {
		super.destroy(); 
	}


	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		this.doPost(request, response);

	}


	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("执行joblistServlet");
		
		JoblistDAO jcdao =new JoblistDAO();
		
		List<Joblist> JoblistCount=jcdao.queryOrderByCount();
		request.setAttribute("JoblistCount",JoblistCount);
		
		List<Joblist> JoblistTime=jcdao.queryOrderByTime();
		request.setAttribute("JoblistTime", JoblistTime);
		
		request.getRequestDispatcher("/index.jsp").forward(request, response);
		
		
		
			


	}


	public void init() throws ServletException {
		
	}

}
