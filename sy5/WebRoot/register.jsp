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
					$(":input.required").each(function(){  //����Ӻ��Ǳ�ʶ.
				   				var $required = $("<strong class='high'> *</strong>"); //����Ԫ��
				    			$(this).parent().append($required);   //��div�������һ��*
				});
			           
			 		$(":input").blur(function(){   //Ϊ���е�input���ʧȥ�����¼�
		    				var $parent = $(this).parent();
		   	 				$parent.find(".formtips").remove();  //ɾ����ǰ����ʾԪ��
		   					 if( $(this).is('#username') ){   // is�����ж��Ƿ����û���
		      					  if(this.value=="" || this.value.length < 6|| this.value.length > 18 ){
									            var errorMsg = '������6-18λ���û���.';
								               $parent.append('<span class="formtips onError">'+errorMsg+'</span>');
								 }
								 else{
									             var okMsg = '������ȷ.';
									              $parent.append('<span class="formtips onSuccess">'+okMsg+'</span>');
									  }
						    } 
						    	 if( $(this).is('#psd') ){   // is�����ж��Ƿ�������
		      					  if(this.value=="" || this.value.length < 6|| this.value.length > 18 ){
									            var errorMsg = '������6-18λ������.';
								               $parent.append('<span class="formtips onError">'+errorMsg+'</span>');
								 }
								 else{
									             var okMsg = '������ȷ.';
									              $parent.append('<span class="formtips onSuccess">'+okMsg+'</span>');
									  }
						    } 
						     if( $(this).is('#cnpsd') ){   // is�����ж��Ƿ���ȷ������
						     var repsd=$("#psd").val();
		      					  if(this.value==repsd&&repsd!=""){
		      					    			var okMsg = '������ȷ.';
									              $parent.append('<span class="formtips onSuccess">'+okMsg+'</span>');
									       
								 }
								 else{
								     			 var errorMsg = '���벻һ��.';
								               $parent.append('<span class="formtips onError">'+errorMsg+'</span>');
									           
									  }
						    } 
						
				});   //end blur
									    
			             
	
			$("#registe").click(function() {
			
					$(":input.required").trigger('blur');
					var numError = $('form .onError').length;  //class="onError"����
					if(numError>0){   //���д�
						return false;
					} 		
				 else {
			    var username = $("#username").val();
			      var psd=$("#psd").val();
			  
				    $.ajax({ 
				        type: "post",    //��post��ʽ���̨��ͨ
				        url : "http://chen-pc:8080/sy5/Insert.jsp",	//����jspҳ��
				        dataType: "html",	//��jsp���ص�ֵ��html��ʽ����
				        data: {username:username,password:psd},  //����jsp������
				        success: function(msg){	//�������jsp�ɹ�
				        	$("#iresult").html(msg);      //��ʾjsp�ķ���ֵ
				        }
				     });
				 }
				});
				
		     $("#check").click(function() {
				    var username = $("#username").val();
				  
				    $.ajax({ 
				        type: "post",    //��post��ʽ���̨��ͨ
				        url : "http://chen-pc:8080/sy5/check.jsp",	//����jspҳ��
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
  
  <body>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
  <form action="Insert.jsp">
         
      <div  >
       &nbsp;&nbsp; &nbsp;
       �û���:
       <input type="text"  id="username" class="required" >
     <input type="button" value="���" id="check"> 
     	<label id="result" style="color:red;"></label>
     </div>
     
        <div >
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      ����:<input type="password" class="required"  id="psd">
          </div>
          
           <div >
     �ٴ���������:<input type="password" class="required"  id="cnpsd">
       </div>
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     <input type="button" value="ע��" id="registe"> &nbsp;
     <input type="reset" value="����">
     <div>
      	<label id="iresult" style="color:red;"></label>
     </div>
     
     </form>
  </body>
</html>
