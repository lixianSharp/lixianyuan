<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
  <head>
    <title>博客笔记分享</title>
    <meta name="Keywords"	content="www.lixianyuan.org,lixianyuan,李贤元,李贤元个人博客,lixianyuan,李贤元个人网站">
	<meta name="Description" content="李贤元个人网站,李贤元博客">
	<meta name="author" content="李贤元" />
    <link rel="stylesheet" href="${pageContext.request.contextPath }/layui/css/layui.css">
	<script src="${pageContext.request.contextPath }/layui/layui.js"></script>
	<script src="${pageContext.request.contextPath }/libs/jquery-1.8.2.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath }/frontPage/ydyblogMenu/rightShow.js"></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath }/frontPage/css/footer.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/frontPage/ydyblogMenu/rightShow.css">
    <script type="text/javascript">
		    contextPath = "${pageContext.request.contextPath}";
	</script>

  </head>
  
  <body>
  		<div style="width:100%;">
  			<!-- 左侧的 -->
  			<div  style="width:25%;float: left;">
  				<!--垂直导航-->
				<ul class="layui-nav layui-nav-tree layui-inline layui-bg-cyan" lay-filter="demo" style="width: auto;">
					<li class="layui-nav-item layui-nav-itemed">
						<a href="javascript:;" target="rightShow">前端</a>
						<dl class="layui-nav-child">
							<dd>
								<a href="javascript:;"  target="rightShow" onclick="HTMLClick(this)">HTML</a>
							</dd>
							<dd>
								<a href="javascript:;"  target="rightShow" onclick="CSSClick(this)">CSS</a>
							</dd>
							<dd>
								<a href="javascript:;"  target="rightShow" onclick="JavaScriptClick(this)">JavaScript</a>
							</dd>
							<dd>
								<a href="javascript:;"  target="rightShow" onclick="jQueryClick(this)">jQuery</a>
							</dd>
							<dd>
								<a href="javascript:;"  target="rightShow" onclick="VueClick(this)">Vue</a>
							</dd>
							<dd>
								<a href="javascript:;"  target="rightShow" onclick="layuiClick(this)">layui</a>
							</dd>
							<dd>
								<a href="javascript:;"  target="rightShow" onclick="angularClick(this)">angular</a>
							</dd>
							<dd>
								<a href="javascript:;"  target="rightShow" onclick="NodeClick(this)">Node</a>
							</dd>
							<dd>
								<a href="javascript:;"  target="rightShow" onclick="HTMLMoreClick(this)">前端More</a>
							</dd>
						</dl>
					</li>
					<li class="layui-nav-item">
						<a href="javascript:;"  target="rightShow">Java及其框架</a>
						<dl class="layui-nav-child">
							<dd>
								<a href="javascript:;"  target="rightShow" onclick="JavaSEClick(this)">JavaSE</a>
							</dd>
							<dd>
								<a href="javascript:;"  target="rightShow" onclick="JavaEEClick(this)">JavaEE</a>
							</dd>
							<dd>
								<a href="javascript:;"  target="rightShow" onclick="SpringClick(this)">Spring</a>
							</dd>
							<dd>
								<a href="javascript:;"  target="rightShow" onclick="SpringMVCClick(this)">SpringMVC</a>
							</dd>
							<dd>
								<a href="javascript:;"  target="rightShow" onclick="MybatisClick(this)">Mybatis</a>
							</dd>
							<dd>
								<a href="javascript:;"  target="rightShow" onclick="HibernateClick(this)">Hibernate</a>
							</dd>
							<dd>
								<a href="javascript:;"  target="rightShow" onclick="Struts2Click(this)">Struts2</a>
							</dd>
							<dd>
								<a href="javascript:;"  target="rightShow" onclick="ShiroClick(this)">Shiro</a>
							</dd>
							<dd>
								<a href="javascript:;"  target="rightShow" onclick="Java_MoreClick(this)">Java_More</a>
							</dd>
						</dl>
					</li>
					
					<li class="layui-nav-item">
						<a href="javascript:;"  target="rightShow">Python</a>
						<dl class="layui-nav-child">
							<dd>
								<a href="javascript:;"  target="rightShow" onclick="pythonClick(this)">python</a>
							</dd>
							<dd>
								<a href="javascript:;"  target="rightShow" onclick="Python_MoreClick(this)">Python_More</a>
							</dd>
						</dl>
					</li>
					
					<li class="layui-nav-item">
						<a href="javascript:;"  target="rightShow">数据库</a>
						<dl class="layui-nav-child">
							<dd>
								<a href="javascript:;"  target="rightShow" onclick="MySQLClick(this)">MySQL</a>
							</dd>
							<dd>
								<a href="javascript:;"  target="rightShow" onclick="OracleClick(this)">Oracle</a>
							</dd>
							<dd>
								<a href="javascript:;"  target="rightShow" onclick="MongoDBClick(this)">MongoDB</a>
							</dd>
							<dd>
								<a href="javascript:;"  target="rightShow" onclick="RedisClick(this)">Redis</a>
							</dd>
							<dd>
								<a href="javascript:;"  target="rightShow" onclick="DBMoreClick(this)">数据库More</a>
							</dd>
						</dl>
					</li>
					
					<li class="layui-nav-item">
						<a href="javascript:;"  target="rightShow">Linux</a>
						<dl class="layui-nav-child">
							<dd>
								<a href="javascript:;"  target="rightShow" onclick="LinuxBaseClick(this)">Linux基础学习</a>
							</dd>
							<dd>
								<a href="javascript:;"  target="rightShow" onclick="LinuxFWQClick(this)">Linux云服务器部署</a>
							</dd>
							<dd>
								<a href="javascript:;"  target="rightShow" onclick="Linux_MoreClick(this)">Linux_More</a>
							</dd>
						</dl>
					</li>
					
					<li class="layui-nav-item">
						<a href="javascript:;"  target="rightShow">遇到的异常及解决方式</a>
						<dl class="layui-nav-child">
							<dd>
								<a href="javascript:;"  target="rightShow" onclick="error_JavaClick(this)">Java相关异常</a>
							</dd>
							<dd>
								<a href="javascript:;"  target="rightShow" onclick="error_DBClick(this)">数据库相关异常</a>
							</dd>
							<dd>
								<a href="javascript:;"  target="rightShow" onclick="error_QDClick(this)">前端相关异常</a>
							</dd>
							<dd>
								<a href="javascript:;"  target="rightShow" onclick="error_JavaFrameworkClick(this)">Java框架相关异常</a>
							</dd>
							<dd>
								<a href="javascript:;"  target="rightShow" onclick="error_webFWQClick(this)">web服务器相关异常</a>
							</dd>
						</dl>
					</li>
					
					<li class="layui-nav-item">
						<a href="javascript:;"  target="rightShow">keyboard侠</a>
						<dl class="layui-nav-child">
							<dd>
								<a href="javascript:;"  target="rightShow" onclick="Design_ModelClick(this)">Design_Model</a>
							</dd>
							<dd>
								<a href="javascript:;"  target="rightShow" onclick="AADSClick(this)">Algorithms_And_Data_Structures</a>
							</dd>
							<dd>
								<a href="javascript:;"  target="rightShow" onclick="JVMClick(this)">JVM</a>
							</dd>
							<dd>
								<a href="javascript:;"  target="rightShow" onclick="TomcatClick(this)">Tomcat</a>
							</dd>
							<dd>
								<a href="javascript:;"  target="rightShow" onclick="NginxClick(this)">Nginx</a>
							</dd>
						</dl>
					</li>
				</ul>
		
  			</div>
  			
  			<!-- 右侧的 -->
  			<div style="width:75%;float: right;">
  				<!--分页的div-->
				<div id="test1"></div> 
  				<!-- 显示数据的表格  -->
				<table class="layui-table" style="width:80%;height: 80%">
					<!-- <colgroup>
						<col width="150">
						<col width="200">
						<col>
					</colgroup> -->
					<thead>
						<tr>
							<th><h2>博客/笔记如下</h2></th>
						</tr>
					</thead>
					<tbody id="tbody">
						<tr>
							<td>许闲心</td>
							<td><a href="sdfdsf" class=" layui-btn  layui-btn-xs layui-btn-normal layui-btn-radius">百搭按钮</a></td>
							 
						</tr> 
					</tbody>
				</table>
				
				
				<!-- 存放当前页页号  默认值为第一页 -->
				<input id="currentPage" type="hidden" value="1"/>
				<!-- 每页显示的记录数  默认显示10条-->
				<input id="currentCount" type="hidden" value="10"/>
				<!-- 隐藏选中的菜单作为title -->
				<input id="menuToTitleContent" type="hidden" value=""/>
  			</div>
  			
  			<!-- 底部footer -->
			<jsp:include page="../public/footer.jsp"></jsp:include>
  		</div>
  		
		
  </body>
</html>
