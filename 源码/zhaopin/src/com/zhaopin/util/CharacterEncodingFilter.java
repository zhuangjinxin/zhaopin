package com.zhaopin.util;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

public class CharacterEncodingFilter implements Filter {

	private String encoding = "UTF-8";
	
	public void destroy() {
		// TODO Auto-generated method stub
		System.out.println("经过过滤器");
	}

	public void doFilter(ServletRequest arg0, ServletResponse arg1,
			FilterChain arg2) throws IOException, ServletException {
		arg0.setCharacterEncoding(encoding);
		arg2.doFilter(arg0, arg1);
		arg1.setCharacterEncoding(encoding);	
	}

	public void init(FilterConfig arg0) throws ServletException {
		// TODO Auto-generated method stub
		System.out.println("初始化过滤器");
	}

}
