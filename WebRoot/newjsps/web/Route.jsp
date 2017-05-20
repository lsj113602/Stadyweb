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
    <title>学习导图|BEGEEK</title>

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
<div style="float:left; width: 100%; text-align: left;">
	<hr/>
	<br/>
	<%@include file="/newjsps/top/Top.jsp" %>
</div>
<!--正文-->
<div class="container">
    <div style="height: 40px"></div>
    <div style="height: 0px" class="hidden-xs"></div>
    <div>
 <div style="height: 60px"></div>
        <!-- Nav tabs -->
        <ul class="nav nav-tabs" role="tablist">
            <li role="presentation" class="active"><a href="#home" style="color: #555;outline:none;" aria-controls="home" role="tab" data-toggle="tab">全部路线导图</a></li>
            <li role="presentation"><a href="#profile" style="color: #555;outline:none;" aria-controls="profile" role="tab" data-toggle="tab">前端开发路线</a></li>
            <li role="presentation"><a href="#messages" style="color: #555;outline:none;" aria-controls="messages" role="tab" data-toggle="tab">后端开发路线</a></li>
            <li role="presentation"><a href="#settings" style="color: #555;outline:none;" aria-controls="settings" role="tab" data-toggle="tab">移动开发路线</a></li>
            <li role="presentation"><a href="#data" style="color: #555;outline:none;" aria-controls="data" role="tab" data-toggle="tab">数据处理路线</a></li>
            <li role="presentation"><a href="#pic" style="color: #555;outline:none;" aria-controls="pic" role="tab" data-toggle="tab">图像处理路线</a></li>
        </ul>

        <!-- Tab panes -->
         <div class="tab-content">
            <!--全部课程-->
            <div role="tabpanel" class="tab-pane fade in active" id="home">
                <div style="height: 45px"></div>
                <div class="row">
                
                <div class="col-md-3 col-xs-6 evenflow_scale" style="margin-bottom: 5px">

                    <div style="background-image: url(img/gongxiang/qainduan.jpg);background-size: cover;background-position: center">

                       <img width="100%" src="img/tm.png" alt="">

                    </div>
                    <div style="text-align: center;padding: 8px">
                        <div class="row">
                            <div class="col-md-12 col-xs-12" style="height: 32px">
                                <div style="padding: 5px;font-size: 18px" class="">
                                    前端课程学习路径
                                </div>
                              
                            </div>

                        </div>
                        <div style="text-align: left;height: 65px;overflow: hidden" class="hidden-xs">
                            <p>&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $product['intro'];?></p>
                        </div>
                    </div>


            </div>
            
             <div class="col-md-3 col-xs-6 evenflow_scale" style="margin-bottom: 5px">

                    <div style="background-image: url(img/gongxiang/java.jpg);background-size: cover;background-position: center">

                        <a href="newjsps/course/coursetree.jsp"> <img width="100%" src="img/tm.png" alt=""></a>

                    </div>
                    <div style="text-align: center;padding: 8px">
                        <div class="row">
                            <div class="col-md-12 col-xs-12" style="height: 32px">
                                <div style="padding: 5px;font-size: 18px" class="">
                                   java开发学习路径
                                </div>
                              
                            </div>

                        </div>
                        <div style="text-align: left;height: 65px;overflow: hidden" class="hidden-xs">
                            <p>&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $product['intro'];?></p>
                        </div>
                    </div>


            </div>
            <div class="col-md-3 col-xs-6 evenflow_scale" style="margin-bottom: 5px">

                    <div style="background-image: url(img/gongxiang/php.jpg);background-size: cover;background-position: center">

                       <img width="100%" src="img/tm.png" alt="">

                    </div>
                    <div style="text-align: center;padding: 8px">
                        <div class="row">
                            <div class="col-md-12 col-xs-12" style="height: 32px">
                                <div style="padding: 5px;font-size: 18px" class="">
                                   PHP学习路径
                                </div>
                              
                            </div>

                        </div>
                        <div style="text-align: left;height: 65px;overflow: hidden" class="hidden-xs">
                            <p>&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $product['intro'];?></p>
                        </div>
                    </div>


            </div>
            
            
            <div class="col-md-3 col-xs-6 evenflow_scale" style="margin-bottom: 5px">

                    <div style="background-image: url(img/gongxiang/Python.jpg);background-size: cover;background-position: center">

                      <img width="100%" src="img/tm.png" alt="">

                    </div>
                    <div style="text-align: center;padding: 8px">
                        <div class="row">
                            <div class="col-md-12 col-xs-12" style="height: 32px">
                                <div style="padding: 5px;font-size: 18px" class="">
                                   Python学习路径
                                </div>
                              
                            </div>

                        </div>
                        <div style="text-align: left;height: 65px;overflow: hidden" class="hidden-xs">
                            <p>&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $product['intro'];?></p>
                        </div>
                    </div>


            </div>
                    
                    
                    <div class="col-md-3 col-xs-6 evenflow_scale" style="margin-bottom: 5px">

                    <div style="background-image: url(img/gongxiang/c.jpg);background-size: cover;background-position: center">

                        <img width="100%" src="img/tm.png" alt="">

                    </div>
                    <div style="text-align: center;padding: 8px">
                        <div class="row">
                            <div class="col-md-12 col-xs-12" style="height: 32px">
                                <div style="padding: 5px;font-size: 18px" class="">
                                  C语言学习路径
                                </div>
                              
                            </div>

                        </div>
                        <div style="text-align: left;height: 65px;overflow: hidden" class="hidden-xs">
                            <p>&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $product['intro'];?></p>
                        </div>
                    </div>


            </div>

                    <div class="col-md-3 col-xs-6 evenflow_scale" style="margin-bottom: 5px">

                    <div style="background-image: url(img/gongxiang/c++.png);background-size: cover;background-position: center">

                     <img width="100%" src="img/tm.png" alt="">

                    </div>
                    <div style="text-align: center;padding: 8px">
                        <div class="row">
                            <div class="col-md-12 col-xs-12" style="height: 32px">
                                <div style="padding: 5px;font-size: 18px" class="">
                                    C++学习路径
                                </div>
                              
                            </div>

                        </div>
                        <div style="text-align: left;height: 65px;overflow: hidden" class="hidden-xs">
                            <p>&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $product['intro'];?></p>
                        </div>
                    </div>


            </div>
 
                    
                    <div class="col-md-3 col-xs-6 evenflow_scale" style="margin-bottom: 5px">

                    <div style="background-image: url(img/gongxiang/data.jpg);background-size: cover;background-position: center">

                       <img width="100%" src="img/tm.png" alt="">

                    </div>
                    <div style="text-align: center;padding: 8px">
                        <div class="row">
                            <div class="col-md-12 col-xs-12" style="height: 32px">
                                <div style="padding: 5px;font-size: 18px" class="">
                                    数据处理学习路径
                                </div>
                              
                            </div>

                        </div>
                        <div style="text-align: left;height: 65px;overflow: hidden" class="hidden-xs">
                            <p>&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $product['intro'];?></p>
                        </div>
                    </div>


            </div>
                    
                    
                    
                    <div class="col-md-3 col-xs-6 evenflow_scale" style="margin-bottom: 5px">

                    <div style="background-image: url(img/gongxiang/HTML.jpg);background-size: cover;background-position: center">

                       <img width="100%" src="img/tm.png" alt="">

                    </div>
                    <div style="text-align: center;padding: 8px">
                        <div class="row">
                            <div class="col-md-12 col-xs-12" style="height: 32px">
                                <div style="padding: 5px;font-size: 18px" class="">
                                   HTML学习路径
                                </div>
                              
                            </div>

                        </div>
                        <div style="text-align: left;height: 65px;overflow: hidden" class="hidden-xs">
                            <p>&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $product['intro'];?></p>
                        </div>
                    </div>


            </div>
                
                    
                    
                    <div class="col-md-3 col-xs-6 evenflow_scale" style="margin-bottom: 5px">

                    <div style="background-image: url(img/gongxiang/Mysql.jpg);background-size: cover;background-position: center">

                     <img width="100%" src="img/tm.png" alt="">

                    </div>
                    <div style="text-align: center;padding: 8px">
                        <div class="row">
                            <div class="col-md-12 col-xs-12" style="height: 32px">
                                <div style="padding: 5px;font-size: 18px" class="">
                                    Mysql学习路径
                                </div>
                              
                            </div>

                        </div>
                        <div style="text-align: left;height: 65px;overflow: hidden" class="hidden-xs">
                            <p>&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $product['intro'];?></p>
                        </div>
                    </div>


            </div>

                    
                    
                    <div class="col-md-3 col-xs-6 evenflow_scale" style="margin-bottom: 5px">

                    <div style="background-image: url(img/gongxiang/go.jpg);background-size: cover;background-position: center">

                        <img width="100%" src="img/tm.png" alt="">

                    </div>
                    <div style="text-align: center;padding: 8px">
                        <div class="row">
                            <div class="col-md-12 col-xs-12" style="height: 32px">
                                <div style="padding: 5px;font-size: 18px" class="">
                                   Go语言学习路径
                                </div>
                              
                            </div>

                        </div>
                        <div style="text-align: left;height: 65px;overflow: hidden" class="hidden-xs">
                            <p>&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $product['intro'];?></p>
                        </div>
                    </div>


            </div>
                    <div class="col-md-3 col-xs-6 evenflow_scale" style="margin-bottom: 5px">

                    <div style="background-image: url(img/gongxiang/MongoDb.png);background-size: cover;background-position: center">

                        <img width="100%" src="img/tm.png" alt="">

                    </div>
                    <div style="text-align: center;padding: 8px">
                        <div class="row">
                            <div class="col-md-12 col-xs-12" style="height: 32px">
                                <div style="padding: 5px;font-size: 18px" class="">
                                  MongoDb学习路径
                                </div>
                              
                            </div>

                        </div>
                        <div style="text-align: left;height: 65px;overflow: hidden" class="hidden-xs">
                            <p>&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $product['intro'];?></p>
                        </div>
                    </div>


            </div>
                    <div class="col-md-3 col-xs-6 evenflow_scale" style="margin-bottom: 5px">

                    <div style="background-image: url(img/gongxiang/JavaScript.jpg);background-size: cover;background-position: center">

                        <img width="100%" src="img/tm.png" alt="">

                    </div>
                    <div style="text-align: center;padding: 8px">
                        <div class="row">
                            <div class="col-md-12 col-xs-12" style="height: 32px">
                                <div style="padding: 5px;font-size: 18px" class="">
                                  JavaScript学习路径
                                </div>
                              
                            </div>

                        </div>
                        <div style="text-align: left;height: 65px;overflow: hidden" class="hidden-xs">
                            <p>&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $product['intro'];?></p>
                        </div>
                    </div>


            </div>

                    <div class="col-md-3 col-xs-6 evenflow_scale" style="margin-bottom: 5px">

                    <div style="background-image: url(img/gongxiang/yun.png);background-size: cover;background-position: center">

                         <img width="100%" src="img/tm.png" alt="">

                    </div>
                    <div style="text-align: center;padding: 8px">
                        <div class="row">
                            <div class="col-md-12 col-xs-12" style="height: 32px">
                                <div style="padding: 5px;font-size: 18px" class="">
                                  云计算学习路径
                                </div>
                              
                            </div>

                        </div>
                        <div style="text-align: left;height: 65px;overflow: hidden" class="hidden-xs">
                            <p>&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $product['intro'];?></p>
                        </div>
                    </div>


            </div>
                    <div class="col-md-3 col-xs-6 evenflow_scale" style="margin-bottom: 5px">

                    <div style="background-image: url(img/gongxiang/Cocos2d.jpg);background-size: cover;background-position: center">

                       <img width="100%" src="img/tm.png" alt="">

                    </div>
                    <div style="text-align: center;padding: 8px">
                        <div class="row">
                            <div class="col-md-12 col-xs-12" style="height: 32px">
                                <div style="padding: 5px;font-size: 18px" class="">
                                  Cocos2d学习路径
                                </div>
                              
                            </div>

                        </div>
                        <div style="text-align: left;height: 65px;overflow: hidden" class="hidden-xs">
                            <p>&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $product['intro'];?></p>
                        </div>
                    </div>


            </div>

                    <div class="col-md-3 col-xs-6 evenflow_scale" style="margin-bottom: 5px">

                    <div style="background-image: url(img/gongxiang/IOS.jpg);background-size: cover;background-position: center">

                         <img width="100%" src="img/tm.png" alt="">

                    </div>
                    <div style="text-align: center;padding: 8px">
                        <div class="row">
                            <div class="col-md-12 col-xs-12" style="height: 32px">
                                <div style="padding: 5px;font-size: 18px" class="">
                                    IOS学习路径
                                </div>
                              
                            </div>

                        </div>
                        <div style="text-align: left;height: 65px;overflow: hidden" class="hidden-xs">
                            <p>&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $product['intro'];?></p>
                        </div>
                    </div>


            </div>

                    <div class="col-md-3 col-xs-6 evenflow_scale" style="margin-bottom: 5px">

                    <div style="background-image: url(img/gongxiang/Android.jpg);background-size: cover;background-position: center">

                       <img width="100%" src="img/tm.png" alt="">

                    </div>
                    <div style="text-align: center;padding: 8px">
                        <div class="row">
                            <div class="col-md-12 col-xs-12" style="height: 32px">
                                <div style="padding: 5px;font-size: 18px" class="">
                                   Android学习路径
                                </div>
                              
                            </div>

                        </div>
                        <div style="text-align: left;height: 65px;overflow: hidden" class="hidden-xs">
                            <p>&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $product['intro'];?></p>
                        </div>
                    </div>


            </div>

                </div>


            </div>
            <!--前端开发-->
            <div role="tabpanel" class="tab-pane " id="profile">


                <div style="height: 40px"></div>
                <div class="row">
