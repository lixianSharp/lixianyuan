<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>相册</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">

<script src="/lixianyuan/js/jquery-1.8.2.js"></script>
<link rel="stylesheet" href="../css/normalJsp/4.css">	


</head>

<body>
	<h3>您现在的位置是：><a href="../index.jsp">>首页</a>>><a href="../normalJsp/4.jsp">相册1</a>>><a href="../normalJsp/9.jsp">点击这里查看相册2</a></h3>
	<%-- <a href="${pageContext.request.contextPath }/normalJsp/3.jsp" target="_blank">闲言碎语</a> --%>
	<video id="videoID"  style="display:block; margin:0 auto;" src="/lixianyuan/normalJsp/video.mp4" loop autoplay="true" >
		your browser does not support the video tag
	</video>	
	
	<script type="text/javascript">
		//取消鼠标移动到视频上时的鼠标右键功能
		$('#videoID').bind('contextmenu',function() { return false; });
		var video=document.getElementById("videoID");
		video.controls=false;
	</script>
	
	<!--  -->
	<br/><br/>
	
	<div id="footer" >CopyRight &copy 2017 李贤元博客 <a href="http://www.miitbeian.gov.cn/">闽ICP备17018144号</a> </div>
	
	<!--  -->
			
</body>

</html>