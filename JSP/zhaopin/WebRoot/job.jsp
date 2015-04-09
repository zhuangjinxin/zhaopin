<%@ page language="java" import="java.util.*,com.zhaopin.po.*" pageEncoding="UTF-8"%>>
<!DOCTYPE html>
<html>
<head lang="en">
  <meta charset="UTF-8">
  <title>å·¥ä½èä½</title>
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
      <a href="index.html">çèæèç½</a>
    </h1>

    <button class="am-topbar-btn am-topbar-toggle am-btn am-btn-sm am-btn-secondary am-show-sm-only"
            data-am-collapse="{target: '#collapse-head'}"><span class="am-sr-only">å¯¼èªåæ¢</span> <span
        class="am-icon-bars"></span></button>

    <div class="am-collapse am-topbar-collapse" id="collapse-head">
      <ul class="am-nav am-nav-pills am-topbar-nav">
        <li ><a href="index.html">é¦é¡µ</a></li>
        <li class="am-active"><a href="job.html">å·¥ä½èä½</a></li>
		<li><a href="man.html">ç²¾è±äººæ</a></li>
      </ul>

      <div class="am-topbar-right">
        <button class="am-btn am-btn-secondary am-topbar-btn am-btn-sm"><span class="am-icon-pencil"></span> æ³¨å</button>
      </div>

      <div class="am-topbar-right">
        <button class="am-btn am-btn-secondary am-topbar-btn am-btn-sm"><span class="am-icon-user"></span> ç»å½</button>
      </div>
    </div>
  </div>
</header>

<br>

