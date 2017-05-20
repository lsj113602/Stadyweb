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
	<div class="problem-box">
		<div class="pro-left">
			<ul class="title">
				<li><a class="current"  href="#">推荐</a></li>
				<li><a href="#">最新</a></li>
				<li><a href="#">等待回答</a></li>
			</ul>
			<c:forEach items="${requestScope.listqust}" var="qust" >
			<div class="pro-detail-box"><!--回答的问题的盒子-->
			
				<div class="first">
					<img src="img/question.jpg"/>
					<div class="title-con">
						<span>来自${ qust.quauthor.user_name}</span><span style="font-size:12px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span><a href="<c:url value='/QuestionServlet?method=ToAddAnswer&quesid=${qust.quid}'/>">我要回答</a></span></br>
						<h1>${qust.qutitle}？</h1>
					</div>
				</div>
				<c:forEach items="${qust.answer}" var="answer" >
				<div class="second">
						<span class="caina">未采纳</span>
						<a href="#">${answer.qaauthor.user_name}</a>
						<span>回答</span>
						<div class="answer">
                         ${answer.qatext}
						</div>
				</div>
				<div class="third">
					<ul>
						<li><a href="<c:url value='/QuesAnswerServlet?method=AddUserAns&qaid=${answer.qaid}&mark=1'/>">赞同</a>${answer.qasupport}</li>
						<li><a href="<c:url value='/QuesAnswerServlet?method=AddUserAns&qaid=${answer.qaid}&mark=0'/>">反对</a>${answer.qaopposition}</li>
					</ul>
				</div>
				</c:forEach>
		
			</div><!--回答的问题的盒子结束-->	
			</c:forEach>		
		</div>
		<div class="pro-right">
			<div class="tiwen">
				<a href="jsps/question/AddQuest.jsp">我要提问</a>
			</div>
			<div class="my-focus">
				<h1>我的关注</h1>
				<a href="#">C++</a>
				<a href="#">前端开发</a>
			</div>
			<div class="tuijian">
				<h1>推荐关注</h1>
				<div class="pointer">
					<a href="#">java</a>
					<a href="#">关注</a>
					<p>这是一门后端语言</p>
				</div>
			</div>
		</div>
	</div>
	<script src="js/main.js" type="text/javascript"></script>
  </body>
</html>
