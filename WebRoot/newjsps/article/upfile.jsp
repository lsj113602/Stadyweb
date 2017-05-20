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
    <title>资源共享|BEGEEK</title>

    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="css/font-awesome.min.css">
    <link rel="stylesheet" href="css/reset.css">
    <link rel="Shortcut Icon" href="img/favicon.ico" />
    <link rel="stylesheet" href="css/acss.css">
    <link rel="stylesheet" href="font/index/iconfont.css">
    <link rel="stylesheet" href="css/evenFlow.css">
    <link rel="stylesheet" href="css/videocss.css">
    <script src="js/quest.js"></script>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="//cdn.bootcss.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="//cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

  </head>
  
  <body style="background-color: #f8f8f8">
    <div style="float:left; width: 100%; text-align: left;">
	<hr/>
	<br/>
	<%@include file="/newjsps/top/Top.jsp" %>
	</div>
	<!-- 上面的图片 -->
	<div style="background-image: url(img/background/javabg.jpg);background-size: cover;background-position: center;height: 300px;width: 100%">
    <div style="height: 20px"></div>
    <div style="text-align: center">
        <img class="img-circle" width="120px" height="100px" src="img/avatar/javaAvatar.jpg"  alt="">
        <div style="height: 10px"></div>
        <div class="row">
            <div class="col-md-4"></div>
            <div class="col-md-4">
                <div style="color: white;font-size: 22px;font-weight: 700">${requestScope.c.coursename}互动中心</div>
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
				<%-- <div ><button style="margin: 5px" class="btn btn-info"><span style="color: #e35b5a"><span id="studynumber">${requestScope.c.number}</span> </span>人已学习</button><button onclick="changeNum()" id="add1" class="btn btn-success" style="margin: 5px">语言排行榜第 1 名</button>
                </div> --%>

            </div>
            <div class="col-md-4"></div>

        </div>
    </div>
</div>
<!-- 上面的图片 -->
	<div class="container">
    <div style="height: 20px"></div>
    <div>
        <!-- Nav tabs -->
        <div class="row">
            <div class="col-md-6">
                <ul class="nav nav-pills" role="tablist">
                    <li role="presentation" class="active"><a href="#home" style="outline:none;" aria-controls="home" role="tab" data-toggle="tab">文章</a></li>
                    <li role="presentation"><a href="#profile" style="outline:none;" aria-controls="profile" role="tab" data-toggle="tab">视频</a></li>
                </ul>
            </div>
            <div class="col-md-6" style="text-align: right">
                <div style="height: 20px"></div>
                <a class="btn btn-info"  href="<c:url value='/CourseServlet?method=FindCourseByAll1&cname=${requestScope.cname}'/>">上传文章</a>
                <a class="btn btn-info" href="<c:url value='/CourseServlet?method=FindCourseByAll&cname=${requestScope.cname}'/>">上传视频</a>
            </div>
        </div>

        <hr>

        <div class="row">
            <div class="col-md-8">
                              <!-- Tab panes -->
                <div class="tab-content">
                    <div role="tabpanel" class="tab-pane active" id="home">
                       <c:forEach items="${requestScope.listqust}" var="listqust" >
                       
                       <div class="article">
                           <a href="<c:url value='/ArticleServlet?method=FindArticleById&questid=${listqust.quid}&cname=${requestScope.cname}'/>"> <h3 style="font-weight: 600">${listqust.qutitle}</h3></a>
                            <p style="color: #787d82">
                            ${listqust.content}

                            </p>

                            <div class="row">
                                <div class="col-md-3" style="color: #787d82">
                                  	  作者：${listqust.quauthor.user_name}
                                </div>
                                <div class="col-md-4"></div>
                                <div class="col-md-5">
                                    <div class="row" style="color: #787d82">
                                        <div class="col-md-4">988浏览</div>
                                        <div class="col-md-4">100点赞</div>
                                        <div class="col-md-4">100喜欢</div>
                                    </div>
                                </div>
                            </div>
                            <div style="height: 20px"></div>
                        </div>
                       
                        <%-- <div class="article">
                            <h3 style="font-weight: 600"><a href="<c:url value='/ArticleServlet?method=FindArticleById&articleid=${listart.arid}'/>">${listart.artitle}</a></h3>
                            <p style="color: #787d82">
                            ${listart.artext}

                            </p>

                            <div class="row">
                                <div class="col-md-3" style="color: #787d82">
                                  	  作者：${listart.arauthor.user_name}
                                </div>
                                <div class="col-md-4"></div>
                                <div class="col-md-5">
                                    <div class="row" style="color: #787d82">
                                        <div class="col-md-4">988浏览</div>
                                        <div class="col-md-4">${listart.arqasupport}点赞</div>
                                        <div class="col-md-4">100喜欢</div>
                                    </div>
                                </div>
                            </div>
                            <div style="height: 20px"></div>
                        </div> --%>
					</c:forEach>
                        <div style="height: 80px"></div>
                    </div>
                    <div role="tabpanel" class="tab-pane" id="profile">
                        <h4>所有视频</h4>
                        <div class="row">
                        <c:forEach items="${requestScope.listvid}" var="listvid" >
                            <div class="col-md-4 col-xs-6 evenflow_scale" style="margin-bottom: 30px">
                                <a href="<c:url value='/Servlet?method=playvideo2&vidid=${listvid.videoID}'/>"><img width="100%" src="${listvid.videoImgsrc}" alt=""></a>
                                <div style="text-align: center;padding: 8px">
                                  ${listvid.videoName}
                                </div>
                            </div>
                            </c:forEach>                 
                            
                        </div>


                    </div>

                </div>

            </div>
            <div class="col-md-4">
                <div class="row">
                    <div class="col-md-1"></div>
                    <div class="col-md-11">
                        <h4>热门推荐</h4>
						<c:forEach items="${requestScope.vidhot}" var="vidhot" >
                        <div class="portfolio-item" style="margin-bottom: 20px;">
                            <div class="portfolio-item-image image-overlay"><a class="titan-lb" data-titan-group="gallery" href="#">
                            <a href="<c:url value='/Servlet?method=playvideo2&vidid=${vidhot.videoID}'/>"><img width="100%" src="${vidhot.videoImgsrc}" alt=""></a>
                            <span class="overlay-icon item-movie" style="opacity: 0;"></span> </a></div>
                            <div class="portfolio-item-content">
                                <a  href="javascript:void(0)" style="color: #000;text-decoration:none;">
                                    <h4 class="ptitle">${vidhot.videoName}（播放：${vidhot.stadynum}次）</h4>
                                    <p>作者：${vidhot.videoUpwriter}</p>
                                </a>

                            </div>

                        </div>
                        </c:forEach>

                    </div>
                </div>


            </div>

        </div>

    </div>

</div>






<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="js/jquery.min.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="js/bootstrap.min.js"></script>
  </body>
</html>
