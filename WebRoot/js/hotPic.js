





var myChart = echarts.init(document.getElementById('main'));
var myChart1 = echarts.init(document.getElementById('main1'));
var myChart2 = echarts.init(document.getElementById('main2'));
option = {
    tooltip : {
        trigger: 'axis',
        axisPointer : {            // 坐标轴指示器，坐标轴触发有效
            type : 'shadow'        // 默认为直线，可选为：'line' | 'shadow'
        }
    },
    legend: {
        data:['热度', '感兴趣', '正在学习']
    },

    xAxis : [
        {
            type : 'value'
        }
    ],
    yAxis : [
        {
            type : 'category',
            axisTick : {show: false},
            data : ['前端开发','后端开发','移动开发','数据处理','图像处理']
        }
    ],
    series : [
        {
            name:'热度',
            type:'bar',
            label: {
                normal: {
                    show: true,
                    position: 'inside'
                }
            },
            data:[200, 270, 240, 244, 200]
        },
        {
            name:'感兴趣',
            type:'bar',
            stack: '总量',
            label: {
                normal: {
                    show: true
                }
            },
            data:[320, 302, 341, 374, 390]
        },
        {
            name:'正在学习',
            type:'bar',
            stack: '总量',
            label: {
                normal: {
                    show: true,
                    position: 'left'
                }
            },
            data:[120, 132, 101, 134, 190]
        }
    ]
};
myChart.setOption(option);
myChart1.setOption(option);
myChart2.setOption(option);


