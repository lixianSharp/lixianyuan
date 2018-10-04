<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

	<head>
		<meta charset="UTF-8">
		<title>博客园笔记</title>
		<link rel="stylesheet" href="${pageContext.request.contextPath }/layui/css/layui.css">
		<script src="${pageContext.request.contextPath}/libs/jquery-1.8.2.js"></script>
		<script src="${pageContext.request.contextPath}/layui/layui.js"></script>
		<!--引入自己写的js-->
		<script src="bkyblog.js"></script>
		
		<script type="text/javascript">
		    contextPath = "${pageContext.request.contextPath}";
		</script>
	</head>

	<body>
		<button class="layui-btn layui-btn-radius layui-btn-normal" onclick="addbkyClick()">添加</button>
		<!-- 显示数据的表格  -->
		<table class="layui-table">
			<colgroup>
				<col width="150">
				<col width="200">
				<col>
			</colgroup>
			<thead>
				<tr>
					<th>昵称(主键id)</th>
					<th>标题</th>
					<th>url链接</th>
					<th>操作</th>
				</tr>
			</thead>
			<tbody id="tbody">
				<!-- <tr>
					<td>贤心</td>
					<td>2016-11-29</td>
					<td>人生就像是一场修行</td>
					<td>
						<button class="layui-btn layui-btn-xs" onclick="updateYdyClick(this)">修改</button>
						<button class="layui-btn layui-btn-xs" onclick="delYdyClick(this)">删除</button>
					</td>
				</tr>
				<tr>
					<td>许闲心</td>
					<td>2016-11-28</td>
					<td>于千万无涯的荒野</td>
					<td>
						<button class="layui-btn layui-btn-xs" onclick="updateYdyClick(this)">修改</button>
						<button class="layui-btn layui-btn-xs" onclick="delYdyClick(this)">删除</button>
					</td>
				</tr> -->
			</tbody>
		</table>
		
		<!--分页的div-->
		<div id="test1"></div>
		
		<!--添加博客园博客的表单 -->
		<form id="addForm" class="layui-form" style="display: none;" method="post" >
			<div class="layui-form-item">
				<label class="layui-form-label">标题</label>
				<div class="layui-input-inline">
					<input type="text" name="title" required lay-verify="required" placeholder="请输入标题" autocomplete="off" class="layui-input">
				</div>
			</div>
			<div class="layui-form-item">
				<label class="layui-form-label">url</label>
				<div class="layui-input-inline">
					<input type="text" name="url" required lay-verify="required" placeholder="请输入url" autocomplete="off" class="layui-input">
				</div>
			</div>

			<div class="layui-form-item">
				<div class="layui-input-block">
					<button class="layui-btn" lay-submit lay-filter="addFormDemo" style="width: 45%;">确定添加</button>
					<button type="reset" class="layui-btn layui-btn-primary">重置</button>
				</div>
			</div>
		</form>

		<!--修改博客园博客的表单-->
		<form id="updateForm" class="layui-form" style="display: none;" action="" method="post">
			<div class="layui-form-item">
				<!-- <label class="layui-form-label">有道云博客ID</label> -->
				<div class="layui-input-inline">
					<input id="updatebkyblogId" type="hidden" name="bkyblogid" required lay-verify="required" autocomplete="off" class="layui-input">
				</div>
			</div>
			<div class="layui-form-item">
				<label class="layui-form-label">修改标题</label>
				<div class="layui-input-inline">
					<input id="updateTitle" type="text" name="title" required lay-verify="required" placeholder="请输入标题" autocomplete="off" class="layui-input">
				</div>
			</div>
			<div class="layui-form-item">
				<label class="layui-form-label">修改url</label>
				<div class="layui-input-inline">
					<input id="updateUrl" type="text" name="url" required lay-verify="required" placeholder="请输入url" autocomplete="off" class="layui-input">
				</div>
			</div>

			<div class="layui-form-item">
				<div class="layui-input-block">
					<button type="button" class="layui-btn layui-btn-primary" onclick="updateCalcel()">取消</button>
					<button class="layui-btn" lay-submit lay-filter="updateFormDemo" style="width: 45%;" >确定修改</button>
				</div>
			</div>
		</form>
		
		<button id="delbtn" style="display: none;"  onclick="delConfirmClick()">确定删除</button>
		
		
		<!--存放修改的弹出层的index-->
		<input id="updateLayerIndex" type="hidden" value="" />
		<!--存放删除的弹出层的index-->
		<input id="delLayerIndex" type="hidden" value="" />
		
		<!-- 存放当前页页号  默认值为第一页 -->
		<input id="currentPage" type="hidden" value="1"/>
		<!-- 每页显示的记录数  默认显示10条-->
		<input id="currentCount" type="hidden" value="10"/>
		<!-- 删除用的ydyblogid -->
		<input id="delydyblogid" type="hidden" value=""/>
	</body>

</html>