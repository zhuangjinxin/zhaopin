package com.zhaopin.po;

import java.util.Date;

public class Manlist {
	
	private int userid;
	private String username;
	private String userphoto;
	private int qiuzhiid;
	private String q_jobname;
	private String q_city;
	private String q_salary;
	private Date q_time;
	public int getUserid() {
		return userid;
	}
	public void setUserid(int userid) {
		this.userid = userid;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getUserphoto() {
		return userphoto;
	}
	public void setUserphoto(String userphoto) {
		this.userphoto = userphoto;
	}
	public int getQiuzhiid() {
		return qiuzhiid;
	}
	public void setQiuzhiid(int qiuzhiid) {
		this.qiuzhiid = qiuzhiid;
	}
	public String getQ_jobname() {
		return q_jobname;
	}
	public void setQ_jobname(String q_jobname) {
		this.q_jobname = q_jobname;
	}
	public String getQ_city() {
		return q_city;
	}
	public void setQ_city(String q_city) {
		this.q_city = q_city;
	}
	public String getQ_salary() {
		return q_salary;
	}
	public void setQ_salary(String q_salary) {
		this.q_salary = q_salary;
	}
	public Date getQ_time() {
		return q_time;
	}
	public void setQ_time(Date q_time) {
		this.q_time = q_time;
	}

	
}