var myChartCourse1 = echarts.init(document.getElementById('course1'));
var myChartCourse2 = echarts.init(document.getElementById('course2'));
var myChartCourse3 = echarts.init(document.getElementById('course3'));
var myChartCourse4 = echarts.init(document.getElementById('course4'));
var myChartCourse5 = echarts.init(document.getElementById('course5'));
myChart.on('click', function (params) {
	
    if(params.name=='图像处理'){
        $('html, body').animate({
            scrollTop: $("#kachaid").offset().top
        }, 1500);
        document.getElementById("maindisplay").style.display="none";
        document.getElementById("course5display").style.display="";
        document.getElementById("showThisfunc").style.display="";
        optioncourse5 = {


            title: {
                text: '数据处理',
                left: 'center',
                top: 0,
                textStyle: {
                    color: '#555'
                }
            },

            tooltip : {
                trigger: 'item',
                formatter: "{a} <br/>{b} : {c} ({d}%)"
            },


            series : [
                {
                    name:'访问来源',
                    type:'pie',
                    radius : '55%',
                    center: ['50%', '50%'],
                    data:[
                        {value:310, name:'ZBrush'},
                        {value:274, name:'Premiere'},
                        {value:370, name:'Maya'},
                        {value:500, name:'Photoshop'}
                    ].sort(function (a, b) { return a.value - b.value}),
                    roseType: 'angle',
                    label: {
                        normal: {
                            textStyle: {
                                color: 'rgba(0, 0, 0, 0.8)'
                            }
                        }
                    },
                    labelLine: {
                        normal: {
                            lineStyle: {
                                color: 'rgba(255, 255, 255, 0.3)'
                            },
                            smooth: 0.2,
                            length: 10,
                            length2: 20
                        }
                    },
                    itemStyle: {
                        normal: {
                            color: '#c23531',
                            shadowBlur: 200,
                            shadowColor: 'rgba(0, 0, 0, 0.5)'
                        }
                    }
                }
            ]
        };
        myChartCourse5.setOption(optioncourse5);
    }

    if(params.name=='数据处理'){
        $('html, body').animate({
            scrollTop: $("#kachaid").offset().top
        }, 1500);
        document.getElementById("maindisplay").style.display="none";
        document.getElementById("course4display").style.display="";
        document.getElementById("showThisfunc").style.display="";
        optioncourse4 = {


            title: {
                text: '数据处理',
                left: 'center',
                top: 0,
                textStyle: {
                    color: '#555'
                }
            },

            tooltip : {
                trigger: 'item',
                formatter: "{a} <br/>{b} : {c} ({d}%)"
            },


            series : [
                {
                    name:'访问来源',
                    type:'pie',
                    radius : '55%',
                    center: ['50%', '50%'],
                    data:[
                        {value:250, name:'SQL Server'},
                        {value:330, name:'大数据'},
                        {value:310, name:'Oracle'},
                        {value:274, name:'云计算'},
                        {value:370, name:'MongoDB'},
                        {value:500, name:'MySQL'}
                    ].sort(function (a, b) { return a.value - b.value}),
                    roseType: 'angle',
                    label: {
                        normal: {
                            textStyle: {
                                color: 'rgba(0, 0, 0, 0.8)'
                            }
                        }
                    },
                    labelLine: {
                        normal: {
                            lineStyle: {
                                color: 'rgba(255, 255, 255, 0.3)'
                            },
                            smooth: 0.2,
                            length: 10,
                            length2: 20
                        }
                    },
                    itemStyle: {
                        normal: {
                            color: '#c23531',
                            shadowBlur: 200,
                            shadowColor: 'rgba(0, 0, 0, 0.5)'
                        }
                    }
                }
            ]
        };
        myChartCourse4.setOption(optioncourse4);
    }
    if(params.name=='移动开发'){
        $('html, body').animate({
            scrollTop: $("#kachaid").offset().top
        }, 1500);
        document.getElementById("maindisplay").style.display="none";
        document.getElementById("course3display").style.display="";
        document.getElementById("showThisfunc").style.display="";
        optioncourse3 = {


            title: {
                text: '移动开发',
                left: 'center',
                top: 0,
                textStyle: {
                    color: '#555'
                }
            },

            tooltip : {
                trigger: 'item',
                formatter: "{a} <br/>{b} : {c} ({d}%)"
            },


            series : [
                {
                    name:'访问来源',
                    type:'pie',
                    radius : '55%',
                    center: ['50%', '50%'],
                    data:[
                        {value:310, name:'Cocos2d-x'},
                        {value:274, name:'Unity 3D'},
                        {value:370, name:'iOS开发'},
                        {value:500, name:'Android'}
                    ].sort(function (a, b) { return a.value - b.value}),
                    roseType: 'angle',
                    label: {
                        normal: {
                            textStyle: {
                                color: 'rgba(0, 0, 0, 0.8)'
                            }
                        }
                    },
                    labelLine: {
                        normal: {
                            lineStyle: {
                                color: 'rgba(255, 255, 255, 0.3)'
                            },
                            smooth: 0.2,
                            length: 10,
                            length2: 20
                        }
                    },
                    itemStyle: {
                        normal: {
                            color: '#c23531',
                            shadowBlur: 200,
                            shadowColor: 'rgba(0, 0, 0, 0.5)'
                        }
                    }
                }
            ]
        };
        myChartCourse3.setOption(optioncourse3);
    }
    if(params.name=='后端开发'){
    	var daname = "后端开发";
    	var arr = [];
    	$.ajax({
    		async:false,
    		cache:false,
    		url:"../Stadyweb/CourseServlet",
    		data:{method:"FindCourseByField",field:daname},
    		type:"POST",
    		dataType:"json",
    		success:function(result) {
    			for(var i=0; i<result.length; i++)  
    		      {  
    				arr[i]=result[i].number;
    		         //alert(result[i].coursename+" " + result[i].number) 

    		    }
    		
    	     ///////////////////////
    		}
    	});
    	
    	
    	
    	
        $('html, body').animate({
            scrollTop: $("#kachaid").offset().top
        }, 1500);
        document.getElementById("maindisplay").style.display="none";
        document.getElementById("course2display").style.display="";
        document.getElementById("showThisfunc").style.display="";
        optioncourse2 = {


            title: {
                text: '后端开发',
                left: 'center',
                top: 0,
                textStyle: {
                    color: '#555'
                }
            },

            tooltip : {
                trigger: 'item',
                formatter: "{a} <br/>{b} : {c} ({d}%)"
            },


            series : [
                {
                    name:'访问来源',
                    type:'pie',
                    radius : '55%',
                    center: ['50%', '50%'],
                    data:[
                        {value:arr[6], name:'Go语言'},
                        {value:arr[4], name:'Linux'},
                        {value:arr[1], name:'PHP'},
                        {value:arr[2], name:'Python'},
                        {value:arr[7], name:'C#'},
                        {value:arr[3], name:'C++'},
                        {value:arr[5], name:'C语言'},
                        {value:arr[0], name:'Java'}
                    ].sort(function (a, b) { return a.value - b.value}),
                    roseType: 'angle',
                    label: {
                        normal: {
                            textStyle: {
                                color: 'rgba(0, 0, 0, 0.8)'
                            }
                        }
                    },
                    labelLine: {
                        normal: {
                            lineStyle: {
                                color: 'rgba(255, 255, 255, 0.3)'
                            },
                            smooth: 0.2,
                            length: 10,
                            length2: 20
                        }
                    },
                    itemStyle: {
                        normal: {
                            color: '#c23531',
                            shadowBlur: 200,
                            shadowColor: 'rgba(0, 0, 0, 0.5)'
                        }
                    }
                }
            ]
        };
        myChartCourse2.setOption(optioncourse2);
        myChartCourse2.on('click', function (params) {
            if(params.name=='Java'){
                //定义进入地图接口
                window.location.href="/Stadyweb/CourseServlet?method=FindCourseByname&cname=java";

            }
            if(params.name=='C语言'){
                alert("您选择了:"+params.name+"!");
            }
            if(params.name=='C++'){
                alert("您选择了:"+params.name+"!");
            }
            if(params.name=='C#'){
                alert("您选择了:"+params.name+"!");
            }
            if(params.name=='Python'){
                alert("您选择了:"+params.name+"!");
            }
            if(params.name=='PHP'){
                alert("您选择了:"+params.name+"!");
            }
            if(params.name=='Linux'){
                alert("您选择了:"+params.name+"!");
            }
            if(params.name=='Go语言'){
                alert("您选择了:"+params.name+"!");
            }

        });
        
      

    }

    if(params.name=='前端开发'){
        $('html, body').animate({
            scrollTop: $("#kachaid").offset().top
        }, 1500);
        document.getElementById("maindisplay").style.display="none";
        document.getElementById("course1display").style.display="";
        document.getElementById("showThisfunc").style.display="";
        optioncourse1 = {


            title: {
                text: '前端开发',
                left: 'center',
                top: 0,
                textStyle: {
                    color: '#555'
                }
            },

            tooltip : {
                trigger: 'item',
                formatter: "{a} <br/>{b} : {c} ({d}%)"
            },


            series : [
                {
                    name:'访问来源',
                    type:'pie',
                    radius : '55%',
                    center: ['50%', '50%'],
                    data:[
                        {value:400, name:'Bootstrap'},
                        {value:300, name:'AngularJS'},
                        {value:300, name:'Node.js'},
                        {value:335, name:'WebApp'},
                        {value:335, name:'jQuery'},
                        {value:310, name:'CSS3'},
                        {value:274, name:'Html5'},
                        {value:370, name:'JavaScript'},
                        {value:500, name:'HTML+CSS'}
                    ].sort(function (a, b) { return a.value - b.value}),
                    roseType: 'angle',
                    label: {
                        normal: {
                            textStyle: {
                                color: 'rgba(0, 0, 0, 0.8)'
                            }
                        }
                    },
                    labelLine: {
                        normal: {
                            lineStyle: {
                                color: 'rgba(255, 255, 255, 0.3)'
                            },
                            smooth: 0.2,
                            length: 10,
                            length2: 20
                        }
                    },
                    itemStyle: {
                        normal: {
                            color: '#c23531',
                            shadowBlur: 200,
                            shadowColor: 'rgba(0, 0, 0, 0.5)'
                        }
                    }
                }
            ]
        };
        myChartCourse1.setOption(optioncourse1);


    }


});



function showThisfunc(){
    document.getElementById("showThisfunc").style.display="none";
    document.getElementById("maindisplay").style.display="";
    document.getElementById("course1display").style.display="none";
    document.getElementById("course2display").style.display="none";
    document.getElementById("course3display").style.display="none";
    document.getElementById("course4display").style.display="none";
    document.getElementById("course5display").style.display="none";
}