<div class="am-g am-g-fixed blog-g-fixed">
  <div class="am-u-md-8">
    <article class="blog-main">
		<!--æç´¢æ¡-->
		  <div class="am-input-group am-input-group-primary">
			  <input type="text" class="am-form-field" placeholder="è¾å¥èä½åç§°ãå¬å¸åç§°è¯è¯ï¼">
			  <span class="am-input-group-btn">
				<button class="am-btn am-btn-primary" type="button">æç´¢</button>
			  </span>
			</div>
		<br>
		<!--æç´¢ç»æé¢æ¿-->
		<section class="am-panel am-panel-default">
		  <header class="am-panel-hd">
			<h3 class="am-panel-title">å·¥ä½æºä¼</h3>
		  </header>
		  <div class="am-panel-bd">
				<div class="doc-example"><article class="am-comment">
				<a href="#link-to-user-home"><img src="img/baidu.png" alt="" class="am-comment-avatar" width="48" height="48"/></a>
				<div class="am-comment-main">
				<header class="am-comment-hd">
					<div class="am-comment-meta">
						<a href="#link-to-user" class="am-comment-author">ç¾åº¦</a> åå¸äº <time datetime="2013-07-27T04:54:29-07:00" title="2013å¹´7æ27æ¥ ä¸å7:54 æ ¼æå°¼æ²»æ åæ¶é´+0800">2014-7-12 15:30</time>
					</div>
					<div class="am-comment-actions">
						<a href=""><font color="blue">è¯¦ç»ä¿¡æ¯</font></a> 
						<a href=""><i class="am-icon-thumbs-up"></i></a> 
						<a href=""><i class="am-icon-thumbs-down"></i></a>
					</div>
				</header>
				<div class="am-comment-bd">
					<table  class="am-table am-table-bordered"> 
						<tr> 
							<td>èä½åç§°ï¼Javaå·¥ç¨å¸ </td><td> å·¥ä½å°ç¹ï¼åäº¬</td>  <td> èªèµï¼15K~20K </td> 
						</tr> 
						<tr> 
						<td> å·¥ä½å°ç¹ï¼åäº¬</td> <td> å·¥ä½å°ç¹ï¼åäº¬</td><td>å¶ä»ç¦å©ï¼äºé©ä¸é </td> 
						</tr> 
					</table> 
				</div>
				</div>
			</div>

			<br>

			<div class="doc-example"><article class="am-comment">
				<a href="#link-to-user-home"><img src="img/xinlang.png" alt="" class="am-comment-avatar" width="48" height="48"/></a>
				<div class="am-comment-main">
				<header class="am-comment-hd">
					<div class="am-comment-meta">
						<a href="#link-to-user" class="am-comment-author">æ°æµª</a> åå¸äº <time datetime="2013-07-27T04:54:29-07:00" title="2013å¹´7æ27æ¥ ä¸å7:54 æ ¼æå°¼æ²»æ åæ¶é´+0800">2014-7-12 15:30</time>
					</div>
					<div class="am-comment-actions">
						<a href=""><i class="am-icon-thumbs-up"></i></a> 
						<a href=""><i class="am-icon-thumbs-down"></i></a>
					</div>
				</header>
				<div class="am-comment-bd">
					<p>é£ï¼é£æ¯ä¸å°åç»åé¨æ¯äº²çä¿¡ãæè«ç¶ç«å¨éªæ¥¼ä¸ï¼æåçå°æ°¸è¿çæ¨±å­èµ°å°è¡å¿ãå¶å®é¨ä¸å¾å¹¶ä¸å¤§ï¼å´æ¯ä¸çä¸ä¸ä¸­æå¤§çä¸åºé¨ãèé£å°ä¿¡æ¯è¿æ ·åçï¼å¹´è½»çæ¨±å­ç¥ä¸ç¥éå¢ï¼</p>
				</div>
			</div>

			<br>

			<div class="doc-example"><article class="am-comment">
				<a href="#link-to-user-home"><img src="img/aiqiyi.png" alt="" class="am-comment-avatar" width="48" height="48"/></a>
				<div class="am-comment-main">
				<header class="am-comment-hd">
					<div class="am-comment-meta">
						<a href="#link-to-user" class="am-comment-author">ç±å¥èº</a> åå¸äº <time datetime="2013-07-27T04:54:29-07:00" title="2013å¹´7æ27æ¥ ä¸å7:54 æ ¼æå°¼æ²»æ åæ¶é´+0800">2014-7-12 15:30</time>
					</div>
					<div class="am-comment-actions">
						<a href=""><i class="am-icon-thumbs-up"></i></a> 
						<a href=""><i class="am-icon-thumbs-down"></i></a>
					</div>
				</header>
				<div class="am-comment-bd">
					<p>é£ï¼é£æ¯ä¸å°åç»åé¨æ¯äº²çä¿¡ãæè«ç¶ç«å¨éªæ¥¼ä¸ï¼æåçå°æ°¸è¿çæ¨±å­èµ°å°è¡å¿ãå¶å®é¨ä¸å¾å¹¶ä¸å¤§ï¼å´æ¯ä¸çä¸ä¸ä¸­æå¤§çä¸åºé¨ãèé£å°ä¿¡æ¯è¿æ ·åçï¼å¹´è½»çæ¨±å­ç¥ä¸ç¥éå¢ï¼</p>
				</div>
				</div>
			</div>

			<br>

			<div class="doc-example"><article class="am-comment">
				<a href="#link-to-user-home"><img src="img/google.png" alt="" class="am-comment-avatar" width="48" height="48"/></a>
				<div class="am-comment-main">
				<header class="am-comment-hd">
					<div class="am-comment-meta">
						<a href="#link-to-user" class="am-comment-author">è°·æ­</a> åå¸äº <time datetime="2013-07-27T04:54:29-07:00" title="2013å¹´7æ27æ¥ ä¸å7:54 æ ¼æå°¼æ²»æ åæ¶é´+0800">2014-7-12 15:30</time>
					</div>
					<div class="am-comment-actions">
						<a href=""><i class="am-icon-thumbs-up"></i></a> 
						<a href=""><i class="am-icon-thumbs-down"></i></a>
					</div>
				</header>
				<div class="am-comment-bd">
					<p>é£ï¼é£æ¯ä¸å°åç»åé¨æ¯äº²çä¿¡ãæè«ç¶ç«å¨éªæ¥¼ä¸ï¼æåçå°æ°¸è¿çæ¨±å­èµ°å°è¡å¿ãå¶å®é¨ä¸å¾å¹¶ä¸å¤§ï¼å´æ¯ä¸çä¸ä¸ä¸­æå¤§çä¸åºé¨ãèé£å°ä¿¡æ¯è¿æ ·åçï¼å¹´è½»çæ¨±å­ç¥ä¸ç¥éå¢ï¼</p>
				</div>
				</div>
			</div>

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
		</section>
