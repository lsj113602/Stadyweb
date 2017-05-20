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
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="myModalLabel">用户登录|BEGEEK</h4>
            </div>
            <div class="modal-body">
                <form>
                    <div class="form-group">
                        <label>账号</label>
                        <input id="userid" type="email" class="form-control"  placeholder="Email">
                    </div>
                    <div class="form-group">
                        <label>密码</label>
                        <input  id="userPassword" type="password" class="form-control" placeholder="Password">
                    </div>


                </form>
            </div>
            <div class="modal-footer">
                <button id="no" type="button" class="btn btn-default" data-dismiss="modal">取消</button>
                <button onclick="login();" type="button" class="btn btn-primary">登录</button>
            </div>
        </div>
    </div>
</div>


<div class="modal fade" id="myModal1" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="myModalLabel">用户注册|BEGEEK</h4>
            </div>
            <div class="modal-body">
                <form>
                    <div class="form-group">
                        <label>账号</label>
                        <input id="useridregsit" type="email" class="form-control"  placeholder="帐号">
                    </div>
                    <div class="form-group">
                        <label>密码</label>
                        <input  id="userPasswordregsit" type="password" class="form-control" placeholder="Password">
                    </div>
                    <div class="form-group">
                        <label>确认密码</label>
                        <input  id="userPassword1" type="password" class="form-control" placeholder="Password1">
                    </div>
                    <div class="form-group">
                        <label>联系电话</label>
                        <input  id="table" type="table" class="form-control" placeholder="table">
                    </div>
                    <div class="form-group">
                        <label>邮箱</label>
                        <input  id="email" type="email" class="form-control" placeholder="email">
                    </div>


                </form>
            </div>
            <div class="modal-footer">
                <button id="no" type="button" class="btn btn-default" data-dismiss="modal">取消</button>
                <button onclick="regist();" type="button" class="btn btn-primary">注册</button>
            </div>
        </div>
    </div>
</div>
<script>
	 
	 
	 function login(){
	 var userid = document.getElementById("userid");
	 	 var userpasswd =document.getElementById("userPassword");
	  var idtex = userid.value;
	  var passtex = userpasswd.value;
	 $.ajax({
	
    		async:false,
    		cache:false,
    		url:"/Stadyweb/UserServlet",
    		data:{
    		method:"LoginServlet",
    		idtex:idtex,
    		passtex:passtex
    		},
    		type:"POST",
    		dataType:"json",
    		success:function(result) {
    		  if(result=="0"){
                    alert("帐号密码错误！");
            }else{
            window.location.reload();
            }
    		 	
    		
    	     ///////////////////////
    		}
	 });
	 }
	 //注册异步请求
	 function regist(){
	  var userid = document.getElementById("useridregsit");
	  var userpasswd =document.getElementById("userPasswordregsit");
	  var userpasswd1 =document.getElementById("userPassword1");
	  var usertable =document.getElementById("table");
	  var useremail =document.getElementById("email");
	  
	  var idtex = userid.value;
	  var passtex = userpasswd.value;
	  var pass1tex = userpasswd1.value;
	  var tabtex = usertable.value;
	  var ematex = useremail.value;
	 $.ajax({
	
    		async:false,
    		cache:false,
    		url:"/Stadyweb/UserServlet",
    		data:{
    		method:"RegistServlet",
    		idtex:idtex,
    		passtex:passtex,
    		pass1tex:pass1tex,
    		tabtex:tabtex,
    		ematex:ematex
    		},
    		type:"POST",
    		dataType:"json",
    		success:function(result) {
    		if(result=="0"){
    		alert("两次密码不一样！");
    		}else if(result=="1"){
	            alert("用户名已经存在！");
	            }else if (result=="2"){
	            alert("注册失败，邮箱存在，请重新检查登陆信息！");
	            }else if (result=="200"){
	            alert("注册成功，请登录！");
	            window.location.reload();
	            }
    		 	
    		
    	     ///////////////////////
    		}
	 });
	 }
	  
	  	
	  

