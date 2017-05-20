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
    <title>资源|BEGEEK</title>

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
  

    <style>

   ul li a{
        color: #666;
       border-radius: 0;;
    }
   ul li a:active{
        color: #fff;
    }


</style>



<div class="container">
<div style="float:left; width: 100%; text-align: left;">
	<hr/>
	<br/>
	<%@include file="/newjsps/top/Top.jsp" %>
</div>
    <div style="height: 50px"></div>
    <div class="row">
        <div class="col-md-3" style="color: #555">

<!--             学习路径\<span style="color: #666">Java开发</span> -->
            <div style="height: 20px"></div>
            <img src="img/java/java2.jpg" width="230px" alt="">
            <div style="height: 20px"></div>
            <a href="newjsps/course/coursetree.jsp" class="btn btn-default" style="border-radius: 0;background-color: #FF0000;width: 230px;height: 40px;color: white;font-size: 16px;padding: 8px">参与系统路径</a>
           <a href="newjsps/course/adaptiontree.jsp" class="btn btn-default" style="border-radius: 0;background-color: #337ab7;width: 230px;height: 40px;color: white;font-size: 16px;padding: 8px">参与自适应路径</a>
            <div style="height: 20px"></div>
            <span style="color: #555;font-weight: 700">路径介绍</span>
            <div style="text-align: left;width: 230px">
                <hr/>
                <span style="color: #666;font-size: 18px">
                    想成为Java攻城狮？不知道该如何入门？表捉急，本计划从最基本的Java语言基础、各种常用工具到Java Web基础以及框架应用，迈出成为优秀的Java工程师的重要一步。
                </span>
            </div>

        </div>
        <div class="col-md-9" style="padding: 20px">
            <h1 style="font-weight: 700">Java学习系统路径</h1>
            <div style="height: 20px"></div>

           <!--  <div >
                Nav tabs
                <ul class="nav nav-pills" role="tablist">
                    <li>
                        <div style="height: 13px"></div>
                        <strong>入门必学</strong>&nbsp;&nbsp;<span style="color: #888">|</span>&nbsp;&nbsp;
                    </li>
                    <li role="presentation" class="active"><a style="outline:none;" onclick="hidden1();" href="#home" aria-controls="home" role="tab" data-toggle="tab">语法基础</a></li>
                   <li role="presentation" class="active"><a style="outline:none;" onclick="hidden1();" href="#home" aria-controls="home" role="tab" data-toggle="tab">语法基础</a></li>
                    <li >
                        <div style="height: 13px"></div>
                        <i class="glyphicon glyphicon-triangle-right" style="color: #888"></i>
                    </li>
                    <li role="presentation"><a style="outline:none" href="#profile"  onclick="hidden1();" aria-controls="profile" role="tab" data-toggle="tab">面向对象</a></li>
                    <li >
                        <div style="height: 13px"></div>
                        <i class="glyphicon glyphicon-triangle-right" style="color: #888"></i>
                    </li>
                    <li role="presentation"><a style="outline:none;" href="#messages"  onclick="hidden1();" aria-controls="messages" role="tab" data-toggle="tab">常用工具类</a></li>
                    <li >
                        <div style="height: 13px"></div>
                        <i class="glyphicon glyphicon-triangle-right" style="color: #888"></i>
                    </li>
                    <li role="presentation"><a style="outline:none;" href="#settings"  onclick="hidden1();" aria-controls="settings" role="tab" data-toggle="tab">文件操作</a></li>
                </ul>

                Tab panes
                <div class="tab-content" id="cont1">
                    <div role="tabpanel" class="tab-pane active" id="home">
                        <div style="height: 10px"></div>
                        <div style="padding: 20px">
                            <div class="row">
                                <div class="col-md-4 col-xs-6 evenflow_scale" style="margin-bottom: 30px">
                                    <img width="100%" src="img/java.jpg" alt="">
                                    <div style="text-align: center;padding: 8px">
                                        前端课程
                                    </div>
                                </div>
                                <div class="col-md-4 col-xs-6 evenflow_scale" style="margin-bottom: 30px">
                                    <img width="100%" src="img/pyhton.jpg" alt="">
                                    <div style="text-align: center;padding: 8px">
                                        前端课程
                                    </div>
                                </div>
                                <div class="col-md-4 col-xs-6 evenflow_scale" style="margin-bottom: 30px">
                                    <img width="100%" src="img/php.jpg" alt="">
                                    <div style="text-align: center;padding: 8px">
                                        前端课程
                                    </div>
                                </div>

                            </div>
                        </div>

                    </div>
                    <div role="tabpanel" class="tab-pane" id="profile">
                        <div style="height: 10px"></div>
                        <div style="padding: 20px">

                            <div class="row">
                                <div class="col-md-4 col-xs-6 evenflow_scale" style="margin-bottom: 30px">
                                    <img width="100%" src="img/qianduan.jpg" alt="">
                                    <div style="text-align: center;padding: 8px">
                                        前端课程
                                    </div>
                                </div>

                            </div>

                        </div>

                    </div>
                    <div role="tabpanel" class="tab-pane" id="messages">

                        <div style="height: 10px"></div>
                        <div style="padding: 20px">
                        <div class="row">
                            <div class="col-md-4 col-xs-6 evenflow_scale" style="margin-bottom: 30px">
                                <img width="100%" src="img/pyhton.jpg" alt="">
                                <div style="text-align: center;padding: 8px">
                                    前端课程
                                </div>
                            </div>

                        </div>


                        </div>
                    </div>
                    <div role="tabpanel" class="tab-pane" id="settings">
                        <div style="height: 10px"></div>
                        <div style="padding: 20px">

                            <div class="row">
                                <div class="col-md-4 col-xs-6 evenflow_scale" style="margin-bottom: 30px">
                                    <img width="100%" src="img/php.jpg" alt="">
                                    <div style="text-align: center;padding: 8px">
                                        前端课程
                                    </div>
                                </div>

                            </div>

                        </div>
                    </div>
                </div>

            </div>

            <hr />
             -->
             
             
             
             <div >
                <!-- Nav tabs -->
                <ul class="nav nav-pills" role="tablist">
                    <li>
                        <div style="height: 13px"></div>
                        <strong>开发环境搭建</strong>&nbsp;&nbsp;<span style="color: #888">|</span>&nbsp;&nbsp;
                    </li>
                    <li role="presentation" ><a style="outline:none;" href="#home1"  onclick="hidden1();" aria-controls="home1" role="tab" data-toggle="tab">java语言简介</a></li>
                    <li >
                        <div style="height: 13px"></div>
                        <i class="glyphicon glyphicon-triangle-right" style="color: #888"></i>
                    </li>
                    <li role="presentation"><a style="outline:none;" href="#profile1"   onclick="hidden1();" aria-controls="profile1" role="tab" data-toggle="tab">开发环境搭建</a></li>
                    <li >
                        <div style="height: 13px"></div>
                        <i class="glyphicon glyphicon-triangle-right" style="color: #888"></i>
                    </li>
                    <li role="presentation"><a style="outline:none;" href="#messages1"  onclick="hidden1();" aria-controls="messages1" role="tab" data-toggle="tab">开发调试技巧</a></li>
                    <li >
                        <div style="height: 13px"></div>
                        <i class="glyphicon glyphicon-triangle-right" style="color: #888"></i>
                    </li>
                    <li role="presentation"><a style="outline:none;" href="#settings1"  onclick="hidden1();" aria-controls="settings1" role="tab" data-toggle="tab">集成环境详解</a></li>
                </ul>

                <!-- Tab panes -->
                <div class="tab-content" id="cont1" style="display: none">
                    <div role="tabpanel" class="tab-pane active" id="home1">
                        <div style="height: 10px"></div>
                        <div style="padding: 20px">
                            <div class="row">
                                <div class="col-md-4 col-xs-6 evenflow_scale" style="margin-bottom: 0px">
                                    <img width="100%" src="img/java/javajianjie.jpg" alt="">
                                    <div style="text-align: center;padding: 8px">
                                        java语法简介
                                    </div>
                                </div>
                            

                            </div>
                        </div>

                    </div>
                    <div role="tabpanel" class="tab-pane" id="profile1">
                        <div style="height: 10px"></div>
                        <div style="padding: 20px">

                            <div class="row">
                                <div class="col-md-4 col-xs-6 evenflow_scale" style="margin-bottom: 0px">
                                    <img width="100%" src="img/qianduan.jpg" alt="">
                                    <div style="text-align: center;padding: 8px">
                                        前端课程
                                    </div>
                                </div>

                            </div>

                        </div>

                    </div>
                    <div role="tabpanel" class="tab-pane" id="messages1">

                        <div style="height: 10px"></div>
                        <div style="padding: 20px">
                            <div class="row">
                                <div class="col-md-4 col-xs-6 evenflow_scale" style="margin-bottom: 0px">
                                    <img width="100%" src="img/pyhton.jpg" alt="">
                                    <div style="text-align: center;padding: 8px">
                                        前端课程
                                    </div>
                                </div>

                            </div>


                        </div>
                    </div>
                    <div role="tabpanel" class="tab-pane" id="settings1">
                        <div style="height: 10px"></div>
                        <div style="padding: 20px">

                            <div class="row">
                                <div class="col-md-4 col-xs-6 evenflow_scale" style="margin-bottom: 0px">
                                    <img width="100%" src="img/php.jpg" alt="">
                                    <div style="text-align: center;padding: 8px">
                                        前端课程
                                    </div>
                                </div>

                            </div>

                        </div>
                    </div>
                </div>

            </div>
            <hr />
            
            
            
            
            <!--/////////////////////  -->
            <div >
                <!-- Nav tabs -->
                <ul class="nav nav-pills" role="tablist">
                    <li>
                        <div style="height: 13px"></div>
                        <strong>java语言基础</strong>&nbsp;&nbsp;<span style="color: #888">|</span>&nbsp;&nbsp;
                    </li>
                    <li role="presentation" ><a style="outline:none;" href="#home2"  onclick="hidden2();" aria-controls="home2" role="tab" data-toggle="tab">计算机进制转换</a></li>
                    <li >
                        <div style="height: 13px"></div>
                        <i class="glyphicon glyphicon-triangle-right" style="color: #888"></i>
                    </li>
                    <li role="presentation"><a style="outline:none;" href="#profile2"   onclick="hidden2();" aria-controls="profile2" role="tab" data-toggle="tab">基础知识入门</a></li>
                    <li >
                        <div style="height: 13px"></div>
                        <i class="glyphicon glyphicon-triangle-right" style="color: #888"></i>
                    </li>
                    <li role="presentation"><a style="outline:none;" href="#messages2"  onclick="hidden2();" aria-controls="messages2" role="tab" data-toggle="tab">判断与关系运算</a></li>
                    <li >
                        <div style="height: 13px"></div>
                        <i class="glyphicon glyphicon-triangle-right" style="color: #888"></i>
                    </li>
                    <li role="presentation"><a style="outline:none;" href="#settings2"  onclick="hidden2();" aria-controls="settings2" role="tab" data-toggle="tab">java逻辑运算</a></li>
                    <li >
                        <div style="height: 13px"></div>
                        <i class="glyphicon glyphicon-triangle-right" style="color: #888"></i>
                    </li>
                    <li role="presentation"><a style="outline:none;" href="#settings2"  onclick="hidden2();" aria-controls="settings2" role="tab" data-toggle="tab">判断语句用法</a></li>
                    
                    <li >
                        <div style="height: 13px"></div>
                        <i class="glyphicon glyphicon-triangle-right" style="color: #888"></i>
                    </li>
                    <li role="presentation"><a style="outline:none;" href="#settings2"  onclick="hidden2();" aria-controls="settings2" role="tab" data-toggle="tab">Switch语句详解</a></li>
                    
                    <li >
                        <div style="height: 13px"></div>
                        <i class="glyphicon glyphico
                        n-triangle-right" style="color: #888"></i>
                    </li>
                    <li role="presentation"><a style="outline:none;" href="#settings2"  onclick="hidden2();" aria-controls="settings2" role="tab" data-toggle="tab">java数组</a></li>
                    <li >
                        <div style="height: 13px"></div>
                        <i class="glyphicon glyphicon-triangle-right" style="color: #888"></i>
                    </li>
                    <li role="presentation"><a style="outline:none;" href="#settings2"  onclick="hidden2();" aria-controls="settings2" role="tab" data-toggle="tab">java异常处理</a></li>
                </ul>

                <!-- Tab panes -->
                <div class="tab-content" id="cont2" style="display: none">
                    <div role="tabpanel" class="tab-pane active" id="home2">
                        <div style="height: 10px"></div>
                        <div style="padding: 20px">
                            <div class="row">
                                <div class="col-md-4 col-xs-6 evenflow_scale" style="margin-bottom: 0px">
                                    <a href="<c:url value='/Servlet?method=playvideo2&vidid=17B85290E5D44146A4061834476D2B7B'/>"><img width="100%" src="img/java/javajinzhi.jpg" alt=""></a>
                                    <div style="text-align: center;padding: 8px">
                                      java二进制简介
                                    </div>
                                </div>
                                
                                
                            </div>
                        </div>

                    </div>
                    <div role="tabpanel" class="tab-pane" id="profile2">
                        <div style="height: 10px"></div>
                        <div style="padding: 20px">

                            <div class="row">
                                <div class="col-md-4 col-xs-6 evenflow_scale" style="margin-bottom: 0px">
                                    <img width="100%" src="img/java/javajichu1.jpg" alt="">
                                    <div style="text-align: center;padding: 8px">
                                        java基础知识1
                                    </div>
                                </div>
                                <div class="col-md-4 col-xs-6 evenflow_scale" style="margin-bottom: 0px">
                                    <img width="100%" src="img/java/javajichu2.jpg" alt="">
                                    <div style="text-align: center;padding: 8px">
                                        java基础知识2
                                    </div>
                                </div>
                                <div class="col-md-4 col-xs-6 evenflow_scale" style="margin-bottom: 0px">
                                    <img width="100%" src="img/java/javajichu3.jpg" alt="">
                                    <div style="text-align: center;padding: 8px">
                                        java基础知识3
                                    </div>
                                </div>

                            </div>

                        </div>

                    </div>
                    <div role="tabpanel" class="tab-pane" id="messages2">

                        <div style="height: 10px"></div>
                        <div style="padding: 20px">
                            <div class="row">
                                <div class="col-md-4 col-xs-6 evenflow_scale" style="margin-bottom: 0px">
                                    <img width="100%" src="img/pyhton.jpg" alt="">
                                    <div style="text-align: center;padding: 8px">
                                        前端课程
                                    </div>
                                </div>

                            </div>


                        </div>
                    </div>
                    <div role="tabpanel" class="tab-pane" id="settings2">
                        <div style="height: 10px"></div>
                        <div style="padding: 20px">

                            <div class="row">
                                <div class="col-md-4 col-xs-6 evenflow_scale" style="margin-bottom: 0px">
                                    <img width="100%" src="img/php.jpg" alt="">
                                    <div style="text-align: center;padding: 8px">
                                        前端课程
                                    </div>
                                </div>

                            </div>

                        </div>
                    </div>
                </div>

            </div>
            <hr />
            
            
            
            
            
            <!--、、、、、、、、、、、、、、、、  -->
            <div >
                <!-- Nav tabs -->
                <ul class="nav nav-pills" role="tablist">
                    <li>
                        <div style="height: 13px"></div>
                        <strong>java面向对象</strong>&nbsp;&nbsp;<span style="color: #888">|</span>&nbsp;&nbsp;
                    </li>
                    <li role="presentation" ><a style="outline:none;" href="#home3"  onclick="hidden3();" aria-controls="home3" role="tab" data-toggle="tab">面向对象概念</a></li>
                    <li >
                        <div style="height: 13px"></div>
                        <i class="glyphicon glyphicon-triangle-right" style="color: #888"></i>
                    </li>
                    <li role="presentation"><a style="outline:none;" href="#profile3"   onclick="hidden3();" aria-controls="profile3" role="tab" data-toggle="tab">面向对象基本特征</a></li>
                    <li >
                        <div style="height: 13px"></div>
                        <i class="glyphicon glyphicon-triangle-right" style="color: #888"></i>
                    </li>
                    <li role="presentation"><a style="outline:none;" href="#messages3"  onclick="hidden3();" aria-controls="messages3" role="tab" data-toggle="tab">java抽象类与接口</a></li>
                    <li >
                        <div style="height: 13px"></div>
                        <i class="glyphicon glyphicon-triangle-right" style="color: #888"></i>
                    </li>
                    <li role="presentation"><a style="outline:none;" href="#settings3"  onclick="hidden3();" aria-controls="settings3" role="tab" data-toggle="tab">面向对象之泛型</a></li>
                </ul>

                <!-- Tab panes -->
                <div class="tab-content" id="cont3" style="display: none">
                    <div role="tabpanel" class="tab-pane active" id="home3">
                        <div style="height: 10px"></div>
                        <div style="padding: 20px">
                            <div class="row">
                                <div class="col-md-4 col-xs-6 evenflow_scale" style="margin-bottom: 30px">
                                    <img width="100%" src="img/java.jpg" alt="">
                                    <div style="text-align: center;padding: 8px">
                                        前端课程
                                    </div>
                                </div>
                                <div class="col-md-4 col-xs-6 evenflow_scale" style="margin-bottom: 30px">
                                    <img width="100%" src="img/pyhton.jpg" alt="">
                                    <div style="text-align: center;padding: 8px">
                                        前端课程
                                    </div>
                                </div>
                                <div class="col-md-4 col-xs-6 evenflow_scale" style="margin-bottom: 30px">
                                    <img width="100%" src="img/php.jpg" alt="">
                                    <div style="text-align: center;padding: 8px">
                                        前端课程
                                    </div>
                                </div>

                            </div>
                        </div>

                    </div>
                    <div role="tabpanel" class="tab-pane" id="profile3">
                        <div style="height: 10px"></div>
                        <div style="padding: 20px">

                            <div class="row">
                                <div class="col-md-4 col-xs-6 evenflow_scale" style="margin-bottom: 30px">
                                    <img width="100%" src="img/qianduan.jpg" alt="">
                                    <div style="text-align: center;padding: 8px">
                                        前端课程
                                    </div>
                                </div>

                            </div>

                        </div>

                    </div>
                    <div role="tabpanel" class="tab-pane" id="messages3">

                        <div style="height: 10px"></div>
                        <div style="padding: 20px">
                            <div class="row">
                                <div class="col-md-4 col-xs-6 evenflow_scale" style="margin-bottom: 30px">
                                    <img width="100%" src="img/pyhton.jpg" alt="">
                                    <div style="text-align: center;padding: 8px">
                                        前端课程
                                    </div>
                                </div>

                            </div>


                        </div>
                    </div>
                    <div role="tabpanel" class="tab-pane" id="settings3">
                        <div style="height: 10px"></div>
                        <div style="padding: 20px">

                            <div class="row">
                                <div class="col-md-4 col-xs-6 evenflow_scale" style="margin-bottom: 30px">
                                    <img width="100%" src="img/php.jpg" alt="">
                                    <div style="text-align: center;padding: 8px">
                                        前端课程
                                    </div>
                                </div>

                            </div>

                        </div>
                    </div>
                </div>

            </div>
            <hr />
            
            
            
            
             <!--、、、、、、、、、、、、、、、、  -->
            <div >
                <!-- Nav tabs -->
                <ul class="nav nav-pills" role="tablist">
                    <li>
                        <div style="height: 13px"></div>
                        <strong>java语言进阶</strong>&nbsp;&nbsp;<span style="color: #888">|</span>&nbsp;&nbsp;
                    </li>
                    <li role="presentation" ><a style="outline:none;" href="#home4"  onclick="hidden4();" aria-controls="home4" role="tab" data-toggle="tab">java集合类详解</a></li>
                    <li >
                        <div style="height: 13px"></div>
                        <i class="glyphicon glyphicon-triangle-right" style="color: #888"></i>
                    </li>
                    <li role="presentation"><a style="outline:none;" href="#profile4"   onclick="hidden4();" aria-controls="profile4" role="tab" data-toggle="tab">java本地文件操作</a></li>
                    <li >
                        <div style="height: 13px"></div>
                        <i class="glyphicon glyphicon-triangle-right" style="color: #888"></i>
                    </li>
                    <li role="presentation"><a style="outline:none;" href="#messages4"  onclick="hidden4();" aria-controls="messages4" role="tab" data-toggle="tab">java中的IO操作</a></li>
                    <li >
                        <div style="height: 13px"></div>
                        <i class="glyphicon glyphicon-triangle-right" style="color: #888"></i>
                    </li>
                    <li role="presentation"><a style="outline:none;" href="#settings4"  onclick="hidden4();" aria-controls="settings4" role="tab" data-toggle="tab">java多线程编程</a></li>
                </ul>

                <!-- Tab panes -->
                <div class="tab-content" id="cont4" style="display: none">
                    <div role="tabpanel" class="tab-pane active" id="home4">
                        <div style="height: 10px"></div>
                        <div style="padding: 20px">
                            <div class="row">
                                <div class="col-md-4 col-xs-6 evenflow_scale" style="margin-bottom: 30px">
                                    <img width="100%" src="img/java.jpg" alt="">
                                    <div style="text-align: center;padding: 8px">
                                        前端课程
                                    </div>
                                </div>
                                <div class="col-md-4 col-xs-6 evenflow_scale" style="margin-bottom: 30px">
                                    <img width="100%" src="img/pyhton.jpg" alt="">
                                    <div style="text-align: center;padding: 8px">
                                        前端课程
                                    </div>
                                </div>
                                <div class="col-md-4 col-xs-6 evenflow_scale" style="margin-bottom: 30px">
                                    <img width="100%" src="img/php.jpg" alt="">
                                    <div style="text-align: center;padding: 8px">
                                        前端课程
                                    </div>
                                </div>

                            </div>
                        </div>

                    </div>
                    <div role="tabpanel" class="tab-pane" id="profile4">
                        <div style="height: 10px"></div>
                        <div style="padding: 20px">

                            <div class="row">
                                <div class="col-md-4 col-xs-6 evenflow_scale" style="margin-bottom: 30px">
                                    <img width="100%" src="img/qianduan.jpg" alt="">
                                    <div style="text-align: center;padding: 8px">
                                        前端课程
                                    </div>
                                </div>

                            </div>

                        </div>

                    </div>
                    <div role="tabpanel" class="tab-pane" id="messages4">

                        <div style="height: 10px"></div>
                        <div style="padding: 20px">
                            <div class="row">
                                <div class="col-md-4 col-xs-6 evenflow_scale" style="margin-bottom: 30px">
                                    <img width="100%" src="img/pyhton.jpg" alt="">
                                    <div style="text-align: center;padding: 8px">
                                        前端课程
                                    </div>
                                </div>

                            </div>


                        </div>
                    </div>
                    <div role="tabpanel" class="tab-pane" id="settings4">
                        <div style="height: 10px"></div>
                        <div style="padding: 20px">

                            <div class="row">
                                <div class="col-md-4 col-xs-6 evenflow_scale" style="margin-bottom: 30px">
                                    <img width="100%" src="img/php.jpg" alt="">
                                    <div style="text-align: center;padding: 8px">
                                        前端课程
                                    </div>
                                </div>

                            </div>

                        </div>
                    </div>
                </div>

            </div>
            <hr />
            
            
            
             <!--、、、、、、、、、、、、、、、、  -->
            <div >
                <!-- Nav tabs -->
                <ul class="nav nav-pills" role="tablist">
                    <li>
                        <div style="height: 13px"></div>
                        <strong>java加密算法编程</strong>&nbsp;&nbsp;<span style="color: #888">|</span>&nbsp;&nbsp;
                    </li>
                    <li role="presentation" ><a style="outline:none;" href="#home5"  onclick="hidden5();" aria-controls="home5" role="tab" data-toggle="tab">Base64编码的使用</a></li>
                    <li >
                        <div style="height: 13px"></div>
                        <i class="glyphicon glyphicon-triangle-right" style="color: #888"></i>
                    </li>
                    <li role="presentation"><a style="outline:none;" href="#profile5"   onclick="hidden5();" aria-controls="profile5" role="tab" data-toggle="tab">消息摘要的编程</a></li>
                    <li >
                        <div style="height: 13px"></div>
                        <i class="glyphicon glyphicon-triangle-right" style="color: #888"></i>
                    </li>
                    <li role="presentation"><a style="outline:none;" href="#messages5"  onclick="hidden5();" aria-controls="messages5" role="tab" data-toggle="tab">对称密码的编程</a></li>
                     <li >
                        <div style="height: 13px"></div>
                        <i class="glyphicon glyphicon-triangle-right" style="color: #888"></i>
                    </li>
                    <li role="presentation"><a style="outline:none;" href="#messages5"  onclick="hidden5();" aria-controls="messages5" role="tab" data-toggle="tab">非对称密码的编程使用</a></li>
                    <li >
                        <div style="height: 13px"></div>
                        <i class="glyphicon glyphicon-triangle-right" style="color: #888"></i>
                    </li>
                  
                    <li role="presentation"><a style="outline:none;" href="#settings5"  onclick="hidden5();" aria-controls="settings5" role="tab" data-toggle="tab">数字签名的编程使用</a></li>
                    
                </ul>

                <!-- Tab panes -->
                <div class="tab-content" id="cont3" style="display: none">
                    <div role="tabpanel" class="tab-pane active" id="home3">
                        <div style="height: 10px"></div>
                        <div style="padding: 20px">
                            <div class="row">
                                <div class="col-md-4 col-xs-6 evenflow_scale" style="margin-bottom: 30px">
                                    <img width="100%" src="img/java.jpg" alt="">
                                    <div style="text-align: center;padding: 8px">
                                        前端课程
                                    </div>
                                </div>
                                <div class="col-md-4 col-xs-6 evenflow_scale" style="margin-bottom: 30px">
                                    <img width="100%" src="img/pyhton.jpg" alt="">
                                    <div style="text-align: center;padding: 8px">
                                        前端课程
                                    </div>
                                </div>
                                <div class="col-md-4 col-xs-6 evenflow_scale" style="margin-bottom: 30px">
                                    <img width="100%" src="img/php.jpg" alt="">
                                    <div style="text-align: center;padding: 8px">
                                        前端课程
                                    </div>
                                </div>

                            </div>
                        </div>

                    </div>
                    <div role="tabpanel" class="tab-pane" id="profile5">
                        <div style="height: 10px"></div>
                        <div style="padding: 20px">

                            <div class="row">
                                <div class="col-md-4 col-xs-6 evenflow_scale" style="margin-bottom: 30px">
                                    <img width="100%" src="img/qianduan.jpg" alt="">
                                    <div style="text-align: center;padding: 8px">
                                        前端课程
                                    </div>
                                </div>

                            </div>

                        </div>

                    </div>
                    <div role="tabpanel" class="tab-pane" id="messages5">

                        <div style="height: 10px"></div>
                        <div style="padding: 20px">
                            <div class="row">
                                <div class="col-md-4 col-xs-6 evenflow_scale" style="margin-bottom: 30px">
                                    <img width="100%" src="img/pyhton.jpg" alt="">
                                    <div style="text-align: center;padding: 8px">
                                        前端课程
                                    </div>
                                </div>

                            </div>


                        </div>
                    </div>
                    <div role="tabpanel" class="tab-pane" id="settings5">
                        <div style="height: 10px"></div>
                        <div style="padding: 20px">

                            <div class="row">
                                <div class="col-md-4 col-xs-6 evenflow_scale" style="margin-bottom: 30px">
                                    <img width="100%" src="img/php.jpg" alt="">
                                    <div style="text-align: center;padding: 8px">
                                        前端课程
                                    </div>
                                </div>

                            </div>

                        </div>
                    </div>
                </div>

            </div>
            <hr />
            
            
             <!--、、、、、、、、、、、、、、、、  -->
            <div >
                <!-- Nav tabs -->
                <ul class="nav nav-pills" role="tablist">
                    <li>
                        <div style="height: 13px"></div>
                        <strong>网络通信</strong>&nbsp;&nbsp;<span style="color: #888">|</span>&nbsp;&nbsp;
                    </li>
                    <li role="presentation" ><a style="outline:none;" href="#home6"  onclick="hidden6();" aria-controls="home6" role="tab" data-toggle="tab">java中的XML操作</a></li>
                    <li >
                        <div style="height: 13px"></div>
                        <i class="glyphicon glyphicon-triangle-right" style="color: #888"></i>
                    </li>
                    <li role="presentation"><a style="outline:none;" href="#profile6"   onclick="hidden6();" aria-controls="profile6" role="tab" data-toggle="tab">java中的JSON操作</a></li>
                    <li >
                        <div style="height: 13px"></div>
                        <i class="glyphicon glyphicon-triangle-right" style="color: #888"></i>
                    </li>
                    <li role="presentation"><a style="outline:none;" href="#messages6"  onclick="hidden6();" aria-controls="messages6" role="tab" data-toggle="tab">java中的HTTP通信</a></li>
                    <li >
                        <div style="height: 13px"></div>
                        <i class="glyphicon glyphicon-triangle-right" style="color: #888"></i>
                    </li>
                    <li role="presentation"><a style="outline:none;" href="#settings6"  onclick="hidden6();" aria-controls="settings6" role="tab" data-toggle="tab">java中的Socket通信</a></li>
                </ul>

                <!-- Tab panes -->
                <div class="tab-content" id="cont6" style="display: none">
                    <div role="tabpanel" class="tab-pane active" id="home6">
                        <div style="height: 10px"></div>
                        <div style="padding: 20px">
                            <div class="row">
                                <div class="col-md-4 col-xs-6 evenflow_scale" style="margin-bottom: 30px">
                                    <img width="100%" src="img/java.jpg" alt="">
                                    <div style="text-align: center;padding: 8px">
                                        前端课程
                                    </div>
                                </div>
                                <div class="col-md-4 col-xs-6 evenflow_scale" style="margin-bottom: 30px">
                                    <img width="100%" src="img/pyhton.jpg" alt="">
                                    <div style="text-align: center;padding: 8px">
                                        前端课程
                                    </div>
                                </div>
                                <div class="col-md-4 col-xs-6 evenflow_scale" style="margin-bottom: 30px">
                                    <img width="100%" src="img/php.jpg" alt="">
                                    <div style="text-align: center;padding: 8px">
                                        前端课程
                                    </div>
                                </div>

                            </div>
                        </div>

                    </div>
                    <div role="tabpanel" class="tab-pane" id="profile6">
                        <div style="height: 10px"></div>
                        <div style="padding: 20px">

                            <div class="row">
                                <div class="col-md-4 col-xs-6 evenflow_scale" style="margin-bottom: 30px">
                                    <img width="100%" src="img/qianduan.jpg" alt="">
                                    <div style="text-align: center;padding: 8px">
                                        前端课程
                                    </div>
                                </div>

                            </div>

                        </div>

                    </div>
                    <div role="tabpanel" class="tab-pane" id="messages6">

                        <div style="height: 10px"></div>
                        <div style="padding: 20px">
                            <div class="row">
                                <div class="col-md-4 col-xs-6 evenflow_scale" style="margin-bottom: 30px">
                                    <img width="100%" src="img/pyhton.jpg" alt="">
                                    <div style="text-align: center;padding: 8px">
                                        前端课程
                                    </div>
                                </div>

                            </div>


                        </div>
                    </div>
                    <div role="tabpanel" class="tab-pane" id="settings6">
                        <div style="height: 10px"></div>
                        <div style="padding: 20px">

                            <div class="row">
                                <div class="col-md-4 col-xs-6 evenflow_scale" style="margin-bottom: 30px">
                                    <img width="100%" src="img/php.jpg" alt="">
                                    <div style="text-align: center;padding: 8px">
                                        前端课程
                                    </div>
                                </div>

                            </div>

                        </div>
                    </div>
                </div>

            </div>
            <hr />
            
            
             <!--、、、、、、、、、、、、、、、、  -->
            <div >
                <!-- Nav tabs -->
                <ul class="nav nav-pills" role="tablist">
                    <li>
                        <div style="height: 13px"></div>
                        <strong>界面设计</strong>&nbsp;&nbsp;<span style="color: #888">|</span>&nbsp;&nbsp;
                    </li>
                    <li role="presentation" ><a style="outline:none;" href="#home7"  onclick="hidden7();" aria-controls="home7" role="tab" data-toggle="tab">java界面设计概述</a></li>
                    <li >
                        <div style="height: 13px"></div>
                        <i class="glyphicon glyphicon-triangle-right" style="color: #888"></i>
                    </li>
                    <li role="presentation"><a style="outline:none;" href="#profile7"   onclick="hidden7();" aria-controls="profile7" role="tab" data-toggle="tab">Swing框架的基本结构</a></li>
                    <li >
                        <div style="height: 13px"></div>
                        <i class="glyphicon glyphicon-triangle-right" style="color: #888"></i>
                    </li>
                    <li role="presentation"><a style="outline:none;" href="#messages7"  onclick="hidden7();" aria-controls="messages7" role="tab" data-toggle="tab">Swing基本组件</a></li>
                    <li >
                        <div style="height: 13px"></div>
                        <i class="glyphicon glyphicon-triangle-right" style="color: #888"></i>
                    </li>
                    <li role="presentation"><a style="outline:none;" href="#settings7"  onclick="hidden7();" aria-controls="settings7" role="tab" data-toggle="tab">Swing布局管理器</a></li>
                </ul>

                <!-- Tab panes -->
                <div class="tab-content" id="cont7" style="display: none">
                    <div role="tabpanel" class="tab-pane active" id="home7">
                        <div style="height: 10px"></div>
                        <div style="padding: 20px">
                            <div class="row">
                                <div class="col-md-4 col-xs-6 evenflow_scale" style="margin-bottom: 30px">
                                    <img width="100%" src="img/java.jpg" alt="">
                                    <div style="text-align: center;padding: 8px">
                                        前端课程
                                    </div>
                                </div>
                                <div class="col-md-4 col-xs-6 evenflow_scale" style="margin-bottom: 30px">
                                    <img width="100%" src="img/pyhton.jpg" alt="">
                                    <div style="text-align: center;padding: 8px">
                                        前端课程
                                    </div>
                                </div>
                                <div class="col-md-4 col-xs-6 evenflow_scale" style="margin-bottom: 30px">
                                    <img width="100%" src="img/php.jpg" alt="">
                                    <div style="text-align: center;padding: 8px">
                                        前端课程
                                    </div>
                                </div>

                            </div>
                        </div>

                    </div>
                    <div role="tabpanel" class="tab-pane" id="profile7">
                        <div style="height: 10px"></div>
                        <div style="padding: 20px">

                            <div class="row">
                                <div class="col-md-4 col-xs-6 evenflow_scale" style="margin-bottom: 30px">
                                    <img width="100%" src="img/qianduan.jpg" alt="">
                                    <div style="text-align: center;padding: 8px">
                                        前端课程
                                    </div>
                                </div>

                            </div>

                        </div>

                    </div>
                    <div role="tabpanel" class="tab-pane" id="messages7">

                        <div style="height: 10px"></div>
                        <div style="padding: 20px">
                            <div class="row">
                                <div class="col-md-4 col-xs-6 evenflow_scale" style="margin-bottom: 30px">
                                    <img width="100%" src="img/pyhton.jpg" alt="">
                                    <div style="text-align: center;padding: 8px">
                                        前端课程
                                    </div>
                                </div>

                            </div>


                        </div>
                    </div>
                    <div role="tabpanel" class="tab-pane" id="settings7">
                        <div style="height: 10px"></div>
                        <div style="padding: 20px">

                            <div class="row">
                                <div class="col-md-4 col-xs-6 evenflow_scale" style="margin-bottom: 30px">
                                    <img width="100%" src="img/php.jpg" alt="">
                                    <div style="text-align: center;padding: 8px">
                                        前端课程
                                    </div>
                                </div>

                            </div>

                        </div>
                    </div>
                </div>

            </div>
            <hr />            
            



        </div>
    </div>
