<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
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
					$(":input.required").each(function(){  //����Ӻ��Ǳ�ʶ.
				   				var $required = $("<strong class='high' ><font color='red'>*</font></strong>"); //����Ԫ��
				    			$(this).parent().append($required);   //��div�������һ��*
				});
			           
			 		 $(':input').blur(function(){   //Ϊ���е�input���ʧȥ�����¼�
		    				var $parent = $(this).parent();
		   	 				$parent.find(".formtips").remove();  //ɾ����ǰ����ʾԪ��
		   					 if( $(this).is('#username') ){   // is�����ж��Ƿ����û���
		      					  if(this.value=="" || this.value.length < 6|| this.value.length > 18 ){
									            var errorMsg = '������6-18λ���û���.';
									             $parent.append('<span class="formtips onError">'+"<image src='image/NO.gif'>"+'</span>');
								               $parent.append('<span class="formtips onError">'+errorMsg+'</span>');
								 }
								 else{
									             var okMsg = '������ȷ.';
									               $parent.append('<span class="formtips onError">'+"<image src='image/OK.gif'>"+'</span>');
									              $parent.append('<span class="formtips onSuccess">'+okMsg+'</span>');
									  }
						    } 
						    if( $(this).is('#email') ){  //�Ƿ��ʼ��ı���
									         if( this.value=="" || ( this.value!="" 
										&& !(/.+@.+\.[a-zA-Z]{2,4}$/).test(this.value) ) ){  
										//����ʽ��֤                      	             
												var errorMsg = '��������ȷ��E-Mail��ַ.';
												  $parent.append('<span class="formtips onError">'+"<image src='image/NO.gif'>"+'</span>');
									             $parent.append('<span class="formtips onError">'+errorMsg+'</span>');
									          }
									         else{
									             var okMsg = '������ȷ.';
									               $parent.append('<span class="formtips onError">'+"<image src='image/OK.gif'>"+'</span>');
									             $parent.append('<span class="formtips onSuccess">'+okMsg+'</span>');
									          }
									      }
									});   //end blur
									    
			             
	
			$("#send").click(function() {
			
					$(":input.required").trigger('blur');
					var numError = $('form .onError').length;  //class="onError"����
					if(numError>0){   //���д�
						return false;
					} 
			
				    var username = $("#username").val();
				    
				    $.ajax({ 
				        type: "post",    //��post��ʽ���̨��ͨ
				        url : "http://chen-pc:8080/sy1.2/check.jsp",	//����jspҳ��
				        dataType: "html",	//��jsp���ص�ֵ��html��ʽ����
				        data: "username="+username,  //����jsp������
				        success: function(msg){	//�������jsp�ɹ�
				        	$("#result").html(msg);      //��ʾjsp�ķ���ֵ
				        }
				     });
				});
	});
			
	</script>

</head>

<body>
	<form action="" method="post">
		<div class="int1">
			<label>�û���:</label> <input type="text" id="username" class="required" />
		</div>
		<div class="int2">
			<label>����:</label> <input type="text" id="email" class="required" />
		</div>
		<div class="sub">
			<input type="button" value="�ύ" id="send" /> 
			<input type="reset" value="����" />
		</div>
		<div id="result" style="color:red;"></div>
	</form>

</body>
</html>
