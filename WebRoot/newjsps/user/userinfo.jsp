<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>

    
    <title>个人中心|BEGEEK</title>
    <link href="../../css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="../../css/font-awesome.min.css">
    <link rel="stylesheet" href="../../css/reset.css">
    <link rel="Shortcut Icon" href="../../img/favicon.ico" />
    <link rel="stylesheet" href="../../css/acss.css">
    <link rel="stylesheet" href="../../font/index/iconfont.css">
    <link rel="stylesheet" href="../../css/evenFlow.css">
    
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
  
   <div style="float:left; width: 100%; text-align: left;">
	<hr/>
	<br/>
	<%@include file="/newjsps/top/Top.jsp" %>
</div>
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
                        <div style="background-image: url(${sessionScope.sessionUser.user_imgsrc});background-position: center;background-size: cover;background-repeat: no-repeat;height: 120px;width: 120px"></div>
                    </div>
                </div>
                <div class="col-md-6" style="padding-left: 20px">
                    <h2 style="font-weight: 700;margin: 0;color: #fff">${sessionScope.sessionUser.user_name }</h2>
                     <p style="color: #fff">当前积分：${sessionScope.sessionUser.user_points }</p>
                </div>
                <div class="col-md-4" style="text-align: right;color: #fff">
                    <div class="row">
                        <div class="col-md-6"></div>
                        <div class="col-md-3">关注：${sessionScope.unum }</div>
                            <div class="col-md-3">粉丝：${sessionScope.fnum }</div>
                    </div>
                    <div style="height: 60px"></div>
                    <div>
                        <a href="<c:url value='/CourseServlet?method=FindCourseByname&cname=java'/>" class="btn btn-success" style="border-radius: 0">继续学习 ></a>

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
                <li style="height: 30px" role="presentation"><a href="<c:url value='/UserServlet?method=GotoMycenter'/>"><i class="glyphicon glyphicon-home"></i> 个人主页</a></li>
                <hr>
                <li style="height: 30px;" role="presentation"  class="active"><a href="/Stadyweb/newjsps/user/userinfo.jsp"><i class="glyphicon glyphicon-user"></i> 个人设置</a></li>
                <hr>
                <li style="height: 30px" role="presentation"><a href="/Stadyweb/newjsps/user/userCourse.jsp"><i class="glyphicon glyphicon-star"></i> 我的课程</a></li>
                <hr>
                <!-- <li style="height: 30px" role="presentation"><a href="#"><i class="glyphicon glyphicon-book"></i> 我的文章</a></li>
                <hr> -->
                <li style="height: 30px" role="presentation"><a href="<c:url value='/PlanServlet?method=FindplanByall'/>"><i class="glyphicon glyphicon-flag"></i> 我的计划</a></li>
                <hr>
                <!-- <li style="height: 30px" role="presentation"><a href="#"><i class="glyphicon glyphicon-globe"></i> 个人问答</a></li>
                <hr> -->
                <li style="height: 30px" role="presentation"><a href="/Stadyweb/newjsps/user/myscores.jsp"><i class="glyphicon glyphicon-pushpin"></i> 考试记录</a></li>
            </ul>
        </div>
        <div class="col-md-10">
            <div>

                <!-- Nav tabs -->
                <ul class="nav nav-tabs" role="tablist">
                    <li role="presentation" class="active"><a href="#home" aria-controls="home" role="tab" data-toggle="tab">所有信息</a></li>
                </ul>

                <!-- Tab panes -->
                <div class="tab-content">
                    <div role="tabpanel" class="tab-pane active" id="home">
                        <div style="height:20px;"></div>
                        <div class="row">
                            <div class="col-md-2"></div>
                            <div class="col-md-8">
                                <form class="form-inline" action="<c:url value='/UserServlet?method=UploadUserImg'/>" method="POST" enctype="multipart/form-data">
                                    <h3 style="font-weight: 700">头像*</h3>
                                    <div class="row">
                                        <div class="col-md-3">
                                            <div id="image1" style="background-image: url(${sessionScope.sessionUser.user_imgsrc});background-position: center;background-size: cover;background-repeat: no-repeat;height: 120px;width: 120px"></div>
                                        </div>
                                        <div class="col-md-3" style="line-height: 120px"><button id="change" style="border-radius: 0" type="button" onclick="changeAvater();" class="btn btn-default ">换一换 <i class="glyphicon glyphicon-refresh"></i></button></div>
                                        <input class="hidden" type="file" id="realChangeButton" name="userImg">
                                    </div>
                                    <div style="height: 20px"></div>

                                    <label >昵称*</label>
                                    <input style="width: 100%;border-radius: 0" type="text" class="form-control" id="username" name="username" value="${sessionScope.sessionUser.user_truename }">

                                    <div style="height: 20px"></div>

                                    <label >联系方式*</label>
                                    <input style="width: 100%;border-radius: 0" type="text" class="form-control" id="userphone" name="userphone" value="${sessionScope.sessionUser.user_tel }">
                                    <div style="height: 20px"></div>

                                    <label >电子邮箱*</label>
                                    <input style="width: 100%;border-radius: 0" type="text" class="form-control" id="useremail" name="useremail" value="${sessionScope.sessionUser.user_email }">
                                    <div style="height: 40px"></div>
                                    <div style="text-align: center">
                                        <button type="submit" style="border-radius: 0" class="btn btn-info">提交 <i class="glyphicon glyphicon-open"></i></button>
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
    function changed(){
        var realChangeButton = document.getElementById("realChangeButton").value;
        if(realChangeButton!=""){
            $("#change").html("已选择 <i class='glyphicon glyphicon-ok'></i>");
            document.getElementById("image1").style.backgroundImage="url(img/timg.jpg)";
        }



    }
    function changeAvater(){

        $("#realChangeButton").click();


    }
    var t=setInterval("changed();",1000);
</script>


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