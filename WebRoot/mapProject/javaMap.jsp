<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="en" style="height: 100%;">
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
	<meta http-equiv="Content-Type" content="text/html;charset=utf-8" />

		<title>知识图谱</title>

		<link href="favicon.ico" type="image/x-icon" rel="shortcut icon" />

		<!-- style sheets -->

		<link rel="stylesheet" type="text/css" href="css/reset.css" />

		<link rel="stylesheet" type="text/css" href="css/main.css" />

		<!-- ColorBox css -->

		<link rel="stylesheet" type="text/css" href="css/colorbox.css" />

		<!-- jQuery ThemeRoller -->

		<link rel="stylesheet" type="text/css" href="css/custom-theme/jquery-ui-1.8.21.custom.css" />

		<!-- lhpGigaImgViewer plugin css -->

		<link rel="stylesheet" type="text/css" href="css/lhp_giv.css" />
		<link rel="stylesheet" href="css/bootstrap.min.css">
		<link rel="stylesheet" href="../css/evenFlow.css">
	

		<!-- js files -->

		<!-- jQuery framework -->

		<script type="text/javascript" src="js/jquery-1.7.2.min.js"></script>

		<!-- jQuery ui -->

		<script type="text/javascript" src="js/jquery-ui-1.8.21.custom.min.js"></script>

		<!-- jQuery easing plugin-->

		<script type="text/javascript" src="js/jquery.easing.1.3.js"></script>

		<!-- jQuery mousewheel plugin-->

		<script type="text/javascript" src="js/jquery.mousewheel.min.js"></script>

		<!-- lhpGigaImgViewer plugin -->

		<script type="text/javascript" src="js/jquery.lhpGigaImgViewer.min.js"></script>

		<!-- swfobject -->

		<script type="text/javascript" src="js/swfobject.js"></script>

		<!-- preview js code -->

		<script type="text/javascript" src="js/preview1.js"></script>

  </head>
  
 <body style="background-color:#fff;height: 100%;overflow-y:visible ">
	<script type="text/javascript">


		function opennav(){

				$("#showtab").hide();


				$("#tab").show(1000);

		}
		$(document).ready(function(){
			$("#tab").hide();
			var h =window.screen.height/2-50;
			var s = h.toString();
			document.getElementById("autoHeight").style.height = s+"px";

			setTimeout("opennav()",2000);


			$("#firstpane .menu_body:eq(0)").show();
			$("#firstpane h3.menu_head").click(function(){
				$(this).addClass("current").next("div.menu_body").slideToggle(300).siblings("div.menu_body").slideUp("slow");
				$(this).siblings().removeClass("current");
			});

			$("#secondpane .menu_body:eq(0)").show();
			$("#secondpane h3.menu_head").mouseover(function(){
				$(this).addClass("current").next("div.menu_body").slideDown(500).siblings("div.menu_body").slideUp("slow");
				$(this).siblings().removeClass("current");
			});

		});
	</script>

	<style type="text/css">
		.menu_list{width:268px;margin:0 auto;}
		.menu_head{
			height: 47px;
			line-height: 47px;
			padding-left: 38px;
			font-size: 14px;
			color: #fff;
			cursor: pointer;
			border-left: 1px solid rgba(20,20,20,0.8);
			border-right: 1px solid rgba(20,20,20,0.8);
			border-bottom: 1px solid rgba(20,20,20,0.8);
			border-top: 1px solid rgba(20,20,20,0.8);
			position: relative;
			margin: 0px;
			font-weight: bold;
			background-color: rgba(20,20,20,0.8);
		}
		.menu_list .current{background:rgba(1,1,1,0.8); }
		.menu_body{
			line-height: 38px;
			border-left: 1px solid rgba(20,20,20,0.8);
			backguound: #fff;
			border-right: 1px solid rgba(20,20,20,0.8);

		}
		.menu_body a{display:block;height:38px;line-height:38px;padding-left:38px;color:#fff;rgba(20,20,20,0.8);;;text-decoration:none;border-bottom:1px solid rgba(20,20,20,0.8);}
		.menu_body a:hover{text-decoration:none;}
	</style>









	<a id="showtab" href="#"  style="color: white;text-decoration: none" >
		<div class="evenflow_scale" style="display: ;position: fixed;height: 50px;width: 50px;background-color: rgba(1,1,1,0.8);z-index: 100;padding: 13px;text-align: center">
		>>

	</div>
	</a>
	<div id="tab" style="display: ;position: fixed;height: 100%;width: 345px;background-color: rgba(1,1,1,0.8);z-index: 100;padding: 6px;">
					<div style="color: #fff;float: left;width: 300px;">

						<a id="closetab"  style="color: white;text-decoration: none" href="javascript:void (0)">

								<div style="height: 50px;width: 50px;color: white;font-size: 30px;text-align: right;float: right;">
								<div id="autoHeight" style="height: px"></div>
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<<
								</div>

						</a>
						<h3>知识脉络</h3>
						<hr />
						<div id="firstpane" class="menu_list">

							<h3 class="menu_head current">1. 开发环境搭建</h3>
							<div style="display:block" class="menu_body">
								<a href="#">Java语言简介</a>
								<a href="#">Java开发环境搭建</a>
								<a href="#">Java开发调试技巧</a>
								<a href="#">JavaEclipse集成开发环境搭建详解</a>
							</div>

							<h3 class="menu_head">2. Java语言基础</h3>
							<div style="display:none" class="menu_body">
								<a href="/Stadyweb/newjsps/web/videolist.jsp">Java语言基础-计算机进制转换</a>
								<a href="/Stadyweb/Servlet?method=playvideo&knowid=1&name=Java编程基础知识入门">Java编程基础知识入门</a>
								<a href="#">Java判断与关系运算</a>
								<a href="#">Java语言逻辑运算</a>
								<a href="#">Java if判断语句的用法</a>
								<a href="#">Java语言Switch语句详解</a>
								<a href="#">Java循环结构语句的特点和使用方法</a>
								<a href="#">Java数组</a>
								<a href="#">Java String字符串详解</a>
								<a href="#">Java异常处理</a>
							</div>

							<h3 class="menu_head">3. Java面向对象</h3>
							<div style="display:none" class="menu_body">
								<a href="#">Java面向对象中类与对象的概念和使用</a>
								<a href="#">Java面向对象的基本特征之一:封装性</a>
								<a href="#">Java面向对象中引用的传递</a>
								<a href="#">Java面向对象基本特征:继承</a>
								<a href="#">Java面向对象-抽象类与接口</a>
								<a href="#">Java面向对象之泛型</a>

							</div>

							<h3 class="menu_head">4. Java语言进阶</h3>
							<div style="display:none" class="menu_body">
								<a href="#">Java集合类详解</a>
								<a href="#">Java本地文件操作</a>
								<a href="#">Java中的IO操作</a>
								<a href="#">Java多线程编程</a>

							</div>

							<h3 class="menu_head">5. Java 中加密算法的编程使用</h3>
							<div style="display:none" class="menu_body">
								<a href="#">Base64 编码的编程使用</a>
								<a href="#">消息摘要的编程使用</a>
								<a href="#">对称密码的编程使用</a>
								<a href="#">非对称密码的编程使用</a>
								<a href="#">数字签名的编程使用</a>
							</div>





							<h3 class="menu_head">6. 工程结构管理</h3>
							<div style="display:none" class="menu_body">
								<a href="#">Java工程结构管理 </a>

							</div>

							<h3 class="menu_head">7. 网络通信</h3>
							<div style="display:none" class="menu_body">
								<a href="#">Java中的XML操作</a>
								<a href="#">Java中的JSON操作</a>
								<a href="#">Java中的HTTP通信</a>
								<a href="#">Java中的Socket通信</a>

							</div>
							<h3 class="menu_head">8. 界面设计</h3>
							<div style="display:none" class="menu_body">
								<a href="#">Java界面设计概述</a>
								<a href="#">Swing 框架的基本结构</a>
								<a href="#">Swing基本组件</a>
								<a href="#">Swing 布局管理器</a>
								<a href="#">自定义Swing组件</a>
								<a href="#">Swing菜单的使用</a>
								<a href="#">Swing界面响应与线程安全</a>
								<a href="#">界面消息提示</a>
								<a href="#">Java文件选择器</a>
								<a href="#">Java视频播放器的制作</a>
							</div>

						</div>

					</div>

		       <div style="width: 50px;height: 50px;float: left;z-index: 100;"></div>
				</div>

				<div style="margin: 0 auto;width: 100%;min-height: 100%" id="myDiv"></div>


		<!-- hotspots -->

		<div id="MyHotspots" style="display:none;">



			<div  class="lhp_giv_hotspot" data-x="925" data-y="2300" data-visible-scale="0"><!--1-2-->

				<div style="display: none" class="lhp_giv_marker pos-B"><!--should display-->

					<div class="label"  style=" filter:alpha(opacity:0);"><span >当前位置</span><br/></div>

					<img src="gfx/face.png" />

				</div>

			
<!--第二章-->

			<div  class="lhp_giv_hotspot" data-x="2100" data-y="3490" data-visible-scale="0"><!--2-1-->

			<div class="lhp_giv_marker pos-B"><!--should display-->

				<div class="label"  style=" filter:alpha(opacity:0);"><span >当前位置</span><br/></div>

				<a href="../videolist.html"><img src="gfx/face.png" /></a>

			</div>

			<div class="lhp_giv_popup pos-B"><!--should display-->

				<div class="content" style="width:300px;">

					<span>学习进度</span><br/>
					当前学习到2-1，点击开启学霸模式。


					<div style="margin-top:5px; width:300px; height:100px;">

						<div id="animImg1"></div>

					</div>


				</div>
			</div>

		</div>






			<!--好友位置-->
			<div  class="lhp_giv_hotspot" data-x="6785" data-y="2600" data-visible-scale="0">

				<div class="lhp_giv_marker pos-B"><!--should display-->

					<div class="label"  style=" filter:alpha(opacity:0);"><span >好友位置</span><br/></div>

					<img src="gfx/face.png" />
				</div>


			</div>

			





			



			


			



			


			

		</div>

		<!-- hotspots end -->




	
	</body>
<script type="text/javascript" src="js/yifanjs.js"></script>

	<script>

			$("#closetab").click(function(){
				$("#tab").hide(1000);
				$("#showtab").show();


			});

			$("#showtab").click(function(){
				$("#showtab").hide();
				$("#tab").show(1000);
			});




	</script>



</html>