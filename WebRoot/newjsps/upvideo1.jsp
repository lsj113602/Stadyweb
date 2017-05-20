<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
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
    <title>上传视频|BEGEEK</title>

    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="css/font-awesome.min.css">
    <link rel="stylesheet" href="css/reset.css">
    <link rel="Shortcut Icon" href="img/favicon.ico" />
    <link rel="stylesheet" href="css/acss.css">
    <link rel="stylesheet" href="font/index/iconfont.css">
    <link rel="stylesheet" href="css/evenFlow.css">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="//cdn.bootcss.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="//cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

  </head>
  
  <body style="background-color: #f8f8f8">
   <div style="float:left; width: 100%; text-align: left;">
	<hr/>
	<br/>
	<%@include file="/newjsps/top/Top.jsp" %>
	</div>
	<div class="container">
    <div style="height: 20px"></div>
    <div>
        <!-- Nav tabs -->
        <div class="row">
            <div class="col-md-6">
                <ul class="nav nav-pills" role="tablist">
                    <li role="presentation" ><a href="<c:url value='/ArticleServlet?method=FindArticleBycname&cname=${requestScope.cname}'/>" style="outline:none;" >文章</a></li>
                    <li role="presentation"><a href="<c:url value='/ArticleServlet?method=FindArticleBycname&cname=${requestScope.cname}'/>" style="outline:none;" >视频</a></li>
                </ul>
            </div>
            <div class="col-md-6" style="text-align: right">
                <div style="height: 20px"></div>
                <a href="<c:url value='/CourseServlet?method=FindCourseByAll1&cname=${requestScope.cname}'/>"><button class="btn btn-info">上传文章</button></a>
                <a href="<c:url value='/CourseServlet?method=FindCourseByAll&cname=${requestScope.cname}'/>"><button class="btn btn-info">上传视频</button></a>
            </div>
        </div>

        <hr>
        <div class="row">
            <div class="col-md-2"></div>

            <div class="col-md-8">
                <div style="height: 15px"></div>
               <%--  <form action="<c:url value='/Servlet?method=UploadVideo'/>" enctype="multipart/form-data"> --%>
				<form action="<c:url value='/Servlet?method=UploadVideo'/>" method="POST" enctype="multipart/form-data">
                   
                    <h2>视频上传</h2>
                    <div style="height: 5px"></div>
                    <div class="form-group">
                        <input type="text" class="form-control" name="videoName" placeholder="视频标题">
                    </div>
                    <div class="form-group">
                        <input type="text" class="form-control" name="zhishidianID" placeholder="包含知识点">
                    </div>

                    <div class="form-group">
                        <input type="text" class="form-control" name="videoText" placeholder="简介">
                    </div>

                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label >级别</label>
                                <select class="form-control" name="videoIntegral">
                                    <option value ="easy">简单</option>
                                    <option value ="usually">一般</option>
                                    <option value="difficult">困难</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label >所属课程</label>
                                <select class="form-control" name="xueke">
                                <c:forEach items="${requestScope.list}" var="listcou" >
                                	<option value ="${listcou.coursename}">${listcou.coursename}</option>
                                </c:forEach>
                                   <!--  <option value ="Java">Java</option>
                                    <option value ="Python">Python</option>
                                    <option value="PHP">PHP</option>
                                    <option value="Android">Android</option> -->
                                </select>
                            </div>
                        </div>
                    </div>



                    <div class="form-group">
                        <label>选择视频</label>
                        <input type="file" name="videoSrc">
                    </div>

                    <div class="form-group">
                        <label>选择封面</label>
                        <input type="file" name="videoImgsrc">
                    </div>

                    <div style="text-align: right">
                        <div style="height: 50px"></div>
                        <button type="submit" class="btn btn-success"> 上传 <span class="glyphicon glyphicon-open"></span> </button>
                        <button type="reset" class="btn btn-default">&nbsp;取消&nbsp; </button>
                    </div>

                </form>


            </div>
            <div class="col-md-2"></div>
        </div>



    </div>

</div>






<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="js/jquery.min.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="js/bootstrap.min.js"></script>
  </body>
</html>
