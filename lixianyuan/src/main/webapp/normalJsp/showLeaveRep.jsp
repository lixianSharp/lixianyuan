<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>留言墙</title>

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
	
	
	
	<div id="sho">
	 	<c:forEach items="${leavemsg }" var="leaveMsg" varStatus="varSta">
	 		第${varSta.count }条留言:<br/><br/>
			${leaveMsg.userName }&nbsp;&nbsp;${leaveMsg.leaDate }<br/><br/>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${leaveMsg.content }<br/><%-- <a href="${pageContext.request.contextPath }/repMsg.jsp?leaId=${leaveMsg.leaveMsg_id }">对该留言进行回复</a><br/> --%>
			<br/>
			${leaveMsg.replymsg.myName }&nbsp; ${leaveMsg.replymsg.repDate }&nbsp; 回复&nbsp;@${leaveMsg.userName }<br/><br/>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${leaveMsg.replymsg.repContent }<br/><br/><hr/>
		</c:forEach>	
	</div>
	
	
</body>
</html>











