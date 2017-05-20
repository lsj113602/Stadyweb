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
				<a href="<c:url value='/UserServlet?method=RetreatUser'/>">你好：${sessionScope.sessionUser.user_name }</a>				
			</div> 
			
	</c:otherwise>
</c:choose>
		</div>
	</div><!-- head头部 -->
	<!-- 共享资源 -->
	<div class="source-box">
		<ul class="source-box-title">
			<li><a style="color:red;" href="source_text.html">文章</a></li>
			<li><a href="source_vadio.html">视频</a></li>
			<li style="float:right;background-color:red; color:#fff;"><a style="color:#fff; font-size:14px;" href="jsps/title/AddTitle.jsp">发布文章</a></li>
			<li style="float:right;background-color:red; color:#fff;"><a style="color:#fff; font-size:14px;" href="upload_vadio.html">上传视频</a></li>
		</ul>
		<!-- 文章盒子， 重复 -->
		<c:forEach items="${requestScope.listart}" var="art" >
          
	  
		<div class="source-text-box">
			<h1>${art.artitle}</h1>
			<p>${art.artext}</p>
			<span>作者：${art.arauthor.user_name}</span>
		</div>
		</c:forEach>
		<!-- 文章盒子结束 -->
	</div>
	<script src="js/main.js" type="text/javascript"></script>
  </body>
</html>