<div class="col-md-3 col-xs-6 evenflow_scale" style="margin-bottom: 5px">

                    <div style="background-image: url(img/gongxiang/qainduan.jpg);background-size: cover;background-position: center">

                        <img width="100%" src="img/tm.png" alt="">

                    </div>
                    <div style="text-align: center;padding: 8px">
                        <div class="row">
                            <div class="col-md-12 col-xs-12" style="height: 32px">
                                <div style="padding: 5px;font-size: 18px" class="">
                                  前端课程学习路径
                                </div>
                              
                            </div>

                        </div>
                        <div style="text-align: left;height: 65px;overflow: hidden" class="hidden-xs">
                            <p>&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $product['intro'];?></p>
                        </div>
                    </div>


            </div>
                    <div class="col-md-3 col-xs-6 evenflow_scale" style="margin-bottom: 5px">

                    <div style="background-image: url(img/gongxiang/HTML.jpg);background-size: cover;background-position: center">

                         <img width="100%" src="img/tm.png" alt="">

                    </div>
                    <div style="text-align: center;padding: 8px">
                        <div class="row">
                            <div class="col-md-12 col-xs-12" style="height: 32px">
                                <div style="padding: 5px;font-size: 18px" class="">
                                   HTML学习路径
                                </div>
                              
                            </div>

                        </div>
                        <div style="text-align: left;height: 65px;overflow: hidden" class="hidden-xs">
                            <p>&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $product['intro'];?></p>
                        </div>
                    </div>


            </div>
                    
                    <div class="col-md-3 col-xs-6 evenflow_scale" style="margin-bottom: 5px">

                    <div style="background-image: url(img/gongxiang/JavaScript.jpg);background-size: cover;background-position: center">

                        <img width="100%" src="img/tm.png" alt="">

                    </div>
                    <div style="text-align: center;padding: 8px">
                        <div class="row">
                            <div class="col-md-12 col-xs-12" style="height: 32px">
                                <div style="padding: 5px;font-size: 18px" class="">
                                 JavaScript学习路径
                                </div>
                              
                            </div>

                        </div>
                        <div style="text-align: left;height: 65px;overflow: hidden" class="hidden-xs">
                            <p>&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $product['intro'];?></p>
                        </div>
                    </div>


            </div>


                </div>
                
            </div>
            <!--后端开发-->
            <div role="tabpanel" class="tab-pane" id="messages">


                <div style="height: 40px"></div>
                <div class="row">
