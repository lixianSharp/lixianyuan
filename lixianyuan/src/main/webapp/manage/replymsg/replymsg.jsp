<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

	<head>
		<meta charset="UTF-8">
		<title>回复留言</title>
		<link rel="stylesheet" href="${pageContext.request.contextPath }/layui/css/layui.css">
		<script src="${pageContext.request.contextPath }/libs/jquery-1.8.2.js"></script>
		<script src="${pageContext.request.contextPath }/layui/layui.js"></script>
		<!--引入自己写的js-->
		<script src="replymsg.js"></script>
		
		<script type="text/javascript">
		    contextPath = "${pageContext.request.contextPath}";
		</script>
	</head>

	<body>
		<!-- <button class="layui-btn layui-btn-radius layui-btn-normal" onclick="addYdyClick()">添加</button> -->
		<!-- 显示数据的表格  -->
		<table class="layui-table">
			<colgroup>
				<!-- <col width="150">
				<col width="200">
				<col> -->
			</colgroup>
			<thead>
				<tr>
					<th>序号</th>
					<th>(主键留言id)</th>
					<th>姓名</th>
					<th>邮箱</th>
					<th>留言内容</th>
					<th>留言时间</th>
					<th>IP地址</th>
					<th>回复留言ID(replyid)</th>
					<th>回复者(replyname)</th>
					<th>回复留言的内容(replycontent)</th>
					<th>回复时间(replytime)</th>
					<th></th>
					<th>操作</th>
				</tr>
			</thead>
			<tbody id="tbody">
				<tr>
					<td>贤心</td>
					<td>2016-11-29</td>
					<td>人生就像是一场修行</td>
					<td>2016-11-29</td>
					<td>人生就像是一场修行</td>
					<td>人生就像是一场修行</td>
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
					<td>人生就像是一场修行</td>
					<td>2016-11-29</td>
					<td>人生就像是一场修行</td>
					<td>人生就像是一场修行</td>
					<td>
						<button class="layui-btn layui-btn-xs" onclick="updateYdyClick(this)">修改</button>
						<button class="layui-btn layui-btn-xs" onclick="delYdyClick(this)">删除</button>
					</td>
				</tr> 
			</tbody>
		</table>
		
		<!--分页的div-->
		<div id="test1"></div>
		
		<!--添加有道云博客的表单 -->
		<form id="addForm" class="layui-form" style="display: none;" method="post">
			<div class="layui-form-item">
				<label class="layui-form-label">姓名</label>
				<div class="layui-input-inline">
					<input type="text" name="replyname" required lay-verify="required" placeholder="在这输入您的尊称" autocomplete="off" class="layui-input">
				</div>
			</div>
			<div class="layui-form-item layui-form-text">
			  <label class="layui-form-label">留言内容</label>
			  <div class="layui-input-block">
			    <textarea name="replycontent" placeholder="留言内容在这里输入" class="layui-textarea"></textarea>
			  </div>
			</div>
			<div class="layui-form-item">
				<!-- <label class="layui-form-label">留言主键id leavemsgid</label> -->
				<!-- 隐藏一个当前选中的那行的留言id，用于回复留言的时候 -->
				<div class="layui-input-inline">
					<input id="addReplyleavemsgid" type="hidden"  name="leavemsgid" value="" required lay-verify="required" placeholder="在这输入您的尊称" autocomplete="off" class="layui-input">
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
				<!-- <label class="layui-form-label">回复留言的replyid</label> -->
				<!-- 隐藏回复留言的replyid -->
				<div class="layui-input-inline">
					<input type="hidden" id="updateReplyid" name="replyid" required lay-verify="required" placeholder="在这输入您的尊称" autocomplete="off" class="layui-input">
				</div>
			</div>
			<div class="layui-form-item">
				<label class="layui-form-label">修改回复者姓名</label>
				<div class="layui-input-inline">
					<input type="text" id="updateReplyName" name="replyname" required lay-verify="required" placeholder="在这输入您的尊称" autocomplete="off" class="layui-input">
				</div>
			</div>
			
			<div class="layui-form-item layui-form-text">
			  <label class="layui-form-label">修改回复留言内容</label>
			  <div class="layui-input-block">
			    <textarea id="updateReplyContent" name="replycontent"  placeholder="留言内容在这里输入" class="layui-textarea"></textarea>
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
		<!-- 删除用的delReplyId -->
		<input id="delReplyId" type="hidden" value=""/>
		
	</body>

</html>