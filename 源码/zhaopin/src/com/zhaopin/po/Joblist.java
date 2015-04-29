package com.zhaopin.po;

import java.util.Date;

public class Joblist {
	
	private int companyid;
	private String companyname;
	private String companyemail;
	private String companylogo;
	private String companybrief;
	private int companysize;
	private String companylocate;
	private int zhaopinid;
	private String z_jobname;
	private String z_city;
	
	public String getCompanyemail() {
		return companyemail;
	}
	public void setCompanyemail(String companyemail) {
		this.companyemail = companyemail;
	}
	public String getCompanybrief() {
		return companybrief;
	}
	public int getCompanysize() {
		return companysize;
	}
	public void setCompanysize(int companysize) {
		this.companysize = companysize;
	}
	public void setCompanybrief(String companybrief) {
		this.companybrief = companybrief;
	}

	public String getCompanylocate() {
		return companylocate;
	}
	public void setCompanylocate(String companylocate) {
		this.companylocate = companylocate;
	}
	private String z_salary;
	private Date z_time;
	private int z_count;
	private String z_description;
	private String z_requirements;
	
	public String getZ_description() {
		return z_description;
	}
	public void setZ_description(String z_description) {
		this.z_description = z_description;
	}
	public String getZ_requirements() {
		return z_requirements;
	}
	public void setZ_requirements(String z_requirements) {
		this.z_requirements = z_requirements;
	}
	public int getCompanyid() {
		return companyid;
	}
	public void setCompanyid(int companyid) {
		this.companyid = companyid;
	}
	public String getCompanyname() {
		return companyname;
	}
	public void setCompanyname(String companyname) {
		this.companyname = companyname;
	}
	public String getCompanylogo() {
		return companylogo;
	}
	public void setCompanylogo(String companylogo) {
		this.companylogo = companylogo;
	}
	public int getZhaopinid() {
		return zhaopinid;
	}
	public void setZhaopinid(int zhaopinid) {
		this.zhaopinid = zhaopinid;
	}
	public String getZ_jobname() {
		return z_jobname;
	}
	public void setZ_jobname(String z_jobname) {
		this.z_jobname = z_jobname;
	}
	public String getZ_city() {
		return z_city;
	}
	public void setZ_city(String z_city) {
		this.z_city = z_city;
	}
	public String getZ_salary() {
		return z_salary;
	}
	public void setZ_salary(String z_salary) {
		this.z_salary = z_salary;
	}
	public Date getZ_time() {
		return z_time;
	}
	public void setZ_time(Date z_time) {
		this.z_time = z_time;
	}
	public int getZ_count() {
		return z_count;
	}
	public void setZ_count(int z_count) {
		this.z_count = z_count;
	}
	
	


}
