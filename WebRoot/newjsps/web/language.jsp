

<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="zh-CN" style="height: 100%">
<head>

    
    <title>学科主页</title>
    
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
            <li role="presentation" class="active"><a href="#hot" style="color: #555;outline:none;" aria-controls="hot" role="tab" data-toggle="tab">知识地图</a></li>
            <li role="presentation"><a href="#picture" style="color: #555;outline:none;" aria-controls="picture" role="tab" data-toggle="tab">文档资源</a></li>
            <li role="presentation"><a href="#txt" style="color: #555;outline:none;" aria-controls="picture" role="tab" data-toggle="tab">项目实例</a></li>
            <!-- <li role="presentation"><a href="#prog" style="color: #555;outline:none;" aria-controls="picture" role="tab" data-toggle="tab">语言社区</a></li> -->
            <li role="presentation"><a href="<c:url value='/ArticleServlet?method=FindArticle&cname=${requestScope.c.coursename}'/>">语言社区</a></li>
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
                        <a href="newjsps/map/map.jsp">
                            <div class="col-md-4 col-xs-6 evenflow_scale" style="margin-bottom: 20px" >
                                <div style="background-image: url(img/road.jpg);background-size: cover;background-position: center">
                                    <img width="100%" src="img/tm.png" alt="">

                                </div>
                                <div style="text-align: center;padding: 8px">
                                    快速入门路线
                                </div>
                            </div>
                        </a>

                        <a href="./mapProject/javaMap.html" target="_blank">
                            <div class="col-md-4 col-xs-6 evenflow_scale" style="margin-bottom: 20px">
                                <div style="background-image: url(img/road.jpg);background-size: cover;background-position: center">
                                    <img width="100%" src="img/tm.png" alt="">

                                </div>
                                <div style="text-align: center;padding: 8px">
                                    深入浅出路线
                                </div>
                            </div>
                        </a>
                        <a href="newjsps/SubTest/SubList.jsp">
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
                        <h3 style="margin: 0;color:#4d6071;font-weight: 700"><i class="fa fa-book"></i>&nbsp;&nbsp;&nbsp;文档资源&nbsp;&nbsp;&nbsp;<!-- <a href="" target="_blank">资源中心</a></h3> -->

                        <hr />
                      <%--   <c:forEach items="${requestScope.listvid}" var="listvid" >
                        <div class="col-md-4 col-xs-6 evenflow_scale" style="margin-bottom: 20px">
                           <div style="background-image: url(img/java/java1.jpg);background-size: cover;background-position: center">
                                <a href="<c:url value='/Servlet?method=playvideo2&vidid=${listvid.videoID}'/>"><img width="100%" src="${listvid.videoImgsrc}" alt=""></a>

                           </div>
                            <div style="text-align: center;padding: 8px">
                                ${listvid.videoName}
                            </div>
                        </div>
                        </c:forEach> --%>
                        
                         <div class="col-md-4 col-xs-6 evenflow_scale" style="margin-bottom: 20px">
                            <div style="background-image: url(img/javaapi.jpg);background-size: cover;background-position: center">
                                <img width="100%" src="img/tm.png" alt="">

                            </div>
                            <div style="text-align: center;padding: 8px">
                                JavaWeb官方文档
                            </div>
                        </div>
                        <div class="col-md-4 col-xs-6 evenflow_scale" style="margin-bottom: 20px">
                            <div style="background-image: url(img/javawd.png);background-size: cover;background-position: center">
                                <img width="100%" src="img/tm.png" alt="">

                            </div>
                            <div style="text-align: center;padding: 8px">
                                JavaWeb官方API
                            </div>
                        </div>
                    </div>

                </div>

            </div>
            <div role="tabpanel" class="tab-pane" id="txt">

                <div style="background-color: white;padding: 10px">
                    <div class="row">
                        <h3 style="margin: 0;color:#4d6071;font-weight: 700"><i class="fa fa-book"></i>&nbsp;&nbsp;&nbsp;项目实例&nbsp;&nbsp;&nbsp;||&nbsp;&nbsp;&nbsp;<a href="<c:url value='/CourseServlet?method=FindCourseByAll2&cname=${requestScope.c.coursename}'/>" target="_blank">项目上传</a></h3>
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
                        <h3 style="margin: 0;color:#4d6071;font-weight: 700"><i class="fa fa-book"></i>${requestScope.c.coursename}社区&nbsp;&nbsp;&nbsp;||&nbsp;&nbsp;&nbsp;<a href="" data-toggle="modal" data-target="#myModaltie">我要发帖</a></h3>
                        <div style="height: 20px"></div>
                        <div class="list-group">
                            <c:forEach items="${requestScope.listqust}" var="qust" >
                         <div class="list-group-item">
                            <a href="#" type="button"  style="border-radius: 0">
                                <h2>${qust.qutitle}</h2></a>
                                <h4>作者：${qust.quauthor.user_name}</h4>
                                <p>&nbsp;&nbsp;${qust.content}</p>
                                <p class="text-right" style="margin-top: 10px;"><a href="" data-toggle="modal" data-target="#myanswer">回答</a></p> 
                                <hr style="height:1px;border:none;border-top:1px dashed #44B549;" />
                                
                                <c:forEach items="${qust.answer}" var="answer" >
                                <p><h4>${answer.qaauthor.user_name}&nbsp;回答:${answer.qatext}</h4>
		                        <a href="<c:url value='/QuesAnswerServlet?method=AddUserAns&qaid=${answer.qaid}&mark=1&tag=${qust.qutag}'/>">支持</a>:${answer.qasupport}&nbsp;人&nbsp;&nbsp;
								<a href="<c:url value='/QuesAnswerServlet?method=AddUserAns&qaid=${answer.qaid}&mark=0&tag=${qust.qutag}'/>">反对</a>:${answer.qaopposition}&nbsp;人
								</p>
								<hr style="height:1px;border:none;border-top:1px dashed #44B549;" />
								</c:forEach>
							
		                   
                           </div>
                      </c:forEach>

                        </div>

                    </div>

            </div>
 <div class="modal fade" id="myModaltie" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">                
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="myModalLabel">问题发布|BEGEEK</h4>
            </div>
            <div class="modal-body">
                <form>
                    <div class="form-group">
                        <label>标题</label>
                        <input id="quetitle" type="text" class="form-control"  placeholder="请输入你问题的标题">
                    </div>
                    <div class="form-group">
                        <label>正文</label>
                        <input  id="quetext" type="text" class="form-control" placeholder="请输入你详细的问题">
                    </div>
                    <input id="cname" type="hidden" name="cname" value="${requestScope.c.coursename}"/>
                </form>
            </div>
            <div class="modal-footer">
                <button id="no" type="button" class="btn btn-default" data-dismiss="modal">取消</button>
                <button onclick="addquest();" type="button" class="btn btn-primary">发布</button>
            </div>
    </div>
