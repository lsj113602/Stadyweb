 function addquest(){
	  var quetitle = document.getElementById("quetitle");
	  var quetext =document.getElementById("quetext");
	  var name =document.getElementById("cname");
	  var title = quetitle.value;
	  var text = quetext.value;
	  var cname = name.value;
	 $.ajax({
		 
    		async:false,
    		cache:false,
    		url:"/Stadyweb/QuestionServlet",
    		data:{
    		method:"AddQueAjax",
    		title:title,
    		text:text,
    		cname:cname
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
 
 
 
 function commentSubmit(){
	 var com = document.getElementById("comment");
	 var id = document.getElementById("vid");
	 var comment = com.value;
	 var vid=id.value;
	 $.ajax({
	
    		async:false,
    		cache:false,
    		url:"/Stadyweb/CourseForum",
    		data:{
    		method:"AjaxAddForum",
    		comment:comment,
    		vid:vid
    		},
    		type:"POST",
    		dataType:"json",
    		success:function(result) {
    			if(result=="1"){
    				alert("请先登录");
    			}else if(result=="0"){
                    alert("发布失败!！");
            }else{
            	alert("发表成功");
            window.location.reload();
            }
    		 	
    		
    	     ///////////////////////
    		}
	 });
	 }
	 
	 
	  function addanswer(){
	 var ans = document.getElementById("answer");

	 var qid = document.getElementById("quuid");
	 var quuid=qid.value;

	 var answer = ans.value;
	 $.ajax({
	
    		async:false,
    		cache:false,
    		url:"/Stadyweb/QuesAnswerServlet",
    		data:{
    		method:"AddAnsAjax",
    		answer:answer,
    		quuid:quuid
 
    		},
    		type:"POST",
    		dataType:"json",
    		success:function(result) {
    		  if(result=="1"){
                    alert("你还没有登陆，请先登录！");
            }else if(result=="0"){
            	alert("答案不能为空！");
            }else{
            	alert("发表成功");
            window.location.reload();
            }
    		 	
    		
    	     ///////////////////////
    		}
	 });
	 }
	  
	  
	  
	  function addanswer11(){

			 var ans = document.getElementById("answer");
			 var qid = document.getElementById("quuid");
			 var quuid=qid.value;
			 var answer = ans.value;
			 $.ajax({
			
		    		async:false,
		    		cache:false,
		    		url:"/Stadyweb/QuesAnswerServlet",
		    		data:{
		    		method:"AddAnsAjax1",
		    		answer:answer,
		    		quuid:quuid
		 
		    		},
		    		type:"POST",
		    		dataType:"json",
		    		success:function(result) {
		    		  if(result=="1"){
		                    alert("你还没有登陆，请先登录！");
		            }else if(result=="0"){
		            	alert("答案不能为空！");
		            }else{
		            	alert("发表成功");
		            window.location.reload();
		            }
		    		 	
		    		
		    	     ///////////////////////
		    		}
			 });
			 }

	    function changeNum(){
	    	var id = document.getElementById("couid");
	    	 
	    	var couid = id.value;	
	    	 $.ajax({
	    		 
	     		async:false,
	     		cache:false,
	     		url:"/Stadyweb/CourseServlet",
	     		data:{
	     		method:"AjaxAddCourse",
	     		couid:couid
	  
	     		},
	     		type:"POST",
	     		dataType:"json",
	     		success:function(result) {
	     		  var val=result[1];
	     		  if(result[0]=="1"){
	                     alert("你还没有登陆，请先登录！");
	             }else if(result[0]=="200"){
	            	 document.getElementById("add").innerHTML="已关注√";
	     	      //  document.getElementById("add").style.backgroundColor=" #00CACA";
	     	        document.getElementById("number").innerHTML=val;
	             }else{
	            	 document.getElementById("add").innerHTML="关注+";
	     	        //document.getElementById("add").style.backgroundColor="#00CACA";
	     	        document.getElementById("number").innerHTML=val;
	            // window.location.reload();
	             }
	     		 	
	     		
	     	     ///////////////////////
	     		}
	 	 });
	        

	    }
	    
	    
	    function Addcount(cfid,num){
	    	var id = cfid;
	    	 $.ajax({	    		 
	     		async:false,
	     		cache:false,
	     		url:"/Stadyweb/CourseForum",
	     		data:{
	     		method:"AjaxAddForcount",
	     		id:id
	  
	     		},
	     		type:"POST",
	     		dataType:"json",
	     		success:function(result) {
	     			var val=result[1];
	     		  if(result[0]=="1"){
	                     alert("你还没有登陆，请先登录！");
	             }else if(result[0]=="200"){
	            	 document.getElementById("count"+num).innerHTML="已赞√";
	     	      //  document.getElementById("add").style.backgroundColor=" #00CACA";
	     	        document.getElementById("number"+num).innerHTML=val;
	             }else{
	            	 document.getElementById("count"+num).innerHTML="赞一个";
	     	        //document.getElementById("add").style.backgroundColor="#00CACA";
	     	        document.getElementById("number"+num).innerHTML=val;
	            // window.location.reload();
	             }
	     		 	
	     		
	     	     ///////////////////////
	     		}
	 	 });
	        

	    }
	    
	    
	    function Assignment(cname,num,index){
	    	
	    	var arr = [];
	    	var arrsubid = [];
	    	for(var j=0; j<index; j++)  
		      {  
	    		arrsubid[j]=document.getElementById("subjectID"+j).value;
	    		for (var i = 0; i < document.getElementsByName("subjectAnswer"+j).length; i++){
		    		if(document.getElementsByName("subjectAnswer"+j)[i].checked)
		    	   {
		    			arr[j]= document.getElementsByName("subjectAnswer"+j)[i].value;
		    			}
		    		}

		    }
	    	var arrs=arr.join(",");
	    	var subids=arrsubid.join(",");
/*	    	for(var k=0;k<index;k++){
	    		alert(arrsubid[k]);
	    		alert(arr[k]);
	    	}*/
	    	
	    	
	    	 $.ajax({	 
	    		//traditional: true,
	     		async:false,
	     		cache:false,
	     		url:"/Stadyweb/ExamServlet",
	     		data:{
	     		method:"AjaxSubmitexam",
	     		arrs:arrs,
	     		subids:subids,
	     		cname:cname,
	     		num:num  
	     		},
	     		type:"POST",
	     		dataType:"json",
	     		success:function(result) {
	     		
	     		  if(result=="0"){
	                     alert("你还没有登陆，请先登录！");
	                     window.location.reload();
	             }else{
	            	document.getElementById("result").innerHTML=result;
	            // window.location.reload();
	             }
	     		 	
	     		
	     	     ///////////////////////
	     		}
	 	 });
	        

	    }

