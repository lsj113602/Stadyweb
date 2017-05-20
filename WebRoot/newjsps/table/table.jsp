<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<meta content="" name="description" />
    <meta content="webthemez" name="author" />
    <title>table</title>
	<!-- Bootstrap Styles-->
    <link href="assets/css/bootstrap.css" rel="stylesheet" />
     <!-- FontAwesome Styles-->
    <link href="assets/css/font-awesome.css" rel="stylesheet" />
     <!-- Morris Chart Styles-->
   
        <!-- Custom Styles-->
    <link href="assets/css/custom-styles.css" rel="stylesheet" />
     <!-- Google Fonts-->
   <link href='http://fonts.useso.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
     <!-- TABLE STYLES-->
    <link href="assets/js/dataTables/dataTables.bootstrap.css" rel="stylesheet" />

  </head>
  
  <body>
     <div class="row">

                <div class="col-md-12">
                    <!-- Advanced Tables -->

                    <div class="panel panel-default">

                        <div class="panel-body">
                            <div class="table-responsive">
                                <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                                    <thead>
                                        <tr>

                                            <th>考试名称</th>
                                            <th>考试时间</th>

                                            <th>得分</th>
                                            <th>查看</th>
                                            <th>删除</th>

                                        </tr>
                                    </thead>
                                    <tbody>


                                        <tr>
                                            <td>java第五章模拟测试</td>
                                            <td>2016-06-21</td>
                                            <td>85</td>
                                            <td style="text-align: center"><a href="#" style="border-radius: 0" onclick="" class="btn btn-default">查看&nbsp;<i class="glyphicon glyphicon-pencil"></i ></a></td>
                                            <td style="text-align: center"><a href="#" style="border-radius: 0" onclick="" class="btn btn-default">删除&nbsp;<i class="glyphicon glyphicon-remove"></i ></a></td>
                                        </tr>
                                        <tr>
                                            <td>java第三章模拟测试</td>
                                            <td>2016-06-20</td>
                                            <td>95</td>
                                            <td style="text-align: center"><a href="#" style="border-radius: 0" onclick="" class="btn btn-default">查看&nbsp;<i class="glyphicon glyphicon-pencil"></i ></a></td>
                                            <td style="text-align: center"><a href="#" style="border-radius: 0" onclick="" class="btn btn-default">删除&nbsp;<i class="glyphicon glyphicon-remove"></i ></a></td>
                                        </tr>
                                        <tr>
                                       <tr>
                                            <td>java第二章模拟测试</td>
                                            <td>2016-06-20</td>
                                            <td>100</td>
                                            <td style="text-align: center"><a href="#" style="border-radius: 0" onclick="" class="btn btn-default">查看&nbsp;<i class="glyphicon glyphicon-pencil"></i ></a></td>
                                            <td style="text-align: center"><a href="#" style="border-radius: 0" onclick="" class="btn btn-default">删除&nbsp;<i class="glyphicon glyphicon-remove"></i ></a></td>
                                        </tr>
                                        <tr>
                                            <td>java第一章模拟测试</td>
                                            <td>2016-06-19</td>
                                            <td>85</td>
                                            <td style="text-align: center"><a href="#" style="border-radius: 0" onclick="" class="btn btn-default">查看&nbsp;<i class="glyphicon glyphicon-pencil"></i ></a></td>
                                            <td style="text-align: center"><a href="#" style="border-radius: 0" onclick="" class="btn btn-default">删除&nbsp;<i class="glyphicon glyphicon-remove"></i ></a></td>
                                        </tr>
                                        <tr>
                                            <td>java第一次模拟测试</td>
                                            <td>2016-06-18</td>
                                            <td>85</td>
                                            <td style="text-align: center"><a href="#" style="border-radius: 0" onclick="" class="btn btn-default">查看&nbsp;<i class="glyphicon glyphicon-pencil"></i ></a></td>
                                            <td style="text-align: center"><a href="#" style="border-radius: 0" onclick="" class="btn btn-default">删除&nbsp;<i class="glyphicon glyphicon-remove"></i ></a></td>
                                        </tr>
                                        <tr>
                                            <td>c++第二章模拟测试</td>
                                            <td>2016-06-19</td>
                                            <td>85</td>
                                            <td style="text-align: center"><a href="#" style="border-radius: 0" onclick="" class="btn btn-default">查看&nbsp;<i class="glyphicon glyphicon-pencil"></i ></a></td>
                                            <td style="text-align: center"><a href="#" style="border-radius: 0" onclick="" class="btn btn-default">删除&nbsp;<i class="glyphicon glyphicon-remove"></i ></a></td>
                                        </tr>
                                        <tr>
                                            <td>c#第一章模拟测试</td>
                                            <td>2016-06-18</td>
                                            <td>85</td>
                                            <td style="text-align: center"><a href="#" style="border-radius: 0" onclick="" class="btn btn-default">查看&nbsp;<i class="glyphicon glyphicon-pencil"></i ></a></td>
                                            <td style="text-align: center"><a href="#" style="border-radius: 0" onclick="" class="btn btn-default">删除&nbsp;<i class="glyphicon glyphicon-remove"></i ></a></td>
                                        </tr>
                                       

                                    </tbody>
                                </table>
                            </div>

                        </div>
                    </div>
                    <!--End Advanced Tables -->
                </div>
            </div>

                <!-- /. ROW  -->












             <!-- /. PAGE INNER  -->
         <!-- /. PAGE WRAPPER  -->
     <!-- /. WRAPPER  -->
    <!-- JS Scripts-->
    <!-- jQuery Js -->
    <script src="assets/js/jquery-1.10.2.js"></script>
      <!-- Bootstrap Js -->
    <script src="assets/js/bootstrap.min.js"></script>
    <!-- Metis Menu Js -->
    <script src="assets/js/jquery.metisMenu.js"></script>
     <!-- DATA TABLE SCRIPTS -->
    <script src="assets/js/dataTables/jquery.dataTables.js"></script>
    <script src="assets/js/dataTables/dataTables.bootstrap.js"></script>
    <script>
            $(document).ready(function () {
                $('#dataTables-example').dataTable();
            });
    </script>


         <!-- Custom Js -->
    <script src="assets/js/custom-scripts.js"></script>
  </body>
</html>
