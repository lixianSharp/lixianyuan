<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

	<head>
		<meta charset="UTF-8">
		<title>留言</title>
		<link rel="stylesheet" href="${pageContext.request.contextPath }/layui/css/layui.css">
		<script src="${pageContext.request.contextPath }/libs/jquery-1.8.2.js"></script>
		<script src="${pageContext.request.contextPath }/layui/layui.js"></script>
		<!--引入自己写的js-->
		<script src="leavemsg.js"></script>
		
		<script type="text/javascript">
		    contextPath = "${pageContext.request.contextPath}";
		</script>
	</head>

	<body>
		<button class="layui-btn layui-btn-radius layui-btn-normal" onclick="addYdyClick()">添加</button>
		<!-- 显示数据的表格  -->
		<table class="layui-table">
			<colgroup>
				<!-- <col width="150">
				<col width="200">
				<col> -->
			</colgroup>
			<thead>
				<tr>
					<th>(主键留言id)</th>
					<th>姓名</th>
					<th>邮箱</th>
					<th>留言内容</th>
					<th>留言时间</th>
					<th>IP地址</th>
					<th>操作</th>
				</tr>
			</thead>
			<tbody id="tbody">
				<!-- <tr>
					<td>贤心</td>
					<td>2016-11-29</td>
					<td>人生就像是一场修行</td>
					<td>2016-11-29</td>
					<td>人生就像是一场修行</td>
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
					<td>2016-11-29</td>
					<td>人生就像是一场修行</td>
					<td>人生就像是一场修行</td>
					<td>
						<button class="layui-btn layui-btn-xs" onclick="updateYdyClick(this)">修改</button>
						<button class="layui-btn layui-btn-xs" onclick="delYdyClick(this)">删除</button>
					</td>
				</tr>  -->
			</tbody>
		</table>
		
		<!--分页的div-->
		<div id="test1"></div>
		
		<!--添加留言的表单 -->
		<form id="addForm" class="layui-form" style="display: none;" method="post">
			<div class="layui-form-item">
				<label class="layui-form-label">姓名</label>
				<div class="layui-input-inline">
					<input type="text" name="name" required lay-verify="required" placeholder="在这输入您的尊称" autocomplete="off" class="layui-input">
				</div>
			</div>
			<div class="layui-form-item">
				<label class="layui-form-label">邮箱</label>
				<div class="layui-input-inline">
					<input type="text" name="email" required lay-verify="required" placeholder="邮箱填在这里" autocomplete="off" class="layui-input">
				</div>
			</div>
			<div class="layui-form-item layui-form-text">
			  <label class="layui-form-label">留言内容</label>
			  <div class="layui-input-block">
			    <textarea name="content" placeholder="留言内容在这里输入" class="layui-textarea"></textarea>
			  </div>
			</div>
			<div class="layui-form-item">
				<!-- <label class="layui-form-label">ip地址</label> -->
				<!-- 隐藏ip地址 -->
				<div class="layui-input-inline">
					<input id="addIpAddress" type="hidden" name="ipaddress" required lay-verify="required" value="" autocomplete="off" class="layui-input">
				</div>
			</div>

			<div class="layui-form-item">
				<div class="layui-input-block">
					<button class="layui-btn" lay-submit lay-filter="addFormDemo" style="width: 45%;">确定添加</button>
					<button type="reset" class="layui-btn layui-btn-primary">重置</button>
				</div>
			</div>
		</form>

		<!--修改有道云博客的表单-->
		<form id="updateForm" class="layui-form" style="display: none;" action="" method="post">
			<div class="layui-form-item">
				<!-- <label class="layui-form-label">修改姓名</label> -->
				<!-- 隐藏留言leavemsgid -->
				<div class="layui-input-inline">
					<input type="hidden" id="updateLsgId" name="leavemsgid" required lay-verify="required" placeholder="在这输入您的尊称" autocomplete="off" class="layui-input">
				</div>
			</div>
			<div class="layui-form-item">
				<label class="layui-form-label">修改姓名</label>
				<div class="layui-input-inline">
					<input type="text" id="updateName" name="name" required lay-verify="required" placeholder="在这输入您的尊称" autocomplete="off" class="layui-input">
				</div>
			</div>
			<div class="layui-form-item">
				<label class="layui-form-label">修改邮箱</label>
				<div class="layui-input-inline">
					<input type="text" id="updateEmail" name="email" required lay-verify="required" placeholder="邮箱填在这里" autocomplete="off" class="layui-input">
				</div>
			</div>
			  <div class="layui-form-item layui-form-text">
			    <label class="layui-form-label">修改留言内容</label>
			    <div class="layui-input-block">
			      <textarea name="content" id="updateContent" placeholder="留言内容在这里输入" class="layui-textarea"></textarea>
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