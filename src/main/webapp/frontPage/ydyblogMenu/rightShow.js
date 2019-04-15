$(function(){
	// 一般直接写在一个js文件中
	// 数组中表示要引入哪些模块进来，这里引入了layer模块和form模块和laypage分页模块
	//注意：导航 依赖 element 模块，否则无法进行功能性操作
	layui.use([ 'form', 'layer','element' ], function() {
		var form = layui.form;
		var layer = layui.layer;
		var element = layui.element;
	});

	//packlaypage_render(1, 10, 5);
	function HTMLClick(obj){
		//alert("点击");
		findAllYdyblog();
	}
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
			"title" : $("#menuToTitleContent").val(),
			"url" : ""
		},
		type : 'post',
		async : false,
		dataType : "json",
		success : function(data) {
			console.log(data)
			// console.log(data)
			if(data.pageList!=null){
				// 删除tbody中的所有子标签
				$("#tbody").children().remove();
	
				var bodyContent = "";
				for (var i = 0; i < data.pageList.length; i++) {
					var title = data.pageList[i].title;
					var url = data.pageList[i].url;
					
					
					bodyContent += "<tr>";
					bodyContent += "<td><a href='"+url+"' class='layui-btn layui-btn-normal layui-btn-radius  layui-btn-xs'>"+title+"</a></td>";
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
			alert("哈喽哈喽，刷新一下嘛!");
			return false;
		}
	});
}

//把layui原来的分页进行封装
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
					findAllYdyblog();//执行查询分页函数(这个函数必须写在这里)
                }
			}
		});
	});
	
}

//HTML
function HTMLClick(obj){
	//清空当前页页号和每页显示的记录数
	$("#currentPage").val("1");
	$("#currentCount").val("10");
	$("#menuToTitleContent").val($(obj).text());
	findAllYdyblog();//$(obj).text()
}


function CSSClick(obj){
	//清空当前页页号和每页显示的记录数
	$("#currentPage").val("1");
	$("#currentCount").val("10");
	$("#menuToTitleContent").val($(obj).text());
	findAllYdyblog();
}

function JavaScriptClick(obj){
	//清空当前页页号和每页显示的记录数
	$("#currentPage").val("1");
	$("#currentCount").val("10");
	$("#menuToTitleContent").val($(obj).text());
	findAllYdyblog();
}

function jQueryClick(obj){
	//清空当前页页号和每页显示的记录数
	$("#currentPage").val("1");
	$("#currentCount").val("10");
	$("#menuToTitleContent").val($(obj).text());
	findAllYdyblog();
}

function VueClick(obj){
	//清空当前页页号和每页显示的记录数
	$("#currentPage").val("1");
	$("#currentCount").val("10");
	$("#menuToTitleContent").val($(obj).text());
	findAllYdyblog();
}

function layuiClick(obj){
	//清空当前页页号和每页显示的记录数
	$("#currentPage").val("1");
	$("#currentCount").val("10");
	$("#menuToTitleContent").val($(obj).text());
	findAllYdyblog();
}

function angularClick(obj){
	//清空当前页页号和每页显示的记录数
	$("#currentPage").val("1");
	$("#currentCount").val("10");
	$("#menuToTitleContent").val($(obj).text());
	findAllYdyblog();
}

function NodeClick(obj){
	//清空当前页页号和每页显示的记录数
	$("#currentPage").val("1");
	$("#currentCount").val("10");
	$("#menuToTitleContent").val($(obj).text());
	findAllYdyblog();
}

function HTMLMoreClick(obj){
	//清空当前页页号和每页显示的记录数
	$("#currentPage").val("1");
	$("#currentCount").val("10");
	$("#menuToTitleContent").val($(obj).text());
	findAllYdyblog();
}

function JavaSEClick(obj){
	//清空当前页页号和每页显示的记录数
	$("#currentPage").val("1");
	$("#currentCount").val("10");
	$("#menuToTitleContent").val($(obj).text());
	findAllYdyblog();
}

function JavaEEClick(obj){
	//清空当前页页号和每页显示的记录数
	$("#currentPage").val("1");
	$("#currentCount").val("10");
	$("#menuToTitleContent").val($(obj).text());
	findAllYdyblog();
}

function SpringClick(obj){
	//清空当前页页号和每页显示的记录数
	$("#currentPage").val("1");
	$("#currentCount").val("10");
	$("#menuToTitleContent").val($(obj).text());
	findAllYdyblog();
}

function SpringMVCClick(obj){
	//清空当前页页号和每页显示的记录数
	$("#currentPage").val("1");
	$("#currentCount").val("10");
	$("#menuToTitleContent").val($(obj).text());
	findAllYdyblog();
}

function MybatisClick(obj){
	//清空当前页页号和每页显示的记录数
	$("#currentPage").val("1");
	$("#currentCount").val("10");
	$("#menuToTitleContent").val($(obj).text());
	findAllYdyblog();
}

