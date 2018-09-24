<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

	<head>
		<meta charset="UTF-8">
		<title>留言(前台)</title>
		<link rel="stylesheet" href="../layui/css/layui.css">
		<script src="../libs/jquery-1.8.2.js"></script>
		<script src="../layui/layui.js"></script>
		<!--引入自己写的js-->
		<script src="js/leavemsgfront.js"></script>
		<link rel="stylesheet" type="text/css" href="css/leavemsgfront.css"/>
		<!-- 底部footer样式 -->
	    <link rel="stylesheet" href="css/footer.css">
	</head>

	<body>
		<a href="../index.jsp" class="layui-btn  layui-btn-radius layui-btn-normal"><i class="layui-icon">&#xe65c;返回</i></a>
		<!--添加留言的表单-->
		<form id="addForm" class="layui-form" action="">
			<div class="layui-form-item">
				<label class="layui-form-label"><i class="layui-icon">&#xe66f;</i> </label>
				<div class="layui-input-inline">
					<input type="text" name="ydyblog.title" required lay-verify="required" placeholder="请输入您的姓名" autocomplete="off" class="layui-input">
				</div>
			</div>
			<div class="layui-form-item">
				<label class="layui-form-label"><i class="layui-icon">&#xe676;</i></label>
				<div class="layui-input-inline">
					<input type="email" name="ydyblog.url" required lay-verify="required" placeholder="请输入您的邮箱" autocomplete="off" class="layui-input">
				</div>
			</div>

			<div class="layui-form-item layui-form-text leavemsgcontent">
				<label class="layui-form-label"><i class="layui-icon">&#xe611;</i> </label>
				<div class="layui-input-block">
					<textarea name="desc" placeholder="请您输入留言内容" class="layui-textarea"></textarea>
				</div>
			</div>

			<div class="layui-form-item">
				<div class="layui-input-block">
					<button class="layui-btn confirmbtn" lay-submit lay-filter="addFormDemo"><i class="layui-icon">&#xe609;</i></button>
					<button type="reset" class="layui-btn layui-btn-primary"><i class="layui-icon">&#xe640;</i></button>
				</div>
			</div>
		</form>
		
		<!-- 底部footer -->
		<jsp:include page="public/footer.jsp"></jsp:include>
	</body>

</html>