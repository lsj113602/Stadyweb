<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
	<title>极客联盟</title>
	<link rel="stylesheet" type="text/css" href="css/style.css">
	<script src="http://libs.baidu.com/jquery/1.8.2/jquery.js" type="text/javascript"></script>

  </head>
  
  <body>
   <div class="head">
		<div class="headBox">
			<div class="logo">
				<i class="iconfont">&#xe651;</i>
			</div><!-- logo -->
			<ul class="headBoxList">
				<li><a href="index.html">所有课程</a></li>
				<li><a href="problem.html">相关问题</a></li>
				<li><a href="source_text.html">资源共享</a></li>
				<li><a href="tiku.html">题库</a></li>
			</ul><!-- headBoxList -->
			<form action="#" class="headBoxSearch">
				<input type="text" placeholder="请输入搜索关键字" class="searchText" />
				<input type="submit" value="搜索" class="submitBtn" />
			</form><!-- headBoxSearch -->
			<div class="login-user">
				<a href="login.html">登陆</a>
				<a href="zhuye.html">主页</a>
				
			</div>
		</div>
	</div><!-- head头部 -->
	<!-- 视频播放 -->
	<div class="video-box">
		<span id="play-video">
			<video id="player" controls="controls"></video>
		</span>
	</div>
	<script src="js/main.js" type="text/javascript"></script>
  </body>
</html>
