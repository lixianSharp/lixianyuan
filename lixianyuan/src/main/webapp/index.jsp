<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>

<title>李贤元个人博客</title>
<meta name="Keywords" content="www.lixianyuan.org,lixianyuan,李贤元,李贤元博客,lixianyuan,李贤元网站">
<meta name="Description" content="李贤元个人网站,李贤元博客">
<meta name="author" content="李贤元" />
<!-- <link href="css/index.css" rel="stylesheet"> -->

<script src="/lixianyuan/js/jquery-1.8.2.js"></script>
<script src="/lixianyuan/js/main.js"></script>
<script src="/lixianyuan/js/lunbo.js"></script>
	
<link rel="stylesheet" href="../css/index.css">	

</head>


<!-- 页面加载成功之后轮播图片 -->
<body onload="init()">
	<header> <nav id="topnav" class="f_r">
	<ul>
		<a href=" index.jsp" target="_self">首页</a>
		<a
			href=" PathOfProcedure/index.html"
			target="_self">程序之路</a>
		<a href="../normalJsp/3.jsp" target="_self">闲言碎语</a>
		<a href="../normalJsp/4.jsp" target="_self">相册</a>
		<a href="../normalJsp/5.jsp" target="_self">学不尽</a>
		<a href="../normalJsp/6.jsp" target="_self">留言</a>
		<a href="../normalJsp/7.jsp" target="_self">关于</a>
	</ul>
	<script src="js/nav.js"></script> </nav> 
		<a href="#" id="logo">
			<img src="../images/logo.png"> 
			<img src=" ../images/logo.png">
			<img src=" ../images/logo.png"> 
			<img src=" ../images/logo.png">
			<img src=" ../images/logo.png"> 
			<img src=" ../images/logo.png"> 
			<img src=" ../images/logo.png">
		</a> 
		<a href="normalJsp/myLogin.jsp" id="logo">
			<img src=" ../images/logo.png">
		</a> 
		<a href="#" id="logo"> 
			<img src=" ../images/logo.png"> 
			<img src=" ../images/logo.png"> 
			<img src=" ../images/logo.png"> 
			<img src=" ../images/logo.png"> 
			<img src=" ../images/logo.png"> 
			<img src=" ../images/logo.png"> 
			<img src=" ../images/logo.png">
			<img src=" ../images/logo.png">
		</a> 
	</header>

	<!-- 标题部分结束 -->


	<!-- 轮播图 -->
	<div id="container">
		<div id="lunbo">
			<a id="lunboA" href="#" target="_self"> <img id="luboid"
				src="/lixianyuan/ ../images/1.jpg" />
			</a>
		</div>
	</div>

	<div class="motto">
		<p>这个世界上有很多事情，你以为明天一定可以再继续做的； 有很多人，你以为明天一定可以再见到面的；
			于是，在你暂时放下先或者暂时转过身的时候，你心中所有的，只是明日又将重聚的希望，有时候甚至连这点希望也不会感觉到。
			因为，你以为日子既然这样一天一天地过来的，当然也应该就这样一天一天地过去。 昨天、今天和明天应该是没有什么不同的。
			但是，就会有那么一次：在你一放手，一转身的那一刹那，有的事情就完全改变了。 太阳落下去，而在它重新升起以前，有些人，就从此和你永诀了。</p>
	</div>
	<!-- 轮播图结束 -->

	<!-- 三栏布局开始Start of the three column layout -->
	<div id="container2">
		<ul class="template">
			<section>
			<h2>Flipped</h2>
			<img src=" ../images/01.jpg">
			<p>不要因为也许会改变就不肯说那句美丽的誓言；不要因为也许会分离就不敢求一次倾心的相遇。 --席慕蓉 《印记》</p>
			<h4>
				<a href="../normalJsp/3.jsp"><b>阅读</b><span>更多>></span></a>
			</h4>
			</section>
			<section>
			<h2>Melancholy</h2>
			<img src=" ../images/02.jpg">
			<p>
				在一回首间，才忽然发现，原来，我一生的种种努力，不过只为了周遭的人对我满意而已。为了搏得他人的称许与微笑，我战战兢兢地将自己套入所有的模式所有的桎梏。走到途中才忽然发现，我只剩下一副模糊的面目，和一条不能回头的路&nbsp;--席慕蓉《独白》</p>
			<h4>
				<a href="../normalJsp/3.jsp"><b>阅读</b><span>更多>></span></a>
			</h4>
			</section>
			<section>
			<h2>Sunshine</h2>
			<img src=" ../images/03.jpg">
			<p>
				我喜欢回顾，是因为我不喜欢忘记。我总认为，在世间，有些人、有些事、有些时刻似乎都有一种特定的安排，在当时也许不觉得，但是在以后回想起来，却都有一种深意。我有过许多美丽的时刻，实在舍不得将它们忘记。
				--席慕容 《透明的哀伤》</p>
			<h4>
				<a href="。。/normalJsp/3.jsp"><b>阅读</b><span>更多>></span></a>
			</h4>
			</section>
		</ul>
	</div>
	<!-- 三栏布局结束End of the three column layout -->


	<div class="idea">
		<p>脚下的路，如果不是你自己的选择，那这旅程的终点在哪儿，也没人知道，你会走到哪，会碰到谁，都不一定。</p>
	</div>

	<!-- 底部的最后一栏 -->
	<footer>
	<div id="footId" style="position:fixed; bottom:0;">
		<ul>
			<p align="center">
				CopyRight &copy 2017  李贤元博客
				<a  href="http://www.miitbeian.gov.cn/">闽ICP备17018144号</a>
			</p>
		</ul>
	</div>
	</footer>
</body>
<!--  JavaScript代码部分  -->



 <script type="text/javascript">
	var i = 1;
	function init() {
		setInterval(changeImage, 2000);
	}
	changeImage();
	lunboHref();
</script> 


</html>
