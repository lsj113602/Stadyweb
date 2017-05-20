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
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>个人主页</title>
    <link rel="stylesheet" type="text/css" href="css/style.css">

    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link rel="Shortcut Icon" href="img/favicon.ico" />
    <link rel="stylesheet" href="css/font-awesome.min.css">
    <link rel="stylesheet" href="font/index/iconfont.css">
    <link rel="stylesheet" href="css/reset.css">
    <link rel="stylesheet" href="css/acss.css">
    <link rel="stylesheet" href="css/evenFlow.css">
    <script src="js/echarts.min.js"></script>
    <script src="http://libs.baidu.com/jquery/1.8.2/jquery.js" type="text/javascript"></script>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="//cdn.bootcss.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="//cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>
  
  <body style="background-color:">



<!--导航条-->
<nav class="navbar navbar-default navbar-inverse navbar-fixed-top" style="background-color: #4d6071;border: 0;box-shadow:6px 6px 5px #ddd;height: 60px;padding: 4px">
    <div class="container">
        <div class=""   style="background-color: #4d6071;margin: 0;text-align: left">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="#" style="font-size: 20px;">
                    &nbsp;&nbsp;
                    <i class="iconfont" style="font-size: 35px;color: white">&#xe651;</i>

                </a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1" style="">
                <ul class="nav navbar-nav">
                    <li>&nbsp;&nbsp; &nbsp; &nbsp; &nbsp;  </li>
                    <li ><a href="newjsps/web/index.jsp"  style="color: #fff;font-size: 18px">&nbsp;首页&nbsp;</a></li>
                    <li ><a class="more" href="newjsps/web/index.jsp" style="color: #fff;font-size: 18px">&nbsp;所有课程&nbsp;<span class="sr-only">(current)</span></a></li>
                    <li ><a href="newjsps/community/CommunityList.jsp"  style="color: #fff;font-size: 18px">&nbsp;GEEK社区&nbsp;</a></li>
                    <%-- <li ><a href="<c:url value='/ArticleServlet?method=FindAllArticle'/>"  style="color: #fff;font-size: 18px">&nbsp;资源共享&nbsp;</a></li> --%>
                    <li ><a href="newjsps/resources/ResourcesList.jsp"  style="color: #fff;font-size: 18px">&nbsp;资源共享&nbsp;</a></li>
                    
                    <li ><a href="newjsps/SubTest/SubTestList.jsp"  style="color: #fff;font-size: 18px">&nbsp;书籍资源&nbsp;</a></li>
                </ul>
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="#" >${sessionScope.sessionUser.user_name } </a></li>

                    <li><a href="#" >注销</a></li>


                </ul>
                <form class="hidden-xs navbar-form navbar-right visible-lg visible-xs" role="search" style="margin-top:10px">
                    <div class="form-group has-feedback">
                        <span class="glyphicon glyphicon-search form-control-feedback" style="color: #fff"></span>
                        <input type="text" class="form-control input-sm" placeholder="搜索" style="background-color: #4d6071;border-color:#888;color: #fff">
                    </div>
                </form>

            </div><!-- /.navbar-collapse -->
        </div><!-- /.container-fluid -->

    </div>

</nav>
<!--导航条-->
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
						<a href="/Stadyweb/jsps/user/Friend.jsp">${sessionScope.sessionUser.user_name }</a>
						<span><a href="#">现在的阶段：java进阶</a></span>
						<span style="font-size:50px;">&nbsp;</span>
						<span>今日学习时长：200分钟</span>
					</div>
				</div>
				<div class="second">
					<p>学习路线：java1 --> java2 --> java3 --> java4</p>
				</div>
			</div>
			<!-- 动态结束 -->
			<!-- 每一个动态 -->
			<div class="zhuye-main">
				<div class="first">
					<img src="">
					<div class="first-right">
						<a href="javascript:;">${sessionScope.sessionUser.user_name }</a>
						<span><a href="#">现在的阶段：java进阶</a></span>
						<span style="font-size:50px;">&nbsp;</span>
						<span>今日学习时长：200分钟</span>
					</div>
				</div>
				<div class="second">
					<p>学习路线：java1 --> java2 --> java3 --> java4</p>
				</div>
			</div>
			<!-- 动态结束 -->
			<!-- 每一个动态 -->
			<div class="zhuye-main">
				<div class="first">
					<img src="#">
					<div class="first-right">
						<a href="javascript:;">${sessionScope.sessionUser.user_name }</a>
						<span><a href="#">现在的阶段：java进阶</a></span>
						<span style="font-size:50px;">&nbsp;</span>
						<span>今日学习时长：200分钟</span>
					</div>
				</div>
				<div class="second">
					<p>学习路线：java1 --> java2 --> java3 --> java4</p>
				</div>
			</div>
			<!-- 动态结束 --> 
		</div>	
	</div>
	<script src="js/main.js" type="text/javascript"></script>
  </body>
</html>
