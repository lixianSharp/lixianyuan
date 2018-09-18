<%@ page language="java" pageEncoding="UTF-8"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>

<title>案例演示</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!-- 引用jquery库 -->
<script src="/lixianyuan/js/jquery-1.8.2.js"></script>

<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

<!-- 
		第一栏:看看这里有没有你所在的县哦
			1、做一个三级联动框  也就是省-市-县
		第二栏：
			做一个显示当前时间的东西，而且必须实时更新,也就是自动秒数在走
		第三栏：
			查询当前的日期,也就是年月日
		第四栏：
			做一个显示您当前出生到现在活了多长时间(秒或者天数)
		
	 -->
</head>

<body>
	当前系统时间:
	<input type="button" id="timeID" value="时间哈哈哈哈哈哈哈哈哈哈" />
</body>

<!-- 动态显示当前的系统时间 -->
<script type="text/javascript">
	function getCurrentTime() {
		//获取到当前的系统时间
		var date = new Date();
		//把当前系统时间拼装成指定格式
		var timeInfo = "当前时间是：" + date.getFullYear() + "年"
				+ (date.getMonth() + 1) + "月" + date.getDate() + "日    "
				+ date.getHours() + ":" + date.getMinutes() + ":"
				+ date.getSeconds();
		var spanObj = document.getElementById("timeID");
		spanObj.value = timeInfo;

		//先找到id为curTime的span对象
		/* $("#timeID").click(function(){
			alert("哈哈");
		});
		 */
		//spanObj.html = timeInfo;
		function getTime() {
			var time = new Date();
			var timeInfo = "您在这个时间访问了这个页面哦!" + date.getFullYear() + "年"
				+ (date.getMonth() + 1) + "月" + date.getDate() + "日    "
				+ date.getHours() + ":" + date.getMinutes() + ":"
				+ date.getSeconds();
			$("#timeID").html(timeInfo);
		}
		$(function() {
			setInterval("getTime()", 1000);
		});
	}

	//每隔1秒执行一次方法
	window.setInterval(getCurrentTime(), 1000);
</script>















</html>
