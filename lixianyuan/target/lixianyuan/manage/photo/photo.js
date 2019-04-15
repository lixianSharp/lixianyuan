//一般直接写在一个js文件中
//数组中表示要引入哪些模块进来，这里引入了layer模块和form模块
layui.use(['form', 'layer', 'laypage'], function() {
	var form = layui.form;
	var layer = layui.layer;
	var laypage = layui.laypage;
	packlaypage_render(laypage);
});
//添加相册按钮
function addYdyClick() {
	//打开弹出框
	var addIndex = layer.open({
		title: "添加相册",
		type: 1,
		content: $('#addForm') //这里content是一个DOM，注意：最好该元素要存放在body最外层，否则可能被其它的相对元素所影响
	});
	//$("#addLayerIndex").val(addIndex);
	//监听提交
	/*form.on('submit(addFormDemo)', function(data) {
		layer.msg(JSON.stringify(data.field));
		//alert(data.field.toString());
		return false;
	});*/
}

//修改相册按钮
function updateYdyClick(){
	//打开弹出框
	var updateIndex = layer.open({
		title: "修改相册",
		type:1,
		content: $('#updateForm') //这里content是一个DOM，注意：最好该元素要存放在body最外层，否则可能被其它的相对元素所影响
	});
	//$("#updateLayerIndex").val(updateIndex);
	//监听修改的提交
	/*form.on('submit(updateFormDemo)', function(data) {
		layer.msg(JSON.stringify(data.field));
		layer.msg("xiugai ")
		return false;
	});*/
	
}

//删除相册按钮
function delYdyClick(){
	//打开弹出框
	var delIndex = layer.open({
		title: "删除该相册",
		type:1,
		content: $('#delbtn') //这里content是一个DOM，注意：最好该元素要存放在body最外层，否则可能被其它的相对元素所影响
	});
	$("#delLayerIndex").val(delIndex);
}

//确定删除按钮
function delConfirmClick(){
	alert('ok');
	//关闭弹出层
	layer.close($("#delLayerIndex").val());
}


//把layui原来的分页进行封装
function packlaypage_render(laypage) {
	//执行一个laypage实例
	laypage.render({
		elem: 'test1', //注意，这里的 test1 是 ID，不用加 # 号

		count: 50, //数据总数，从服务端得到
		limit: 10, //每页显示的条数。laypage将会借助 count 和 limit 计算出分页数。
		groups: 5 //连续出现的页码个数
			,
		jump: function(obj, first) { // jump切换分页的回调

			//obj包含了当前分页的所有参数，比如：
			console.log(obj.curr); //得到当前页页号，以便向服务端请求对应页的数据。
			console.log(obj.limit); //得到每页显示的条数。每页显示的记录数
			
			
			//首次不执行
			/*if(!first) {
				//do something
			}*/
			//alert("切换下一页数据");
		}
	});
}
