<%@ page language="java" import="java.util.*,com.zhaopin.po.*,java.net.URLDecoder;" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head lang="en">
  <meta charset="UTF-8">
  <title>职位详情</title>
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
        <li class="am-active"><a href="job.jsp">工作职位</a></li>
       <li><a href="man.jsp">精英人才</a></li>
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
    
    		<%
				Joblist jobdetail = (Joblist)request.getAttribute("jobdetail");
				if(null == jobdetail){
				System.out.println("为什么详细信息会是空的呢？");
				response.sendRedirect("JobdetailServlet");
				}else{
				System.out.println("显示详细信息");
				
			%>	

			<div class="am-panel am-panel-default">
			  <div class="am-panel-hd">职位名称：<%=jobdetail.getZ_jobname()%></div>
			  <div class="am-panel-bd">

			        职位描述：<br>
					工作地点：<%=jobdetail.getZ_city() %> &nbsp;&nbsp;薪资待遇：<%=jobdetail.getZ_salary() %><br><br>

					职位描述：<br>
					<%=jobdetail.getZ_description() %><br><br>

					任职要求：<br>
					<%=jobdetail.getZ_requirements() %><br><br>

					<hr>
					<button class="am-btn am-btn-secondary am-radius" data-am-popover="{content: '已发送'}">发求职信</button>
					<button class="am-btn am-btn-secondary am-radius" data-am-popover="{content: '已关注'}">加关注</button>			

				
	</article>
    </div>

  <div class="am-u-md-4 blog-sidebar">
    <div class="am-panel-group">

	 <section class="am-panel am-panel-default">
        <div class="am-panel-hd">公司概况</div>
        <div class="am-panel-bd">
          <p>公司名称：<%=jobdetail.getCompanyname() %><br/>
          	公司概述：<%=jobdetail.getCompanybrief() %><br/>
          	公司规模：<%=jobdetail.getCompanysize() %><br/>
          	公司位置：<%=jobdetail.getCompanylocate() %><br/>
          </p>
        </div>
      </section>

<%} %>
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