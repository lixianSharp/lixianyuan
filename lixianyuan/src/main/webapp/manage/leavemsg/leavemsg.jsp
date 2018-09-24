<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

	<head>
		<meta charset="UTF-8">
		<title>留言</title>
		<link rel="stylesheet" href="../../layui/css/layui.css">
		<script src="../../libs/jquery-1.8.2.js"></script>
		<script src="../../layui/layui.js"></script>
		<!--引入自己写的js-->
		<script src="leavemsg.js"></script>
	</head>

	<body>

		<button class="layui-btn layui-btn-radius layui-btn-normal" onclick="addYdyClick()">添加</button>
		<table class="layui-table">
			<colgroup>
				<col width="150">
				<col width="200">
				<col>
			</colgroup>
			<thead>
				<tr>
					<th>(主键id)</th>
					<th>姓名</th>
					<th>email邮箱</th>
					<th>留言内容</th>
					<th>ip地址</th>
					<th>操作</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>id1234</td>
					<td>名字呀</td>
					<td>邮箱呀</td>
					<td>留言内容呀</td>
					<td>ip地址呀</td>
					<td>
						<button class="layui-btn layui-btn-xs" onclick="updateYdyClick()">修改</button>
						<button class="layui-btn layui-btn-xs" onclick="delYdyClick()">删除</button>
					</td>
				</tr>
				<tr>
					<td>id1234</td>
					<td>名字呀</td>
					<td>邮箱呀</td>
					<td>留言内容呀</td>
					<td>ip地址呀</td>
					<td>
						<button class="layui-btn layui-btn-xs" onclick="updateYdyClick()">修改</button>
						<button class="layui-btn layui-btn-xs" onclick="delYdyClick()">删除</button>
					</td>
				</tr>
			</tbody>
		</table>

		<!--分页的div-->
		<div id="test1"></div>
		
		<!--添加留言的表单-->
		<form id="addForm" class="layui-form" style="display: none;" action="">
			<div class="layui-form-item">
				<label class="layui-form-label">姓名</label>
				<div class="layui-input-inline">
					<input type="text" name="ydyblog.title" required lay-verify="required" placeholder="请输入标题" autocomplete="off" class="layui-input">
				</div>
			</div>
			<div class="layui-form-item">
				<label class="layui-form-label">邮箱</label>
				<div class="layui-input-inline">
					<input type="email" name="ydyblog.url" required lay-verify="required" placeholder="请输入url" autocomplete="off" class="layui-input">
				</div>
			</div>

			<div class="layui-form-item layui-form-text">
				<label class="layui-form-label">留言内容</label>
				<div class="layui-input-block">
					<textarea name="desc" placeholder="请输入内容" class="layui-textarea"></textarea>
				</div>
			</div>

			<div class="layui-form-item">
				<div class="layui-input-block">
					<button class="layui-btn" lay-submit lay-filter="addFormDemo" style="width: 45%;">确定添加</button>
					<button type="reset" class="layui-btn layui-btn-primary">重置</button>
				</div>
			</div>
		</form>

		<!--修改留言的表单-->
		<form id="updateForm" class="layui-form" style="display: none;" action="">
			<div class="layui-form-item">
				<label class="layui-form-label">修改姓名</label>
				<div class="layui-input-inline">
					<input type="text" name="ydyblog.title" required lay-verify="required" placeholder="请输入标题" autocomplete="off" class="layui-input">
				</div>
			</div>
			<div class="layui-form-item">
				<label class="layui-form-label">修改邮箱</label>
				<div class="layui-input-inline">
					<input type="email" name="ydyblog.url" required lay-verify="required" placeholder="请输入url" autocomplete="off" class="layui-input">
				</div>
			</div>

			<div class="layui-form-item layui-form-text">
				<label class="layui-form-label">修改留言内容</label>
				<div class="layui-input-block">
					<textarea name="desc" placeholder="请输入内容" class="layui-textarea"></textarea>
				</div>
			</div>

			<div class="layui-form-item">
				<div class="layui-input-block">
					<button class="layui-btn" lay-submit lay-filter="updateFormDemo" style="width: 45%;">确定修改</button>
					<button type="reset" class="layui-btn layui-btn-primary">重置</button>
				</div>
			</div>
		</form>

		<button id="delbtn" style="display: none;" onclick="delConfirmClick()">确定删除</button>

		<!--存放添加的弹出层的index-->
		<input id="addLayerIndex" type="hidden" value="" />
		<!--存放修改的弹出层的index-->
		<input id="updateLayerIndex" type="hidden" value="" />
		<!--存放删除的弹出层的index-->
		<input id="delLayerIndex" type="hidden" value="" />

	</body>

</html>