<%@ page language="java" import="java.util.*,com.zhaopin.po.*,java.net.URLDecoder;" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head lang="en">
  <meta charset="UTF-8">
  <title>用户主页</title>
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
      <a href="index.html">猎聘招聘网</a>
    </h1>

    <button class="am-topbar-btn am-topbar-toggle am-btn am-btn-sm am-btn-secondary am-show-sm-only"
            data-am-collapse="{target: '#collapse-head'}"><span class="am-sr-only">导航切换</span> <span
        class="am-icon-bars"></span></button>

    <div class="am-collapse am-topbar-collapse" id="collapse-head">
      <ul class="am-nav am-nav-pills am-topbar-nav">
        <li ><a href="index.jsp">首页</a></li>
        <li><a href="job.jsp">工作职位</a></li>
		<li><a href="man.jsp">精英人才</a></li>
      </ul>

	<div class="am-topbar-right">
      <div class="am-dropdown" data-am-dropdown="{boundary: '.am-topbar'}">
        <button class="am-btn am-btn-secondary am-topbar-btn am-btn-sm am-dropdown-toggle" data-am-dropdown-toggle>
		庄金鑫<span class="am-icon-caret-down"></span></button>
        <ul class="am-dropdown-content">
          <li><a href="#"><span class="am-icon-user"></span>个人中心</a></li>
		  <li ><a href="#"><span class="am-icon-power-off"></span>退出</a></li>
        </ul>
      </div>
    </div>

    </div>
  </div>
</header>

<br>

		<div class="am-g am-g-fixed blog-g-fixed">
		  <div class="am-cf admin-main">
			<div class="am-u-md-3 blog-sidebar">

		  <!-- sidebar start -->
		  <div class="admin-sidebar">

			<div class="am-panel am-panel-default admin-sidebar-panel">
			  <div class="am-panel-bd">
				<p><span class="am-icon-bookmark"></span> 个人中心</p>
					<div id="amz-offcanvas" class="am-offcanvas doc-offcanvas">
					<section class="amz-sidebar am-offcanvas-bar">
					<ul class="am-nav">
						<li><a href="userhome.jsp">我的简历</a></li>
						<li><a href="userqiuzhi.jsp">求职信息</a></li>
						<li><a href="useremail.jsp">邮件中心</a></li>
						</ul>
					</section>
				</div>

			  </div>
			</div>

			<div class="am-panel am-panel-default admin-sidebar-panel">
			  <div class="am-panel-bd">
				<p><span class="am-icon-bookmark"></span> 公告</p>
				<p>时光静好，与君语；细水流年，与君同。—— Amaze UI</p>
			  </div>
			</div>

			<div class="am-panel am-panel-default admin-sidebar-panel">
			  <div class="am-panel-bd">
				<p><span class="am-icon-tag"></span> 求职宣言</p>
				<p>Welcome to the Amaze UI wiki!</p>
			  </div>
			</div>
		  </div>
		  <!-- sidebar end -->
		  </div>

		  <div class="am-u-md-9">
		  <!-- content start -->
		  <div class="admin-content">

		  	<div class="am-g">
			  <div class="am-u-md-12">

		  	 <%
				List<Users> userinfolist = (List<Users>)request.getAttribute("userinfolist");
				if(null == userinfolist){
				System.out.println("为什么会是空的呢？");
				response.sendRedirect("UserhomeServlet");
				
				}else{
				int i = 1;
				for(Users user : userinfolist){
			%>	

				<div class="am-panel am-panel-default">
				  <div class="am-panel-hd am-cf" data-am-collapse="{target: '#collapse-panel-1'}">个人信息<span class="am-icon-chevron-down am-fr" ></span></div>
				  <div id="collapse-panel-1" class="am-panel-bd am-collapse am-in">

						<div class="admin-task-bd">
						<div class="am-u-md-5">
										姓名：<%=user.getUsername()%><br>
										性别：<%=user.getUsergender()%><br>
										邮箱：<%=user.getUseremail()%><br>

						</div>
						<div class="am-u-md-4">
										学校：<%=user.getUserschool()%><br>
										专业：<%=user.getUserfield()%><br>
										毕业时间：<%=user.getUsergraduate()%><br>
						</div>
						<div class="am-u-md-3">
									<img src="<%=user.getUserphoto() %>" alt="..." class="am-img-thumbnail am-radius" width="130" height="180">
						</div>
						</div>

						<div class="am-cf">
						  <div class="am-btn-toolbar am-fr">
						  	<div class="am-btn-group am-btn-group-xs">
							  
							 </div>
						  </div>
						</div>
				  </div>
				</div>
				<%}} %>
			</div>
			</div>


			<div class="am-g">
			  <div class="am-u-md-12">
			  
				<div class="am-panel am-panel-default">
				  <div class="am-panel-hd am-cf" data-am-collapse="{target: '#collapse-panel-3'}">项目经验<span class="am-icon-chevron-down am-fr" ></span></div>
				  

				  <div id="collapse-panel-3" class="am-panel-bd am-collapse am-in">
					<ul class="am-list admin-content-task">
						<%
							List<Experience> experiencelist = (List<Experience>)request.getAttribute("experiencelist");
							if(null == experiencelist){
							System.out.println("为什么会项目经验是空的呢？");
							
							}else{
							int i = 1;
							for(Experience exp : experiencelist){
						%>	
					
					  <li>
						<div class="admin-task-meta"> 
						项目名称：<%=exp.getProgram()%>&nbsp;&nbsp;&nbsp;&nbsp;
						项目职位：<%=exp.getPosition()%>&nbsp;&nbsp;&nbsp;&nbsp;
						 项目时间：<%=exp.getStarttime()%>~<%=exp.getEndtime()%><br>
						 工作单位：<%=exp.getCname()%>
						 
						 </div>
						<div class="admin-task-bd">
						  项目职责：<%=exp.getDuty()%><br>
						  项目成果：<%=exp.getResult()%>
						</div>
						<div class="am-cf">
						  <div class="am-btn-toolbar am-fr">
							<div class="am-btn-group am-btn-group-xs">
								<button type="button" class="am-btn am-btn-default"><span class="am-icon-plus"></span></button>
							  <button type="button" class="am-btn am-btn-default"><span class="am-icon-pencil"></span></button>
							  <button type="button" class="am-btn am-btn-default"><span class="am-icon-times"></span></button>
							</div>
						  </div>
						</div>
					  </li>
  					<%}} %> 
  					
					</ul>
				  </div>
				 
				</div>

			</div>
			</div>


		  </div>
		  <!-- content end -->
	</div>
</div>
</div>

<footer class="my-footer">
<br>
		<p>2015年天津工业大学 毕业设计 <br><small>© Copyright 庄金鑫. 版权所有，禁止转载.</small></p>
  </div>
</footer>

<!--[if lt IE 9]>
<script src="http://libs.baidu.com/jquery/1.11.1/jquery.min.js"></script>
<script src="http://cdn.staticfile.org/modernizr/2.8.3/modernizr.js"></script>
<script src="/js/polyfill/rem.min.js"></script>
<script src="/js/polyfill/respond.min.js"></script>
<script src="/js/amazeui.legacy.js"></script>
<![endif]-->

<!--[if (gte IE 9)|!(IE)]><!-->
<script src="js/jquery.min.js"></script>
<script src="js/amazeui.min.js"></script>
<!--<![endif]-->
</body>
</html>