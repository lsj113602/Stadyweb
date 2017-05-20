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
	<link rel="stylesheet" href="css/style.css"/>
	<script src="http://libs.baidu.com/jquery/1.8.3/jquery.min.js"></script>
	<title>极客联盟-登录</title>
	<style>
		body{ background-color: #e5f2f8;}
	</style>

  </head>
  
  <body>
    <div class="nav">
		<h1><a style="color:#fff;" href="index.html">极客联盟</a></h1>
	</div>
	<div class="loginbox"><!--大背景颜色-->
		<div class="login-center"><!--居中盒子-->
			<div class="left-pic">
				<img src="img/leftpic.png"/>
			</div>
			<div class="login">
				<form id="form-login" method="post" action="<c:url value='/UserServlet'/>">
				 <input type="hidden" name="method" value="login" />
					<input type="text" name="user_name" placeholder="请输入用户名" title="请输入ID号"  />
					<input type="password" name="user_password" placeholder="请输入密码" />
					<input type="submit" value="登录"/>
				</form>
			</div>
		</div>
	</div><!--大背景颜色end-->
	<div class="footer">
		<p>极客联盟科技有限公司	版权所有,盗版必究</p>
		<p>Copyright ©  All rights reserved</p>
	</div>
  </body>
</html>
