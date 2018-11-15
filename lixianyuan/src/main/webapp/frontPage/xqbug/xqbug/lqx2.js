$(function() {
	//取消鼠标移动到视频上时的鼠标右键功能
	$('#videoID').bind('contextmenu', function() {
		return false;
	});
	var video = document.getElementById("videoID");
	video.controls = false;

	//轮播图
	layui.use('carousel', function() {
		var carousel = layui.carousel;
		//建造实例
		carousel.render({
			elem: '#test1',
			width: '620px', //设置容器宽度
			interval: 3000, //切换图片时间间隔
			height: '720px',
			arrow: 'always' //始终显示箭头
			//,anim: 'updown' //切换动画方式
		});
	});
})