<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

	<head>
		<meta charset="UTF-8">
		<title>相册</title>
		<meta name="Keywords" content="www.lixianyuan.org,lixianyuan,李贤元,李贤元个人博客,lixianyuan,李贤元个人网站">
		<meta name="Description" content="李贤元个人网站,李贤元博客">
		<meta name="author" content="李贤元" />
		<link rel="stylesheet" href="../layui/css/layui.css">
		<script src="../libs/jquery-1.8.2.js"></script>
		<script src="../layui/layui.js"></script>
		
		<link rel="stylesheet" type="text/css" href="../show/css/photo.css"/>
		<!-- 底部footer样式 -->
	    <link rel="stylesheet" href="css/footer.css">
	</head>

	<body>
		<br />
		<a href="../index.jsp" class="layui-btn  layui-btn-radius layui-btn-normal"><i class="layui-icon">&#xe65c;返回</i></a>
		<a href="photo2.jsp" class="layui-btn  layui-btn-radius layui-btn-normal">点击这里查看相册2</a></h3>
		<br /><br />
		<video id="videoID" style="display:block; margin:0 auto;" src="video/video.mp4" loop autoplay="true">
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