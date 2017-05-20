<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<meta charset="UTF-8">
	<title>极客联盟-全部课程</title>
	<link rel="Shortcut Icon" href="img/favicon.ico" />
	<link rel="stylesheet" type="text/css" href="css/style.css">
	<script src="http://libs.baidu.com/jquery/1.8.2/jquery.js" type="text/javascript"></script>

  </head>
  
  <body>
    <div class="class-box">
		<ul>
			<li class="map01"><i class="iconfont">&#xe600;</i></li>
			<li class="map02"><i class="iconfont">&#xe601;</i></li>
			<li class="map03"><i class="iconfont">&#xe602;</i></li>
			<li class="map04"><i class="iconfont">&#xe603;</i></li>
			<li class="map05"><i class="iconfont">&#xe604;</i></li>
			<li class="map06"><i class="iconfont">&#xe605;</i></li>
			<li class="map07"><i class="iconfont">&#xe606;</i></li>
			<li class="map08"><i class="iconfont">&#xe607;</i></li>
		</ul>
		<div class="face">
			<a class="face01" href="#"></a>
			<a class="face02" href="#"></a>
			<a class="face03" href="#"></a>
			<a class="face04" href="#"></a>
			<a class="face05" href="#"></a>
			<a class="face06" href="#"></a>
			<a class="face07" href="#"></a>
			<a class="face08" href="#"></a>
		</div>
	</div>
	<script src="js/main.js" type="text/javascript"></script>
  </body>
</html>
