<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
   <title>个人中心|BEGEEK</title>
    
	 <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="/css/font-awesome.min.css">
    <link rel="stylesheet" href="/css/reset.css">
    <link rel="Shortcut Icon" href="/img/favicon.ico" />
    <link rel="stylesheet" href="/css/acss.css">
    <link rel="stylesheet" href="/font/index/iconfont.css">
    <link rel="stylesheet" href="/css/evenFlow.css">


    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="//cdn.bootcss.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="//cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

  </head>
  
  <body>
   <!--导航条-->
    <nav class="navbar navbar-default navbar-inverse " style="background-color: rgba(77,96,113,1);border: 0;height: 60px;padding: 4px">
        <div class="container" style="min-height: 100%">
            <div class=""   style="background-color:  rgba(77,96,113,0);margin: 0;text-align: left">
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
                        <li ><a href="index.html"  style="color: #fff;font-size: 18px">&nbsp;首页&nbsp;</a></li>
                        <li ><a class="more" href="#" style="color: #fff;font-size: 18px">&nbsp;所有课程&nbsp;<span class="sr-only">(current)</span></a></li>
                        <li ><a href="forum.html"  style="color: #fff;font-size: 18px">&nbsp;GEEK社区&nbsp;</a></li>
                        <li ><a href="#"  style="color: #fff;font-size: 18px">&nbsp;资源共享&nbsp;</a></li>
                        <li ><a href="#"  style="color: #fff;font-size: 18px">&nbsp;书籍资源&nbsp;</a></li>
                    </ul>
                    <ul class="nav navbar-nav navbar-right">
                        <li class="dropdown" >
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">郑星煌 <span class="caret"></span></a>
                            <ul class="dropdown-menu" style="background-color: #4d6071">
                                <li><a href="center.html" >个人中心</a></li>

                                <li><a href="#">切换用户</a></li>
                            </ul>
                        </li>

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


    <div id="large-header" style="background-color: rgba(117,146,153,1); ">
        <canvas id="demo-canvas"></canvas>
        <div class="hidden-xs"  style="position: absolute;
                 padding: 0;
                 color: #FFFFFF;
                 text-align: left;
                 top: 30%;
                 left: 50%;
                 -webkit-transform: translate3d(-50%,-50%,0);
                 transform: translate3d(-50%,-50%,0);">
            <div  class="container">
                <div class="row">
                    <div class="col-md-2">
                        <div style="text-align: left">
                            <div style="background-image: url(img/avatar/yifan.JPG);background-position: center;background-size: cover;background-repeat: no-repeat;height: 120px;width: 120px"></div>
                        </div>
                    </div>
                    <div class="col-md-6" style="padding-left: 20px">
                        <h2 style="font-weight: 700;margin: 0;color: #fff">Yifan</h2>
                        <p style="color: #fff">级别：花瓣幼儿园</p>
                        <p style="color: #fff">学龄：19小时23分钟</p>
                    </div>
                    <div class="col-md-4" style="text-align: right;color: #fff">
                        <div class="row">
                            <div class="col-md-6"></div>
                            <div class="col-md-3">关注：2</div>
                            <div class="col-md-3">粉丝：2</div>
                        </div>
                        <div style="height: 60px"></div>
                        <div>
                            <a style="display: none" id="messageBox" href="" class="btn btn-info"><i class="glyphicon glyphicon-envelope"></i> <span id="num">2</span></a>
                            <a href="#" class="btn btn-success" style="border-radius: 0">继续学习 ></a>

                        </div>
                    </div>
                </div>

                <div style="height: 30px"></div>
            </div>

        </div>


        <script>
            function getMessage(){
                $.ajax( {
                    url:'#',// 跳转到 action
                    data:{
                        'key':"formYifanJs"
                    },
                    type:'post',
                    cache:false,
                    dataType:'json',
                    success:function(data) {//
                    	if(data.code==10000){
                    	document.getElementById("messageBox").style.display="";
                        //信息条数
                        document.getElementById("num").innerHTML=data.num;
                    	}else{}
                        
                    },
                    error : function() {

                        //alert("请求失败，测试用弹框，请删除");
                    }
                });

            }
            setInterval("getMessage()",3000);
        </script>

    </div>
    <div class="container">
        <div style="height: 20px"></div>
        <div class="row">
            <div class="col-md-2" style="text-align: center">
                <ul class="nav nav-pills nav-stacked">
                    <li style="height: 30px" role="presentation" class="active"><a href="#"><i class="glyphicon glyphicon-home"></i> 个人主页</a></li>
                    <hr>
                    <li style="height: 30px;" role="presentation"><a href="#"><i class="glyphicon glyphicon-user"></i> 个人设置</a></li>
                    <hr>
                    <li style="height: 30px" role="presentation"><a href="#"><i class="glyphicon glyphicon-star"></i> 我的课程</a></li>
                    <hr>
                    <li style="height: 30px" role="presentation"><a href="#"><i class="glyphicon glyphicon-book"></i> 我的文章</a></li>
                    <hr>
                    <li style="height: 30px" role="presentation"><a href="#"><i class="glyphicon glyphicon-flag"></i> 我的计划</a></li>
                    <hr>
                    <li style="height: 30px" role="presentation"><a href="#"><i class="glyphicon glyphicon-globe"></i> 个人问答</a></li>
                    <hr>
                    <li style="height: 30px" role="presentation"><a href="#"><i class="glyphicon glyphicon-pushpin"></i> 考试记录</a></li>
                </ul>
            </div>
            

            <div class="col-md-10">
                <div>
                    <!--主页空白区域！！！！！！！！！！！！！！！！！！！！！-->
					 <div style="float:left; width: 100%; text-align: left;">
						<hr/>
						<br/>
						<%@include file="/newjsps/user/gantt.jsp" %>
					</div>

                </div>
            </div>
        </div>

    </div>


    <!--footer-->
    <div style="height: 500px"></div>
    <footer>
        <div style="height: 100px;width: 100%;background-color:  rgba(77,96,113,1);text-align: center;padding: 15px">
            <p style="color: white">联系我们&nbsp;|&nbsp;网站首页&nbsp;|&nbsp;免责声明&nbsp;|&nbsp;关于我们</p>
            <p style="color: white">Copyright © 2016 &nbsp; <a style="color: white" href="">极客联盟</a> / 程序设计大赛创新实验室.</p>
        </div>


    </footer>




    <script>
        function changeNum(){
            document.getElementById("add").innerHTML="已关注";
            document.getElementById("add").style.backgroundColor="#e35b5a";
            document.getElementById("number").innerHTML="13";

        }


    </script>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="js/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
    </body>
    <script src="js/TweenLite.min.js"></script>
    <script src="js/EasePack.min.js"></script>
    <script src="js/demo-1.js"></script>
</html>