</script>
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
                    <li ><a href="index.html"  style="color: #fff;font-size: 18px">&nbsp;首页&nbsp;</a></li>
                    <li ><a class="more" href="#" style="color: #fff;font-size: 18px">&nbsp;所有课程&nbsp;<span class="sr-only">(current)</span></a></li>
                    <li ><a href="newjsps/community/CommunityList.jsp"  style="color: #fff;font-size: 18px">&nbsp;GEEK社区&nbsp;</a></li>
                    <li ><a href="<c:url value='/ArticleServlet?method=FindAllArticle'/>"  style="color: #fff;font-size: 18px">&nbsp;资源共享&nbsp;</a></li>
                    <li ><a href="newjsps/SubTest/SubTestList.jsp"  style="color: #fff;font-size: 18px">&nbsp;书籍资源&nbsp;</a></li>
                </ul>
     <c:choose>
		<c:when test="${empty sessionScope.sessionUser }">
			  <ul class="nav navbar-nav navbar-right">                                 
                   <li id="login"><a href="" data-toggle="modal" data-target="#myModal">登录</a></li>
                    <li id="register"><a href="" data-toggle="modal" data-target="#myModal1">注册</a></li>                                                                                                        

                </ul>
		</c:when>
		<c:otherwise>
			  <ul class="nav navbar-nav navbar-right">
                    <li class="dropdown" >
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">${sessionScope.sessionUser.user_name } <span class="caret"></span></a>
                        <ul class="dropdown-menu" style="background-color: #4d6071">
                            <li><a href="center.html" >个人中心</a></li>

                            <li><a href="#">切换用户</a></li>
                        </ul>
                    </li>

                    <li><a href="<c:url value='/UserServlet?method=RetreatUser'/>" >注销</a></li>


                </ul>
		</c:otherwise>
    </c:choose>
                
                
                
                
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
<!--正文-->
<div class="container">
    <div style="height: 80px"></div>
    <div style="height: 25px" class="hidden-xs"></div>
    <div>

        <!-- Nav tabs -->
        <ul class="nav nav-tabs" role="tablist">
            <li role="presentation" class="active"><a href="#home" style="color: #555;outline:none;" aria-controls="home" role="tab" data-toggle="tab">全部课程</a></li>
            <li role="presentation"><a href="#profile" style="color: #555;outline:none;" aria-controls="profile" role="tab" data-toggle="tab">前端开发</a></li>
            <li role="presentation"><a href="#messages" style="color: #555;outline:none;" aria-controls="messages" role="tab" data-toggle="tab">后端开发</a></li>
            <li role="presentation"><a href="#settings" style="color: #555;outline:none;" aria-controls="settings" role="tab" data-toggle="tab">移动开发</a></li>
            <li role="presentation"><a href="#data" style="color: #555;outline:none;" aria-controls="data" role="tab" data-toggle="tab">数据处理</a></li>
            <li role="presentation"><a href="#pic" style="color: #555;outline:none;" aria-controls="pic" role="tab" data-toggle="tab">图像处理</a></li>
        </ul>

        <!-- Tab panes -->
        <div class="tab-content">
            <!--全部课程-->
            <div role="tabpanel" class="tab-pane fade in active" id="home">
                <div style="height: 45px"></div>
                <div class="row">

                    <div class="col-md-3 col-xs-6 evenflow_scale" style="margin-bottom: 30px">
                        <img width="100%" src="img/qianduan.jpg" alt="">
                        <div style="text-align: center;padding: 8px">
                            前端课程
                        </div>
                    </div>

                    <div class="col-md-3 col-xs-6 evenflow_scale" style="margin-bottom: 30px">
                        <a style="text-decoration: none" href="language.html?java">
                            <img width="100%" src="img/java.jpg" alt="">
                            <div style="text-align: center;padding: 8px">
                                java开发
                            </div>
                        </a>

                    </div>
                    <div class="col-md-3 col-xs-6 evenflow_scale" style="margin-bottom: 30px">
                        <img width="100%" src="img/php.jpg" alt="">
                        <div style="text-align: center;padding: 8px">
                            PHP
                        </div>
                    </div>
                    <div class="col-md-3 col-xs-6 evenflow_scale" style="margin-bottom: 30px">
                        <img width="100%" src="img/pyhton.jpg" alt="">
                        <div style="text-align: center;padding: 8px">
                            Python
                        </div>
                    </div>
                    <div class="col-md-3 col-xs-6 evenflow_scale" style="margin-bottom: 30px">
                        <img width="100%" src="img/c.jpg" alt="">
                        <div style="text-align: center;padding: 8px">
                            C语言
                        </div>
                    </div>
                    <div class="col-md-3 col-xs-6 evenflow_scale" style="margin-bottom: 30px">
                        <img width="100%" src="img/ccc.jpg" alt="">
                        <div style="text-align: center;padding: 8px">
                            C++
                        </div>
                    </div>
                    <div class="col-md-3 col-xs-6 evenflow_scale" style="margin-bottom: 30px">
                        <img width="100%" src="img/shuju.jpg" alt="">
                        <div style="text-align: center;padding: 8px">
                            数据处理
                        </div>
                    </div>
                </div>


            </div>
            <!--前端开发-->
            <div role="tabpanel" class="tab-pane " id="profile">


                <div style="height: 40px"></div>
                <div class="row">

                    <div class="col-md-3 col-xs-6 evenflow_scale" style="margin-bottom: 30px">
                        <img width="100%" src="img/qianduan.jpg" alt="">
                        <div style="text-align: center;padding: 8px">
                            前端课程
                        </div>
                    </div>

                </div>
            </div>
            <!--后端开发-->
            <div role="tabpanel" class="tab-pane" id="messages">


                <div style="height: 40px"></div>
                <div class="row">

                    <div class="col-md-3 col-xs-6 evenflow_scale" style="margin-bottom: 30px">
                        <img width="100%" src="img/java.jpg" alt="">
                        <div style="text-align: center;padding: 8px">
                            java开发
                        </div>
                    </div>
                    <div class="col-md-3 col-xs-6 evenflow_scale" style="margin-bottom: 30px">
                        <img width="100%" src="img/php.jpg" alt="">
                        <div style="text-align: center;padding: 8px">
                            PHP
                        </div>
                    </div>
                    <div class="col-md-3 col-xs-6 evenflow_scale" style="margin-bottom: 30px">
                        <img width="100%" src="img/pyhton.jpg" alt="">
                        <div style="text-align: center;padding: 8px">
                            Python
                        </div>
                    </div>
                    <div class="col-md-3 col-xs-6 evenflow_scale" style="margin-bottom: 30px">
                        <img width="100%" src="img/c.jpg" alt="">
                        <div style="text-align: center;padding: 8px">
                            C语言
                        </div>
                    </div>
                    <div class="col-md-3 col-xs-6 evenflow_scale" style="margin-bottom: 30px">
                        <img width="100%" src="img/ccc.jpg" alt="">
                        <div style="text-align: center;padding: 8px">
                            C++
                        </div>
                    </div>

                </div>
            </div>
            <!--移动开发-->
            <div role="tabpanel" class="tab-pane evenflow_scale" id="settings">

                <div style="height: 40px"></div>
                <div class="row">

                    <div class="col-md-3 col-xs-6 evenflow_scale" style="margin-bottom: 30px">
                        <img width="100%" src="img/pyhton.jpg" alt="">
                        <div style="text-align: center;padding: 8px">
                            Python
                        </div>
                    </div>

                </div>

            </div>

            <!--数据处理-->
            <div role="tabpanel" class="tab-pane" id="data">

                <div style="height: 40px"></div>
                <div class="row">

                    <div class="col-md-3 col-xs-6 evenflow_scale" style="margin-bottom: 30px">
                        <img width="100%" src="img/shuju.jpg" alt="">
                        <div style="text-align: center;padding: 8px">
                            数据处理
                        </div>
                    </div>

                </div>

            </div>

            <!--图像处理-->
            <div role="tabpanel" class="tab-pane" id="pic">

                <div style="height: 40px"></div>
                <div class="row">

                    <div class="col-md-3 col-xs-6 evenflow_scale" style="margin-bottom: 30px">
                        <img width="100%" src="img/shuju.jpg" alt="">
                        <div style="text-align: center;padding: 8px">
                            图像处理
                        </div>
                    </div>

                </div>

            </div>

            <div id="kachaid"></div>
        </div>

    </div>

