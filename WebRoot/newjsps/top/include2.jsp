<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="zh-CN" style="height: 100%">
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
    <title>Java语言|BEGEEK</title>

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
<body style="height: 100%">
<div style="float:left; width: 100%; text-align: left;">
	<hr/>
	<br/>
	<%@include file="top1.jsp" %>
</div>

<div style="background-image: url(img/background/javabg.jpg);background-size: cover;background-position: center;height: 300px;width: 100%">
    <div style="height: 20px"></div>
    <div style="text-align: center">
        <img class="img-circle" width="120px" height="120px" src="img/avatar/javaAvatar.jpg"  alt="">
        <div style="height: 10px"></div>
        <div class="row">
            <div class="col-md-4"></div>
            <div class="col-md-4">
                <div style="color: white;font-size: 22px;font-weight: 700">JAVA语言</div>
                <div style="height: 10px"></div>
                <div ><button style="margin: 5px" class="btn btn-info"><span style="color: #e35b5a"><span id="number">12</span> </span>关注量</button><button onclick="changeNum()" id="add" class="btn btn-success" style="margin: 5px">关注+</button></div>


            </div>
            <div class="col-md-4"></div>

        </div>
    </div>
</div>
<div class="container">
    <!-- Nav tabs -->
    <div style="height: 10px"></div>
    <div style="text-align: center">
        <ul class="nav nav-tabs" role="tablist">
            <li role="presentation" class="active"><a href="#hot" style="color: #555;outline:none;" aria-controls="hot" role="tab" data-toggle="tab">知识地图</a></li>
            <li role="presentation"><a href="#picture" style="color: #555;outline:none;" aria-controls="picture" role="tab" data-toggle="tab">文档资源</a></li>
            <li role="presentation"><a href="#txt" style="color: #555;outline:none;" aria-controls="picture" role="tab" data-toggle="tab">项目实例</a></li>
            <li role="presentation"><a href="#prog" style="color: #555;outline:none;" aria-controls="picture" role="tab" data-toggle="tab">Java社区</a></li>
        </ul>
    </div>


    <!-- Tab panes -->
    <div class="row">
        <div class="tab-content col-md-8" style="">
            <div style="height: 20px"></div>
            <div role="tabpanel" class="tab-pane active" id="hot">
                <div style="background-color: white;padding: 20px">
                    <div class="row">
                        <h3 style="margin: 0;color:#4d6071;font-weight: 700"><i class="fa fa-book"></i>学习路线</h3>
                        <hr />
                        <a href="./mapProject/javaMap.html">
                            <div class="col-md-4 col-xs-6 evenflow_scale" style="margin-bottom: 20px" >
                                <div style="background-image: url(img/road.jpg);background-size: cover;background-position: center">
                                    <img width="100%" src="img/tm.png" alt="">

                                </div>
                                <div style="text-align: center;padding: 8px">
                                    推荐学习路线
                                </div>
                            </div>
                        </a>

                        <a href="#">
                            <div class="col-md-4 col-xs-6 evenflow_scale" style="margin-bottom: 20px">
                                <div style="background-image: url(img/road.jpg);background-size: cover;background-position: center">
                                    <img width="100%" src="img/tm.png" alt="">

                                </div>
                                <div style="text-align: center;padding: 8px">
                                    深入浅出路线
                                </div>
                            </div>
                        </a>
                        <a href="#">
                            <div class="col-md-4 col-xs-6 evenflow_scale" style="margin-bottom: 20px">
                                <div style="background-image: url(img/road.jpg);background-size: cover;background-position: center">
                                    <img width="100%" src="img/tm.png" alt="">

                                </div>
                                <div style="text-align: center;padding: 8px">
                                    实战强化路线
                                </div>
                            </div>

                        </a>

                    </div>

                </div>


            </div>
            <div role="tabpanel" class="tab-pane" id="picture">
                <div style="background-color: white;padding: 10px">
                    <div class="row">
                        <h3 style="margin: 0;color:#4d6071;font-weight: 700"><i class="fa fa-book"></i>&nbsp;&nbsp;&nbsp;文档资源</h3>
                        <hr />
                        <div class="col-md-4 col-xs-6 evenflow_scale" style="margin-bottom: 20px">
                           <div style="background-image: url(img/java/java1.jpg);background-size: cover;background-position: center">
                               <img width="100%" src="img/tm.png" alt="">

                           </div>
                            <div style="text-align: center;padding: 8px">
                                Java基础语法一览表
                            </div>
                        </div>
                        <div class="col-md-4 col-xs-6 evenflow_scale" style="margin-bottom: 20px">
                            <div style="background-image: url(img/java/java2.jpg);background-size: cover;background-position: center">
                                <img width="100%" src="img/tm.png" alt="">

                            </div>
                            <div style="text-align: center;padding: 8px">
                                JavaSE整合
                            </div>
                        </div>
                        <div class="col-md-4 col-xs-6 evenflow_scale" style="margin-bottom: 20px">
                            <div style="background-image: url(img/java/java3.jpg);background-size: cover;background-position: center">
                                <img width="100%" src="img/tm.png" alt="">

                            </div>
                            <div style="text-align: center;padding: 8px">
                                JavaWeb速查
                            </div>
                        </div>
                        <div class="col-md-4 col-xs-6 evenflow_scale" style="margin-bottom: 20px">
                            <div style="background-image: url(img/java/java4.png);background-size: cover;background-position: center">
                                <img width="100%" src="img/tm.png" alt="">

                            </div>
                            <div style="text-align: center;padding: 8px">
                                Java从入门到精通
                            </div>
                        </div>
                        <div class="col-md-4 col-xs-6 evenflow_scale" style="margin-bottom: 20px">
                            <div style="background-image: url(img/java/java5.jpg);background-size: cover;background-position: center">
                                <img width="100%" src="img/tm.png" alt="">

                            </div>
                            <div style="text-align: center;padding: 8px">
                                Java深入浅出
                            </div>
                        </div>
                    </div>

                </div>

            </div>
            <div role="tabpanel" class="tab-pane" id="txt">

                <div style="background-color: white;padding: 10px">
                    <div class="row">
                        <h3 style="margin: 0;color:#4d6071;font-weight: 700"><i class="fa fa-book"></i>&nbsp;&nbsp;&nbsp;项目实例</h3>
                        <hr />
                        <div class="col-md-4 col-xs-6 evenflow_scale" style="margin-bottom: 20px">
                            <div style="background-image: url(img/javaproject/web1.png);background-size: cover;background-position: center">
                                <img width="100%" src="img/tm.png" alt="">

                            </div>
                            <div style="text-align: center;padding: 8px">
                                JavaWeb快速建站
                            </div>
                        </div>
                        <div class="col-md-4 col-xs-6 evenflow_scale" style="margin-bottom: 20px">
                            <div style="background-image: url(img/javaproject/web2.jpeg);background-size: cover;background-position: center">
                                <img width="100%" src="img/tm.png" alt="">

                            </div>
                            <div style="text-align: center;padding: 8px">
                                JavaWeb管理系统源码
                            </div>
                        </div>
                        <div class="col-md-4 col-xs-6 evenflow_scale" style="margin-bottom: 20px">
                            <div style="background-image: url(img/javaproject/web3.png);background-size: cover;background-position: center">
                                <img width="100%" src="img/tm.png" alt="">

                            </div>
                            <div style="text-align: center;padding: 8px">
                                Java封装实例
                            </div>
                        </div>
                        <div class="col-md-4 col-xs-6 evenflow_scale" style="margin-bottom: 20px" >
                            <div style="background-image: url(img/javaproject/web4.jpg);background-size: cover;background-position: center">
                                <img width="100%" src="img/tm.png" alt="">

                            </div>
                            <div style="text-align: center;padding: 8px">
                                JavaWeb数据分析系统
                            </div>
                        </div>
                        <div class="col-md-4 col-xs-6 evenflow_scale" style="margin-bottom: 20px">
                        <div style="background-image: url(img/javaproject/web5.jpg);background-size: cover;background-position: center">
                            <img width="100%" src="img/tm.png" alt="">

                        </div>
                        <div style="text-align: center;padding: 8px">
                            Java Idea开发实例
                        </div>
                      </div>

                        <div class="col-md-4 col-xs-6 evenflow_scale" style="margin-bottom: 20px">
                            <div style="background-image: url(img/javaproject/web6.jpg);background-size: cover;background-position: center">
                                <img width="100%" src="img/tm.png" alt="">

                            </div>
                            <div style="text-align: center;padding: 8px">
                                JavaWeb Http请求实例
                            </div>
                        </div>

                        <div class="col-md-4 col-xs-6 evenflow_scale" style="margin-bottom: 20px">
                            <div style="background-image: url(img/javaproject/web7.jpg);background-size: cover;background-position: center">
                                <img width="100%" src="img/tm.png" alt="">

                            </div>
                            <div style="text-align: center;padding: 8px">
                                库存管理系统
                            </div>
                        </div>
                    </div>

                </div>
            </div>
            <div role="tabpanel" class="tab-pane" id="prog">
                    <div style="padding: 10px">
                        <h3 style="margin: 0;color:#4d6071;font-weight: 700"><i class="fa fa-book"></i>Java社区</h3>
                        <div style="height: 20px"></div>
                        <div class="list-group">
                            <a href="#" type="button" class="list-group-item" style="border-radius: 0">
                                <h2>5年项目开发经验谈java入门</h2>
                                <p>&nbsp;&nbsp;最初是在小公司工作，三年转到阿里，作为一个有5年项目经验的开发人员，我觉得作为想要入手，又想追求年薪3K+的基础上，还应该
                                打好基础...
                                </p>
                            </a>
                            <a href="#" type="button" class="list-group-item" style="border-radius: 0">
                                <h2>深入浅出到底正不正确</h2>
                                <p>&nbsp;&nbsp;最初是在小公司工作，三年转到阿里，作为一个有5年项目经验的开发人员，我觉得作为想要入手，又想追求年薪3K+的基础上，还应该
                                    打好基础...
                                </p>
                            </a>
                            <a href="#" type="button" class="list-group-item" style="border-radius: 0">
                                <h2>求问各方大神！！！</h2>
                                <p>&nbsp;&nbsp;最初是在小公司工作，三年转到阿里，作为一个有5年项目经验的开发人员，我觉得作为想要入手，又想追求年薪3K+的基础上，还应该
                                    打好基础...
                                </p>
                            </a>
                            <a href="#" type="button" class="list-group-item" style="border-radius: 0">
                                <h2>是纯开发还是选择管理路线？</h2>
                                <p>&nbsp;&nbsp;最初是在小公司工作，三年转到阿里，作为一个有5年项目经验的开发人员，我觉得作为想要入手，又想追求年薪3K+的基础上，还应该
                                    打好基础...
                                </p>
                            </a>
                            <a href="#" type="button" class="list-group-item" style="border-radius: 0">
                                <h2>程序员是如何做到凌晨四点还在写代码的。</h2>
                                <p>&nbsp;&nbsp;最初是在小公司工作，三年转到阿里，作为一个有5年项目经验的开发人员，我觉得作为想要入手，又想追求年薪3K+的基础上，还应该
                                    打好基础...
                                </p>
                            </a>
                            <a href="#" type="button" class="list-group-item" style="border-radius: 0">
                                <h2>项目经验重要吗</h2>
                                <p>&nbsp;&nbsp;最初是在小公司工作，三年转到阿里，作为一个有5年项目经验的开发人员，我觉得作为想要入手，又想追求年薪3K+的基础上，还应该
                                    打好基础...
                                </p>
                            </a>

                        </div>

                    </div>

            </div>

        </div>

        <div class="col-md-4" >
            <div style="height: 20px"></div>
            <div style="background-color: white;padding: 10px">
                <h3 style="margin: 0;color:#4d6071;font-weight: 700"><i class="fa fa-suitcase"></i>社区大牛 +</h3>
                <hr />
                <div class="row">
                    <div class="col-md-4 col-xs-4 col-sm-4" style="text-align: center;margin-bottom: 15px">
                        <img src="img/avatar/a1.jpg" class="img-circle" width="80px" height="80px" alt="">
                        <div style="height: 8px"></div>
                        <div style="text-align: center;color: #555">大王来巡山</div>
                    </div>
                    <div class="col-md-4 col-xs-4 col-sm-4" style="text-align: center;margin-bottom: 15px">
                        <img src="img/avatar/a6.jpg" class="img-circle" width="80px" height="80px" alt="">
                        <div style="height: 8px"></div>
                        <div style="text-align: center;color: #555">小丸子君</div>
                    </div>
                    <div class="col-md-4 col-xs-4 col-sm-4" style="text-align: center;margin-bottom: 15px">
                        <img src="img/avatar/a2.jpg" class="img-circle" width="80px" height="80px" alt="">
                        <div style="height: 8px"></div>
                        <div style="text-align: center;color: #555">粉尘污染</div>
                    </div>
                    <div class="col-md-4 col-xs-4 col-sm-4" style="text-align: center;margin-bottom: 15px">
                        <img src="img/avatar/a3.jpg" class="img-circle" width="80px" height="80px" alt="">
                        <div style="height: 8px"></div>
                        <div style="text-align: center;color: #555">SuperMan</div>
                    </div>
                    <div class="col-md-4 col-xs-4 col-sm-4" style="text-align: center;margin-bottom: 15px">
                        <img src="img/avatar/a4.png" class="img-circle" width="80px" height="80px" alt="">
                        <div style="height: 8px"></div>
                        <div style="text-align: center;color: #555">从入门到放弃</div>
                    </div>
                    <div class="col-md-4 col-xs-4 col-sm-4" style="text-align: center;margin-bottom: 15px">
                        <img src="img/avatar/a5.jpg" class="img-circle" width="80px" height="80px" alt="">
                        <div style="height: 8px"></div>
                        <div style="text-align: center;color: #555">空。</div>
                    </div>
                </div>
            </div>

            <div style="height: 20px"></div>
            <div style="background-color: white;padding: 10px">
                <h3 style="margin: 0;color:#4d6071;font-weight: 700"><i class="fa fa-suitcase"></i>关注该课程的人还关注了 +</h3>
                <hr />
                <div class="row">
                    <div class="col-md-4  col-xs-4 col-sm-4 evenflow_scale" style="text-align: center;margin-bottom: 15px">
                        <img src="img/Clanguage.jpg" class="img-circle" width="80px" height="80px" alt="">
                        <div style="height: 8px"></div>
                        <div style="text-align: center;color: #555">C语言</div>
                    </div>
                    <div class="col-md-4  col-xs-4 col-sm-4 evenflow_scale" style="text-align: center;margin-bottom: 15px">
                        <img src="img/C++.jpg" class="img-circle" width="80px" height="80px" alt="">
                        <div style="height: 8px"></div>
                        <div style="text-align: center;color: #555">C++</div>
                    </div>
                    <div class="col-md-4  col-xs-4 col-sm-4 evenflow_scale" style="text-align: center;margin-bottom: 15px">
                        <img src="img/H5.jpg" class="img-circle" width="80px" height="80px" alt="">
                        <div style="height: 8px"></div>
                        <div style="text-align: center;color: #555">HTML</div>
                    </div>

                </div>
            </div>
        </div>
    </div>

</div>




<!--footer-->
<footer>
    <div style="height: 100px;width: 100%;background-color: #4d6071;text-align: center;padding: 15px">
        <p style="color: white">联系我们&nbsp;|&nbsp;网站首页&nbsp;|&nbsp;免责声明&nbsp;|&nbsp;关于我们</p>
        <p style="color: white">Copyright © 2016 &nbsp; <a style="color: white" href="">极客联盟</a> / 程序设计大赛创新实验室.</p>
    </div>


</footer>


<script>
    function changeNum(){
        document.getElementById("add").innerHTML="已关注√";
        document.getElementById("add").style.backgroundColor="#e35b5a";
        document.getElementById("number").innerHTML="13";

    }


</script>
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="js/jquery.min.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="js/bootstrap.min.js"></script>
</body>
</html>
