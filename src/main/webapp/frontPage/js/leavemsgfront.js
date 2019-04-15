//一般直接写在一个js文件中
//数组中表示要引入哪些模块进来，这里引入了layer模块和form模块和laypage分页模块
$(function() {
	layui.use('form', function() {
		var form = layui.form;
		// 监听提交
		form.on('submit(addFormDemo)', function(data) {
			//获取留言者ip
			getIp();
			//添加留言
			$.ajax({
				url : contextPath + '/leavemsg/addLeavemsg.action',
				data : $("#addForm").serialize(),
				type : 'POST',
				async : false,
				success : function(data1) {
					alert(data1);
					window.location.href="showleavemsg.jsp";
					// 成功之后关闭表单弹出框
					return false;
					
					// 并初始化表单
					

				},
				error : function() {
					alert("出错了!");
					return false;
				}
			});
			return false;
		});
	});
});

// 获取ip地址
function getIp() {
	$.ajax({
		url : contextPath + '/leavemsg/test.action',
		data : "",
		type : 'post',
		async : false,
		success : function(data) {
			// alert("ip地址为:"+data);
			$("#addIpAddress").val(data);
		},
		error : function() {
			alert("出错了!");
		}
	});
}