<div class="col-md-3 col-xs-6 evenflow_scale" style="margin-bottom: 5px">

                    <div style="background-image: url(img/gongxiang/java.jpg);background-size: cover;background-position: center">

                        <img width="100%" src="img/tm.png" alt="">

                    </div>
                    <div style="text-align: center;padding: 8px">
                        <div class="row">
                            <div class="col-md-12 col-xs-12" style="height: 32px">
                                <div style="padding: 5px;font-size: 18px" class="">
                                   java开发学习路径
                                </div>
                              
                            </div>

                        </div>
                        <div style="text-align: left;height: 65px;overflow: hidden" class="hidden-xs">
                            <p>&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $product['intro'];?></p>
                        </div>
                    </div>


            </div>
                    
                    <div class="col-md-3 col-xs-6 evenflow_scale" style="margin-bottom: 5px">

                    <div style="background-image: url(img/gongxiang/php.jpg);background-size: cover;background-position: center">

                      <img width="100%" src="img/tm.png" alt="">

                    </div>
                    <div style="text-align: center;padding: 8px">
                        <div class="row">
                            <div class="col-md-12 col-xs-12" style="height: 32px">
                                <div style="padding: 5px;font-size: 18px" class="">
                                   PHP学习路径
                                </div>
                              
                            </div>

                        </div>
                        <div style="text-align: left;height: 65px;overflow: hidden" class="hidden-xs">
                            <p>&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $product['intro'];?></p>
                        </div>
                    </div>


            </div>
                  
                    
                    
                    <div class="col-md-3 col-xs-6 evenflow_scale" style="margin-bottom: 5px">

                    <div style="background-image: url(img/gongxiang/Python.jpg);background-size: cover;background-position: center">

                         <img width="100%" src="img/tm.png" alt="">

                    </div>
                    <div style="text-align: center;padding: 8px">
                        <div class="row">
                            <div class="col-md-12 col-xs-12" style="height: 32px">
                                <div style="padding: 5px;font-size: 18px" class="">
                                 Python学习路径
                                </div>
                              
                            </div>

                        </div>
                        <div style="text-align: left;height: 65px;overflow: hidden" class="hidden-xs">
                            <p>&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $product['intro'];?></p>
                        </div>
                    </div>


            </div>
 
                    <div class="col-md-3 col-xs-6 evenflow_scale" style="margin-bottom: 5px">

                    <div style="background-image: url(img/gongxiang/c.jpg);background-size: cover;background-position: center">

                        <img width="100%" src="img/tm.png" alt="">

                    </div>
                    <div style="text-align: center;padding: 8px">
                        <div class="row">
                            <div class="col-md-12 col-xs-12" style="height: 32px">
                                <div style="padding: 5px;font-size: 18px" class="">
                                   C语言学习路径
                                </div>
                              
                            </div>

                        </div>
                        <div style="text-align: left;height: 65px;overflow: hidden" class="hidden-xs">
                            <p>&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $product['intro'];?></p>
                        </div>
                    </div>


            </div>

                    
                    
                    <div class="col-md-3 col-xs-6 evenflow_scale" style="margin-bottom: 5px">

                    <div style="background-image: url(img/gongxiang/c++.png);background-size: cover;background-position: center">

                      <img width="100%" src="img/tm.png" alt="">

                    </div>
                    <div style="text-align: center;padding: 8px">
                        <div class="row">
                            <div class="col-md-12 col-xs-12" style="height: 32px">
                                <div style="padding: 5px;font-size: 18px" class="">
                                   C++学习路径
                                </div>
                              
                            </div>

                        </div>
                        <div style="text-align: left;height: 65px;overflow: hidden" class="hidden-xs">
                            <p>&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $product['intro'];?></p>
                        </div>
                    </div>


            </div>

                    
                    
                    <div class="col-md-3 col-xs-6 evenflow_scale" style="margin-bottom: 5px">

                    <div style="background-image: url(img/gongxiang/go.jpg);background-size: cover;background-position: center">

                        <img width="100%" src="img/tm.png" alt="">

                    </div>
                    <div style="text-align: center;padding: 8px">
                        <div class="row">
                            <div class="col-md-12 col-xs-12" style="height: 32px">
                                <div style="padding: 5px;font-size: 18px" class="">
                                    Go语言学习路径
                                </div>
                              
                            </div>

                        </div>
                        <div style="text-align: left;height: 65px;overflow: hidden" class="hidden-xs">
                            <p>&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $product['intro'];?></p>
                        </div>
                    </div>


            </div>

                    
                    
                    <div class="col-md-3 col-xs-6 evenflow_scale" style="margin-bottom: 5px">

                    <div style="background-image: url(img/gongxiang/Python.jpg);background-size: cover;background-position: center">

                        <img width="100%" src="img/tm.png" alt="">

                    </div>
                    <div style="text-align: center;padding: 8px">
                        <div class="row">
                            <div class="col-md-12 col-xs-12" style="height: 32px">
                                <div style="padding: 5px;font-size: 18px" class="">
                                  Python学习路径
                                </div>
                              
                            </div>

                        </div>
                        <div style="text-align: left;height: 65px;overflow: hidden" class="hidden-xs">
                            <p>&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $product['intro'];?></p>
                        </div>
                    </div>


            </div>


                </div>
            </div>
            <!--移动开发-->
            <div role="tabpanel" class="tab-pane evenflow_scale" id="settings">

                <div style="height: 40px"></div>
                <div class="row">

                    <div class="col-md-3 col-xs-6 evenflow_scale" style="margin-bottom: 5px">

                    <div style="background-image: url(img/gongxiang/Android.jpg);background-size: cover;background-position: center">

                       <img width="100%" src="img/tm.png" alt="">

                    </div>
                    <div style="text-align: center;padding: 8px">
                        <div class="row">
                            <div class="col-md-12 col-xs-12" style="height: 32px">
                                <div style="padding: 5px;font-size: 18px" class="">
                                  Android学习路径
                                </div>
                              
                            </div>

                        </div>
                        <div style="text-align: left;height: 65px;overflow: hidden" class="hidden-xs">
                            <p>&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $product['intro'];?></p>
                        </div>
                    </div>


            </div>
                    
                    <div class="col-md-3 col-xs-6 evenflow_scale" style="margin-bottom: 5px">

                    <div style="background-image: url(img/gongxiang/IOS.jpg);background-size: cover;background-position: center">

                       <img width="100%" src="img/tm.png" alt="">

                    </div>
                    <div style="text-align: center;padding: 8px">
                        <div class="row">
                            <div class="col-md-12 col-xs-12" style="height: 32px">
                                <div style="padding: 5px;font-size: 18px" class="">
                                    IOS学习路径
                                </div>
                              
                            </div>

                        </div>
                        <div style="text-align: left;height: 65px;overflow: hidden" class="hidden-xs">
                            <p>&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $product['intro'];?></p>
                        </div>
                    </div>


            </div>
                    
                    
                    <div class="col-md-3 col-xs-6 evenflow_scale" style="margin-bottom: 5px">

                    <div style="background-image: url(img/gongxiang/Cocos2d.jpg);background-size: cover;background-position: center">

                       <img width="100%" src="img/tm.png" alt="">

                    </div>
                    <div style="text-align: center;padding: 8px">
                        <div class="row">
                            <div class="col-md-12 col-xs-12" style="height: 32px">
                                <div style="padding: 5px;font-size: 18px" class="">
                                   Cocos2d学习路径
                                </div>
                              
                            </div>

                        </div>
                        <div style="text-align: left;height: 65px;overflow: hidden" class="hidden-xs">
                            <p>&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $product['intro'];?></p>
                        </div>
                    </div>


            </div>


                </div>

            </div>

            <!--数据处理-->
            <div role="tabpanel" class="tab-pane" id="data">

                <div style="height: 40px"></div>
                <div class="row">
