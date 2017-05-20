<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>

<base href="<%=basePath%>">
<title>任务甘特图视图</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
</head>

<body>
	<div id="view"></div>
	<!--edo css-->
	<link
		href="<%=basePath%>webpage/scripts/EdoGantt/scripts/edo/res/css/edo-all.css"
		rel="stylesheet" type="text/css" />
	<link
		href="<%=basePath%>webpage/scripts/EdoGantt/scripts/edo/res/product/project/css/project.css"
		rel="stylesheet" type="text/css" />
	<!--edo js-->
	<script src="<%=basePath%>webpage/scripts/EdoGantt/scripts/edo/edo.js"
		type="text/javascript"></script>

	<script
		src="<%=basePath%>webpage/scripts/EdoGantt/scripts/thirdlib/excanvas/excanvas.js"
		type="text/javascript"></script>

	<script
		src="<%=basePath%>webpage/scripts/EdoGantt/examples/js/EdoGantt.js"
		type="text/javascript"></script>
	<script
		src="<%=basePath%>webpage/scripts/EdoGantt/examples/js/GanttMenu.js"
		type="text/javascript"></script>
	<script
		src="<%=basePath%>webpage/scripts/EdoGantt/examples/js/GanttSchedule.js"
		type="text/javascript"></script>
	<script type="text/javascript">
	var width1 = document.body.scrollWidth;
		//var dataGantt = new Edo.data.DataGantt(ganttData);
		Edo.build({
			id : 'edogantt',
			type : 'edogantt',
			render : document.getElementById('view')
		});
		Edo.managers.ResizeManager.reg({
    target: edogantt
});

function loadGantt(){
	 alert("进来了");
    Edo.util.Ajax.request({//
        url: "/Stadyweb/PlanServlet",
        data:{
    		method:"AjaxFindplan"
    		},
        type: 'post',
        onSuccess: function(text){
            //var obj = eval("[" + text + "]");
            var ganttData = Edo.util.Json.decode(text);
            var dataGantt = new Edo.data.DataGantt(ganttData);
            
            edogantt.set('data', dataGantt);
            
        },
        onFail: function(code){
            alert("加载失:"+code);
            
        }
    });
}
loadGantt();
//将甘特图撑满页面
function onWindowResize(){    
    var size = Edo.util.Dom.getViewSize(document);
    
    edogantt.set({
        width: size.width,
        height: size.height
    });
    
}
Edo.util.Dom.on(window, 'resize', onWindowResize);

//onWindowResize();
	</script>
</body>
</html>

