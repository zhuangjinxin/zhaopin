package com.zhaopin.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.zhaopin.po.Companys;
import com.zhaopin.po.Users;
import com.zhaopin.util.DAOSupport;

public class AdminDAO extends DAOSupport {
	
	/*
	 * 用户查询
	 */
	public List<Users> queryuser() {
		List<Users> userlist = new ArrayList<Users>();
		String sql = "SELECT * from users";
		try {
			List<Object[]> data = this.executeDQL(sql, null);
			if (null != data) {
				System.out.println("查到数据啦！！");
				Users users = null;
				for (Object[] tmp : data) {
					users = new Users();
					int i = 0;
					users.setUserid(Integer.parseInt(tmp[i++].toString()));
					users.setUsername(tmp[i++].toString());
					users.setUserpwd(tmp[i++].toString());
					users.setUseremail(tmp[i++].toString());
					users.setUsergender(tmp[i++].toString());
					users.setUserphoto(tmp[i++].toString());
					users.setUserschool(tmp[i++].toString());
					users.setUserfield(tmp[i++].toString());
					users.setUsergraduate(tmp[i++].toString());
					
					userlist.add(users);				
				}	
			}
			else{
				System.out.println("没查到用户数据！");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return userlist;
	}
	
	
	/*
	 * 公司
	 */
	public List<Companys> queryCompany() {
		List<Companys> companylist = new ArrayList<Companys>();
		String sql = "SELECT * from companys";
		try {
			List<Object[]> data = this.executeDQL(sql, null);
			if (null != data) {
				System.out.println("查到数据啦！！");
				Companys companys = null;
				for (Object[] tmp : data) {
					companys = new Companys();
					int i = 0;
					companys.setCompanyid(Integer.parseInt(tmp[i++].toString()));
					companys.setCompanyname(tmp[i++].toString());
					companys.setCompanypwd(tmp[i++].toString());
					companys.setCompanyemail(tmp[i++].toString());
					companys.setCompanylogo(tmp[i++].toString());
					companys.setCompanybrief(tmp[i++].toString());
					companys.setCompanysize(Integer.parseInt(tmp[i++].toString()));
					companys.setCompanylocate(tmp[i++].toString());				
					
					companylist.add(companys);				
				}	
			}
			else{
				System.out.println("没查到公司数据！");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return companylist;
	}
	
}