</div>
    <!--热力图-->
<div class="container">
    <div style="height: 10px"></div>
    <div>

        <!-- Nav tabs -->
        <ul class="nav nav-tabs" role="tablist">
            <li role="presentation" class="active"><a href="#hot" style="color: #555;outline:none;" aria-controls="hot" role="tab" data-toggle="tab">热力分布</a></li>
            <li role="presentation"><a href="#picture" style="color: #555;outline:none;" aria-controls="picture" role="tab" data-toggle="tab">热度排名</a></li>
        </ul>

        <!-- Tab panes -->
        <div class="tab-content">
            <div role="tabpanel" class="tab-pane active" id="hot">
                <div style="height: 15px"></div>
                <div style="color:#555;text-align: left">
                    <button id="showThisfunc" onclick="showThisfunc();" href="javascript:void (0)" class="btn btn-default" style="border-radius: 0;display: none;border-color: #4d6071">&nbsp;← 返回&nbsp;</button>
                </div>
                <div style="height: 15px"></div>
                <!--pc端-->
                <div id="maindisplay">
                    <div class="visible-lg-block visible-md-block"   id="main" style="height: 640px;width: 85%;margin: 0 auto">

                    </div>
                    <div style="height: 5px"></div>
                    <div style="text-align: center;color: #555">点击相应课程进入学习路线推荐</div>

                </div>
                <!--ipad端-->
                <div>
                    <div class="visible-sm-block"   id="main1" style="height: 480px;width: 85%;margin: 0 auto">

                    </div>
                </div>
                <!--手机端-->
                <div>
                    <div class="visible-xs-block"   id="main2" style="height: 600px;width: 90%;margin: 0 auto">

                    </div>
                </div>