function HibernateClick(obj){
	//清空当前页页号和每页显示的记录数
	$("#currentPage").val("1");
	$("#currentCount").val("10");
	$("#menuToTitleContent").val($(obj).text());
	findAllYdyblog();
}
function Struts2Click(obj){
	//清空当前页页号和每页显示的记录数
	$("#currentPage").val("1");
	$("#currentCount").val("10");
	$("#menuToTitleContent").val($(obj).text());
	findAllYdyblog();
}
function ShiroClick(obj){
	//清空当前页页号和每页显示的记录数
	$("#currentPage").val("1");
	$("#currentCount").val("10");
	$("#menuToTitleContent").val($(obj).text());
	findAllYdyblog();
}
function Java_MoreClick(obj){
	//清空当前页页号和每页显示的记录数
	$("#currentPage").val("1");
	$("#currentCount").val("10");
	$("#menuToTitleContent").val($(obj).text());
	findAllYdyblog();
}

function pythonClick(obj){
	//清空当前页页号和每页显示的记录数
	$("#currentPage").val("1");
	$("#currentCount").val("10");
	$("#menuToTitleContent").val($(obj).text());
	findAllYdyblog();
}
function Python_MoreClick(obj){
	//清空当前页页号和每页显示的记录数
	$("#currentPage").val("1");
	$("#currentCount").val("10");
	$("#menuToTitleContent").val($(obj).text());
	findAllYdyblog();
}
function MySQLClick(obj){
	//清空当前页页号和每页显示的记录数
	$("#currentPage").val("1");
	$("#currentCount").val("10");
	$("#menuToTitleContent").val($(obj).text());
	findAllYdyblog();
}
function OracleClick(obj){
	//清空当前页页号和每页显示的记录数
	$("#currentPage").val("1");
	$("#currentCount").val("10");
	$("#menuToTitleContent").val($(obj).text());
	findAllYdyblog();
}
function MongoDBClick(obj){
	//清空当前页页号和每页显示的记录数
	$("#currentPage").val("1");
	$("#currentCount").val("10");
	$("#menuToTitleContent").val($(obj).text());
	findAllYdyblog();
}
function RedisClick(obj){
	//清空当前页页号和每页显示的记录数
	$("#currentPage").val("1");
	$("#currentCount").val("10");
	$("#menuToTitleContent").val($(obj).text());
	findAllYdyblog();
}
function DBMoreClick(obj){
	//清空当前页页号和每页显示的记录数
	$("#currentPage").val("1");
	$("#currentCount").val("10");
	$("#menuToTitleContent").val($(obj).text());
	findAllYdyblog();
}

function LinuxBaseClick(obj){
	//清空当前页页号和每页显示的记录数
	$("#currentPage").val("1");
	$("#currentCount").val("10");
	$("#menuToTitleContent").val($(obj).text());
	findAllYdyblog();
}
function LinuxFWQClick(obj){
	//清空当前页页号和每页显示的记录数
	$("#currentPage").val("1");
	$("#currentCount").val("10");
	$("#menuToTitleContent").val($(obj).text());
	findAllYdyblog();
}
function Linux_MoreClick(obj){
	//清空当前页页号和每页显示的记录数
	$("#currentPage").val("1");
	$("#currentCount").val("10");
	$("#menuToTitleContent").val($(obj).text());
	findAllYdyblog();
}

function error_JavaClick(obj){
	//清空当前页页号和每页显示的记录数
	$("#currentPage").val("1");
	$("#currentCount").val("10");
	$("#menuToTitleContent").val($(obj).text());
	findAllYdyblog();
}
function error_DBClick(obj){
	//清空当前页页号和每页显示的记录数
	$("#currentPage").val("1");
	$("#currentCount").val("10");
	$("#menuToTitleContent").val($(obj).text());
	findAllYdyblog();
}
function error_QDClick(obj){
	//清空当前页页号和每页显示的记录数
	$("#currentPage").val("1");
	$("#currentCount").val("10");
	$("#menuToTitleContent").val($(obj).text());
	findAllYdyblog();
}
function error_JavaFrameworkClick(obj){
	//清空当前页页号和每页显示的记录数
	$("#currentPage").val("1");
	$("#currentCount").val("10");
	$("#menuToTitleContent").val($(obj).text());
	findAllYdyblog();
}
function error_webFWQClick(obj){
	//清空当前页页号和每页显示的记录数
	$("#currentPage").val("1");
	$("#currentCount").val("10");
	$("#menuToTitleContent").val($(obj).text());
	findAllYdyblog();
}

function Design_ModelClick(obj){
	//清空当前页页号和每页显示的记录数
	$("#currentPage").val("1");
	$("#currentCount").val("10");
	$("#menuToTitleContent").val($(obj).text());
	findAllYdyblog();
}
function AADSClick(obj){
	//清空当前页页号和每页显示的记录数
	$("#currentPage").val("1");
	$("#currentCount").val("10");
	$("#menuToTitleContent").val($(obj).text());
	findAllYdyblog();
}
function JVMClick(obj){
	//清空当前页页号和每页显示的记录数
	$("#currentPage").val("1");
	$("#currentCount").val("10");
	$("#menuToTitleContent").val($(obj).text());
	findAllYdyblog();
}
function TomcatClick(obj){
	//清空当前页页号和每页显示的记录数
	$("#currentPage").val("1");
	$("#currentCount").val("10");
	$("#menuToTitleContent").val($(obj).text());
	findAllYdyblog();
}
function NginxClick(obj){
	//清空当前页页号和每页显示的记录数
	$("#currentPage").val("1");
	$("#currentCount").val("10");
	$("#menuToTitleContent").val($(obj).text());
	findAllYdyblog();
}












