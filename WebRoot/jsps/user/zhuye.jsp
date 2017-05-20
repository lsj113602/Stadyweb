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
				<li><a href="index.jsp">所有课程</a></li>
				<li><a href="<c:url value='/QuestionServlet?method=FindAllQuestion'/>">相关问题</a></li>
				<li><a href="<c:url value='/ArticleServlet?method=FindAllArticle'/>">资源共享</a></li>
				<li><a href="tiku.html">题库</a></li>
			</ul><!-- headBoxList -->
			<form action="#" class="headBoxSearch">
				<input type="text" placeholder="请输入搜索关键字" class="searchText" />
				<input type="submit" value="搜索" class="submitBtn" />
			</form><!-- headBoxSearch -->
			<c:choose>
	<c:when test="${empty sessionScope.sessionUser }">
	<div class="login-user">
				<a href="/Stadyweb/jsps/user/login.jsp">登陆<span style="font-size:12px;"></span></a>
				
				<a href="/Stadyweb/jsps/user/zhuye.jsp"><span style="font-size:12px;">&nbsp;</span>主页</a>
				
			</div>
		 
	</c:when>
	<c:otherwise>
		  <div class="login-user">
				<a href="<c:url value='/UserServlet?method=RetreatUser'/>">${sessionScope.sessionUser.user_name }</a>
				<a href="/Stadyweb/jsps/user/zhuye.jsp">主页</a>				
			</div> 
			
	</c:otherwise>
</c:choose>
				
			</div>
		</div>
	<!-- head头部 -->
	<!-- 个人主页 -->
	<!-- banner -->
	<div class="zhuye-banner">
		<div class="midd-banner">
			<div class="touxiang">
				<img src="img/java.jpg"/>
			</div>
			<h1>昵称：${sessionScope.sessionUser.user_name }</h1>
		</div>
	</div>
	<!-- banner结束 -->
	<!-- 主页内容盒子 -->
	<div class="zhuye-box">
		<div class="left-zhuye">
			<div class="left-zhuye-nav">
				<ul>
					<li><a class="current" href="/Stadyweb/jsps/user/zhuye.jsp"><i class="iconfont">&#xe651;</i>主页</a></li>
					<li><a href="/Stadyweb/jsps/user/zhuye_class.jsp"><i class="iconfont">&#xe693;</i>课程</a></li>
					<li><a href="/Stadyweb/jsps/user/zhuye_answer.jsp"><i class="iconfont">&#xe66c;</i>问答</a></li>
					<li><a href="<c:url value='/ArticleServlet?method=FindArticleByauthor'/>"><i class="iconfont">&#xe628;</i>文章</a></li>
					<li><a href="<c:url value='/Servlet?method=FindMyVideo'/>"><i class="iconfont">&#xe607;</i>视频</a></li>
					<li><a href="/Stadyweb/jsps/user/zhuye_ji.jsp"><i class="iconfont">&#xe60b;</i>统计</a></li>
					<li><a href="/Stadyweb/jsps/user/FriendsList.jsp"><i class="iconfont">&#xe693;</i>好友</a></li>
				</ul>
			</div>
		</div>
		<div class="right-zhuye">
			<h1>最新动态</h1>
			<!-- 每一个动态 -->
			<div class="zhuye-main">
				<div class="first">
					<img src="img/toop.jpg">
					<div class="first-right">
						<a href="javascript:;">王莫某</a>
						<span>1天前</span>
					</div>
				</div>
				<div class="second">
					<p>这里是很多的内容这里是很多的内容这里是很多的内容这里是很多的内容这里是很多的内容这里是很多的内容这里是很多的内容这里是很多的内容这里是很多的内容这里是很多的内容这里是很多的内容</p>
				</div>
			</div>
			<!-- 动态结束 -->
			<!-- 每一个动态 -->
			<div class="zhuye-main">
				<div class="first">
					<img src="">
					<div class="first-right">
						<a href="javascript:;">王莫某</a>
						<span>1天前</span>
					</div>
				</div>
				<div class="second">
					<p>这里是很多的内容这里是很多的内容这里是很多的内容这里是很多的内容这里是很多的内容这里是很多的内容这里是很多的内容这里是很多的内容这里是很多的内容这里是很多的内容这里是很多的内容</p>
				</div>
			</div>
			<!-- 动态结束 -->
			<!-- 每一个动态 -->
			<div class="zhuye-main">
				<div class="first">
					<img src="#">
					<div class="first-right">
						<a href="javascript:;">王莫某</a>
						<span>1天前</span>
					</div>
				</div>
				<div class="second">
					<p>这里是很多的内容这里是很多的内容这里是很多的内容这里是很多的内容这里是很多的内容这里是很多的内容这里是很多的内容这里是很多的内容这里是很多的内容这里是很多的内容这里是很多的内容</p>
				</div>
			</div>
			<!-- 动态结束 -->
		</div>	
	</div>
	<script src="js/main.js" type="text/javascript"></script>
  </body>
</html>
