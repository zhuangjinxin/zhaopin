package com.zhaopin.dao;

import java.sql.SQLException;
import java.util.List;





import com.zhaopin.po.Companys;
import com.zhaopin.po.Users;
import com.zhaopin.util.DAOSupport;

public class CompanysDAO extends DAOSupport {
	
	/*
	 * 企业登录
	 */
	public Companys login(Companys companys){
		String sql = "select * from companys where companyemail = ? and companypwd = ?";
		try {
			List<Object[]> list = this.executeDQL(sql, new Object[] {
					companys.getCompanyemail(), companys.getCompanypwd() });
			if (list != null && !list.isEmpty()) {
				Object[] data = list.get(0);
				Companys company=new Companys();
				company.setCompanyemail(data[0].toString());
				company.setCompanypwd(data[1].toString());
				return company;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
	
	/*
	 * 企业注册
	 */
	public boolean add(Companys company) {
		String sql = "insert into companys (companyemail,companypwd) values(?,?)";
		Object[] params = new Object[] {company.getCompanyemail(),company.getCompanypwd()};
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
