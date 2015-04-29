package com.zhaopin.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;





import com.zhaopin.po.Joblist;
import com.zhaopin.util.DAOSupport;

public class JoblistDAO extends DAOSupport {
	

	public List<Joblist> queryOrderByCount() {
		List<Joblist> list = new ArrayList<Joblist>();
		String sql = "SELECT * from joblist order by Z_count DESC";
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
	
	
	public List<Joblist> queryOrderByTime() {
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
	
	
	public Joblist queryDetailById(int zid2) {
		
		int zid =zid2;
		
		String sql = "SELECT * from joblist where zhaopinid = ? ";
		try {
			List<Object[]> data = this.executeDQL(sql,new Object[] {zid});
			if (null != data && !data.isEmpty()) {
				System.out.println("查到数据啦！！");
				Object[] tmp=data.get(0);
				Joblist jobdetail = new Joblist();
				
					int i = 0;
					jobdetail.setCompanyid(Integer.parseInt(tmp[i++].toString()));
					jobdetail.setCompanyname(tmp[i++].toString());
					jobdetail.setCompanyemail(tmp[i++].toString());
					jobdetail.setCompanylogo(tmp[i++].toString());
					jobdetail.setCompanybrief(tmp[i++].toString());
					jobdetail.setCompanysize(Integer.parseInt(tmp[i++].toString()));
					jobdetail.setCompanylocate(tmp[i++].toString());
					jobdetail.setZhaopinid(Integer.parseInt(tmp[i++].toString()));
					jobdetail.setZ_jobname(tmp[i++].toString());
					jobdetail.setZ_city(tmp[i++].toString());
					jobdetail.setZ_salary(tmp[i++].toString());
					jobdetail.setZ_time((Date) tmp[i++]);
					jobdetail.setZ_count(Integer.parseInt(tmp[i++].toString()));
					jobdetail.setZ_description(tmp[i++].toString());
					jobdetail.setZ_requirements(tmp[i++].toString());
					
					return jobdetail;
				}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
			
		
	}
	
}



