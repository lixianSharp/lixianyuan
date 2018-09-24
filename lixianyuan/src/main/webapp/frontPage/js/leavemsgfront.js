//一般直接写在一个js文件中
//数组中表示要引入哪些模块进来，这里引入了layer模块和form模块
layui.use(['form', 'layer', 'laypage'], function() {
	var form = layui.form;
	var layer = layui.layer;
	var laypage = layui.laypage;
});

