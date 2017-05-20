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
	<meta charset="UTF-8">
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
				<li><a href="problem.html">相关问题</a></li>
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
				<a href="/Stadyweb/jsps/user/login.jsp">登陆</a>
			</div>
	</c:when>
	<c:otherwise>
		  <div class="login-user">
				<a href="login.html">你好：${sessionScope.sessionUser.user_name }</a>
			</div> 
	</c:otherwise>
</c:choose>
		</div>
	</div><!-- head头部 -->
	<div class="kecheng-box">
		<h1>全部课程</h1>
		<ul>
			<li>方向:</li>
			<li><a href="index.jsp">全部</a></li>
			<li><a href="web.jsp">前端开发</a></li>
			<li><a href="back.jsp">后端开发</a></li>
			<li><a class="current" href="mob.jsp">移动开发</a></li>
			<li><a href="date.jsp">数据处理</a></li>
		</ul>
		<a style="margin-right:0;" class="deatil-class" href="#">
			<img src="img/pyhton.jpg"/>
			<p>移动开发</p>
		</a>
	</div>
	<script src="js/main.js" type="text/javascript"></script>
  </body>
</html>