</div>
</div>

<div class="modal fade" id="myanswer" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">                
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="myModalLabel">回答|BEGEEK</h4>
            </div>
            <div class="modal-body">
                <form>
                    <div class="form-group">
                        <label>正文</label>
                        <input  id="answer" type="text" class="form-control" placeholder="请输入你的回答">
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button id="no" type="button" class="btn btn-default" data-dismiss="modal">取消</button>
                <button onclick="addanswer();" type="button" class="btn btn-primary">提交</button>
            </div>
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
                <c:forEach items="${requestScope.users}" var="userfri" >
                    <div class="col-md-4 col-xs-4 col-sm-4" style="text-align: center;margin-bottom: 15px">
                       <a href="<c:url value='/FriendsServlet?method=FindOtherUser&uid=${userfri.user_id}'/>"target="_blank"> <img src="${userfri.user_imgsrc}" class="img-circle" width="80px" height="80px" alt=""></a>
                        <div style="height: 8px"></div>
                        <div style="text-align: center;color: #555">${userfri.user_name}</div>
                    </div>
                    </c:forEach>

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



<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="js/jquery.min.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="js/bootstrap.min.js"></script>




<%-- <c:choose>
		<c:when test="${empty sessionScope.sessionUser }">
			  <script>
				
		
						alert("请先登录"); 
						$("#login").click();
					
				</script>
		</c:when>
		<c:otherwise>
			  
		</c:otherwise>
    </c:choose> --%>



</body>
</html>
