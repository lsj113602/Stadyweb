<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
   
 
    
    
	
	
	<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>个人中心|BEGEEK</title>
    <link href="../../css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="../../css/font-awesome.min.css">
    <link rel="stylesheet" href="../../css/reset.css">
    <link rel="Shortcut Icon" href="../../img/favicon.ico" />
    <link rel="stylesheet" href="../../css/acss.css">
    <link rel="stylesheet" href="../../font/index/iconfont.css">
    <link rel="stylesheet" href="../../css/evenFlow.css">
 

  </head>
  
 <body>
<!--导航条-->
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
                    <li ><a href="newjsps/web/index.jsp"  style="color: #fff;font-size: 18px">&nbsp;首页&nbsp;</a></li>
                    <li ><a class="more" href="newjsps/web/Route.jsp" style="color: #fff;font-size: 18px">&nbsp;学习导图&nbsp;<span class="sr-only">(current)</span></a></li>
                    <li ><a href="newjsps/community/CommunityList.jsp"  style="color: #fff;font-size: 18px">&nbsp;GEEK社区&nbsp;</a></li>
                    <%-- <li ><a href="<c:url value='/ArticleServlet?method=FindAllArticle'/>"  style="color: #fff;font-size: 18px">&nbsp;资源共享&nbsp;</a></li> --%>
                    <li ><a href="newjsps/resources/ResourcesList.jsp"  style="color: #fff;font-size: 18px">&nbsp;资源共享&nbsp;</a></li>
                    
                    <li ><a href="newjsps/SubTest/SubTestList.jsp"  style="color: #fff;font-size: 18px">&nbsp;资源测试&nbsp;</a></li>
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
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">${sessionScope.sessionUser.user_name } <span class="caret"></span></a>
                        <ul class="dropdown-menu" style="background-color: #4d6071">
                            <li><a href="newjsps/user/center.jsp" >个人中心</a></li>
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
                        <a href="#" class="btn btn-success" style="border-radius: 0">继续学习 ></a>

                    </div>
                </div>
            </div>

            <div style="height: 30px"></div>
        </div>

    </div>


</div>
<div class="container">


    <div style="height: 20px"></div>
    <div class="row">
        <div class="col-md-2" style="text-align: center">
            <ul class="nav nav-pills nav-stacked">
                <li style="height: 30px" role="presentation"><a href="#"><i class="glyphicon glyphicon-home"></i> 个人主页</a></li>
                <hr>
                <li style="height: 30px;" role="presentation"  class="active"><a href="#"><i class="glyphicon glyphicon-user"></i> 个人设置</a></li>
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

                <!-- Nav tabs -->
                <ul class="nav nav-tabs" role="tablist">
                    <li role="presentation" class="active"><a href="#home" aria-controls="home" role="tab" data-toggle="tab">所有计划</a></li>
                    <li role="presentation"><a href="#profile" aria-controls="profile" role="tab" data-toggle="tab">创建计划</a></li>
                </ul>

                <!-- Tab panes -->
                <div class="tab-content">
                    <div role="tabpanel" class="tab-pane active" id="home">
                        <div style="height:20px;"></div>
                        <!--所有计划-->

                    </div>
                    <div role="tabpanel" class="tab-pane" id="profile">
                        <!--创建计划-->
                        <div style="height: 20px"></div>
                        <div class="row">
                            <div class="col-md-2"></div>
                            <div class="col-md-8">
                                <form class="form-inline">

                                    <div style="height: 20px"></div>

                                    <label >计划内容*</label>
                                    <input style="width: 100%;border-radius: 0" type="text" class="form-control" id="name" value="" placeholder="请填写计划内容">

                                    <div style="height: 20px"></div>

                                    <label >所属计划*</label>

                                    <select name="" id="" style="width: 100%" class="form-control">

                                        <option>请选择计划</option>
                                        <option value="1">1</option>
                                        <option value="2">2</option>
                                        <option value="3">3</option>
                                    </select>
                                    <div style="height: 20px"></div>

                                    <label >开始时间*</label>
                                    <input style="width: 100%;border-radius: 0" type="text" class="form-control" id="email" value="" placeholder="例如:1999-09-09">
                                    <div style="height: 20px"></div>
                                    <label >结束时间*</label>
                                    <input style="width: 100%;border-radius: 0" type="text" class="form-control" id="phone" value=""  placeholder="例如:1999-09-09">
                                    <div style="height: 20px"></div>
                                    <div style="height: 40px"></div>
                                    <div style="text-align: center">
                                        <a href="#" style="border-radius: 0" class="btn btn-info">创建 <i class="glyphicon glyphicon-open"></i></a>
                                    </div>
                                </form>
                            </div>
                            <div class="col-md-2"></div>
                        </div>

                    </div>

                </div>

            </div>
            <div>

            </div>
        </div>
    </div>

</div>


<!--footer-->
<div style="height: 100px"></div>
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
