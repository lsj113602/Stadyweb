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
				<li><a href="problem.html">相关问题</a></li>
				<li><a href="<c:url value='/ArticleServlet?method=FindAllArticle'/>">资源共享</a></li>
				<li><a href="tiku.html">题库</a></li>
			</ul><!-- headBoxList -->
			<form action="#" class="headBoxSearch">
				<input type="text" placeholder="请输入搜索关键字" class="searchText" />
				<input type="submit" value="搜索" class="submitBtn" />
			</form><!-- headBoxSearch -->
			<div class="login-user">
				<a href="login.html">登陆</a>
			</div>
		</div>
	</div><!-- head头部 -->
	<!-- 共享资源 -->
		<div class="source-box">
		<ul class="source-box-title">
			<li><a style="color:red;" href="<c:url value='/ArticleServlet?method=FindArticle&cname=${requestScope.cname}'/>">文章</a></li>
			<li><a href="<c:url value='/ArticleServlet?method=FindArticle&cname=${requestScope.cname}'/>">视频</a></li>
			<li style="float:right;background-color:red; color:#fff;"><a style="color:#fff; font-size:14px;" href="upload_text.html">发布文章</a></li>
			<li style="float:right;background-color:red; color:#fff;"><a style="color:#fff; font-size:14px;" href="upload_vadio.html">上传视频</a></li>
		</ul>
	</div>
	<div class="fabu-text">
	<form action="<c:url value='/ArticleServlet'/>" method="post">
	<input type="hidden" name="method" value="AddArticle"/>
		<span>文章标题</span><input type="text" id="fabu-title" name="artitle"/>
		<h2>正文</h2>
		<textarea name="artext" cols="80" rows="1" class="area"></textarea>
		<div class="fenlei">
				<h1>选择问题分类，最多可选3个</h1>
				<a href="javascript:;">C++</a>
				<a href="javascript:;">C++</a>
				<a href="javascript:;">C++</a>
				<a href="javascript:;">C++</a>
				<a href="javascript:;">Bootstrap</a>
				<a href="javascript:;">C++</a>
				<a href="javascript:;">C++</a>
				<a href="javascript:;">C++</a>
				<a href="javascript:;">C++</a>
				<a href="javascript:;">C++</a>
				<a href="javascript:;">C++</a>
			</div>
			<div class="fabu">
				<input type="submit" value="发布" style="color:red; font-size:14px;">
			</div>
			
			</form>
	</div>
	<script src="js/main.js" type="text/javascript"></script>
  </body>
</html>
