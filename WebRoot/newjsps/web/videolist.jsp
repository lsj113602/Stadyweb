<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
 <!--  <script type="text/javascript">
      function endvideo(){
      var uu=${fcd.user_id};

         $.ajax({
         
		 
    		async:false,
    		cache:false,
    		url:"/Stadyweb/Servlet",
    		data:{
    		method:"endtimeAjax",
    	    uu:uu
    		},
    		type:"POST",
    		dataType:"json",
    		success:function(result) {
    		  if(result=="0"){
                    alert("标题不能为空！");
            }else if(result=="1"){
            		alert("你没有登陆，请先登录！");
            		window.location.reload();
            }else{
            alert("发布成功");
            window.location.reload();
            }
    		 	
    		
    	     ///////////////////////
    		}
	 });
      }
  </script> -->

    
    <title>视频主页</title>
    
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
    <title>走进JavaWeb的世界|BEGEEK</title>

    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="css/font-awesome.min.css">
    <link rel="stylesheet" href="css/reset.css">
    <link rel="Shortcut Icon" href="img/favicon.ico" />
    <link rel="stylesheet" href="css/acss.css">
    <link rel="stylesheet" href="font/index/iconfont.css">
    <link rel="stylesheet" href="css/evenFlow.css">
    <link href="css/video-js.css" rel="stylesheet">
    <link rel="stylesheet" href="css/videocss.css">
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="js/jquery.min.js"></script>
     <script src="js/quest.js"></script>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="//cdn.bootcss.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="//cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>


    <![endif]-->

  </head>
  
  <body ><!-- onunload="endvideo();" -->
   
 <div style="float:left; width: 100%; text-align: left;">
	<hr/>
	<br/>
	<%@include file="/newjsps/top/Top.jsp" %>
