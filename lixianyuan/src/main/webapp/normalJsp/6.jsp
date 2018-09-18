<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  
    
    <title>留言</title>
  <!-- <link href="../css/ly.css" rel="stylesheet" /> -->
	<!-- <link href="../css/footer.css" rel="stylesheet" /> -->
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" href="../css/normalJsp/6.css">	

  </head>
  
<body>
	<nav class="nav">
		<ul>
			<li><a href="../index.jsp"><span>首页</span></a></li>
			<li><a href="../PathOfProcedure/index.html"><span>程序之路</span></a></li>
			<li><a href="../normalJsp/3.jsp"><span>闲言碎语</span></a></li>
			<li><a href="../normalJsp/4.jsp"><span>相册</span></a></li>
			<li><a href="../normalJsp/5.jsp"><span>学不尽</span></a></li>
			<li><a href="../leaveAndRep/leave2.action"><span>留言墙</span></a></li>
			<li><a href="../normalJsp/7.jsp"><span>关于我</span></a></li>
		</ul>
	</nav>
	<!-- <!--/nav-->
	<div class="blank"></div>

	
	
	
	
	<div align="center">
		<font size="20" color="blue">来给我留言吧</font>
	</div>
	
	
	<!-- 留言部分 -->
	 <form id="form1" action="../leaveAndRep/leave_save.action" method="post">
   		怎么称呼您(必填):<input type="text"  name="leaveMsg.userName" /><br/><br/>
   		您的emial(必填):<input type="text"  name="leaveMsg.email" /><br/><br/>
   		您的网站(选填):<input type="text" name="leaveMsg.website" /><br/><br/>
   		在这里输入您的留言:<textarea name="leaveMsg.content" ></textarea><br/>
   		<!-- input type="text" value="有请您的发言..." name="leaveMsg.content" style="height: 93px; width: 472px" /> --><br/>
   		<input type="submit" value="提交留言"><br/>
   	</form>
   	
   	<br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
   	<div id="footer">CopyRight &copy 2017 李贤元博客 <a href="http://www.miitbeian.gov.cn/">闽ICP备17018144号</a> </div>
   	
  </body>
</html>