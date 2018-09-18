<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>学不尽</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!-- <link href="../css/xysy.css" rel="stylesheet"> -->
	<!-- <link href="../css/footer.css" rel="stylesheet" /> -->
	<script type="text/javascript" src="/lixianyuan/js/jquery-1.8.2.js"></script>
	<link rel="stylesheet" href="../css/normalJsp/5.css">	
	

  </head>

  <body>
  	<header> <nav id="topnav" class="f_r">
	<ul>
		<a href="../index.jsp" target="_self"><b>>>返回首页</b></a>
	</ul>
	</nav> </header>
  
  
     <div align="center">
  		<br/><br/>
	  	<%-- <a href="${pageContext.request.contextPath }/upload/baiduyun.action"><font size="100px" color="gray">从我的百度云下载资源</font></a><br/> --%>
	  	<a href="../normalJsp/baiduyunDown.jsp"><font size="100px" color="gray">从我的百度云下载资源</font></a><br/>
	  	<br/><br/><br/><br/><br/><br/>
	    <hr/>
	    <br/><br/><br/><br/>
	    <a href="/lixianyuan/upload/down_list.action"><font size="100px" color="blue">下载本地资源</font></a>
	    <!-- <a id="down" href="#"><font size="100px" color="blue">下载本地资源</font></a> -->
  	</div>
  	<br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
    <div id="footer">Copyright &copy 2017 李贤元博客<a href="http://www.miitbeian.gov.cn/">闽ICP备17018144号</a> </div>
  </body>
  
  <script type="text/javascript">
  	$("#down").click(function(){
  		alert("正在开发中。。");
  	});
  </script>
  
</html>
