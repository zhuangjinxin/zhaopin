<!DOCTYPE html>
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
		<li><a href="man.jsp">精英人才</a></li>
      </ul>
    </div>
  </div>
</header>

<br><br><br>


<div class="get">
    <div class="am-g am-container">
	    <div class="am-u-lg-12">

	      	<div class="am-g">
			 	<div class="am-u-lg-6 am-u-md-8 am-u-sm-12">
	          		<h4 class="about-color">关于我们</h4>
	          		<p>猎聘招聘网是国内领先的线上招聘平台，随着互联网招聘行业的兴起，猎聘招聘网也在不断的发展壮大。猎聘招聘网专注于互联网就业机会，为国内IT行业人才提供简洁的操作流程，让好机会找到你！<br>
	          		基于JavaEE技术的猎聘招聘网的设计与实现，天津工业大学软件工程专业毕业设计作品。使用AmazeUI前端框架不仅让界面美观，而且还能够自适应不同分辨率的显示器，无论在什么平台都能享受舒适的体验。
	          		此项目部署在阿里云云服务器上，供演示使用。希望大家多多指导，让作品变得更优秀！
	            	</p>
	        	</div>

	        	<div class="am-u-lg-6 am-u-md-4 am-u-sm-12">
				  	<div class="admin-content">

						<div class="am-tabs am-margin" data-am-tabs>
							<ul class="am-tabs-nav am-nav am-nav-tabs am-nav-justify">
								<li class="am-active"><a href="#tab1">求职者</a></li>
								<li><a href="#tab2">企业</a></li>
							</ul>

							<div class="am-tabs-bd">
								<div class="am-tab-panel am-fade am-in am-active" id="tab1">
									<form class="am-form" action="UserLoginServlet" method="post">
										<div class="am-g am-margin-top" name="userdiv">
											<div class="am-u-sm-3 am-text-right">邮箱：</div>
											<div class="am-u-sm-8">
												<input type="text" class="am-form-field am-radius" name="useremail" placeholder="邮箱" />
											</div>
											<br><br>
											<div class="am-u-sm-3 am-text-right">密码：</div>
											<div class="am-u-sm-8">
												<input type="password" class="am-form-field am-radius" name="userpwd" placeholder="密码" />
											</div>
										
											<br><br>
											<div class="am-margin am-margin-top">
												<div class="am-u-sm-12 ">
													<center>
														<button type="submit" class="am-btn am-btn-primary">立即登录</button>
														<a href="register.jsp" class="am-btn am-btn-default" role="button"> 注册</a>
													</center>
												</div>
											</div>
										</div>
									</form>
								</div>

								<div class="am-tab-panel am-fade" id="tab2">
									<form class="am-form" action="CompanyLoginServlet" method="post">
										<div class="am-g am-margin-top">
											<div class="am-u-sm-3 am-text-right">邮箱：</div>
											<div class="am-u-sm-8">
												<input type="text" class="am-form-field am-radius" name="companyemail" placeholder="邮箱" />
											</div>
											<br><br>
											<div class="am-u-sm-3 am-text-right">密码：</div>
											<div class="am-u-sm-8">
												<input type="password" class="am-form-field am-radius" name="companypwd" placeholder="密码" />
											</div>
										
											<br><br>
											<div class="am-margin am-margin-top">
												<div class="am-u-sm-12 ">
													<center>
														<button type="submit" class="am-btn am-btn-primary ">立即登录</button>
														<a href="register.jsp" class="am-btn am-btn-default" role="button"> 注册</a>
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