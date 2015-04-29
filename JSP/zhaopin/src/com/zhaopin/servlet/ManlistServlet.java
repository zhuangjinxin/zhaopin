package com.zhaopin.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.zhaopin.dao.ManlistDAO;
import com.zhaopin.po.Joblist;
import com.zhaopin.po.Manlist;

public class ManlistServlet extends HttpServlet {

	public void destroy() {
		super.destroy(); 
	}


	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		this.doPost(request, response);


	}


	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		ManlistDAO mdao =new ManlistDAO();
		
		List<Manlist> manlist=mdao.queryOrderByTime();
		request.setAttribute("manlist", manlist);
		
		request.getRequestDispatcher("/man.jsp").forward(request, response);
		
		//response.sendRedirect("MyJsp.jsp");

	}

	public void init() throws ServletException {

	}

}