<!------------------------------------------------------------------进入课程推荐的详细图谱----------------------------------------------------------------------------------------->
                <div id="course1display" style="display: none">
                    <!--前端开发详细饼图-->
                    <div class="hidden-xs hidden-sm"   id="course1" style="height: 640px;width: 800px;margin: 0 auto;">

                    </div>
                    <div style="height: 5px"></div>

                </div>

                <div id="course2display" style="display: none">
                    <!--后端开发详细饼图-->
                    <div class="hidden-xs hidden-sm"   id="course2" style="height: 640px;width: 800px;margin: 0 auto;">

                    </div>
                    <div style="height: 5px"></div>

                </div>

                <div id="course3display" style="display: none">
                    <!--移动开发详细饼图-->
                    <div class="hidden-xs hidden-sm"   id="course3" style="height: 640px;width: 800px;margin: 0 auto;">

                    </div>
                    <div style="height: 5px"></div>

                </div>
                <div id="course4display" style="display: none">
                    <!--数据处理详细饼图-->
                    <div class="hidden-xs hidden-sm"   id="course4" style="height: 640px;width: 800px;margin: 0 auto;">

                    </div>
                    <div style="height: 5px"></div>

                </div>
                <div id="course5display" style="display: none">
                    <!--图像处理详细饼图-->
                    <div class="hidden-xs hidden-sm"   id="course5" style="height: 640px;width: 800px;margin: 0 auto;">

                    </div>
                    <div style="height: 5px"></div>

                </div>

                <div style="height: 40px"></div>


            </div>
            <div role="tabpanel" class="tab-pane" id="picture">


                <div id="rankingDisplay">
                    <div class="visible-lg-block visible-md-block"   id="ranking" style="height: 640px;width: 85%;margin: 0 auto">

                    </div>
                    <div style="height: 5px"></div>
                    <div style="text-align: center;color: #555">本站语言排行榜</div>

                </div>
                <div style="height: 40px"></div>
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
