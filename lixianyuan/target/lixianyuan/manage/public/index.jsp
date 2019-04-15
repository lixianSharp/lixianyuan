<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>后台的主框架页面</title>

</head>

  	<frameset rows="*,5%" border="1"><!-- 把这个页面按行的比例分成二份 -->
		<frameset cols="138px,*"><!-- 第一份页面,把第二份页面按照列比例分割成两个页面(两列) -->
			<frame src="${pageContext.request.contextPath }/manage/public/menu.jsp"/>
			<frame name="rightShow" src="${pageContext.request.contextPath }/manage/public/rightShow.jsp"/><!-- 其他页面的显示就跳转到这个show页面来显示 -->
		</frameset>
  		<frame src="${pageContext.request.contextPath }/manage/public/footer.jsp"/><!-- 第二份页面 -->
					
  	</frameset>

</html>