function login() {
  	$("#sb").click(function(){
  		//获取用户名
  		var username = $("#userName").val();
  		var password = $("#pwd").val();
  		
  		alert(username+":"+password);
  		//获取密码
  		
  		if((username=="lixianyuan") && (password==".,e900950")){
  			//将id="login"的a标签的href属性赋值
  			$("#login").attr("href","admin.jsp");
  		}else{
  			$("#login").attr("href","${pageContext.request.contextPath }/normalJsp/index.jsp");
  		}
  	});

}