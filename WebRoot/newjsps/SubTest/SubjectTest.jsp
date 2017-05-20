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
    <title>测试|BEGEEK</title>

    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link rel="Shortcut Icon" href="img/favicon.ico" />
    <link rel="stylesheet" href="css/font-awesome.min.css">
    <link rel="stylesheet" href="font/index/iconfont.css">
    <link rel="stylesheet" href="css/reset.css">
    <link rel="stylesheet" href="css/acss.css">
    <link rel="stylesheet" href="css/evenFlow.css">
    <script src="js/echarts.min.js"></script>
    <script src="js/quest.js"></script>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="//cdn.bootcss.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="//cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

  </head>
  
  <body style="background-color:">



<div style="float:left; width: 100%; text-align: left;">
	<hr/>
	<br/>
	<%@include file="/newjsps/top/Top.jsp" %>
</div>
<!--导航条-->

<div style="height: 80px;background-color: #eee;padding: 15px">
    <div class="container">
         <div class="row">
             <div class="col-md-6" style="text-align: left">
                  <h2>模拟考试</h2>
            </div>
             <div class="col-md-6" style="text-align: right">
                 <div style="height: 20px"></div>
                 位置：<a href="newjsps/web/index.jsp">首页</a> / <a href="newjsps/SubTest/SubTestList.jsp">书籍资源</a>
         </div>
    </div>
</div>
<!--正文-->
<div class="container">

    <div class="row" >
        <div class="col-md-8" style="float:left; width: 100%; text-align: left;" >
            <!--题目-->
     <form action="${pageContext.request.contextPath}/submitexam" method="post">
      <c:set var="index" value="0" /> 	 
	  <c:forEach items="${requestScope.listsub}" var="vid" >	  
	        <input type="hidden" name="subjectID${index}" id="subjectID${index}" value="${vid.subjectID}"/>
            <div class="test" style="border:1px solid #ddd;padding: 20px">

                ${index+1}.${vid.subjectTitle}（  ）。
                <div style="height: 20px"></div>
                <p  style="margin: 10px"> A.${vid.subjectOptionA}。</p>
                <p  style="margin: 10px"> B.${vid.subjectOptionB}。</p>
                <p  style="margin: 10px"> C.${vid.subjectOptionC}。</p>
                <p  style="margin: 10px"> D.${vid.subjectOptionD}。</p>
                <div style="height:10px;"></div>
                选择答案：
                <div class="row">
                    <div class="col-md-3 col-xs-6">
                        <div class="radio">
                            <label>
                                <input type="radio" name="subjectAnswer${index}" id="subjectAnswer${index}" value="A">
                                A
                            </label>
                        </div>
                    </div>

                    <div class="col-md-3 col-xs-6">
                        <div class="radio">
                            <label>
                                <input type="radio" name="subjectAnswer${index}" id="subjectAnswer${index}" value="B">
                                B
                            </label>
                        </div>
                    </div>

                    <div class="col-md-3 col-xs-6">
                        <div class="radio">
                            <label>
                                <input type="radio" name="subjectAnswer${index}" id="subjectAnswer${index}" value="C" >
                                C
                            </label>
                        </div>
                    </div>

                    <div class="col-md-3 col-xs-6">
                        <div class="radio">
                            <label>
                                <input type="radio" name="subjectAnswer${index}" id="subjectAnswer${index}" value="D" >
                                D
                            </label>
                        </div>
                    </div>

                </div>

            </div>
		<c:set var="index" value="${index+1}" />
	  </c:forEach>
     </form>
        </div>
        <div class="col-md-4"></div>



    </div>
    <div style="text-align: center">
        <div style="height: 50px"></div>
        <button data-toggle="modal" data-target="#myScore" class="btn btn-success btn-lg" onclick="Assignment('${requestScope.cname}','${requestScope.num}','${index}')">交卷</button>
    </div>
    <div style="height: 50px"></div>







</div>

<!-- Modal -->
<div class="modal fade" id="myScore" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="myModalLabel">测试结果</h4>
            </div>
            <div class="modal-body">
              你的考试成绩为：<p id="result"></p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
            </div>
        </div>
    </div>
</div>
<!--正文-->



<!--footer-->
<footer>
    <div style="height: 100px;width: 100%;background-color: #4d6071;text-align: center;padding: 15px">
        <p style="color: white">联系我们&nbsp;|&nbsp;网站首页&nbsp;|&nbsp;免责声明&nbsp;|&nbsp;关于我们</p>
        <p style="color: white">Copyright © 2016 &nbsp; <a style="color: white" href="">极客联盟</a> / 程序设计大赛创新实验室.</p>
    </div>


</footer>




<!-- 整合热力图js  -->
<script src="js/hotPic.js"></script>
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="js/jquery.min.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="js/bootstrap.min.js"></script>
  </body>
</html>