</div>

    <!-- Modal -->
   <!--  <div class="modal fade" id="myModalque" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title" id="myModalLabel">发表问题</h4>
                </div>
                <div class="modal-body">
                   问题内容

                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
                    <button type="button" class="btn btn-primary">提交</button>
                </div>
            </div>
        </div>
    </div>--> 

    <div style="position: fixed;right:0;top:40%;z-index: 100">

            <ul class="list-group">
               <%--  <a id="kachanav" href="<c:url value='/CourseServlet?method=FindCourseByname&cname=java'/>" onclick="clickfunc()"  style="outline:none;text-decoration: none" > --%>
				<a id="kachanav" href="newjsps/course/coursetree.jsp" onclick="clickfunc()"  style="outline:none;text-decoration: none" >
                    <li style=";border-radius: 0;border-left: 0;border-right: 0;border-top: 0;background-color: #444;color: #fff;border-color: #000;border-width: 2px;outline:none;" class="list-group-item">< 路线</li>

                </a>
                <a href="javascript:void (0)" onclick="alert('作者未提供文档！!');" style="outline:none;text-decoration: none">
                    <li  style="border-radius: 0;border-left: 0;border-right: 0;border-top: 0;;background-color: #444;color: #fff;border-color: #000;border-width: 2px;" class="list-group-item">< 文档</li>

                </a>
                <a href="" data-toggle="modal" data-target="#myModal" style="outline:none;text-decoration: none">
                    <li style="border-radius: 0;;border-left: 0;border-right: 0;border-top: 0;background-color: #444;color: #fff;border-color: #000;border-width: 2px;outline:none;" class="list-group-item">< 问答</li>

                </a>
                <a  href="<c:url value='/ExamServlet?method=GotoExam&cname=${vid.xueke }'/>" target="_blank" onclick=""  style="outline:none;text-decoration: none">
                    <li style="border-radius: 0;;border-left: 0;border-right: 0;border-top: 0;border-bottom: 0;background-color: #444;color: #fff;border-color: #000;outline:none;;border-width: 2px"  class="list-group-item">< 试题</li>

                </a>
            </ul>

    </div>
    <div   style="margin-top: -5px;background-image: url();background-position: center center;background-size:cover">

        <div style="background-color:#000 ;">
			<div style="height:15px"></div>
            <div class="container" style="color: #fff;margin-top: 5px;margin-bottom: 5px">
                <h4>${vid.videoName }</h4>
            </div>
            <div id="kachaid2"></div>
            <div class="container">


                        <video id="my-video" class="video-js vjs-default-skin" controls preload="none" width="100%" height="auto"
                               data-setup="{}" poster="">
                            <source src="${vid.videoSrc}" type='video/mp4'>

                            <!--<source src="http://7xru12.media1.z0.glb.clouddn.com/ad720p.mp4" type='video/mp4'>-->
                        </video>
                        <!--<video style="" id="adv_video" src="http://7xpxxt.com1.z0.glb.clouddn.com/e015162e0jt.p701.1.mp4" width="100%" preload="none" controls autoplay>
                            你的浏览器不支持该视频格式
                        </video>


                        <video style="display: " id="wyx_video" src="{{ video.url }}" width=100%
                               controls preload="none">
                            你的浏览器不支持该视频格式
                        </video> -->

                        <div style="background-color: #FFF;height: 40px;margin-bottom: 20px;padding: 8px">
                            <div style="position: relative;">
                                <!-- JiaThis Button BEGIN -->
                                <div class="jiathis_style" style="margin-top: 4px">
                                    <span class="jiathis_txt">分享到：</span>
                                    <a class="jiathis_button_icons_1"></a>
                                    <a class="jiathis_button_icons_2"></a>
                                    <a class="jiathis_button_icons_3"></a>
                                    <a class="jiathis_button_icons_4"></a>
                                    <a href="http://www.jiathis.com/share" class="jiathis jiathis_txt jtico jtico_jiathis" target="_blank"></a>
                                </div>
                                <script type="text/javascript" src="http://v3.jiathis.com/code/jia.js" charset="utf-8"></script>
                                <!-- JiaThis Button END -->
                                <div style="position: absolute; right: 0px; top: 0px;margin-top: -2px">播放次数:${vid.stadynum }
                                </div>
                            </div>
                        </div>




                <!-- <button class="btn btn-default" onclick="js();">跳过广告</button>-->


            </div>

        </div>

        <div class="container">
            <div style="margin-top: 30px">
                <div style="position: relative;">
                    <h3>${vid.videoName }
                        <small>${vid.zhishidianID }</small>
                    </h3>

                </div>

                <h5>作者:${vid.videoUpwriter }</h5>

                <p>简介:
                    ${vid.videoText }
                </p>
            </div>


            <div style="margin-top: 50px;">
                <h3>作者相关</h3>
            </div>

            <div class="row">
            <c:forEach items="${requestScope.vids}" var="vidlist" >
                <div class="col-md-3 col-xs-6">
                    <div style="background-image: url(img/javaproject/web1.png);background-size: cover;background-position: center">
                        <a href="<c:url value='/Servlet?method=playvideo2&vidid=${vidlist.videoID}'/>"><img width="100%" src="${vidlist.videoImgsrc}" alt=""></a>

                    </div>
                    <div style="text-align: center;padding: 8px">
                        ${vidlist.videoName}
                    </div>
                </div>
                </c:forEach>
             
            </div>



            <div style="margin-top: 50px;">
                <h3>学习该视频的用户还学习了</h3>
            </div>

            <div class="row">
            <c:forEach items="${requestScope.vidkname}" var="list" >
                <div class="col-md-3 col-xs-6">
                    <div style="background-image: url(img/javaproject/web1.png);background-size: cover;background-position: center">
                        <img width="100%" src="${list.videoImgsrc}" alt="">

                    </div>
                    <div style="text-align: center;padding: 8px">
                        ${list.videoName}
                    </div>
                </div>
                </c:forEach>
            </div>


            <div class="row" style="margin-top: 50px">

                <div class="col-md-9">
                    <h3>问答</h3>
                    <form>
                    <textarea id="comment" placeholder="请输入10个字以上的评论" class="form-control" rows="5" style="resize: none;" ></textarea>
                    <input id="vid" type="hidden" name="vid" value="${vid.videoID }"/>
                    </form>
                    <p class="text-right" style="margin-top: 10px;"><button class="btn btn-success" onclick="commentSubmit()"  type="button">提交评论</button></p>
                    <hr style="height:1px;border:none;border-top:1px dashed #44B549;" />
                    <!--评论-->
                  <!--   <c:forEach items="${requestScope.listqust}" var="qust" >
                         <div class="list-group-item">
                            <a href="#" type="button"  style="border-radius: 0">
                                <h2>${qust.qutitle}</h2></a>
                                <h4>作者：${qust.quauthor.user_name}</h4>
                                <p>&nbsp;&nbsp;${qust.content}
                                </p>
                                <c:forEach items="${qust.answer}" var="answer" >
                                <p><h4>${answer.qaauthor.user_name}&nbsp;回答:${answer.qatext}</h4>
		                        <a href="<c:url value='/QuesAnswerServlet?method=AddUserAns&qaid=${answer.qaid}&mark=1&tag=${qust.qutag}'/>">支持</a>:${answer.qasupport}&nbsp;人&nbsp;&nbsp;
								<a href="<c:url value='/QuesAnswerServlet?method=AddUserAns&qaid=${answer.qaid}&mark=0&tag=${qust.qutag}'/>">反对</a>:${answer.qaopposition}&nbsp;人
								</p>
								</c:forEach>
							
		                   
                           </div>
                      </c:forEach>-->
                      <c:set var="index" value="0" /> 
              <c:forEach items="${requestScope.vid.forum}" var="forum" >
              <div> <h4>作者：${forum.cf_user.user_name}</h4>
                          
                        <h2>${forum.cf_context}</h2>  
                        <table width="100%"><tr width="100%"><td align="left" width="50%"> 时间：${forum.cf_time}</td><td width="50%" align="right">支持数：<span id="number${index}">${forum.cf_count}</span>&nbsp;&nbsp;&nbsp;</td></tr></table>                                                           		                    							
		               <p class="text-right" style="margin-top: 10px;">  
					<c:choose>
						<c:when test="${forum.cf_stat==1 }">
							 <button class="btn btn-success" onclick="Addcount('${forum.cf_id}','${index}')"  type="button" id="count${index}">已赞√</button>
						</c:when>
						<c:otherwise>
							<button class="btn btn-success" onclick="Addcount('${forum.cf_id}','${index}')"  type="button" id="count${index}">赞一个</button>
						</c:otherwise>
					</c:choose>
					</p>

		                  
                      </div>
                       <hr style="height:1px;border:none;border-top:1px dashed #44B549;" />
                       <c:set var="index" value="${index+1}" />
                </c:forEach>
                      
                   <!--    <div >
                       
                      <h4>作者：李缮君</h4>
                          
                        <h2>12334</h2>  
                        <table width="100%"><tr width="100%"><td align="left" width="50%"> 时间：2016-8-9 </td><td width="50%" align="right"><a href="#">支持&nbsp;&nbsp;&nbsp;</a></td></tr></table>                                                           		                    							
		                   
                      </div>
                       <hr style="height:1px;border:none;border-top:1px dashed #44B549;" />
                       <div >
                       
                      <h4>作者：李缮君</h4>
                          
                        <h2>12334</h2>  
                        <table width="100%"><tr width="100%"><td align="left" width="50%"> 时间：2016-8-9 </td><td width="50%" align="right"><a href="#">支持&nbsp;&nbsp;&nbsp;</a></td></tr></table>                                                           		                    							
		                   
                      </div>--> 


                </div>

                <div class="col-md-3">


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





    <!--footer-->
    <div style="height: 100px"></div>
    <footer>
        <div style="height: 100px;width: 100%;background-color:  #4d6071;text-align: center;padding: 15px">
            <p style="color: white">联系我们&nbsp;|&nbsp;网站首页&nbsp;|&nbsp;免责声明&nbsp;|&nbsp;关于我们</p>
            <p style="color: white">Copyright © 2016 &nbsp; <a style="color: white" href="">极客联盟</a> / 程序设计大赛创新实验室.</p>
        </div>


    </footer>
    <script>
        function clickfunc(){
            $('html, body').animate({
                scrollTop: $("#kachaid2").offset().top
            }, 1500);
        }
        
        
    </script>

    <script>
        function changeNum(){
            document.getElementById("add").innerHTML="已关注";
            document.getElementById("add").style.backgroundColor="#e35b5a";
            document.getElementById("number").innerHTML="13";


        }


    </script>

    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
  </body>
</html>
