<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
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
				<a href="/Stadyweb/jsps/user/zhuye.jsp"></span>主页</a>				
			</div> 
			
	</c:otherwise>
</c:choose>
			
			
			
		</div>
	</div>

		<div class="kecheng-box">
		<h1>全部课程</h1>
		<ul>
			<li>方向:</li>
			<li><a class="current" href="index.jsp">全部</a></li>
			<li><a href="web.jsp">前端开发</a></li>
			<li><a href="back.jsp">后端开发</a></li>
			<li><a href="mob.jsp">移动开发</a></li>
			<li><a href="date.jsp">数据处理</a></li>
		</ul>
		<a class="deatil-class" href="head.html">
			<img src="img/qianduan.jpg"/>
			<p>前端课程</p>
		</a>
		<a class="deatil-class" href="#">
			<img src="img/java.jpg"/>
			<p>java开发</p>
		</a>
		<a class="deatil-class" href="#">
			<img src="img/php.jpg"/>
			<p>PHP</p>
		</a>
		<a  class="deatil-class" href="#">
			<img src="img/pyhton.jpg"/>
			<p>Pyhton</p>
		</a>
		<a class="deatil-class" href="#"> 
			<img src="img/c.jpg"/>
			<p>C</p>
		</a>
		<a class="deatil-class" href="#">
			<img src="img/ccc.jpg"/>
			<p>C++</p>
		</a>
		<a class="deatil-class" href="#">
			<img src="img/shuju.jpg"/>
			<p>数据结构</p>
		</a>
	</div>
	<script src="js/main.js" type="text/javascript"></script>
  </body>
</html>
