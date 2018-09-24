<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

	<head>
		<meta charset="UTF-8">
		<title>菜单</title>
		<link rel="stylesheet" href="../../layui/css/layui.css">
		<script src="../../libs/jquery-1.8.2.js"></script>
		<script src="../../layui/layui.js"></script>
	</head>

	<body>
		<!--垂直导航-->
		<ul class="layui-nav layui-nav-tree layui-inline layui-bg-cyan" lay-filter="demo" style="width: auto;">
			<li class="layui-nav-item layui-nav-itemed">
				<a href="javascript:;" target="rightShow">权限管理</a>
				<dl class="layui-nav-child">
					<dd>
						<a href="javascript:;"  target="rightShow">用户管理</a>
					</dd>
					<dd>
						<a href="javascript:;"  target="rightShow">授权管理</a>
					</dd>
				</dl>
			</li>
			<li class="layui-nav-item">
				<a href="javascript:;"  target="rightShow">关于本网站</a>
				<dl class="layui-nav-child">
					<dd>
						<a href="javascript:;"  target="rightShow">站长简介</a>
					</dd>
					<dd>
						<a href="javascript:;"  target="rightShow">网站使用的技术</a>
					</dd>
					<dd>
						<a href="javascript:;"  target="rightShow">更多功能</a>
					</dd>
				</dl>
			</li>
			<li class="layui-nav-item">
				<a href="../bkyblog/bkyblog.jsp"  target="rightShow">博客园博文管理</a>
			</li>
			<li class="layui-nav-item">
				<a href="../ydyblog/ydyDetail.jsp"  target="rightShow">有道云笔记管理</a>
			</li>
			<li class="layui-nav-item">
				<a href="../leavemsg/leavemsg.jsp"  target="rightShow">留言</a>
			</li>
			<li class="layui-nav-item">
				<a href="../replymsg/replymsg.jsp"  target="rightShow">回复留言</a>
			</li>
			<li class="layui-nav-item">
				<a href="../casualnote/casualnote.jsp"  target="rightShow">随笔</a>
			</li>
			<li class="layui-nav-item">
				<a href="../gossip/gossip.jsp"  target="rightShow">闲言碎语</a>
			</li>
			<li class="layui-nav-item">
				<a href="../photo/photo.jsp"  target="rightShow">相册管理</a>
			</li>
			<li class="layui-nav-item">
				<a href=""><img src="//t.cn/RCzsdCq" class="layui-nav-img"  target="rightShow">我</a>
			</li>
			<li class="layui-nav-item">
				<a href="javascript:;">退出系统</a>
			</li>
		</ul>

		<script>
			//注意：导航 依赖 element 模块，否则无法进行功能性操作
			layui.use('element', function() {
				var element = layui.element;

				//…
			});
		</script>
	</body>

</html>