<div class="col-md-3 col-xs-6 evenflow_scale" style="margin-bottom: 5px">

                    <div style="background-image: url(img/gongxiang/data.jpg);background-size: cover;background-position: center">

                        <img width="100%" src="img/tm.png" alt="">

                    </div>
                    <div style="text-align: center;padding: 8px">
                        <div class="row">
                            <div class="col-md-12 col-xs-12" style="height: 32px">
                                <div style="padding: 5px;font-size: 18px" class="">
                                  数据处理学习路径
                                </div>
                              
                            </div>

                        </div>
                        <div style="text-align: left;height: 65px;overflow: hidden" class="hidden-xs">
                            <p>&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $product['intro'];?></p>
                        </div>
                    </div>


            </div>
                    
                    
                    <div class="col-md-3 col-xs-6 evenflow_scale" style="margin-bottom: 5px">

                    <div style="background-image: url(img/gongxiang/MongoDb.png);background-size: cover;background-position: center">

                        <a href="#"> <img width="100%" src="img/tm.png" alt=""></a>

                    </div>
                    <div style="text-align: center;padding: 8px">
                        <div class="row">
                            <div class="col-md-12 col-xs-12" style="height: 32px">
                                <div style="padding: 5px;font-size: 18px" class="">
                                   MongoDb学习路径
                                </div>
                              
                            </div>

                        </div>
                        <div style="text-align: left;height: 65px;overflow: hidden" class="hidden-xs">
                            <p>&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $product['intro'];?></p>
                        </div>
                    </div>


            </div>
                    </div>

                </div>

            </div>

            <!--图像处理-->
            <div role="tabpanel" class="tab-pane" id="pic">

                <div style="height: 40px"></div>
                <div class="row">
