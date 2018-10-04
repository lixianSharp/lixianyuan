<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

	<head>
		<meta charset="UTF-8">
		<title>留言(前台)</title>
		<meta name="Keywords"	content="www.lixianyuan.org,lixianyuan,李贤元,李贤元个人博客,lixianyuan,李贤元个人网站">
		<meta name="Description" content="李贤元个人网站,李贤元博客">
		<meta name="author" content="李贤元" />
		<link rel="stylesheet" href="${pageContext.request.contextPath }/layui/css/layui.css">
		<script src="${pageContext.request.contextPath }/libs/jquery-1.8.2.js"></script>
		<script src="${pageContext.request.contextPath }/layui/layui.js"></script>
		<!--引入自己写的js-->
		<script src="${pageContext.request.contextPath }/frontPage/js/leavemsgfront.js"></script>
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/frontPage/css/leavemsgfront.css"/>
		<!-- 底部footer样式 -->
	    <link rel="stylesheet" href="${pageContext.request.contextPath }/frontPage/css/footer.css">
	    
	   <script type="text/javascript">
		    contextPath = "${pageContext.request.contextPath}";
		</script>
	</head>

	<body>
		<a href="${pageContext.request.contextPath }/index.jsp" class="layui-btn  layui-btn-radius layui-btn-normal"><i class="layui-icon">&#xe65c;返回</i></a>
		<!--添加留言的表单-->
		<form id="addForm" class="layui-form" action="" method="post">
			<div class="layui-form-item">
				<label class="layui-form-label"><i class="layui-icon">&#xe66f;</i> </label>
				<div class="layui-input-inline">
					<input type="text" name="name" required lay-verify="required" placeholder="请输入您的姓名" autocomplete="off" class="layui-input">
				</div>
			</div>
			<div class="layui-form-item">
				<label class="layui-form-label"><i class="layui-icon">&#xe676;</i></label>
				<div class="layui-input-inline">
					<input type="email" name="email" required lay-verify="required" placeholder="请输入您的邮箱" autocomplete="off" class="layui-input">
				</div>
			</div>

			<div class="layui-form-item layui-form-text leavemsgcontent">
				<label class="layui-form-label"><i class="layui-icon">&#xe611;</i> </label>
				<div class="layui-input-block">
					<textarea name="content" placeholder="请您输入留言内容" class="layui-textarea"></textarea>
				</div>
			</div>

			<div class="layui-form-item">
				<div class="layui-input-block">
					<button class="layui-btn confirmbtn" lay-submit lay-filter="addFormDemo"><i class="layui-icon">&#xe609;</i></button>
					<button type="reset" class="layui-btn layui-btn-primary"><i class="layui-icon">&#xe640;</i></button>
				</div>
			</div>
		</form>
		
		<input id="addIpAddress" type="hidden" value=""/>
		<!-- 底部footer -->
		<jsp:include page="public/footer.jsp"></jsp:include>
	</body>

</html>