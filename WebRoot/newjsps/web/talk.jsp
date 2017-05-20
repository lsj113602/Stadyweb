<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
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
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  

<body style="background-color: #f8f8f8">

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
    <div style="height: 20px"></div>
    <div>
        <!-- Nav tabs -->
        <div class="row">
            <div class="col-md-6">
                <ul class="nav nav-pills" role="tablist">
                    <li ><a href="<c:url value='/ArticleServlet?method=FindArticle&cname=${requestScope.c.coursename}'/>" class="btn btn-success"><<  社区 </a></li>
                </ul>
            </div>
            <div class="col-md-6" style="text-align: right">
                <div style="height: 20px"></div>

            </div>
        </div>

        <hr>

        <div class="row">
        
  <div class="modal fade" id="myanswer11" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">                
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
                        <input  id="quuid" type="hidden" value="${requestScope.qu.quid}">
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
            <div class="col-md-8">
                <!-- Tab panes -->
                <div class="tab-content">
                    <div role="tabpanel" class="tab-pane active" id="home">

                        <div class="article">
                            <h1 style="font-weight: 600">${requestScope.qu.qutitle}</h1>
                            <p style="color: #787d82">
                              ${requestScope.qu.content}
                            </p>

                            <div class="row">
                                <div class="col-md-3" style="color: #787d82">
                                    作者： ${requestScope.qu.quauthor.user_name}
                                </div>
                                <div class="col-md-4"></div>
                                <div class="col-md-5">
                                    <div class="row">
                                        <div class="col-md-2"></div>
                                        <div style="text-align: right" class="col-md-10">
                                            <a href="" class="btn btn-info" style="border-radius: 0" data-toggle="modal" data-target="#myanswer11">评论 </a>
                                        </div>
                                    </div>
                                </div>

                            </div>
						<c:forEach items="${requestScope.qu.answer}" var="answer" >
                            <div class="comments">
                                <div style="height: 20px;"></div>

                                <hr style="border:1px dashed #ccc">

                                <div style="width: 60px;height: 60px;background-image: url(${answer.qaauthor.user_imgsrc});background-position: center;background-size: cover">

                                </div>


                                <p style="color: #787d82">${answer.qatext}</p>

                                <div class="row" style="color: #787d82;text-align: right">
                                    <div class="col-md-8"></div>

                                    <div class="col-md-4"><a href="<c:url value='/QuesAnswerServlet?method=AddUserAns&qaid=${answer.qaid}&mark=1&tag=${requestScope.qu.qutag}'/>"  style="border-radius: 0;" class="btn btn-default">顶 ${answer.qasupport}</a>
                                    <a style="margin-left: 6px;border-radius: 0" href="<c:url value='/QuesAnswerServlet?method=AddUserAns&qaid=${answer.qaid}&mark=0&tag=${requestScope.qu.qutag}'/>" class="btn btn-default">踩 ${answer.qaopposition}</a></div>

                                </div>
                            </div>
                            
                            </c:forEach>

                        </div>







                        <div style="height: 80px"></div>
                    </div>
                    <div role="tabpanel" class="tab-pane" id="profile">
                        <h4>所有视频</h4>
                        <div class="row">
                            <div class="col-md-4 col-xs-6 evenflow_scale" style="margin-bottom: 30px">
                                <img width="100%" src="img/qianduan.jpg" alt="">
                                <div style="text-align: center;padding: 8px">
                                    前端课程
                                </div>
                            </div>
                            <div class="col-md-4 col-xs-6 evenflow_scale" style="margin-bottom: 30px">
                                <img width="100%" src="img/qianduan.jpg" alt="">
                                <div style="text-align: center;padding: 8px">
                                    前端课程
                                </div>
                            </div>
                            <div class="col-md-4 col-xs-6 evenflow_scale" style="margin-bottom: 30px">
                                <img width="100%" src="img/qianduan.jpg" alt="">
                                <div style="text-align: center;padding: 8px">
                                    前端课程
                                </div>
                            </div>
                            <div class="col-md-4 col-xs-6 evenflow_scale" style="margin-bottom: 30px">
                                <img width="100%" src="img/qianduan.jpg" alt="">
                                <div style="text-align: center;padding: 8px">
                                    前端课程
                                </div>
                            </div>
                            <div class="col-md-4 col-xs-6 evenflow_scale" style="margin-bottom: 30px">
                                <img width="100%" src="img/qianduan.jpg" alt="">
                                <div style="text-align: center;padding: 8px">
                                    前端课程
                                </div>
                            </div>
                            <div class="col-md-4 col-xs-6 evenflow_scale" style="margin-bottom: 30px">
                                <img width="100%" src="img/qianduan.jpg" alt="">
                                <div style="text-align: center;padding: 8px">
                                    前端课程
                                </div>
                            </div>







                        </div>
                        <div style="text-align: center">
                            <nav>
                                <ul class="pagination">
                                    <li>
                                        <a href="#" aria-label="Previous">
                                            <span aria-hidden="true">&laquo;</span>
                                        </a>
                                    </li>
                                    <li  class="active"><a href="#">1</a></li>
                                    <li><a href="#">2</a></li>
                                    <li><a href="#">3</a></li>
                                    <li><a href="#">4</a></li>
                                    <li><a href="#">5</a></li>
                                    <li>
                                        <a href="#" aria-label="Next">
                                            <span aria-hidden="true">&raquo;</span>
                                        </a>
                                    </li>
                                </ul>
                            </nav>

                        </div>


                    </div>

                </div>

            </div>
            <div class="col-md-4">
                <div class="row">
                    <div class="col-md-1"></div>
                    <div class="col-md-11">
                        <h4>热门作品</h4>
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
