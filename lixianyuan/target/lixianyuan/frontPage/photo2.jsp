<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

	<head>
		<meta charset="UTF-8">
		<title>相册</title>
		<meta name="Keywords" content="www.lixianyuan.org,lixianyuan,李贤元,李贤元个人博客,lixianyuan,李贤元个人网站">
		<meta name="Description" content="李贤元个人网站,李贤元博客">
		<meta name="author" content="李贤元" />
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/frontPage/css/photo.css"/>
		<!-- 底部footer样式 -->
	    <link rel="stylesheet" href="${pageContext.request.contextPath }/frontPage/css/footer.css">
	    
		<link rel="stylesheet" href="${pageContext.request.contextPath }/layui/css/layui.css">
		<script src="${pageContext.request.contextPath }/libs/jquery-1.8.2.js"></script>
		<script src="${pageContext.request.contextPath }/layui/layui.js"></script>
		
		
	</head>

	<body>
		<br /><br />
		<a href="${pageContext.request.contextPath }/index.jsp" class="layui-btn  layui-btn-radius layui-btn-normal"><i class="layui-icon">&#xe65c;返回</i></a>
		<video id="videoID" style="display:block; margin:0 auto;" src="${pageContext.request.contextPath }/frontPage/video/zhiyou.mp4" loop autoplay="true">
			your browser does not support the video tag
		</video>
		
		<script type="text/javascript">
			//取消鼠标移动到视频上时的鼠标右键功能
			$('#videoID').bind('contextmenu', function() {
				return false;
			});
			var video = document.getElementById("videoID");
			video.controls = false;
		</script>

		<!--  -->
		<br/><br/>

		<div id="footer">CopyRight &copy 2017~2018 李贤元个人博客网站
			<a href="http://www.miitbeian.gov.cn/">闽ICP备17018144号</a>
		</div>

		<!--  -->
		
		<!-- 底部footer -->
		<jsp:include page="public/footer.jsp"></jsp:include>
	</body>

</html>