<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>日程表</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link href='<%=basePath%>newjsps/script/fullcalendar/fullcalendar/fullcalendar.css' rel='stylesheet' />
<link href='<%=basePath%>newjsps/script/fullcalendar/fullcalendar/fullcalendar.print.css' rel='stylesheet' media='print' />
<script src='<%=basePath%>newjsps/script/fullcalendar/lib/jquery.min.js'></script>
<script src='<%=basePath%>newjsps/script/fullcalendar/lib/jquery-ui.custom.min.js'></script>
<script src='<%=basePath%>newjsps/script/fullcalendar/fullcalendar/fullcalendar.min.js'></script>
<script>

	$(document).ready(function() {
	
		var date = new Date();
		var d = date.getDate();
		var m = date.getMonth();
		var y = date.getFullYear();
		
		$('#calendar').fullCalendar({
			header: {
				left: 'prev,next today',
				center: 'title',
				right: 'month,basicWeek,basicDay'
			},
			monthNames: ["一月", "二月", "三月", "四月", "五月", "六月", "七月", "八月", "九月", "十月", "十一月", "十二月"],    
            monthNamesShort: ["一月", "二月", "三月", "四月", "五月", "六月", "七月", "八月", "九月", "十月", "十一月", "十二月"],    
            dayNames: ["周日", "周一", "周二", "周三", "周四", "周五", "周六"],    
            dayNamesShort: ["周日", "周一", "周二", "周三", "周四", "周五", "周六"],    
            today: ["今天"],
            buttonText:{  
                prev:     '上一页',  
                next:     '下一页',  
                prevYear: '去年',  
                nextYear: '明年',  
                today:    '今天',  
                month:    '月',  
                week:     '周',  
               day:      '日'  
               },
                
            //firstDay: 1,
			
			editable: true,
			currentTimezone: 'Asia/Beijing',    
            loading: function(bool) {  
                        if (bool) $('#loading').show();  
                        else $('#loading').hide();  
                    },  
                    events: "",
         // events: "etMyTaskController.do?myEtTaskFullcalendar",  
          //events:[{"id":"2","title":"公司领导","start":"2016-08-9"},{"id":"5","title":"总经理工作部信息班","start":"2016-08-7"},{"id":"20","title":"总经理工作部信息班","start":"2016-08-11"},{"id":"15","title":"总经理工作部信息班","start":"2016-08-12"},{"id":"18","title":"总经理工作部信息班","start":"2016-08-12"},{"id":"3","title":"总经理工作部信息班","start":"2016-08-13"},{"id":"8","title":"总经理工作部信息班","start":"2016-08-14"},{"id":"11","title":"总经理工作部信息班","start":"2016-08-15"},{"id":"1","title":"总经理工作部信息班","start":"2016-08-16"},{"id":"4","title":"总经理工作部信息班","start":"2016-08-17"},{"id":"10","title":"总经理工作部信息班","start":"2016-08-20"},{"id":"7","title":"总经理工作部信息班","start":"2016-08-21"},{"id":"16","title":"综合班","start":"2016-08-22"},{"id":"9","title":"综合班","start":"2016-08-23"},{"id":"17","title":"综合班","start":"2016-08-24"},{"id":"13","title":"综合班","start":"2016-08-25"},{"id":"12","title":"综合班","start":"2016-08-26"},{"id":"6","title":"综合班","start":"2016-08-27"},{"id":"14","title":"综合班","start":"2016-08-28"},{"id":"19","title":"综合班","start":"2016-08-29"},{"id":"21","title":"综合班","start":"2016-08-30"}],
           eventClick: function(ev) {   
                        openUrl(ev.id);  
                        //alert(ev.id);  
                        },    
            eventMouseover:function(event, jsEvent, view ) {  
                             $(this).css('border-color', 'red');  
                               
                            },  
                              
            eventMouseout:function(event, jsEvent, view ) {  
                             $(this).css('border-color','blue');  
                                                       }
			
			 /* events: [
				{
					title: 'All Day Event',
					start: new Date(y, m, 1)
				},
				{
					title: 'Long Event',
					start: new Date(y, m, d-5),
					end: new Date(y, m, d-2)
				},
				{
					id: 999,
					title: 'Repeating Event',
					start: new Date(y, m, d-3, 16, 0),
					allDay: false
				},
				{
					id: 999,
					title: 'Repeating Event',
					start: new Date(y, m, d+4, 16, 0),
					allDay: false
				},
				{
					title: 'Meeting',
					start: new Date(y, m, d, 10, 30),
					allDay: false
				},
				{
					title: 'Lunch',
					start: new Date(y, m, d, 12, 0),
					end: new Date(y, m, d, 14, 0),
					allDay: false
				},
				{
					title: 'Birthday Party',
					start: new Date(y, m, d+1, 19, 0),
					end: new Date(y, m, d+1, 22, 30),
					allDay: false
				},
				{
					title: 'Click for Google',
					start: new Date(y, m, 28),
					end: new Date(y, m, 29),
					url: 'http://google.com/'
				}
			] */
		});
		
	});
	
	


</script>
<style>

	body {
		margin-top: 40px;
		text-align: center;
		font-size: 14px;
		font-family: "Lucida Grande",Helvetica,Arial,Verdana,sans-serif;
		}

	#calendar {
		width: 900px;
		margin: 0 auto;
		}

</style>

  </head>
  
  <body>
    <div id='calendar'></div>
  </body>
</html>