</div>

  <div class="am-u-md-4 blog-sidebar">
    <div class="am-panel-group">
	  <section class="am-panel am-panel-default">
        <div class="am-panel-hd">ç­é¨èä½</div>
        <div class="am-panel-bd">
			<table class="am-table">
				<tr>
					<td>ç¾åº¦</td>
					<td>äº§åç»ç</td>
					<td>8K~15K</td>
					<td><span class="am-badge am-badge-danger am-round">1</span></td>
				</tr>
				<tr>
					<td>ç¾åº¦</td>
					<td>äº§åç»ç</td>
					<td>8K~15K</td>
					<td><span class="am-badge am-badge-warning am-round">2</span></td>
				</tr>
				<tr>
					<td>ç¾åº¦</td>
					<td>äº§åç»ç</td>
					<td>8K~15K</td>
					<td><span class="am-badge am-badge-success am-round">3</span></td>
				</tr>
				<tr>
					<td>ç¾åº¦</td>
					<td>äº§åç»ç</td>
					<td>8K~15K</td>
					<td><span class="am-badge am-badge-secondary am-round">4</span></td>
				</tr>
				<tr>
					<td>ç¾åº¦</td>
					<td>äº§åç»ç</td>
					<td>8K~15K</td>
					<td><span class="am-badge am-round">5</span></td>
				</tr>
			  </table>
        </div>
      </section>
	 <section class="am-panel am-panel-default">
        <div class="am-panel-hd">ç­é¨å¬å¸</div>
        <div class="am-panel-bd">
          <p>åææªæçä¸­æäºç«¯å­åæå¡ï¼è®©æ¨å¨ web å¹³å°ä¸èªç±ä½¿ç¨é«åè´¨ä¸­æå­ä½ï¼è·¨å¹³å°ãå¯æå¯»ï¼èä¸è¶ç¾ãäºç«¯å­åæ¯æä»¬çäºä¸ï¼æ¨å¹¿å­åå­¦ç¥è¯æ¯æä»¬çå¿ä¸ãä»å­ä½åºåï¼å³å¿è®¾è®¡ä¸æä»¬ççæ´»ï¼justfont blog
            æ­£æ¯çºæ­¤èçã</p>
        </div>
      </section>

      <section class="am-panel am-panel-default">
        <div class="am-panel-hd">ç¸å³é¾æ¥</div>
        <div class="am-panel-bd">
          <ul class="am-avg-sm-4 blog-team">
            <li><a href="http://www.zhaopin.com"><img class="am-thumbnail"
                     src="img/link/zhilian.png" alt=""/></a>
            </li>
            <li><img class="am-thumbnail"
                     src="img/link/dajie.png" alt=""/>
            </li>
            <li><a href="http://www.neitui.me"><img class="am-thumbnail"
                     src="img/link/neitui.jpg" alt=""/></a>
            </li>
            <li><img class="am-thumbnail"
                     src="img/link/lagou.jpg" alt=""/>
            </li>
            <li><img class="am-thumbnail"
                     src="img/link/58.png" alt=""/>
            </li>
            <li><img class="am-thumbnail"
                     src="img/link/yingjiesheng.png" alt=""/>
            </li>
            <li><img class="am-thumbnail"
                     src="img/link/yingcai.png" alt=""/>
            </li>
            <li><img class="am-thumbnail"
                     src="img/link/ganji.png" alt=""/>
            </li>
          </ul>
        </div>
      </section>
	  <section class="am-panel am-panel-default">
        <div class="am-panel-hd">æ´å¤æºä¼</div>
        <div class="am-panel-bd">

		<ul class="am-avg-sm-4 blog-team">

		  <div class="am-dropdown" data-am-dropdown>
			  <li><a href="" class="am-icon-btn am-primary am-icon-qq am-dropdown-toggle"></a></li>
			  <div class="am-dropdown-content">
			  	<p>ç¨æ·ç¾¤ï¼987762324</p>
				<p>ä¼ä¸ç¾¤ï¼987762324</p>

			  </div>
			</div>

			<div class="am-dropdown" data-am-dropdown>
			 <li><a href="" class="am-icon-btn am-primary am-icon-weixin am-dropdown-toggle"></a></li>
			  <div class="am-dropdown-content">
			  <img class="am-thumbnail am-radius"  src="img/us/weixin1.jpg" alt="" width="140" height="140"/>
				<p>å å³æ³¨ï¼æ´ç²¾å½©</p>
			  </div>
			</div>

			<div class="am-dropdown" data-am-dropdown>
			 <li><a href="http://weibo.com/allmobilize" class="am-icon-btn am-primary am-icon-weibo"></a></li>
			  <div class="am-dropdown-content">
			  <img class="am-thumbnail am-radius"  src="img/us/weixin1.jpg" alt="" width="140" height="140"/>
				<p>å å³æ³¨ï¼æ´ç²¾å½©</p>
			  </div>
			</div>

		  <div class="am-dropdown" data-am-dropdown>
			 <li><a href="" class="am-icon-btn am-primary am-icon-envelope am-dropdown-toggle"></a></li>
			  <div class="am-dropdown-content">
			    <p>åé¦æè§ï¼fk@xiaozhao.com</p>
				<p>ä¼ä¸åä½ï¼hr@xiaozhao.com</p>
			  </div>
			</div>

          </ul>

        </div>
      </section>
    </div>
  </div>

  <button data-am-smooth-scroll class="am-btn am-btn-success">æ»å¨å°é¡¶é¨</button>

</div>

<footer class="my-footer">
<br>
		<p>2015å¹´å¤©æ´¥å·¥ä¸å¤§å­¦ æ¯ä¸è®¾è®¡ <br><small>Â© Copyright åºéé«. çæææï¼ç¦æ­¢è½¬è½½.</small></p>
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