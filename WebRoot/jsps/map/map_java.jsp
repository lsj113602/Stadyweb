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
	<!-- 地图盒子 -->
	<div class="map-box">
		<div class="map-left"><!--左边的章节框-->
			<h1>java课程</h1>
			<ul>
				<div class="one-t">
					<h2>第一章</h2>
					<li class="one">1-1</li>
					<li class="one">1-2</li>
					<li class="one">1-3</li>
					<li class="one">1-4</li>
				</div>	
				<div class="two-t">
					<h2>第二章</h2>
					<li class="two">2-1</li>
					<li class="two">2-2</li>
					<li class="two">2-3</li>
				</div>
				<div class="three-t">
					<h2>第三章</h2>
					<li class="three">3-1</li>
					<li class="three">3-2</li>
					<li class="three">3-3</li>
					<li class="three">3-4</li>
					<li class="three">3-5</li>
					<li class="three">3-6</li>
					<li class="three">3-7</li>
				</div>
				<div class="four-t">
					<h2>第四章</h2>
					<li class="four">4-1</li>
					<li class="four">4-2</li>
					<li class="four">4-3</li>
					<li class="four">4-4</li>
				</div>
				<div class="five-t">
					<h2>第五章</h2>
					<li class="five">5-1</li>
					<li class="five">5-2</li>
					<li class="five">5-3</li>
					<li class="five">5-4</li>
					<li class="five">5-5</li>
				</div>
				<div class="six-t">
					<h2>第六章</h2>
					<li class="six">6-1</li>
					<li class="six">6-2</li>
					<li class="six">6-3</li>
					<li class="six">6-4</li>
					<li class="six">6-5</li>
				</div>
				<div class="seven-t">
					<h2>第七章</h2>
					<li class="seven">7-1</li>
					<li class="seven">7-2</li>
					<li class="seven">7-3</li>
					<li class="seven">7-4</li>
				</div>
				<div class="eight-t">
					<h2>第八章</h2>
					<li class="eight">8-1</li>
					<li class="eight">8-2</li>
					<li class="eight">8-3</li>
					<li class="eight">8-4</li>
					<li class="eight">8-5</li>
					<li class="eight">8-6</li>
					<li class="eight">8-7</li>
					<li class="eight">8-8</li>
					<li class="eight">8-9</li>
					<li class="eight">8-10</li>
				</div>
			</ul>
		</div>
		<div class="map"><!--中间的地图框-->
			<ul>
				<div class="one-t">
					<li class="java1-1"><img src="img/face.png"/></li>
					<li class="java1-2"><img src="img/face.png"/></li>
					<li class="java1-3"><img src="img/face.png"/></li>
					<li class="java1-4"><img src="img/face.png"/></li>
				</div>
				<div class="two-t">
					<li class="java2-1"><img src="img/face.png"/></li>
					<li class="java2-2"><img src="img/face.png"/></li>
					<li class="java2-3"><img src="img/face.png"/></li>
				</div>
				<div class="three-t">
					<li class="java3-1"><img src="img/face.png"/></li>
					<li class="java3-2"><img src="img/face.png"/></li>
					<li class="java3-3"><img src="img/face.png"/></li>
					<li class="java3-4"><img src="img/face.png"/></li>
					<li class="java3-5"><img src="img/face.png"/></li>
					<li class="java3-6"><img src="img/face.png"/></li>
					<li class="java3-7"><img src="img/face.png"/></li>
				</div>
				<div class="four-t">
					<li class="java4-1"><img src="img/face.png"/></li>
					<li class="java4-2"><img src="img/face.png"/></li>
					<li class="java4-3"><img src="img/face.png"/></li>
					<li class="java4-4"><img src="img/face.png"/></li>
				</div>
				<div class="five-t">
					<li class="java5-1"><img src="img/face.png"/></li>
					<li class="java5-2"><img src="img/face.png"/></li>
					<li class="java5-3"><img src="img/face.png"/></li>
					<li class="java5-4"><img src="img/face.png"/></li>
					<li class="java5-5"><img src="img/face.png"/></li>
				</div>
				<div class="six-t">
					<li class="java6-1"><img src="img/face.png"/></li>
					<li class="java6-2"><img src="img/face.png"/></li>
					<li class="java6-3"><img src="img/face.png"/></li>
					<li class="java6-4"><img src="img/face.png"/></li>
					<li class="java6-5"><img src="img/face.png"/></li>
				</div>
				<div class="seven-t">
					<li class="java7-1"><img src="img/face.png"/></li>
					<li class="java7-2"><img src="img/face.png"/></li>
					<li class="java7-3"><img src="img/face.png"/></li>
					<li class="java7-4"><img src="img/face.png"/></li>
				</div>
				<div class="eight-t">
					<li class="java10-1"><img src="img/face.png"/></li>
					<li class="java10-2"><img src="img/face.png"/></li>
					<li class="java10-3"><img src="img/face.png"/></li>
					<li class="java10-4"><img src="img/face.png"/></li>
					<li class="java10-5"><img src="img/face.png"/></li>
					<li class="java10-6"><img src="img/face.png"/></li>
					<li class="java10-7"><img src="img/face.png"/></li>
					<li class="java10-8"><img src="img/face.png"/></li>
					<li class="java10-9"><img src="img/face.png"/></li>
					<li class="java10-10"><img src="img/face.png"/></li>
				</div>
			</ul>
		</div>
		<div class="map-right"><!--隐藏的资源导航框-->
			<ul>
				<li>视频</li>
				<li>文章</li>
				<li>笔记</li>
				<li>代码</li>
			</ul>
		</div>
		<div class="map-sou">
			<div class="map-video">
				<a href="javascript:;">视频1：java入门</a>
				<a href="javascript:;">视频2：语言的来历</a>
			</div>
			<div class="map-text">
				<a href="javascript:;">文章1：如何入门java</a>
				<a href="javascript:;">文章2：很多人不知道的写法</a>
			</div>
			<div class="map-note">
				<a href="javascript:;">笔记1：css规范</a>
				<a href="javascript:;">笔记2：数据库的创建</a>
			</div>
			<div class="map-code">
				<a href="javascript:;">代码1：代码书写规范</a>
				<a href="javascript:;">代码2：后台人员怎么做</a>
			</div>
		</div>
	</div>
	<script src="js/main.js" type="text/javascript"></script>
  </body>
</html>
