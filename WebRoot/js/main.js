// 给4的倍数的图片加上右边距为0的样式
		$(".kecheng-box .deatil-class").each(function(i,item){
			if((i + 1)%4 != 0)
				return;
				$(this).addClass("marRight");		
		})
// 获取浏览器可视高度
	var hh = document.documentElement.clientHeight;
// 给视频播放界面设置高度
	var vh = parseInt(hh - 60);//可视高度减去导航高度，剩下就是当前视频播放高度
	$(".video-box").height(vh);

// 修改视频播放的地址
	$(".video-box video").attr("src","video/five.mp4")//需要在页面跳转后再更改src地址，未解决
// 个人主页-问答tab页面切换
$(".tab-answer span").click(function()
	{
		$(this).addClass("current");//加上当前属性
		$(this).siblings().removeClass("current");//同级别移除属性
		var n = $(this).index();
		if (n==0) {
			$(".vid-tiwen").removeClass("hidden");
			$(".vid-tiwen").siblings("div").addClass("hidden");
		}else if (n==1) {
			$(".vid-answer").removeClass("hidden");
			$(".vid-answer").siblings("div").addClass("hidden");
		}else{
			$(".vid-add").removeClass("hidden");
			$(".vid-add").siblings("div").addClass("hidden");
		}
	}
)
// 地图区域
$(".map li img,.map-right,.map-left li").hide();//隐藏笑脸，资源框

//点击笑脸
$(".map li").click(function(){
	$(this).children().show();//显示对应的笑脸
	$(this).siblings().children().hide();//隐藏同级别的笑脸
	$(this).parent().siblings("div").find("img").hide();//隐藏其他章节的笑脸
	$(".map-right").show();	//显示资源框
})

// 点击章节..地图上显示图标并显示资源框
$(".one").click(function(){
	var n = $(this).index()-1;//获取序列数
	$(".map .one-t li img").eq(n).show().parent().siblings().children().hide();//显示对应隐藏同级别的笑脸
	$(".map .one-t").siblings("div").find("img").hide();//隐藏其他章节的笑脸
	$(".map-right").show();	//显示资源框
})//第一章

$(".two").click(function(){
	var n = $(this).index()-1;
	$(".map .two-t li img").eq(n).show().parent().siblings().children().hide();
	$(".map .two-t").siblings("div").find("img").hide();
	$(".map-right").show();	
})//第二章

$(".three,.four,.five,.six,.sever,.eight").click(function(){
	alert("系统资源正在更新中！");
})//第2,3,4,5,6,7,8章全部显示正在更新中

// 点击章节名弹出下面的详细章节并隐藏其他章节
$(".map-left div h2").click(function(){
	$(this).parent().children("li").slideDown(500);
	$(this).parent().siblings().children("li").slideUp(500);
})

//地图上资源的切换
$(".map-video,.map-text,.map-note,.map-code").hide();//隐藏四个资源框


$(".map-right li").click(function(){//点击资源导航显示对应的资源
	var n = $(this).index();//获取当前项排位数
	$(this).addClass("current").siblings().removeClass("current");//加上当前样式
	$(".map-sou div").eq(n).show().siblings().hide();//显示相对于的资源框并隐藏同级别的资源框
})


// 主地图页面变换颜色和加不同数量的笑脸


/*var e1 = 55;
var e2 = 580;
var e3 = 140;
var e4 = 2800;
var e5 = 5500;
var e6 = 4400;
var e7 = 8000;
var e8 = 10000;*/
var e1;
var e2;
var e3;
var e4;
var e5;
var e6;
var e7;
var e8;
var k1 = "Engineer:";
var k2 = "Engineer:";
var k3 = "Engineer:";
var k4 = "Engineer:";
var k5 = "Engineer:";
var k6 = "Engineer:";
var k7 = "Engineer:";
var k8 = "Engineer:";

