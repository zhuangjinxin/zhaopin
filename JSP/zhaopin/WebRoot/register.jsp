<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head lang="en">
  <meta charset="UTF-8">
  <title>登录注册</title>
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
  <meta name="format-detection" content="telephone=no">
  <meta name="renderer" content="webkit">
  <meta http-equiv="Cache-Control" content="no-siteapp" />
  <link rel="alternate icon" type="image/png" href="i/favicon.png">
  <link rel="stylesheet" href="css/amazeui.min.css"/>
  <link rel="stylesheet" href="css/personal.css"/>
</head>
<body>
<header class="am-topbar am-topbar-inverse am-topbar-fixed-top">
  <div class="am-container">
    <h1 class="am-topbar-brand">
      <a href="index.jsp">猎聘招聘网</a>
    </h1>

    <button class="am-topbar-btn am-topbar-toggle am-btn am-btn-sm am-btn-secondary am-show-sm-only"
            data-am-collapse="{target: '#collapse-head'}"><span class="am-sr-only">导航切换</span> <span
        class="am-icon-bars"></span></button>

    <div class="am-collapse am-topbar-collapse" id="collapse-head">
      <ul class="am-nav am-nav-pills am-topbar-nav">
        <li ><a href="index.jsp">首页</a></li>
        <li ><a href="job.jsp">工作职位</a></li>
		<li ><a href="man.jsp">精英人才</a></li>
      </ul>
    </div>
  </div>
</header>

<br><br><br>


<div class="get">
    <div class="am-g am-container">
	    <div class="am-u-lg-12">

	      	<div class="am-g">

	        	<div class=" am-u-md-8 am-u-sm-12 am-u-md-centered">
				  	<div class="admin-content">

						<div class="am-tabs am-margin" data-am-tabs>
							<ul class="am-tabs-nav am-nav am-nav-tabs am-nav-justify">
								<li class="am-active"><a href="#tab1">求职者</a></li>
								<li><a href="#tab2">企业</a></li>

							</ul>

							<div class="am-tabs-bd">
								<div class="am-tab-panel am-fade am-in am-active" id="tab1">
									<form class="am-form">
										<div class="am-g am-margin-top">
										
										<form class="am-form" action="RegisterServlet" method="post">
										
											<div class="am-u-sm-3 am-text-right">姓名：</div>
											<div class="am-u-sm-8">
												<input type="text" class="am-form-field am-radius" placeholder="真实姓名" />
											</div>
											<br><br>
											<div class="am-u-sm-3 am-text-right">邮箱：</div>
											<div class="am-u-sm-8">
												<input type="text" class="am-form-field am-radius" placeholder="邮箱账号" />
											</div>
											<br><br>
											<div class="am-u-sm-3 am-text-right">密码：</div>
											<div class="am-u-sm-8">
												<input type="password" class="am-form-field am-radius" placeholder="密码" />
											</div>
											<br><br>
											<div class="am-u-sm-3 am-text-right">密码：</div>
											<div class="am-u-sm-8">
												<input type="text" class="am-form-field am-radius" placeholder="再次输入密码" />
											</div>
										
											<br><br>
											<div class="am-margin am-margin-top">
												<div class="am-u-sm-12 ">
													<center>
														<button type="submit" class="am-btn am-btn-primary ">立即注册</button>
														<a href="login.jsp" class="am-btn am-btn-default" role="button"> 已有账号</a>
													</center>
												</div>
											</div>
											</form>
										</div>
									</form>
								</div>

								<div class="am-tab-panel am-fade" id="tab2">
									<form class="am-form">
										<div class="am-g am-margin-top">
											<div class="am-u-sm-3 am-text-right">公司：</div>
											<div class="am-u-sm-8">
												<input type="text" class="am-form-field am-radius" placeholder="公司名称" />
											</div>
											<br><br>
											<div class="am-u-sm-3 am-text-right">邮箱：</div>
											<div class="am-u-sm-8">
												<input type="text" class="am-form-field am-radius" placeholder="邮箱账号" />
											</div>
											<br><br>
											<div class="am-u-sm-3 am-text-right">密码：</div>
											<div class="am-u-sm-8">
												<input type="password" class="am-form-field am-radius" placeholder="密码" />
											</div>
											<br><br>
											<div class="am-u-sm-3 am-text-right">密码：</div>
											<div class="am-u-sm-8">
												<input type="password" class="am-form-field am-radius" placeholder="再次输入密码" />
											</div>
										
											<br><br>
											<div class="am-margin am-margin-top">
												<div class="am-u-sm-12 ">
													<center>
														<button type="submit" class="am-btn am-btn-primary">立即注册</button>
														<a href="login.jsp" class="am-btn am-btn-default" role="button"> 已有账号</a>
													</center>
												</div>
											</div>
										</div>
									</form>
								</div>


							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
  	</div>
</div>
</div>
<!-- content end -->
</body>

<br><br><br><br>

<footer class="my-footer">
	<br>
	<p>2015年天津工业大学 毕业设计 <br><small>© Copyright 庄金鑫. 版权所有，禁止转载.</small></p>
</footer>
<!--[if (gte IE 9)|!(IE)]><!-->
<script src="js/jquery.min.js"></script>
<script src="js/amazeui.min.js"></script>
<!--<![endif]-->
</html>