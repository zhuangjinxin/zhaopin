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

public class JobdetailServlet extends HttpServlet {

	public void destroy() {
		super.destroy(); 
	}


	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		this.doPost(request, response);

	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("执行JobdetailServlet");
		
		
		//获取招聘编号，返回职位的详细信息
		int zid = Integer.parseInt(request.getParameter("zid"));
		
		JoblistDAO jddao =new JoblistDAO();
		Joblist jobdetail=jddao.queryDetailById(zid);
		
		request.setAttribute("jobdetail",jobdetail);
		
		request.getRequestDispatcher("/jobdetail.jsp").forward(request, response);
		


	}


	public void init() throws ServletException {
	
	}

}