function find(){
	var arr = [];
	var daname = "后端开发";
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
    		    }
    			e1=arr[0];
    			e2=arr[1];
    			e3=arr[2];
    			e4=arr[3];
    			e5=arr[4];
    			e6=arr[5];
    			e7=arr[6];
    			e8=arr[7];
    		
    	     ///////////////////////
    			if(e1<=100){
    				$(".map01 i").addClass("color1");
    				$(".face01").addClass("addface1")
    			}else if(e1<=500){
    				$(".map01 i").addClass("color2");
    				$(".face01").addClass("addface2")
    			}else if(e1<=1000){
    				$(".map01 i").addClass("color3");
    				$(".face01").addClass("addface3")
    			}else if(e1<=5000){
    				$(".map01 i").addClass("color4");
    				$(".face01").addClass("addface4")
    			}else{
    				$(".map01 i").addClass("color5");
    				$(".face01").addClass("addface5");
    			}//对第一个java课程进行人数判断，不同区间加上不同的样式

    			if(e2<=100){
    				$(".map02 i").addClass("color1");
    				$(".face02").addClass("addface1")
    			}else if(e2<=500){
    				$(".map02 i").addClass("color2");
    				$(".face02").addClass("addface2")
    			}else if(e2<=1000){
    				$(".map02 i").addClass("color3");
    				$(".face02").addClass("addface3")
    			}else if(e2<=5000){
    				$(".map02 i").addClass("color4");
    				$(".face02").addClass("addface4")
    			}else{
    				$(".map02 i").addClass("color5");
    				$(".face02").addClass("addface5");
    			}

    			if(e3<=100){
    				$(".map03 i").addClass("color1");
    				$(".face03").addClass("addface1")
    			}else if(e3<=500){
    				$(".map03 i").addClass("color2");
    				$(".face03").addClass("addface2")
    			}else if(e3<=1000){
    				$(".map03 i").addClass("color3");
    				$(".face03").addClass("addface3")
    			}else if(e3<=5000){
    				$(".map03 i").addClass("color4");
    				$(".face03").addClass("addface4")
    			}else{
    				$(".map03 i").addClass("color5");
    				$(".face03").addClass("addface5");
    			}

    			if(e4<=100){
    				$(".map04 i").addClass("color1");
    				$(".face04").addClass("addface1")
    			}else if(e4<=500){
    				$(".map04 i").addClass("color2");
    				$(".face04").addClass("addface2")
    			}else if(e4<=1000){
    				$(".map04 i").addClass("color3");
    				$(".face04").addClass("addface3")
    			}else if(e4<=5000){
    				$(".map04 i").addClass("color4");
    				$(".face04").addClass("addface4")
    			}else{
    				$(".map04 i").addClass("color5");
    				$(".face04").addClass("addface5");
    			}

    			if(e5<=100){
    				$(".map05 i").addClass("color1");
    				$(".face05").addClass("addface1")
    			}else if(e5<=500){
    				$(".map05 i").addClass("color2");
    				$(".face05").addClass("addface2")
    			}else if(e5<=1000){
    				$(".map05 i").addClass("color3");
    				$(".face05").addClass("addface3")
    			}else if(e5<=5000){
    				$(".map05 i").addClass("color4");
    				$(".face05").addClass("addface4")
    			}else{
    				$(".map05 i").addClass("color5");
    				$(".face05").addClass("addface5");
    			}

    			if(e6<=100){
    				$(".map06 i").addClass("color1");
    				$(".face06").addClass("addface1")
    			}else if(e6<=500){
    				$(".map06 i").addClass("color2");
    				$(".face06").addClass("addface2")
    			}else if(e6<=1000){
    				$(".map06 i").addClass("color3");
    				$(".face06").addClass("addface3")
    			}else if(e6<=5000){
    				$(".map06 i").addClass("color4");
    				$(".face06").addClass("addface4")
    			}else{
    				$(".map06 i").addClass("color5");
    				$(".face06").addClass("addface5");
    			}

    			if(e7<=100){
    				$(".map07 i").addClass("color1");
    				$(".face07").addClass("addface1")
    			}else if(e7<=500){
    				$(".map07 i").addClass("color2");
    				$(".face07").addClass("addface2")
    			}else if(e7<=1000){
    				$(".map07 i").addClass("color3");
    				$(".face07").addClass("addface3")
    			}else if(e7<=5000){
    				$(".map07 i").addClass("color4");
    				$(".face07").addClass("addface4")
    			}else{
    				$(".map07 i").addClass("color5");
    				$(".face07").addClass("addface5");
    			}

    			if(e8<=100){
    				$(".map08 i").addClass("color1");
    				$(".face08").addClass("addface1")
    			}else if(e8<=500){
    				$(".map08 i").addClass("color2");
    				$(".face08").addClass("addface2")
    			}else if(e8<=1000){
    				$(".map08 i").addClass("color3");
    				$(".face08").addClass("addface3")
    			}else if(e8<=5000){
    				$(".map08 i").addClass("color4");
    				$(".face08").addClass("addface4")
    			}else{
    				$(".map08 i").addClass("color5");
    				$(".face08").addClass("addface5");
    			}
    		}
    	});
	 }
// 每次访问数据都应该传回来8个数字，设置8个变量
$(".face a").mouseover(function(){//经过a区域的时候显示每个模块上面的人数
	var n = $(this).index()+1;
	var n2 = eval("e"+n);
	var n3 = eval("k"+n);
	$(this).html(n3+n2);
}).mouseleave(function(){
	$(this).html("")
})
// 判断每个区间的人数对应的样式
