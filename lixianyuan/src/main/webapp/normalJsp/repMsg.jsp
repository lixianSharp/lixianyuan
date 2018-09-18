<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!-- 导入jsp的核心标签库 -->
<%-- <%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
 --%><!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>回复留言页面</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
   
   	<!-- 先收传过来的用户留言的主键id(接收从showLLeaveRepToAdmin.jsp页面传过来的参数值) -->
   	<%-- 参数:${param.leaId } 对当前要回复的那条留言的id主键 --%>
   	
	<!-- 进行回复留言 -->
	<form action="../leaveAndRep/leave_repUserMsg.action?leaveId=${param.leaId }" method="POST">
   		<input type="text" value="李贤元" name="replyMsg.myName" />站长的名字<br/><br/>
   		<!-- <input type="text" value="有请站长的发言..." name="replyMsg.repContent" style="height: 93px; width: 472px" /><br/><br/> -->
   		<textarea name="replyMsg.repContent" value="站长的回复留言请在此处填写" ></textarea>回复的留言内容<br/><br/>
   		<input type="submit" value="提交对该留言的回复"><br/>
   	</form>
	
	
	
	
  </body>
</html>
