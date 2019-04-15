<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

	<head>
		<meta charset="UTF-8">
		<title>留言墙(显示留言与回复)</title>
		<meta name="Keywords" content="www.lixianyuan.org,lixianyuan,李贤元,李贤元个人博客,lixianyuan,李贤元个人网站">
		<meta name="Description" content="李贤元个人网站,李贤元博客">
		<meta name="author" content="李贤元" />
		<!-- 底部footer样式 -->
	    <link rel="stylesheet" href="${pageContext.request.contextPath }/frontPage/css/footer.css">
	    <link rel="stylesheet" href="${pageContext.request.contextPath }/frontPage/css/showleavemsg.css">
	    <script src="${pageContext.request.contextPath }/libs/jquery-1.8.2.js"></script>
		<link rel="stylesheet" href="${pageContext.request.contextPath }/layui/css/layui.css">
		
		<script src="${pageContext.request.contextPath }/layui/layui.js"></script>
		
	    <script type="text/javascript">
		    contextPath = "${pageContext.request.contextPath}";
		</script>
		<!-- 自己写的js -->
		<script type="text/javascript" src="${pageContext.request.contextPath }/frontPage/js/showleavemsg.js"></script>
	</head>

		<body>
		<a href="${pageContext.request.contextPath }/index.jsp" class="layui-btn  layui-btn-radius layui-btn-normal"><i class="layui-icon">&#xe65c;返回</i></a>
		<div class="ctspan" id="divContent">
			<!-- <div class="ctspan">
				 <span class="layui-btn layui-btn-normal layui-btn-radius span1">百搭按钮</span>
			</div>
			<div  class="ctspan">
				 <span class="layui-btn layui-btn-normal layui-btn-radius span2" >百搭按钮</span>
			</div> -->
			
		</div>
		
		<!--分页的div-->
		<div id="test1" style="text-align: center;"></div>
		
		<br/><br/><br/>	
		
		<!-- 存放当前页页号  默认值为第一页 -->
		<input id="currentPage" type="hidden" value="1"/>
		<!-- 每页显示的记录数  默认显示10条-->
		<input id="currentCount" type="hidden" value="5"/>
		<!-- 底部footer -->
		<jsp:include page="public/footer.jsp"></jsp:include>
	</body>

</html>