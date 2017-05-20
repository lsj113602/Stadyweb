<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

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

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="//cdn.bootcss.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="//cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
    <meta http-equiv="Content-Type" content="text/html;charset=utf-8"/>
    <script type="text/javascript" charset="utf-8" src="ueditor.config.js"></script>
    <script type="text/javascript" charset="utf-8" src="ueditor.all.min.js"> </script>
    <!--建议手动加在语言，避免在ie下有时因为加载语言失败导致编辑器加载失败-->
    <!--这里加载的语言文件会覆盖你在配置项目里添加的语言类型，比如你在配置项目里配置的是英文，这里加载的中文，那最后就是中文-->
    <script type="text/javascript" charset="utf-8" src="lang/zh-cn/zh-cn.js"></script>
    <script src="js/baidu.js"></script>

    <style type="text/css">
        div{
            width:100%;
        }
    </style>

  </head>
  
  <body>
   
   <!--导航栏  -->
   
   
   <!--导航栏  -->
    
    
    
    
    <div class="container">
    <div style="height: 20px"></div>
    <div>
        <!-- Nav tabs -->
        <div class="row">
            <div class="col-md-6">
                <ul class="nav nav-pills" role="tablist">
                    <li role="presentation" ><a href="<c:url value='/ArticleServlet?method=FindArticleBycname&cname=${requestScope.cname}'/>" style="outline:none;" >文章</a></li>
                    <li role="presentation"><a href="<c:url value='/ArticleServlet?method=FindArticleBycname&cname=${requestScope.cname}'/>" style="outline:none;" >视频</a></li>
                </ul>
            </div>
            <div class="col-md-6" style="text-align: right">
                <div style="height: 20px"></div>
                <button class="btn btn-info">上传文章</button>
                <button class="btn btn-info">上传视频</button>
            </div>
        </div>

        <hr>
        <div class="row">
            <div class="col-md-2"></div>

            <div class="col-md-8">
                <div style="height: 15px"></div>
				 <div style="text-align:center">

    <script id="editor" type="text/plain" style="width:100%;height:500px;"></script>
    </div>
    <div id="btns">
    <div style="text-align:center">
    <!-- 
    
     <button class="btn btn-default" onclick="getAllHtml()">获得整个html的内容</button>
     <button onclick="getPlainTxt()">获得带格式的纯文本</button>
     -- -->
       <div style="height:60px"></div>
        <button  class="btn btn-default btn-lg" onclick="getContentTxt()">提交</button>
        <a href="<c:url value='/ArticleServlet?method=FindArticleBycname&cname=${requestScope.cname}'/>"><button  class="btn btn-default btn-lg">取消</button></a>
        
       
     </div>
   


    </div>


            </div>
            <div class="col-md-2"></div>
        </div>



    </div>

</div>
<script src="js/jquery.min.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="js/bootstrap.min.js"></script>
<!-- <script type="text/javascript">


    
</script> -->
  </body>
</html>
