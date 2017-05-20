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
    
    <title>My JSP 'Test.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
    <a href="<c:url value='/ClientServlet?method=FindKnowlege'/>">查询所有知识点</a>
    
    <a href="<c:url value='/ClientServlet?method=FindKnowlege1'/>">查询所有知识点2</a>
      <a href="<c:url value='/ClientServlet?method=FindMyKnowlege'/>">查询所有知识点3</a>
      
      <a href="<c:url value='/ClientServlet?method=FindMyVideo&userid=1'/>">查询我的视频</a>
      <a href="<c:url value='/ClientServlet?method=FindAllCourse'/>">查询我的题目</a>
       <a href="<c:url value='/CourseServlet?method=FindCourseByField&field=后端开发'/>">查询领域</a>
        <a href="<c:url value='/UserServlet?method=LoginServlet&idtex=lsj&passtex=lsj'/>">测试</a>
  </body>
</html>
