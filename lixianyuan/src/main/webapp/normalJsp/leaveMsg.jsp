<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    
    <title>给站长留言</title>
	<meta name="Keywords" content="www.lixianyuan.org,lixianyuan,李贤元,李贤元博客,lixianyuan,李贤元网站">
	<meta name="Description" content="李贤元个人网站,李贤元博客">
	<meta name="author" content="李贤元" />
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<link rel="stylesheet" href="${pageContext.request.contextPath }/css/normalJsp/leaveMsg.css">	
	
  </head>
  
<body>
	<nav class="nav">
		<ul>
			<li><a href="${pageContext.request.contextPath }/index.jsp"><span>首页</span></a></li>
			<li><a href="${pageContext.request.contextPath }/PathOfProcedure/index.html"><span>程序之路</span></a></li>
			<li><a href="${pageContext.request.contextPath }/normalJsp/3.jsp"><span>闲言碎语</span></a></li>
			<li><a href="${pageContext.request.contextPath }/normalJsp/4.jsp"><span>相册</span></a></li>
			<li><a href="${pageContext.request.contextPath }/normalJsp/5.jsp"><span>学不尽</span></a></li>
			<li><a href="${pageContext.request.contextPath }/normalJsp/6.jsp"><span>留言</span></a></li>
			<li><a href="${pageContext.request.contextPath }/normalJsp/7.jsp"><span>关于我</span></a></li>
		</ul>
	</nav>
	<!-- <!--/nav-->
	<div class="blank"></div>

	
	
	

    <!-- 留言部分 -->
   	<form id="form2" action="${pageContext.request.contextPath }/leaveAndRep/leave_save.action" method="POST">
   		怎么称呼您(必填):<input type="text"  name="leaveMsg.userName" /><font color="red"><s:fielderror fieldName="leaveMsg.userName"></s:fielderror></font> <br/><br/>
   		您的emial(必填):<input type="text"  name="leaveMsg.email" /><font color="red"><s:fielderror fieldName="leaveMsg.email"></s:fielderror></font> <br/><br/>
   		您的网站(选填):<input type="text" name="leaveMsg.website" /><br/><br/>
   		在这里输入您的留言:<textarea name="leaveMsg.content" ></textarea><font color="red"><s:fielderror fieldName="leaveMsg.content"></s:fielderror></font> <br/><br/>
   		<input type="submit" value="提交留言"><br/>
   	</form>
  </body>
</html>
