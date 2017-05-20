<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'Test2.jsp' starting page</title>
    
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
    <script type="text/javascript">  
   
  var ss= [{"text" : "王家湾","value" : "9"},{"text" : "李家湾","value" : "10"},{"text" : "邵家湾","value" : "13"}]
   // var json = {"options":"[{/"text/":/"王家湾/",/"value/":/"9/"},{/"text/":/"李家湾/",/"value/":/"10/"},{/"text/":/"邵家湾/",/"value/":/"13/"}]"}   
      //json = eval(json.options)  
      for(var i=0; i<ss.length; i++)  
      {  
         alert(ss[i].text+" " + ss[i].value)  
    }  
    </script> 
    
<!--     <script type="text/javascript">
alert(1);
</script> -->
  </body>
</html>
