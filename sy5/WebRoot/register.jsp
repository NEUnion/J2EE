<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script src="scripts/jquery-1.5.1.js" type="text/javascript"></script>
	<script type="text/javascript">
			$(document).ready(function(){		
					$(":input.required").each(function(){  //必填加红星标识.
				   				var $required = $("<strong class='high'> *</strong>"); //创建元素
				    			$(this).parent().append($required);   //在div后面添加一个*
				});
			           
			 		$(":input").blur(function(){   //为所有的input添加失去焦点事件
		    				var $parent = $(this).parent();
		   	 				$parent.find(".formtips").remove();  //删除以前的提示元素
		   					 if( $(this).is('#username') ){   // is方法判断是否是用户名
		      					  if(this.value=="" || this.value.length < 6|| this.value.length > 18 ){
									            var errorMsg = '请输入6-18位的用户名.';
								               $parent.append('<span class="formtips onError">'+errorMsg+'</span>');
								 }
								 else{
									             var okMsg = '输入正确.';
									              $parent.append('<span class="formtips onSuccess">'+okMsg+'</span>');
									  }
						    } 
						    	 if( $(this).is('#psd') ){   // is方法判断是否是密码
		      					  if(this.value=="" || this.value.length < 6|| this.value.length > 18 ){
									            var errorMsg = '请输入6-18位的密码.';
								               $parent.append('<span class="formtips onError">'+errorMsg+'</span>');
								 }
								 else{
									             var okMsg = '输入正确.';
									              $parent.append('<span class="formtips onSuccess">'+okMsg+'</span>');
									  }
						    } 
						     if( $(this).is('#cnpsd') ){   // is方法判断是否是确认密码
						     var repsd=$("#psd").val();
		      					  if(this.value==repsd&&repsd!=""){
		      					    			var okMsg = '输入正确.';
									              $parent.append('<span class="formtips onSuccess">'+okMsg+'</span>');
									       
								 }
								 else{
								     			 var errorMsg = '密码不一致.';
								               $parent.append('<span class="formtips onError">'+errorMsg+'</span>');
									           
									  }
						    } 
						
				});   //end blur
									    
			             
	
			$("#registe").click(function() {
			
					$(":input.required").trigger('blur');
					var numError = $('form .onError').length;  //class="onError"个数
					if(numError>0){   //还有错
						return false;
					} 		
				 else {
			    var username = $("#username").val();
			      var psd=$("#psd").val();
			  
				    $.ajax({ 
				        type: "post",    //以post方式与后台沟通
				        url : "http://chen-pc:8080/sy5/Insert.jsp",	//调用jsp页面
				        dataType: "html",	//从jsp返回的值以html方式解释
				        data: {username:username,password:psd},  //发给jsp的数据
				        success: function(msg){	//如果调用jsp成功
				        	$("#iresult").html(msg);      //显示jsp的返回值
				        }
				     });
				 }
				});
				
		     $("#check").click(function() {
				    var username = $("#username").val();
				  
				    $.ajax({ 
				        type: "post",    //以post方式与后台沟通
				        url : "http://chen-pc:8080/sy5/check.jsp",	//调用jsp页面
				        dataType: "html",	//从jsp返回的值以html方式解释
				        data: "username="+username,  //发给jsp的数据
				        success: function(msg){	//如果调用jsp成功
				        	$("#result").html(msg);      //显示jsp的返回值
				        }
				     });
				});
	});
			
	</script>
  </head>
  
  <body>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
  <form action="Insert.jsp">
         
      <div  >
       &nbsp;&nbsp; &nbsp;
       用户名:
       <input type="text"  id="username" class="required" >
     <input type="button" value="检测" id="check"> 
     	<label id="result" style="color:red;"></label>
     </div>
     
        <div >
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      密码:<input type="password" class="required"  id="psd">
          </div>
          
           <div >
     再次输入密码:<input type="password" class="required"  id="cnpsd">
       </div>
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     <input type="button" value="注册" id="registe"> &nbsp;
     <input type="reset" value="重输">
     <div>
      	<label id="iresult" style="color:red;"></label>
     </div>
     
     </form>
  </body>
</html>
