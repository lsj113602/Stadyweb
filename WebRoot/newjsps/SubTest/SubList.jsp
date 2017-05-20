<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


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
    <title>题库|BEGEEK</title>

    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="css/font-awesome.min.css">
    <link rel="stylesheet" href="css/reset.css">
    <link rel="Shortcut Icon" href="img/favicon.ico" />
    <link rel="stylesheet" href="css/acss.css">
    <link rel="stylesheet" href="font/index/iconfont.css">
    <link rel="stylesheet" href="css/evenFlow.css">
    <script src="js/quest.js"></script>


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
	<%@include file="/newjsps/top/Top.jsp" %>
</div>
<div style="background-image: url(img/background/javabg.jpg);background-size: cover;background-position: center;height: 300px;width: 100%">
    <div style="height: 20px"></div>
    <div style="text-align: center">
        <img class="img-circle" width="120px" height="100px" src="img/avatar/javaAvatar.jpg"  alt="">
        <div style="height: 10px"></div>
        <div class="row">
            <div class="col-md-4"></div>
            <div class="col-md-4">
                <div style="color: white;font-size: 22px;font-weight: 700">${requestScope.c.coursename}语言</div>
                <div style="height: 10px"></div>
                <div >
                <from>
                <input id="couid" type="hidden" name="couid" value="${requestScope.c.courseid}"/>
                </from>
                <button style="margin: 5px" class="btn btn-info"><span style="color: #e35b5a"><span id="number">${requestScope.counum}</span> </span>关注量</button>
     <c:choose>
		<c:when test="${empty requestScope.mark }">
			  <button onclick="changeNum()" id="add" class="btn btn-success" style="margin: 5px">关注+</button>
		</c:when>
		<c:otherwise>
			  <button onclick="changeNum()" id="add" class="btn btn-success" style="margin: 5px">已关注√</button>
		</c:otherwise>
    </c:choose>
                
                
                </div>
				<%-- <div ><button style="margin: 5px" class="btn btn-info"><span style="color: #e35b5a"><span id="studynumber">${requestScope.c.number}</span> </span>人已学习</button><button onclick="changeNum()" id="add1" class="btn btn-success" style="margin: 5px">语言排行榜第 1 名</button> --%>
                </div>

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
            
            <li role="presentation"><a href="#prog" style="color: #555;outline:none;" aria-controls="picture" role="tab" data-toggle="tab">顺序练习</a></li>
            <li role="presentation"><a href="#picture" style="color: #555;outline:none;" aria-controls="picture" role="tab" data-toggle="tab">模拟考试</a></li>
           
        </ul>
    </div>


    <!-- Tab panes -->
    <div class="row">
        <div class="tab-content col-md-8" style="">
            <div style="height: 20px"></div>
            <div role="tabpanel" class="tab-pane" id="picture">
                <div style="background-color: white;padding: 10px">
                    <div class="row">
                        <h3 style="margin: 0;color:#4d6071;font-weight: 700"><i class="fa fa-book"></i>&nbsp;&nbsp;&nbsp;模拟考试</h3>
                        <hr />
                        <div class="col-md-4 col-xs-6 evenflow_scale" style="margin-bottom: 20px">
                           <div style="background-image: url(img/java/java1.jpg);background-size: cover;background-position: center">
                              <a href="<c:url value='/SubjectServlet?method=FindSubBycou&cname=java&num=1'/>"target="_blank">  <img width="100%" src="img/kaoshi/kaoshi2.jpg" alt=""></a>

                           </div>
                            <div style="text-align: center;padding: 8px">
                                模拟考试1
                            </div>
                        </div>
                        <div class="col-md-4 col-xs-6 evenflow_scale" style="margin-bottom: 20px">
                            <div style="background-image: url(img/java/java2.jpg);background-size: cover;background-position: center">
                                <img width="100%" src="img/kaoshi/kaoshi2.jpg" alt="">

                            </div>
                            <div style="text-align: center;padding: 8px">
                                模拟考试2
                            </div>
                        </div>
                        <div class="col-md-4 col-xs-6 evenflow_scale" style="margin-bottom: 20px">
                            <div style="background-image: url(img/java/java3.jpg);background-size: cover;background-position: center">
                                <img width="100%" src="img/kaoshi/kaoshi2.jpg" alt="">

                            </div>
                            <div style="text-align: center;padding: 8px">
                                模拟考试3
                            </div>
                        </div>
                        <div class="col-md-4 col-xs-6 evenflow_scale" style="margin-bottom: 20px">
                            <div style="background-image: url(img/java/java4.png);background-size: cover;background-position: center">
                                <img width="100%" src="img/kaoshi/kaoshi2.jpg" alt="">

                            </div>
                            <div style="text-align: center;padding: 8px">
                                                                               模拟考试4
                            </div>
                        </div>
                        <div class="col-md-4 col-xs-6 evenflow_scale" style="margin-bottom: 20px">
                            <div style="background-image: url(img/java/java5.jpg);background-size: cover;background-position: center">
                                <img width="100%" src="img/kaoshi/kaoshi2.jpg" alt="">

                            </div>
                            <div style="text-align: center;padding: 8px">
                                                                              模拟考试5
                            </div>
                        </div>
                    </div>

                </div>

            </div>

            <div role="tabpanel" class="tab-pane active" id="prog">
                    <div style="padding: 10px">
                        <h3 style="margin: 0;color:#4d6071;font-weight: 700"><i class="fa fa-book"></i>顺序练习</h3>
                        <div style="height: 20px"></div>
                        <div class="list-group">
                        
                         <div class="list-group-item">
                            <a href="#" type="button"  style="border-radius: 0">
                                <h2>第一章测试题</h2></a>		                   
                           </div>
                           <div class="list-group-item">
                            <a href="#" type="button"  style="border-radius: 0">
                                <h2>第二章测试题</h2></a>		                   
                           </div>
                           <div class="list-group-item">
                            <a href="#" type="button"  style="border-radius: 0">
                                <h2>第三章测试题</h2></a>		                   
                           </div>
                           <div class="list-group-item">
                            <a href="#" type="button"  style="border-radius: 0">
                                <h2>第四章测试题</h2></a>		                   
                           </div>
                           <div class="list-group-item">
                            <a href="#" type="button"  style="border-radius: 0">
                                <h2>第五章测试题</h2></a>		                   
                           </div>
                           <div class="list-group-item">
                            <a href="#" type="button"  style="border-radius: 0">
                                <h2>第六章测试题</h2></a>		                   
                           </div>

                           

                        </div>

                    </div>

            </div>
                     
            
            
            

        </div>

        <div class="col-md-4" >
            <div style="height: 20px"></div>
            <div style="background-color: white;padding: 10px">
                <h3 style="margin: 0;color:#4d6071;font-weight: 700"><i class="fa fa-suitcase"></i>考试达人 +</h3>
                <hr />
                <div class="row">
                    <div class="col-md-4 col-xs-4 col-sm-4" style="text-align: center;margin-bottom: 15px">
                        <img src="img/avatar/a18.jpg" class="img-circle" width="80px" height="80px" alt="">
                        <div style="height: 8px"></div>
                        <div style="text-align: center;color: #555">孙大王</div>
                    </div>
                    <div class="col-md-4 col-xs-4 col-sm-4" style="text-align: center;margin-bottom: 15px">
                        <img src="img/avatar/a19.jpg" class="img-circle" width="80px" height="80px" alt="">
                        <div style="height: 8px"></div>
                        <div style="text-align: center;color: #555">独孤毅</div>
                    </div>
                    <div class="col-md-4 col-xs-4 col-sm-4" style="text-align: center;margin-bottom: 15px">
                        <img src="img/avatar/a20.jpg" class="img-circle" width="80px" height="80px" alt="">
                        <div style="height: 8px"></div>
                        <div style="text-align: center;color: #555">坚持到底*</div>
                    </div>
                    <div class="col-md-4 col-xs-4 col-sm-4" style="text-align: center;margin-bottom: 15px">
                        <img src="img/avatar/a21.jpg" class="img-circle" width="80px" height="80px" alt="">
                        <div style="height: 8px"></div>
                        <div style="text-align: center;color: #555">筋斗云</div>
                    </div>
                    <div class="col-md-4 col-xs-4 col-sm-4" style="text-align: center;margin-bottom: 15px">
                        <img src="img/avatar/a22.jpg" class="img-circle" width="80px" height="80px" alt="">
                        <div style="height: 8px"></div>
                        <div style="text-align: center;color: #555">一直都在</div>
                    </div>
                    <div class="col-md-4 col-xs-4 col-sm-4" style="text-align: center;margin-bottom: 15px">
                        <img src="img/avatar/a23.jpg" class="img-circle" width="80px" height="80px" alt="">
                        <div style="height: 8px"></div>
                        <div style="text-align: center;color: #555">。惟爱你。</div>
                    </div>
                </div>
            </div>

            <div style="height: 20px"></div>
            <div style="background-color: white;padding: 10px">
                <h3 style="margin: 0;color:#4d6071;font-weight: 700"><i class="fa fa-suitcase"></i>参加这门课程测试的还有 +</h3>
                <hr />
                <div class="row">
                    <div class="col-md-4  col-xs-4 col-sm-4 evenflow_scale" style="text-align: center;margin-bottom: 15px">
                        <img src="img/Clanguage.jpg" class="img-circle" width="80px" height="80px" alt="">
                        <div style="height: 8px"></div>
                        <div style="text-align: center;color: #555">C#</div>
                    </div>
                    <div class="col-md-4  col-xs-4 col-sm-4 evenflow_scale" style="text-align: center;margin-bottom: 15px">
                        <img src="img/C++.jpg" class="img-circle" width="80px" height="80px" alt="">
                        <div style="height: 8px"></div>
                        <div style="text-align: center;color: #555">C++</div>
                    </div>
                    <div class="col-md-4  col-xs-4 col-sm-4 evenflow_scale" style="text-align: center;margin-bottom: 15px">
                        <img src="img/H5.jpg" class="img-circle" width="80px" height="80px" alt="">
                        <div style="height: 8px"></div>
                        <div style="text-align: center;color: #555">PHP</div>
                    </div>

                </div>
            </div>
        </div>
    </div>

</div>




<!--footer-->



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
<script src="js/main.js" type="text/javascript"></script>
</body>
</html>
