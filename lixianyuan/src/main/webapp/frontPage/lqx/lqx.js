$(function() {
	//取消鼠标移动到视频上时的鼠标右键功能
	$('#videoID').bind('contextmenu', function() {
		return false;
	});
	var video = document.getElementById("videoID");
	video.controls = false;
})