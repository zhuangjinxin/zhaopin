package com.zhaopin.dao;

import java.sql.SQLException;
import java.util.List;


import com.zhaopin.po.Users;
import com.zhaopin.util.DAOSupport;

public class UsersDAO extends DAOSupport {
	
	/*
	 * 用户登录
	 */
	public Users login(Users users){
		String sql = "select * from users where useremail = ? and userpwd = ?";
		try {
			List<Object[]> list = this.executeDQL(sql, new Object[] {
					users.getUseremail(), users.getUserpwd() });
			if (list != null && !list.isEmpty()) {
				Object[] data = list.get(0);
				Users user=new Users();
				user.setUseremail(data[0].toString());
				user.setUserpwd(data[1].toString());
				return user;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
	
	
	/*
	 * 用户注册
	 */
	public boolean add(Users users) {
		String sql = "insert into users (useremail,userpwd) values(?,?)";
		Object[] params = new Object[] {users.getUseremail(),users.getUserpwd()};
		int i = 0;
		try {
			i = this.exeucteDML(sql, params);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		if (i > 0)
			return true;
		return false;
	}

}

