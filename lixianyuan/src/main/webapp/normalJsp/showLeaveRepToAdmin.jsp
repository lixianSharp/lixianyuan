<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>显示留言和回复的留言</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">

<!-- css代码 -->
 <style type="text/css">
	body {
		font-size: 20px;
		background: #E3E3E5 url(/lixianyuan/images/about/bg.jpg) 50% top scroll no-repeat;
		background-repeat: repeat;
		background-size: cover;
		color: #5d5d5d;
	} 	
 </style>
</head>

<body>

	<!-- 这里将显示全部的留言和回复留言 -->
	<a href="${pageContext.request.contextPath }/leaveAndRep/leave2.action">查看所有的留言</a>
<%-- 
	<c:forEach items="${leavemsg }" var="leaveMsg" varStatus="varSta">
		序号：${varSta.count }-主键：${leaveMsg.leaveMsg_id }-用户名：${leaveMsg.userName }-留言内容:${leaveMsg.content }-留言时间：${leaveMsg.leaDate }-<a href="${pageContext.request.contextPath }/repMsg.jsp?leaId=${leaveMsg.leaveMsg_id }">对该留言进行回复</a><br/>
		站长对用户的留言进行的回复：主键:>${leaveMsg.replymsg.repId }--站长名称:${leaveMsg.replymsg.myName }-回复内容:${leaveMsg.replymsg.repContent }-回复日期:${leaveMsg.replymsg.repDate }<br/><hr/>
	</c:forEach>
 --%>
 
 
 <%-- 	<c:forEach items="${leavemsg }" var="leaveMsg" varStatus="varSta">
		序号：${varSta.count }-主键：${leaveMsg.leaveMsg_id }-用户名：${leaveMsg.userName }-留言内容:${leaveMsg.content }-留言时间：${leaveMsg.leaDate }-<a href="${pageContext.request.contextPath }/repMsg.jsp?leaId=${leaveMsg.leaveMsg_id }">对该留言进行回复</a><br/>
		站长对用户的留言进行的回复：主键:>${leaveMsg.replymsg.repId }--站长名称:${leaveMsg.replymsg.myName }-回复内容:${leaveMsg.replymsg.repContent }-回复日期:${leaveMsg.replymsg.repDate }<br/><hr/>
	</c:forEach>
	 --%>
	
	
	
	<div id="sho">
	 	<c:forEach items="${leavemsg }" var="leaveMsg" varStatus="varSta">
	 		第${varSta.count }条留言:<br/><br/>
			${leaveMsg.userName }&nbsp;&nbsp;${leaveMsg.leaDate }<br/><br/>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${leaveMsg.content }<br/><a href="../normalJsp/repMsg.jsp?leaId=${leaveMsg.leaveMsg_id }">对该留言进行回复</a><br/>
			<!-- 删除该留言  通过id删除留言 -->
			<a href="../leaveAndRep/leave_del.action?leaId=${leaveMsg.leaveMsg_id }">对该留言进行删除</a>
			<br/>
			${leaveMsg.replymsg.myName }&nbsp; ${leaveMsg.replymsg.repDate }&nbsp; 回复&nbsp;@ ${leaveMsg.userName }<br/><br/>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${leaveMsg.replymsg.repContent }<br/><br/><hr/>
		</c:forEach>	
	</div>
	
</body>
</html>











