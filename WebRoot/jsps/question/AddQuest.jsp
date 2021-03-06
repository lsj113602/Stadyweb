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
    <div class="head"><div class="headBox">
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
	<div class="tiwenbox">
		<div class="left-tiwen">
			<h1>提问</h1>
			<form action="<c:url value='/QuestionServlet'/>" method="post">
			<input type="hidden" name="method" value="AddQuestion"/>
				<input type="text" name="qutitle" placeholder="请一句话说明你的问题，已问号结尾。" />
				<h2>标题不能少于5个字!</h2>
			
			<textarea  name="content" cols="80" rows="1" class="area"></textarea>
			<div class="fenlei">
				<h1>选择问题分类，最多可选3个</h1>
				<a href="javascript:;">C++</a>
				<a href="javascript:;">C</a>
				<a href="javascript:;">JAVA</a>
				<a href="javascript:;">PHP</a>
				<a href="javascript:;">C#</a>
				<a href="javascript:;">Android</a>
				<a href="javascript:;">IOS</a>
				<a href="javascript:;">.NET</a>
				<a href="javascript:;">MYSQL</a>
				<a href="javascript:;">Flash</a>
				<a href="javascript:;">计算机组成原理</a>
			</div>
			<div class="fabu">
				<input type="submit" value="发布" style="color:red; font-size:14px;">
			</div>
			</form>
		</div>
		<div class="right-tiwen">
			<h1>提问注意事项</h1>
			<p>1.大家每天可以免费提出两个问题，从第三个问题起，每个问题扣除2点积分，请知晓哦；</p>
			<p>2.大家每天可以免费提出两个问题，从第三个问题起，每个问题扣除2点积分，请知晓哦；</p>
			<p>3.大家每天可以免费提出两个问题，从第三个问题起，每个问题扣除2点积分，请知晓哦；</p>
			<p>4.大家每天可以免费提出两个问题，从第三个问题起，每个问题扣除2点积分，请知晓哦；</p>
		</div>
	</div>
	<script src="js/main.js" type="text/javascript"></script>
  </body>
</html>
