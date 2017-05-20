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
    <title>首页|BEGEEK</title>

    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link rel="Shortcut Icon" href="img/favicon.ico" />
    <link rel="stylesheet" href="css/font-awesome.min.css">
    <link rel="stylesheet" href="font/index/iconfont.css">
    <link rel="stylesheet" href="css/reset.css">
    <link rel="stylesheet" href="css/acss.css">
    <link rel="stylesheet" href="css/evenFlow.css">
    <script src="js/echarts.min.js"></script>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="//cdn.bootcss.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="//cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>
  
  <body style="background-color:">
<!-- Modal -->
<div style="float:left; width: 100%; text-align: left;">
	<hr/>
	<br/>
	<%@include file="/newjsps/top/Top.jsp" %>
</div>
<!--导航条-->
<!--正文-->
<div class="container">
    <div style="height: 80px"></div>
    <div style="height: 25px" class="hidden-xs"></div>
    <div>

        <!-- Nav tabs -->
        <ul class="nav nav-tabs" role="tablist">
            <li role="presentation" class="active"><a href="#home" style="color: #555;outline:none;" aria-controls="home" role="tab" data-toggle="tab">全部课程社区</a></li>
            <li role="presentation"><a href="#profile" style="color: #555;outline:none;" aria-controls="profile" role="tab" data-toggle="tab">前端开发社区</a></li>
            <li role="presentation"><a href="#messages" style="color: #555;outline:none;" aria-controls="messages" role="tab" data-toggle="tab">后端开发社区</a></li>
            <li role="presentation"><a href="#settings" style="color: #555;outline:none;" aria-controls="settings" role="tab" data-toggle="tab">移动开发社区</a></li>
            <li role="presentation"><a href="#data" style="color: #555;outline:none;" aria-controls="data" role="tab" data-toggle="tab">数据处理社区</a></li>
            <li role="presentation"><a href="#pic" style="color: #555;outline:none;" aria-controls="pic" role="tab" data-toggle="tab">图像处理社区</a></li>
        </ul>

        <!-- Tab panes -->
         <div class="tab-content">
            <!--全部课程-->
            <div role="tabpanel" class="tab-pane fade in active" id="home">
                <div style="height: 45px"></div>
                <div class="row">

                    <div class="col-md-3 col-xs-6 evenflow_scale" style="margin-bottom: 30px">
                        <img width="100%" src="img/ziyuan/ziyuan.jpg" alt="">
                        <div style="text-align: center;padding: 8px">
                            前端课程论坛
                        </div>
                    </div>

                    <div class="col-md-3 col-xs-6 evenflow_scale" style="margin-bottom: 30px">
                        <a style="text-decoration: none" href="<c:url value='/ArticleServlet?method=FindArticle&cname=java'/>">
                            <img width="100%" src="img/ziyuan/ziyuan.jpg" alt="">
                            <div style="text-align: center;padding: 8px">
                          java开发论坛
                            </div>
                        </a>

                    </div>
                    <div class="col-md-3 col-xs-6 evenflow_scale" style="margin-bottom: 30px">
                        <img width="100%" src="img/ziyuan/ziyuan.jpg" alt="">
                        <div style="text-align: center;padding: 8px">
                            PHP论坛
                        </div>
                    </div>
                    <div class="col-md-3 col-xs-6 evenflow_scale" style="margin-bottom: 30px">
                        <img width="100%" src="img/ziyuan/ziyuan.jpg" alt="">
                        <div style="text-align: center;padding: 8px">
                            Python论坛
                        </div>
                    </div>
                    <div class="col-md-3 col-xs-6 evenflow_scale" style="margin-bottom: 30px">
                        <img width="100%" src="img/ziyuan/ziyuan.jpg" alt="">
                        <div style="text-align: center;padding: 8px">
                            C语言论坛
                        </div>
                    </div>
                    <div class="col-md-3 col-xs-6 evenflow_scale" style="margin-bottom: 30px">
                        <img width="100%" src="img/ziyuan/ziyuan.jpg" alt="">
                        <div style="text-align: center;padding: 8px">
                            C++论坛
                        </div>
                    </div>
                    <div class="col-md-3 col-xs-6 evenflow_scale" style="margin-bottom: 30px">
                        <img width="100%" src="img/ziyuan/ziyuan.jpg" alt="">
                        <div style="text-align: center;padding: 8px">
                            数据处理论坛
                        </div>
                    </div>
                    
                    <div class="col-md-3 col-xs-6 evenflow_scale" style="margin-bottom: 30px">
                        <img width="100%" src="img/ziyuan/ziyuan.jpg" alt="">
                        <div style="text-align: center;padding: 8px">
                            HTML论坛
                        </div>
                    </div>
                    
                    <div class="col-md-3 col-xs-6 evenflow_scale" style="margin-bottom: 30px">
                        <img width="100%" src="img/ziyuan/ziyuan.jpg" alt="">
                        <div style="text-align: center;padding: 8px">
                            Mysql论坛
                        </div>
                    </div>
                    <div class="col-md-3 col-xs-6 evenflow_scale" style="margin-bottom: 30px">
                        <img width="100%" src="img/ziyuan/ziyuan.jpg" alt="">
                        <div style="text-align: center;padding: 8px">
                            Go语言论坛
                        </div>
                    </div>
                    
                    <div class="col-md-3 col-xs-6 evenflow_scale" style="margin-bottom: 30px">
                        <img width="100%" src="img/ziyuan/ziyuan.jpg" alt="">
                        <div style="text-align: center;padding: 8px">
                            MongoDb论坛
                        </div>
                    </div>
                    <div class="col-md-3 col-xs-6 evenflow_scale" style="margin-bottom: 30px">
                        <img width="100%" src="img/ziyuan/ziyuan.jpg" alt="">
                        <div style="text-align: center;padding: 8px">
                            JavaScript论坛
                        </div>
                    </div>
                    <div class="col-md-3 col-xs-6 evenflow_scale" style="margin-bottom: 30px">
                        <img width="100%" src="img/ziyuan/ziyuan.jpg" alt="">
                        <div style="text-align: center;padding: 8px">
                            云计算论坛
                        </div>
                    </div>
                    <div class="col-md-3 col-xs-6 evenflow_scale" style="margin-bottom: 30px">
                        <img width="100%" src="img/ziyuan/ziyuan.jpg" alt="">
                        <div style="text-align: center;padding: 8px">
                            Cocos2d论坛
                        </div>
                    </div>
                    <div class="col-md-3 col-xs-6 evenflow_scale" style="margin-bottom: 30px">
                        <img width="100%" src="img/ziyuan/ziyuan.jpg" alt="">
                        <div style="text-align: center;padding: 8px">
                            IOS论坛
                        </div>
                    </div>
                    <div class="col-md-3 col-xs-6 evenflow_scale" style="margin-bottom: 30px">
                        <img width="100%" src="img/ziyuan/ziyuan.jpg" alt="">
                        <div style="text-align: center;padding: 8px">
                           	 Android论坛
                        </div>
                    </div>

                </div>


            </div>
            <!--前端开发-->
            <div role="tabpanel" class="tab-pane " id="profile">


                <div style="height: 40px"></div>
                <div class="row">

                    <div class="col-md-3 col-xs-6 evenflow_scale" style="margin-bottom: 30px">
                        <img width="100%" src="img/ziyuan/ziyuan.jpg" alt="">
                        <div style="text-align: center;padding: 8px">
                            前端课程论坛
                        </div>
                    </div>
                    <div class="col-md-3 col-xs-6 evenflow_scale" style="margin-bottom: 30px">
                        <img width="100%" src="img/ziyuan/ziyuan.jpg" alt="">
                        <div style="text-align: center;padding: 8px">
                            HTML论坛
                        </div>
                    </div>
                    
                    <div class="col-md-3 col-xs-6 evenflow_scale" style="margin-bottom: 30px">
                        <img width="100%" src="img/ziyuan/ziyuan.jpg" alt="">
                        <div style="text-align: center;padding: 8px">
                            JavaScript论坛
                        </div>
                    </div>

                </div>
                
            </div>
            <!--后端开发-->
            <div role="tabpanel" class="tab-pane" id="messages">


                <div style="height: 40px"></div>
                <div class="row">

                    <div class="col-md-3 col-xs-6 evenflow_scale" style="margin-bottom: 30px">
                        <img width="100%" src="img/ziyuan/ziyuan.jpg" alt="">
                        <div style="text-align: center;padding: 8px">
                            java开发论坛
                        </div>
                    </div>
                    <div class="col-md-3 col-xs-6 evenflow_scale" style="margin-bottom: 30px">
                        <img width="100%" src="img/ziyuan/ziyuan.jpg" alt="">
                        <div style="text-align: center;padding: 8px">
                            PHP论坛
                        </div>
                    </div>
                    <div class="col-md-3 col-xs-6 evenflow_scale" style="margin-bottom: 30px">
                        <img width="100%" src="img/ziyuan/ziyuan.jpg" alt="">
                        <div style="text-align: center;padding: 8px">
                            Python论坛
                        </div>
                    </div>
                    <div class="col-md-3 col-xs-6 evenflow_scale" style="margin-bottom: 30px">
                        <img width="100%" src="img/ziyuan/ziyuan.jpg" alt="">
                        <div style="text-align: center;padding: 8px">
                            C语言论坛
                        </div>
                    </div>
                    <div class="col-md-3 col-xs-6 evenflow_scale" style="margin-bottom: 30px">
                        <img width="100%" src="img/ziyuan/ziyuan.jpg" alt="">
                        <div style="text-align: center;padding: 8px">
                            C++论坛
                        </div>
                    </div>
                     <div class="col-md-3 col-xs-6 evenflow_scale" style="margin-bottom: 30px">
                        <img width="100%" src="img/ziyuan/ziyuan.jpg" alt="">
                        <div style="text-align: center;padding: 8px">
                            Go语言论坛
                        </div>
                    </div>
                    <div class="col-md-3 col-xs-6 evenflow_scale" style="margin-bottom: 30px">
                        <img width="100%" src="img/ziyuan/ziyuan.jpg" alt="">
                        <div style="text-align: center;padding: 8px">
                            Python论坛
                        </div>
                    </div>

                </div>
            </div>
            <!--移动开发-->
            <div role="tabpanel" class="tab-pane evenflow_scale" id="settings">

                <div style="height: 40px"></div>
                <div class="row">

                    
                    <div class="col-md-3 col-xs-6 evenflow_scale" style="margin-bottom: 30px">
                        <img width="100%" src="img/ziyuan/ziyuan.jpg" alt="">
                        <div style="text-align: center;padding: 8px">
                           	 Android论坛
                        </div>
                    </div>
                    <div class="col-md-3 col-xs-6 evenflow_scale" style="margin-bottom: 30px">
                        <img width="100%" src="img/ziyuan/ziyuan.jpg" alt="">
                        <div style="text-align: center;padding: 8px">
                            IOS论坛
                        </div>
                    </div>
                    <div class="col-md-3 col-xs-6 evenflow_scale" style="margin-bottom: 30px">
                        <img width="100%" src="img/ziyuan/ziyuan.jpg" alt="">
                        <div style="text-align: center;padding: 8px">
                            Cocos2d论坛
                        </div>
                    </div>

                </div>

            </div>

            <!--数据处理-->
            <div role="tabpanel" class="tab-pane" id="data">

                <div style="height: 40px"></div>
                <div class="row">

                    <div class="col-md-3 col-xs-6 evenflow_scale" style="margin-bottom: 30px">
                        <img width="100%" src="img/ziyuan/ziyuan.jpg" alt="">
                        <div style="text-align: center;padding: 8px">
                            数据处理论坛
                        </div>
                    </div>
                    <div class="col-md-3 col-xs-6 evenflow_scale" style="margin-bottom: 30px">
                        <img width="100%" src="img/ziyuan/ziyuan.jpg" alt="">
                        <div style="text-align: center;padding: 8px">
                            MongoDb论坛
                        </div>
                    </div>

                </div>

            </div>

            <!--图像处理-->
            <div role="tabpanel" class="tab-pane" id="pic">

                <div style="height: 40px"></div>
                <div class="row">

                    <div class="col-md-3 col-xs-6 evenflow_scale" style="margin-bottom: 30px">
                        <img width="100%" src="img/ziyuan/ziyuan.jpg" alt="">
                        <div style="text-align: center;padding: 8px">
                            图像处理论坛
                        </div>
                    </div>
                    <div class="col-md-3 col-xs-6 evenflow_scale" style="margin-bottom: 30px">
                        <img width="100%" src="img/ziyuan/ziyuan.jpg" alt="">
                        <div style="text-align: center;padding: 8px">
                            Mysql论坛
                        </div>
                    </div>

                </div>

            </div>

            <div id="kachaid"></div>
        </div>

    </div>

</div>



<!--正文-->


<!--footer-->



<script>
    var myChartRanking = echarts.init(document.getElementById('ranking'));
  
</script>

<!-- 整合热力图js  -->
<script src="js/hotPic.js"></script>
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="js/jquery.min.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="js/bootstrap.min.js"></script>
  </body>

</html>