<div class="col-md-3 col-xs-6 evenflow_scale" style="margin-bottom: 5px">

                    <div style="background-image: url(img/line/line.jpg);background-size: cover;background-position: center">

                        <a href="#"> <img width="100%" src="img/tm.png" alt=""></a>

                    </div>
                    <div style="text-align: center;padding: 8px">
                        <div class="row">
                            <div class="col-md-12 col-xs-12" style="height: 32px">
                                <div style="padding: 5px;font-size: 18px" class="">
                                   图像处理学习路径
                                </div>
                              
                            </div>

                        </div>
                        <div style="text-align: left;height: 65px;overflow: hidden" class="hidden-xs">
                            <p>&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $product['intro'];?></p>
                        </div>
                    </div>


            </div>
      
                    <div class="col-md-3 col-xs-6 evenflow_scale" style="margin-bottom: 5px">

                    <div style="background-image: url(img/gongxiang/Mysql.jpg);background-size: cover;background-position: center">

                        <a href="#"> <img width="100%" src="img/tm.png" alt=""></a>

                    </div>
                    <div style="text-align: center;padding: 8px">
                        <div class="row">
                            <div class="col-md-12 col-xs-12" style="height: 32px">
                                <div style="padding: 5px;font-size: 18px" class="">
                                    Mysql学习路径
                                </div>
                              
                            </div>

                        </div>
                        <div style="text-align: left;height: 65px;overflow: hidden" class="hidden-xs">
                            <p>&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $product['intro'];?></p>
                        </div>
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
