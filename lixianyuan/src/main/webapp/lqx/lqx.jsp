<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>刘桥秀</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script src="/lixianyuan/js/jquery-1.8.2.js"></script>
	
	   <style>
        #div1{
            /*width: 100px;*/
            height:100px;
            /*border:边框*/
           /*  border: 1px solid red; */
           /*  background: greenyellow; */
            font-size: 50px;
        }
        
        #div2 {
            height: 600px;
           /*  border: 1px solid green; */
        }
        
       

        /*.class名  class选择器*/
        .left {
            height: 600px;
            width: 60%;
          /*   background: pink; */
            /*float:浮动*/
            float: left;
        }
        
        .right{
            height:600px;
            width: 40%;
            background: green;
            float:right;
        }

		 #div3{
        	margin-top:1200px; 
            height: 100px;
        }
        
    </style>
  </head>
  
  <body style="background-image: url('./11.jpg');">
  
   <div id="div1">
   		<marquee><font color="LightSkyBlue">六一儿童节快乐</font><font color="MediumPurple">六一儿童节快乐</font><font color="Crimson">六一儿童节快乐</font></marquee>
   </div>
    <div id="div2">
        <div class="left">
        	<table style="height: 600px;width: 100%;">
        		<tr>
        			<td style="height:199px;width: 33%; "><img style="height: 100%;width: 100%" alt="" src=" ./1.jpg"></td>
        			<td style="height:199px;width: 33%; "><img style="height: 100%;width: 100%" alt="" src=" ./2.jpg"></td>
        			<td style="height:199px;width: 33%; "><img style="height: 100%;width: 100%" alt="" src=" ./3.jpg"></td>
        		</tr>
        		<tr>
        			<td style="height:199px;width: 33%; "><img style="height: 100%;width: 100%" alt="" src=" ./4.jpg"></td>
        			<td style="height:199px;width: 33%; "><img style="height: 100%;width: 100%" alt="" src=" ./6.jpg"></td>
        			<td style="height:199px;width: 33%; "><img style="height: 100%;width: 100%" alt="" src=" ./7.jpg"></td>
        		</tr>
        		<tr>
        			<td style="height:199px;width: 33%; "><img style="height: 100%;width: 100%" alt="" src=" ./8.jpg"></td>
        			<td style="height:199px;width: 33%; "><img style="height: 100%;width: 100%" alt="" src=" ./11.jpg"></td>
        			<td style="height:199px;width: 33%; "><img style="height: 100%;width: 100%" alt="" src=" ./10.jpg"></td>
        		</tr>
        	</table>
        </div>
        	
        <div class="right">
        	<img style="height: 100%;width: 100%"  alt="" src=" ./h.jpg">
        </div>
    </div>
    <br/>
    <video id="videoID"  style="display:block; margin:0 auto;" src=" ./lqx.mp4" loop autoplay="true" >
			your browser does not support the video tag
	</video>
	<br/>
    <!-- <div id="div3">footer</div> -->
   	<marquee>
   		<img  alt="" src="./13.jpg">
   		<img  alt="" src="./14.jpg">
   		<img  alt="" src="./15.jpg">
   	</marquee>
   	
   	<div style="font-size: 50px;">
   		<marquee><font color="LightSkyBlue">刘桥秀六一儿童节快乐</font><font color="MediumPurple">刘桥秀六一儿童节快乐</font><font color="Crimson">刘桥秀六一儿童节快乐</font></marquee>
   </div>
   		
	
	<script type="text/javascript">
		//取消鼠标移动到视频上时的鼠标右键功能
		$('#videoID').bind('contextmenu',function() { return false; });
		var video=document.getElementById("videoID");
		video.controls=false;
	</script>
   
  </body>
</html>
