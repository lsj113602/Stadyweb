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
	<title>极客联盟-所有课程</title>
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
	<!-- 个人主页 -->
	<!-- banner -->
	<div class="zhuye-banner">
		<div class="midd-banner">
			<div class="touxiang">
				<img src="img/java.jpg"/>
			</div>
			<h1>某某某</h1>
		</div>
	</div>
	<!-- banner结束 -->
	<!-- 主页内容盒子 -->
	<div class="zhuye-box">
		<div class="left-zhuye">
			<div class="left-zhuye-nav">
				<ul>
					<li><a href="zhuye.html"><i class="iconfont">&#xe651;</i>主页</a></li>
					<li><a href="zhuye_class.html"><i class="iconfont">&#xe693;</i>课程</a></li>
					<li><a href="zhuye_answer.html"><i class="iconfont">&#xe66c;</i>问答</a></li>
					<li><a class="current" href="zhuye_text.html"><i class="iconfont">&#xe628;</i>文章</a></li>
					<li><a href="zhuye_vadio.html"><i class="iconfont">&#xe607;</i>视频</a></li>
					<li><a href="zhuye_ji.html"><i class="iconfont">&#xe60b;</i>统计</a></li>
				</ul>
			</div>
		</div>
		<div class="right-zhuye">
			<h1>文章列表<a href="upload_text.html">发表文章</a></h1>
			<!--每一个文章  -->
			<a class="text-con" href="javascript:;">
				<h2>我是文章的标题<span>2016-05-08</span></h2>
				<p>我是文章的内容我是内容我是文章的内容我是内容我是文章的内容我是内容我是文章的内容我是内容我是文章的内容我是内容我是文章的内容我是内容我是文章的内容我是内容我是文章的内容我是内容我是文章的内容我是内容我是文章的内容我是内容我是文章的内容我是内容我是文章的内容我是内容我是文章的内容我是内容我是文章的内容我是内容</p>
			</a>
			<div class="zan">
				<span>评论 22</span>
				<span>点赞 10</span>
			</div>
			<!-- 每一个文章结束 -->	
			<!--每一个文章  -->
			<a class="text-con" href="javascript:;">
				<h2>我是文章的标题<span>2016-05-08</span></h2>
				<p>我是文章的内容我是内容我是文章的内容我是内容我是文章的内容我是内容我是文章的内容我是内容我是文章的内容我是内容我是文章的内容我是内容我是文章的内容我是内容我是文章的内容我是内容我是文章的内容我是内容我是文章的内容我是内容我是文章的内容我是内容我是文章的内容我是内容我是文章的内容我是内容我是文章的内容我是内容</p>
			</a>
			<div class="zan">
				<span>评论 22</span>
				<span>点赞 10</span>
			</div>
			<!-- 每一个文章结束 -->	
	</div>
	<script src="js/main.js" type="text/javascript"></script>
  </body>
</html>
