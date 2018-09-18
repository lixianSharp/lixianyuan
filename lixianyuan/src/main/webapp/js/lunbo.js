//<!-- 轮播图的js代码 -->
//更改图片
//<img id="luboid" src="img/1.jpg"/>
function changeImage() {
	// 获取图片元素
	var imgObj = document.getElementById("luboid");
	i++;
	// 修改图片元素的src属性
	imgObj.src = "/lixianyuan/images/" + i + ".jpg";

	// 当i>3的时候 重置i
	if (i >= 4) {
		i = 0;
	}

}

// <!-- 轮播图中对a标签中href属性的处理 -->
function lunboHref() {
	$("#lunboA").click(function() {
		// 获取图片元素中src属性的内容
		var imgObj = $("#luboid").attr("src");// images/1.jpg
		// 获取图片是第几张图片
		imgObj = imgObj.toString().substr(7, 1);// 1

		//alert(imgObj);// images/1.jpg

		// 获取a标签元素
		if (imgObj == "1") {
			var aObj = document.getElementById("lunboA");
			aObj.href = "#";// 这是第一张图片对应要跳转的超链接
		} else if (imgObj == "2") {
			var aObj = document.getElementById("lunboA");
			aObj.href = "#";//这是第二张图片对应要跳转的超链接
		} else if (imgObj == "3") {
			var aObj = document.getElementById("lunboA");
			aObj.href = "#";//这是第三张图片对应要跳转的超链接
		} else if (imgObj == "4") {
			var aObj = document.getElementById("lunboA");
			aObj.href = "#";//这是第四张图片对应要跳转的超链接
		}
	});

}
