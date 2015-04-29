<%@ page language="java" import="java.util.*,com.zhaopin.po.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head lang="en">
  <meta charset="UTF-8">
  <title>简历预览</title>
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
        <li><a href="job.jsp">工作职位</a></li>
		    <li class="am-active"><a href="man.jsp">精英人才</a></li>
      </ul>

      <div class="am-topbar-right">
        <a href="register.jsp" class="am-btn am-btn-secondary am-topbar-btn am-btn-sm" role="button"><span class="am-icon-pencil"></span> 注册</a>
      </div>

      <div class="am-topbar-right">
       <a href="login.jsp" class="am-btn am-btn-secondary am-topbar-btn am-btn-sm" role="button"><span class="am-icon-user"></span> 登录</a>
      </div>
    </div>
  </div>
</header>

<br>

<div class="am-g am-g-fixed blog-g-fixed">

  <div class="am-u-md-8">

    <article class="am-article">

			<div class="am-panel am-panel-default">
			  <div class="am-panel-hd">个人简历</div>
			  <div class="am-panel-bd">
				<%
					List<Users> userinfolist = (List<Users>)request.getAttribute("userinfolist");
					String photosrc ="img/users/2.jpeg";
					if(null == userinfolist){
					System.out.println("为什么会是空的呢？");
					response.sendRedirect("MandetailServlet");
					
					}else{
					int i = 1;
					for(Users user : userinfolist){
				%>	
			      <B>基本信息：</B><br>
					姓名：<%=user.getUsername() %>  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					性别：<%=user.getUsergender() %>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					邮箱：<%=user.getUseremail() %><br>
					学校：<%=user.getUserschool() %>&nbsp;&nbsp;
					专业:<%=user.getUserfield() %> &nbsp;&nbsp;
					毕业时间：<%=user.getUsergraduate()%><br>
					<%photosrc=user.getUserphoto(); %>
					<br>
				<%}} %>
				
				
				<B>项目经验：</B><br>
				
					<%
						List<Experience> experiencelist = (List<Experience>)request.getAttribute("experiencelist");
						if(null == experiencelist){
						System.out.println("为什么会项目经验是空的呢？");	
						}else{
							int i = 1;
							for(Experience exp : experiencelist){
					%>	
					项目名称：<%=exp.getProgram() %>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					公司名称：<%=exp.getCname() %>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					项目职位：<%=exp.getPosition() %><br>
					项目时间：
					
					
					<%=exp.getStarttime()%>~<%=exp.getEndtime()%><br>
					项目职责：<%=exp.getDuty() %><br>
					项目成果：<%=exp.getResult() %><br><br>

					
			<%}}%>
					
					<hr>
					<button type="button" class="am-btn am-btn-secondary am-radius">邀请投递</button>
					<button type="button" class="am-btn am-btn-secondary am-radius">发邮件</button>

	</article>
    </div>

  <div class="am-u-md-4 blog-sidebar">
    <div class="am-panel-group">

	 <section class="am-panel am-panel-default">
        <div class="am-panel-hd">头像信息</div>
        <div class="am-panel-bd">
        	<div align="center">
         		 <img class="am-img-thumbnail am-radius" alt="140*140" src=<%=photosrc%> width="120" height="120"/>
        	</div>
        </div>
      </section>
      <section class="am-panel am-panel-default">
	        	<div class="am-panel-hd">网站介绍</div>
	        	<div class="am-panel-bd">
	          		<p>基于JavaEE技术的猎聘招聘网的设计与实现，天津工业大学软件工程专业毕业设计作品。使用AmazeUI前端框架自适应不同分辨率的屏幕。
	          		此项目部署在阿里云云服务器上，供演示使用。希望大家多多指导，让作品变得更优秀！</p>
	        	</div>
	      	</section>

	      	<section class="am-panel am-panel-default">
	        	<div class="am-panel-hd">友情链接</div>
	        	<div class="am-panel-bd">
	          		<ul class="am-avg-sm-4 blog-team">
			            <li><a href="http://www.zhaopin.com"><img class="am-thumbnail"
			                     src="img/link/zhilian.png" alt=""/></a>
			            </li>
			            <li><a href="http://www.dajie.com">
			            	<img class="am-thumbnail" src="img/link/dajie.png" alt=""/>
			            	</a>
			            </li>
			            <li><a href="http://www.neitui.me"><img class="am-thumbnail"
			                     src="img/link/neitui.jpg" alt=""/></a>
			            </li>
			            <li><a href="http://www.lagou.com"><img class="am-thumbnail"
			                     src="img/link/lagou.jpg" alt=""/></a>
			            </li>
			            <li><a href="http://www.58.com"><img class="am-thumbnail"
			                     src="img/link/58.png" alt=""/></a>
			            </li>
			            <li><a href="http://www.yingjiesheng.com"><img class="am-thumbnail"
			                     src="img/link/yingjiesheng.png" alt=""/></a>
			            </li>
			            <li><a href="http://www.chinahr.com"><img class="am-thumbnail"
			                     src="img/link/yingcai.png" alt=""/></a>
			            </li>
			            <li><a href="http://www.ganji.com"><img class="am-thumbnail"
			                     src="img/link/ganji.png" alt=""/></a>
			            </li>
	          		</ul>
	        	</div>
	      	</section>

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
<script src="js/sendemail.js"></script>
<script src="js/jquery.min.js"></script>
<script src="js/amazeui.min.js"></script>
<!--<![endif]-->
</body>
</html>