<%@ page language="java" import="java.util.*,com.zhaopin.po.*,java.net.URLDecoder;" pageEncoding="UTF-8"%>

<%	String name=null;
	String type=null;
	
	//Cookie cookies[]=request.getCookies();
	
	//name=URLDecoder.decode(cookies[1].getValue(),"UTF-8");
	//type=cookies[2].getValue();
	//System.out.println("cookie长度："+cookies.length); 
	//System.out.println("用户名："+name); 
	//System.out.println("用户类型："+type);
	
%>

<!DOCTYPE html>
<html>
<head lang="en">
  <meta charset="UTF-8">
  <title>首页</title>
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
      <a href="index.jsp">猎聘招聘网</a>
    </h1>

    <button class="am-topbar-btn am-topbar-toggle am-btn am-btn-sm am-btn-secondary am-show-sm-only"
            data-am-collapse="{target: '#collapse-head'}"><span class="am-sr-only">导航切换</span> <span
        class="am-icon-bars"></span></button>

    <div class="am-collapse am-topbar-collapse" id="collapse-head">
      <ul class="am-nav am-nav-pills am-topbar-nav">
        <li class="am-active"><a href="index.jsp">首页</a></li>
        <li><a href="job.jsp">工作职位</a></li>
		<li><a href="man.jsp">精英人才</a></li>
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
	    <article class="blog-main">
			<!-- 图片轮播­-->
			<div class="am-slider am-slider-default" data-am-flexslider>
			   	<ul class="am-slides">
					<li><img src="img/banner/1.jpg" /></li>
					<li><img src="img/banner/2.jpg" /></li>			
			  	</ul>
			</div>

			<br>

			<!--搜索框-->
			<form action="JobSearchServlet" method="post">
			<div class="am-input-group am-input-group-primary">
				<input type="text" class="am-form-field" name="keyword" placeholder="输入职位名称、公司名称试试！">
				<span class="am-input-group-btn">
					<button class="am-btn am-btn-primary" type="submit">搜索</button>
				</span>
			</div>
			</form>

			<br>

			<!---选项卡-->
			<div class="am-tabs" data-am-tabs>
			  	<ul class="am-tabs-nav am-nav am-nav-tabs">
					<li class="am-active"><a href="#tab1">热门职位</a></li>
					<li><a href="#tab2">最新职位</a></li>
			  	</ul>

			 	<div class="am-tabs-bd">

					<div class="am-tab-panel am-fade am-in am-active" id="tab1">
					
					   <%
							List<Joblist> joblistCount = (List<Joblist>)request.getAttribute("JoblistCount");
							if(null == joblistCount){
							System.out.println("为什么会是空的呢？");
							response.sendRedirect("JoblistServlet");
						%>
							
						<%	
							}else{
								int i = 1;
								for(Joblist jc : joblistCount){
						%>	

						<div class="doc-example"><article class="am-comment">
							<a href="#link-to-user-home"><img src="<%=jc.getCompanylogo()%>" alt="" class="am-comment-avatar" width="48" height="48"/></a>
							<div class="am-comment-main">
								<header class="am-comment-hd">
									<div class="am-comment-meta">
										<a href="#link-to-user" class="am-comment-author"><%=jc.getCompanyname()%></a> 发布于 <time datetime="2013-07-27T04:54:29-07:00" > <%=jc.getZ_time()%></time>
									</div>
									<div class="am-comment-actions"> 
										<a href=""><i class="am-icon-thumbs-up"></i></a>
										<a href=""><i class="am-icon-thumbs-down"></i></a> 
									</div>
								</header>
								<div class="am-comment-bd">

									<form class="am-form" action="JobdetailServlet" method="post">
									职位：<input type="submit" class="am-btn am-btn-link" value=<%=jc.getZ_jobname()%>>
										工作城市：<%=jc.getZ_city()%>  &nbsp;&nbsp;&nbsp;&nbsp;
										薪资：<%=jc.getZ_salary()%><input type="hidden"  name="zid" value=<%=jc.getZhaopinid()%>>
									</form>				
								</div>
							</div>
						</div>
						<br>
											
						<%}} %>
						
						<ul class="am-pagination am-pagination-centered">
							  <li class="am-disabled"><a href="#">&laquo;</a></li>
							  <li class="am-active"><a href="#">1</a></li>
							  <li><a href="#">2</a></li>
							  <li><a href="#">3</a></li>
							  <li><a href="#">4</a></li>
							  <li><a href="#">5</a></li>
							  <li><a href="#">&raquo;</a></li>
						</ul>

					</div>
				


					<div class="am-tab-panel am-fade" id="tab2">
						
						<%
							List<Joblist> joblistTime = (List<Joblist>)request.getAttribute("JoblistTime");
							if(null == joblistTime){
							System.out.println("为什么会是空的呢？");
							}else{
								int i = 1;
								for(Joblist jc : joblistTime){
						%>	

						<div class="doc-example"><article class="am-comment">
							<a href="#link-to-user-home"><img src="<%=jc.getCompanylogo()%>" alt="" class="am-comment-avatar" width="48" height="48"/></a>
							<div class="am-comment-main">
								<header class="am-comment-hd">
									<div class="am-comment-meta">
										<a href="#link-to-user" class="am-comment-author"><%=jc.getCompanyname()%></a> 发布于 <time datetime="2013-07-27T04:54:29-07:00" > <%=jc.getZ_time()%></time>
									</div>
									<div class="am-comment-actions"> 
										<a href=""><i class="am-icon-thumbs-up"></i></a>
										<a href=""><i class="am-icon-thumbs-down"></i></a> 
									</div>
								</header>
								<div class="am-comment-bd">
									<form class="am-form" action="JobdetailServlet" method="post">
									职位：<input type="submit" class="am-btn am-btn-link" value=<%=jc.getZ_jobname()%>>
									
									工作城市：<%=jc.getZ_city()%>  &nbsp;&nbsp;&nbsp;&nbsp;
									薪资：<%=jc.getZ_salary()%><input type="hidden"  name="zid" value=<%=jc.getZhaopinid()%>>
									</form>
								</div>
							</div>
						</div>
						<br>											
						<%}} %>				  	
					<br>

						<ul class="am-pagination am-pagination-centered">
						  <li class="am-disabled"><a href="#">&laquo;</a></li>
						  <li class="am-active"><a href="#">1</a></li>
						  <li><a href="#">2</a></li>
						  <li><a href="#">3</a></li>
						  <li><a href="#">4</a></li>
						  <li><a href="#">5</a></li>
						  <li><a href="#">&raquo;</a></li>
						</ul>

			  		</div>

				</div>
			</div>
		</article>
  	</div>



	<div class="am-u-md-4 blog-sidebar">
	    <div class="am-panel-group">
		  	<section class="am-panel am-panel-default">
	        	<div class="am-panel-hd">热门职位</div>
	        	<div class="am-panel-bd">
					<table class="am-table">

						<tr>
							<td>百度</td>
							<td>软件工程师</td>
							<td>12K~15K</td>
							<td><span class="am-badge am-badge-danger am-round">1</span></td>
						</tr>
						<tr>
							<td>腾讯</td>
							<td>研发工程师</td>
							<td>10K~14K</td>
							<td><span class="am-badge am-badge-warning am-round">2</span></td>
						</tr>
						<tr>
							<td>微软</td>
							<td>.NET工程师</td>
							<td>8K~13K</td>
							<td><span class="am-badge am-badge-success am-round">3</span></td>
						</tr>
						<tr>
							<td>新浪</td>
							<td>产品经理</td>
							<td>9K~14K</td>
							<td><span class="am-badge am-badge-secondary am-round">4</span></td>
						</tr>
						<tr>
							<td>网易</td>
							<td>安卓工程师</td>
							<td>7K~12K</td>
							<td><span class="am-badge am-round">5</span></td>
						</tr>
						
				  	</table>
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

		  	<section class="am-panel am-panel-default">
	        	<div class="am-panel-hd">联系我们</div>
	        	<div class="am-panel-bd">
					<ul class="am-avg-sm-4 blog-team">

			  			<div class="am-dropdown" data-am-dropdown>
				  			<li><a href="" class="am-icon-btn am-primary am-icon-qq am-dropdown-toggle"></a></li>
				  			<div class="am-dropdown-content">
				  				<p>QQ：987762324</p>
				  			</div>
				  		</div>
				
						<div class="am-dropdown" data-am-dropdown>
				 			<li><a href="" class="am-icon-btn am-primary am-icon-weixin am-dropdown-toggle"></a></li>
				  			<div class="am-dropdown-content">
				  				<img class="am-thumbnail am-radius"  src="img/us/weixin.jpg" alt="微信号：zhuangjinxin_001" width="140" height="140"/>
				  			</div>
						</div>

						<div class="am-dropdown" data-am-dropdown>
							<li><a href="" class="am-icon-btn am-primary am-icon-envelope am-dropdown-toggle"></a></li>
							<div class="am-dropdown-content">
							    <p>用户反馈：yh@xiaozhao.com</p>
								<p>企业反馈：qy@xiaozhao.com</p>
							 </div>
						</div>

	          		</ul>
	        	</div>
	      	</section>
	    </div>
	</div>
</div>


<footer class="my-footer">
<br>
		<p>2015年&nbsp;&nbsp;&nbsp;天津工业大学 &nbsp;&nbsp;&nbsp;毕业设计<br>
		<small>© Copyright 庄金鑫. 版权所有，禁止转载.</small><br>
		<small>GitHub：<a href="https://github.com/zhuangjinxin/zhaopin">https://github.com/zhuangjinxin/zhaopin</a>.</small>
		</p>

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