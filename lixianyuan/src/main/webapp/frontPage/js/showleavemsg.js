//一般直接写在一个js文件中
//数组中表示要引入哪些模块进来，这里引入了layer模块和form模块和laypage分页模块
$(function() {
	layui.use([ 'form', 'layer' ], function() {
		var form = layui.form;
		var layer = layui.layer;
	});
	
	 //packlaypage_render(1, 10, 5);
	// 页面加载的时候查询出所有博客信息
	findAllLeavemsg();
});

// 按条件查询出所有留言及其回复留言，按照左外连接查询
function findAllLeavemsg() {

	$.ajax({
		url : contextPath + '/leavemsg/findAllLeavemsgAndReplymsg.action',
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
			//console.log(data)
			if(data.pageList!=null){
				// 删除tbody中的所有子标签
				$("#divContent").children().remove();
				
				var bodyContent = "";
				for (var i = 0; i < data.pageList.length; i++) {
					//留言的内容
					var leavemsgid = data.pageList[i].leavemsgid;
					var name = data.pageList[i].name;
					var email = data.pageList[i].email;
					var content = data.pageList[i].content;
					var leavetime = data.pageList[i].leavetime;
					var ipaddress = data.pageList[i].ipaddress;
					//回复留言的内容
					var replyid = data.pageList[i].replyid;
					var replyname = data.pageList[i].replyname;
					var replycontent = data.pageList[i].replycontent;
					var replytime = data.pageList[i].replytime;
					
					
					
					
					
					//用于算出序号，便于观看
					var num = parseInt($("#currentPage").val()-1)*parseInt($("#currentCount").val())+(i+1);
					
					bodyContent += "<br/><br/><div class='ctspan'>"+num;
					bodyContent += " <span class='layui-btn layui-btn-normal layui-btn-radius span1'>"+"<i class='layui-icon'>&#xe66f;</i>"+name+"   <i class='layui-icon'>&#xe637;</i> "+new Date(leavetime).toLocaleString()+" 留言: "+content+"</span>";
					bodyContent += "</div><br/>";
				
					if(typeof(replyname)!=='undefined'){
						bodyContent += "<div  class='ctspan'>";
						bodyContent += "<span class='layui-btn layui-btn-normal layui-btn-radius span2' >"+"<i class='layui-icon'>&#xe66f;</i>"+replyname +"   <i class='layui-icon'>&#xe637;</i> "+ new Date(replytime).toLocaleString()+ " 回复: "+ replycontent+"</span>";
						bodyContent += "</div><br/><br/>";
					}
				}
	
				$("#divContent").append(bodyContent);
	
				packlaypage_render(data.currentPage, data.currentCount,data.sumTotal);
	
				// 成功之后关闭表单弹出框
				return false;
				// 并初始化表单
			}
		},
		error : function() {
			alert("哈喽哈喽，刷新一下嘛!");
			return false;
		}
	});
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
			limits:[5,10],//每页可供选择显示的条数
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
					findAllLeavemsg();//执行查询分页函数(这个函数必须写在这里)
                }
			}
		});
	});

}

