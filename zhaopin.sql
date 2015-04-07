CREATE DATABASE zhaopin;

USE zhaopin;

CREATE TABLE links(
	linkid INT (10) auto_increment PRIMARY KEY,
	linname VARCHAR (50) NOT NULL ,
	linkurl VARCHAR (50) ,
	linkimg VARCHAR (50)  
);

CREATE TABLE admins(
	adminid INT (10) auto_increment PRIMARY KEY,
	adminname VARCHAR (50),
	adminemail VARCHAR (50),
	adminpwd VARCHAR (50)
);

CREATE TABLE companys(
	companyid INT (10) auto_increment PRIMARY KEY ,
	companyname VARCHAR (50),
	companypwd VARCHAR (50) ,
	companyemail VARCHAR (50),
	companylogo VARCHAR (50),
	companybrief VARCHAR (255),
	companysize VARCHAR (50),
	companylocate VARCHAR (255)
);

CREATE TABLE users(
	userid INT (10) auto_increment PRIMARY KEY ,
	username VARCHAR (50) ,
	userpwd VARCHAR (50) NOT NULL ,
	useremail VARCHAR (50),
	usergender VARCHAR (50),
	userphoto VARCHAR (50),
	userschool VARCHAR (50),
	userfield VARCHAR (50) ,
	usergraduate VARCHAR (50) 
);

CREATE TABLE experience(
	expid INT (10) auto_increment PRIMARY KEY ,
	userid INT (10) NOT NULL,
	cname VARCHAR (50),
	position VARCHAR (50),
	starttime DATE ,
	endtime DATE ,
	program VARCHAR (255),
	duty VARCHAR (50),
	result VARCHAR (50),
	FOREIGN KEY (userid) REFERENCES users(userid) 
);

CREATE TABLE qiuzhi(
	qiuzhiid INT (10) auto_increment PRIMARY KEY ,
	userid INT (10) NOT NULL ,
	q_jobname VARCHAR (50),
	q_salary INT (10),
	q_city VARCHAR (50),
	q_time DATE ,
	FOREIGN KEY (userid) REFERENCES users(userid)
);

CREATE TABLE zhaopin(
	zhaopinid INT (10) auto_increment PRIMARY KEY ,
	companyid INT (10) NOT NULL ,
	z_jobname VARCHAR (50),
	z_salary INT (10),
	z_city VARCHAR (50),
	z_description VARCHAR (255),
	z_requirement VARCHAR (255),
	z_time DATE ,
	FOREIGN KEY (companyid) REFERENCES companys(companyid)
);

CREATE TABLE yaoqing(
	yaoqingid INT (10) auto_increment PRIMARY KEY ,
	userid INT (10) NOT NULL ,
	companyid INT (10) NOT NULL ,
	qiuzhiid INT (10) NOT NULL,
	status VARCHAR (50),
	yaoqingtime DATE ,
	FOREIGN KEY (userid) REFERENCES users(userid),
	FOREIGN KEY (companyid) REFERENCES companys(companyid),
	FOREIGN KEY (qiuzhiid) REFERENCES qiuzhi(qiuzhiid)
);

CREATE TABLE qiuzhixin(
	qiuzhixinid INT (10) auto_increment PRIMARY KEY ,
	userid INT (10) NOT NULL ,
	companyid INT (10) NOT NULL ,
	zhaopinid INT (10) NOT NULL ,
	status VARCHAR (50),
	qiuzhitime DATE ,
	FOREIGN KEY (userid) REFERENCES users(userid),
	FOREIGN KEY (companyid) REFERENCES companys(companyid),
	FOREIGN KEY (zhaopinid) REFERENCES zhaopin(zhaopinid)
);
