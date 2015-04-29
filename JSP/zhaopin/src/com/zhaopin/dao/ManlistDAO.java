package com.zhaopin.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;


import com.zhaopin.po.Manlist;
import com.zhaopin.util.DAOSupport;

public class ManlistDAO extends DAOSupport {
	
	
	public List<Manlist> queryOrderByTime() {
		
		List<Manlist> list = new ArrayList<Manlist>();
		String sql = "SELECT * from manlist order by Q_time DESC";
		try {
			List<Object[]> data = this.executeDQL(sql, null);
			if (null != data) {
				System.out.println("查到数据啦！！");
				Manlist userlist = null;
				for (Object[] tmp : data) {
					userlist = new Manlist();
					int i = 0;
					userlist.setUserid(Integer.parseInt(tmp[i++].toString()));
					userlist.setUsername(tmp[i++].toString());
					userlist.setUserphoto(tmp[i++].toString());
					userlist.setQiuzhiid(Integer.parseInt(tmp[i++].toString()));
					userlist.setQ_jobname(tmp[i++].toString());
					userlist.setQ_city(tmp[i++].toString());
					userlist.setQ_salary(tmp[i++].toString());
					userlist.setQ_time((Date) tmp[i++]);
								
					list.add(userlist);					
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

