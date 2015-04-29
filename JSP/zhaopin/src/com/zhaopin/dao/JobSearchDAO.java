package com.zhaopin.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;



import com.zhaopin.po.Joblist;
import com.zhaopin.util.DAOSupport;

public class JobSearchDAO extends DAOSupport {
	
	//输入条件为空
	public List<Joblist> query() {
		List<Joblist> list = new ArrayList<Joblist>();
		String sql = "SELECT * from joblist order by Z_time DESC";
		try {
			List<Object[]> data = this.executeDQL(sql, null);
			if (null != data) {
				System.out.println("查到数据啦！！");
				Joblist joblist = null;
				for (Object[] tmp : data) {
					joblist = new Joblist();
					int i = 0;
					joblist.setCompanyid(Integer.parseInt(tmp[i++].toString()));
					joblist.setCompanyname(tmp[i++].toString());
					joblist.setCompanyemail(tmp[i++].toString());
					joblist.setCompanylogo(tmp[i++].toString());
					joblist.setCompanybrief(tmp[i++].toString());
					joblist.setCompanysize(Integer.parseInt(tmp[i++].toString()));
					joblist.setCompanylocate(tmp[i++].toString());
					joblist.setZhaopinid(Integer.parseInt(tmp[i++].toString()));
					joblist.setZ_jobname(tmp[i++].toString());
					joblist.setZ_city(tmp[i++].toString());
					joblist.setZ_salary(tmp[i++].toString());
					joblist.setZ_time((Date) tmp[i++]);
					joblist.setZ_count(Integer.parseInt(tmp[i++].toString()));
					joblist.setZ_description(tmp[i++].toString());
					joblist.setZ_requirements(tmp[i++].toString());
					
					list.add(joblist);
					
				}
				
			}
			else{
				System.out.println("没查到数据！");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}
	
	//输入关键字进行查询
	public List<Joblist> query(String keyword) {
		String keywords = keyword;
		List<Joblist> list = new ArrayList<Joblist>();
		String sql = "SELECT * from joblist where companyname =\"" +keywords +"\"or z_jobname = \" "+ keywords+"\" order by Z_time DESC";
		try {
			List<Object[]> data = this.executeDQL(sql, null);
			if (null != data) {
				System.out.println("查到数据啦！！");
				Joblist joblist = null;
				for (Object[] tmp : data) {
					joblist = new Joblist();
					int i = 0;
					joblist.setCompanyid(Integer.parseInt(tmp[i++].toString()));
					joblist.setCompanyname(tmp[i++].toString());
					joblist.setCompanyemail(tmp[i++].toString());
					joblist.setCompanylogo(tmp[i++].toString());
					joblist.setCompanybrief(tmp[i++].toString());
					joblist.setCompanysize(Integer.parseInt(tmp[i++].toString()));
					joblist.setCompanylocate(tmp[i++].toString());
					joblist.setZhaopinid(Integer.parseInt(tmp[i++].toString()));
					joblist.setZ_jobname(tmp[i++].toString());
					joblist.setZ_city(tmp[i++].toString());
					joblist.setZ_salary(tmp[i++].toString());
					joblist.setZ_time((Date) tmp[i++]);
					joblist.setZ_count(Integer.parseInt(tmp[i++].toString()));
					joblist.setZ_description(tmp[i++].toString());
					joblist.setZ_requirements(tmp[i++].toString());
					
					list.add(joblist);
					
				}
				
			}
			else{
				System.out.println("没查到数据！");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}


}

