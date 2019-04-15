//一般直接写在一个js文件中
//数组中表示要引入哪些模块进来，这里引入了layer模块和form模块和laypage分页模块
$(function() {
	layui.use([ 'form', 'layer' ], function() {
		var form = layui.form;
		var layer = layui.layer;
	});
	
	 packlaypage_render(1, 10, 5);
	// 页面加载的时候查询出所有博客信息
	findAllYdyblog();
});

// 按条件查询出所有博客信息
function findAllYdyblog() {

	$.ajax({
		url : contextPath + '/ydy/findYdyblogByCondition.action',
		data : {
			"currentPage" : $("#currentPage").val(),
			"currentCount" : $("#currentCount").val(),
			"title" : "",
			"url" : ""
		},
		type : 'post',
		async : false,
		dataType : "json",
		success : function(data){
			//console.log(data)
			if(data.pageList!=null){
				// 删除tbody中的所有子标签
				$("#tbody").children().remove();
	
				var bodyContent = "";
				for (var i = 0; i < data.pageList.length; i++) {
					var ydyblogid = data.pageList[i].ydyblogid;
					var title = data.pageList[i].title;
					var url = data.pageList[i].url;
	
					bodyContent += "<tr>";
					bodyContent += "<td>" + ydyblogid + "</td>";
					bodyContent += "<td>" + title + "</td>";
					bodyContent += "<td>" + url + "</td>";
					bodyContent += "<td>"
					bodyContent += "<button class='layui-btn layui-btn-xs' onclick='updateYdyClick(this)'><input type='hidden' value='"+ydyblogid+"'/><input type='hidden' value='"+title+"'/><input type='hidden' value='"+url+"'/>修改</button>";
					bodyContent += "<button class='layui-btn layui-btn-xs' onclick='delYdyClick(this)'><input type='hidden' value='"+ydyblogid+"'/>删除</button>";
					bodyContent += "</td>";
					bodyContent += "</tr>";
	
				}
	
				$("#tbody").append(bodyContent);
	
				packlaypage_render(data.currentPage, data.currentCount,data.sumTotal);
	
				// 成功之后关闭表单弹出框
				return false;
				// 并初始化表单
			}
		},
		error : function() {
			alert("出错了!");
			return false;
		}
	});
}



// 添加博客按钮
function addYdyClick() {
	// 打开弹出框
	var addIndex = layer.open({
		title : "添加有道云博客",
		type : 1,
		content : $('#addForm')// 这里content是一个DOM，注意：最好该元素要存放在body最外层，否则可能被其它的相对元素所影响
	});

	// $("#addLayerIndex").val(addIndex);
	// 监听提交

	layui.form.on('submit(addFormDemo)', function(data) {
		/*
		 * layui.layer.msg(JSON.stringify(data.field));
		 * alert(data.field.toString()); console.log(data.field);
		 */
		// 进入这里说明表单校验成功
		$.ajax({
			url : contextPath + '/ydy/addYdyblog.action',
			data : $("#addForm").serialize(),
			type : 'POST',
			async : false,
			success : function(data) {
				alert(data);
				
				//刷新数据
				findAllYdyblog();
				
				// 成功之后关闭表单弹出框
				return false;
				
				// 并初始化表单

			},
			error : function() {
				alert("出错了!");
				return false;
			}
		});

	});

}


// 修改博客按钮
function updateYdyClick(obj) {
	//alert($(obj).parent("td").siblings("td").eq(1).val());
	//alert()
	//console.log($(obj).children("input").eq(0).val());
	//console.log($(obj).children("input").eq(1).val());
	//console.log($(obj).children("input").eq(2).val());
	
	//初始化修改的表单
	$("#updateYdyblogId").val($(obj).children("input").eq(0).val());
	$("#updateTitle").val($(obj).children("input").eq(1).val());
	$("#updateUrl").val($(obj).children("input").eq(2).val());
	
	
	// 打开弹出框
	var updateIndex = layer.open({
		title : "修改有道云博客",
		type : 1,
		content : $('#updateForm')// 这里content是一个DOM，注意：最好该元素要存放在body最外层，否则可能被其它的相对元素所影响
	});
	$("#updateLayerIndex").val(updateIndex);
	// 监听修改的提交
	
	layui.form.on('submit(updateFormDemo)', function(data) {
		// 进入这里说明表单校验成功
		$.ajax({
			url : contextPath + '/ydy/updateYdyblog.action',
			data : $("#updateForm").serialize(),
			type : 'post',
			async : false,
			success : function(data) {
				alert(data);
				
				//刷新数据
				findAllYdyblog();
				
				// 关闭修改的弹出层
				layer.close($("#updateLayerIndex").val());
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
	 

}

//关闭修改的弹出框
function updateCalcel(){
	// 关闭修改的弹出层
	layer.close($("#updateLayerIndex").val());
}

// 删除博客按钮
function delYdyClick(obj) {
	//获取到当前博客的id
	//console.log($(obj).children("input").val())
	
	//为删除用的ydyblogid 隐藏域赋值
	$("#delydyblogid").val($(obj).children("input").val());
	
	// 打开弹出框
	var delIndex = layer.open({
		title : "删除该博客",
		type : 1,
		content : $('#delbtn')
	// 这里content是一个DOM，注意：最好该元素要存放在body最外层，否则可能被其它的相对元素所影响
	});
	$("#delLayerIndex").val(delIndex);
}


// 确定删除按钮
function delConfirmClick() {
	//alert($("#delydyblogid").val());
	
	// 进入这里说明表单校验成功
	$.ajax({
		url : contextPath + '/ydy/delYdyblog.action',
		data : {"ydyblogid":$("#delydyblogid").val()},
		type : 'POST',
		async : false,
		success : function(data) {
			alert(data);
			
			//刷新数据
			findAllYdyblog();
			
			// 成功之后关闭表单弹出框
			return false;
			
			// 并初始化表单

		},
		error : function() {
			alert("出错了!");
			return false;
		}
	});
	
	// 关闭弹出层
	layer.close($("#delLayerIndex").val());
}

// 把layui原来的分页进行封装
function packlaypage_render(currentPage, currentCount, sumTotal) {
	// 执行一个laypage实例
	//var lp = $("#laypageValue").val();
	layui.use(['laypage','layer'], function() {
		layui.laypage.render({
			elem : 'test1', // 注意，这里的 test1 是 ID，不用加 # 号
			curr:currentPage, //当前页页号
			count : sumTotal, // 数据总数，从服务端得到
			limits:[5,10,15,20],//每页可供选择显示的条数
			limit : currentCount, // 每页显示的条数。laypage将会借助 count 和 limit 计算出分页数。
			groups : 5, // 连续出现的页码个数
			 layout:['limit','prev', 'page', 'next','skip','count'],//显示哪些分页组件
			jump : function(obj, first) { // jump切换分页的回调

				// obj包含了当前分页的所有参数，比如：
				// console.log(obj.curr); // 得到当前页页号，以便向服务端请求对应页的数据。
				// console.log(obj.limit); // 得到每页显示的条数。每页显示的记录数

				$("#currentPage").val(obj.curr);
				$("#currentCount").val(obj.limit);
				
				
				
				if(!first){//首次不执行(点击的时候才执行)
					//刷新数据
					findAllYdyblog();//执行查询分页函数(这个函数必须写在这里)
                }
			}
		});
	});
	
}