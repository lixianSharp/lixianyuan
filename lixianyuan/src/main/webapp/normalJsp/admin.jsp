<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>

<title>My JSP 'admin.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<style type="text/css">
body {
	font-size: 25px;
	background: #E3E3E5 url(/lixianyuan/images/about/bg.jpg) 50% top scroll no-repeat;
	background-repeat: repeat;
	background-size: cover;
	color: #5d5d5d;
}
tr{
	text-align: center;
	font-size:20px;
	height:50px;
}
</style>
</head>

<body>
	管理员进行操作的页面(比较敏感的操作由自己来操作):
	<br />
	<br />

	<table align="center" border="1" width="300px" ">
		<tr>
			<td>
				<!-- 对文件上传进行管理 -->
				<a href="../upload/view.action">进行文件上传</a>
			</td>
		</tr>
		<tr>
			<!-- 对留言进行管理 -->
			<td><a	href="../leaveAndRep/toadmin.action">查看所有的留言</a></td>
		</tr>
	</table>

	
</body>
</html>