</div>


<script>
        function hidden1(){
            document.getElementById("cont1").style.display="";
            document.getElementById("cont2").style.display="none";
            document.getElementById("cont3").style.display="none";
            document.getElementById("cont4").style.display="none";
        }

        function hidden2(){
            document.getElementById("cont1").style.display="none";
            document.getElementById("cont2").style.display="";
            document.getElementById("cont3").style.display="none";
            document.getElementById("cont4").style.display="none";
            document.getElementById("cont5").style.display="none";
            document.getElementById("cont6").style.display="none";
            document.getElementById("cont7").style.display="none";
        }
        
         function hidden3(){
            document.getElementById("cont1").style.display="none";
            document.getElementById("cont2").style.display="none";
            document.getElementById("cont3").style.display="";
            document.getElementById("cont4").style.display="none";
            document.getElementById("cont5").style.display="none";
            document.getElementById("cont6").style.display="none";
            document.getElementById("cont7").style.display="none";
        }
        
        function hidden4(){
            document.getElementById("cont1").style.display="none";
            document.getElementById("cont2").style.display="none";
            document.getElementById("cont3").style.display="none";
            document.getElementById("cont4").style.display="";
            document.getElementById("cont5").style.display="none";
            document.getElementById("cont6").style.display="none";
            document.getElementById("cont7").style.display="none";
        }
        
         function hidden5(){
            document.getElementById("cont1").style.display="none";
            document.getElementById("cont2").style.display="none";
            document.getElementById("cont3").style.display="none";
            document.getElementById("cont4").style.display="none";
            document.getElementById("cont5").style.display="";
            document.getElementById("cont6").style.display="none";
            document.getElementById("cont7").style.display="none";
        }
        
         function hidden6(){
            document.getElementById("cont1").style.display="none";
            document.getElementById("cont2").style.display="none";
            document.getElementById("cont3").style.display="none";
            document.getElementById("cont4").style.display="none";
            document.getElementById("cont5").style.display="none";
            document.getElementById("cont6").style.display="";
            document.getElementById("cont7").style.display="none";
        }
        
         function hidden7(){
            document.getElementById("cont1").style.display="none";
            document.getElementById("cont2").style.display="none";
            document.getElementById("cont3").style.display="none";
            document.getElementById("cont4").style.display="none";
            document.getElementById("cont5").style.display="none";
            document.getElementById("cont6").style.display="none";
            document.getElementById("cont7").style.display="";
        }


</script>

<footer>
    <div style="height: 100px;width: 100%;background-color: #4d6071;text-align: center;padding: 15px">
        <p style="color: white">联系我们&nbsp;|&nbsp;网站首页&nbsp;|&nbsp;免责声明&nbsp;|&nbsp;关于我们</p>
        <p style="color: white">Copyright © 2016 &nbsp; <a style="color: white" href="">极客联盟</a> / 程序设计大赛创新实验室.</p>
    </div>


</footer>
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="js/jquery.min.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="js/bootstrap.min.js"></script>
  </body>
</html>
