<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>管理员登陆</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<script type="text/javascript" src="/lixianyuan/js/jquery-1.8.2.js"></script>
	<script type="text/javascript" src="/lixianyuan/js/login.js"></script>
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
<%--   <body>
  <div align="center">
    <form action="${pageContext.request.contextPath }/mylogin/login.action" method="POST">
    	<input type="text" name="username"/><br/><br/>
    	<input type="password" name="password"><br/><br/>
    	<input type="submit" value="管理员登陆"/><br/>
    </form>
  </div>
  
  <div align="center">
   <form action="${pageContext.request.contextPath }/LoginServlet" method="POST">
    	用户名：<input id type="text" name="username"/><br/>
    	密码： <input type="password" name="password"/><br/>
    	<input type="submit" value="管理员登陆"/>
    </form>
  </div>
  
 
  </body> --%>
  
  
  <!-- 用于登陆 -->
 <body>
    <input id="userName" type="text" name="userName"/><br/><br/>
    <input id="pwd" type="password" name="password"/><br/><br/>
    <a id="sb" href="#">校验</a><br/><br/>
    <a id="login" href="#" >开始登陆</a>
  </body>
  
  
  <script type="text/javascript">  	
	
  	login();
  </script>
  
  
  
  
  
</html>
