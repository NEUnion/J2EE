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

<link rel="stylesheet" type="text/css" href="themes/default/easyui.css">
<link rel="stylesheet" type="text/css" href="themes/icon.css">
<script type="text/javascript" src="scripts/jquery-1.5.1.js"></script>
<script type="text/javascript" src="scripts/jquery.easyui.min.js"></script>
<script type="text/javascript">	    
    function addTab(newtitle, href){
	if (href) {
                     var newContent = '<iframe scrolling="auto" frameborder="0"  			src="' + href + '" style="width:100%;height:100%;"></iframe>';
	} else {
	       var newContent = 'δʵ��';
	}  
	$('#tt').tabs('add',{
		 title: newtitle,
		 content: newContent,				
		 closable: true
		 }); 
     } //end fun            
</script>

</head>


<body class="easyui-layout">        
         <div region="north"  title="NorthTitle" split="true" style="height:100px;"></div>  
         <div region="south"  title="SouthTitle" split="true" style="height:100px;"></div>  
         <div region="east" iconCls="icon-reload" title="East" split="true" style="width:100px;"></div>  
         <div region="west"   split="false" title="WestTitle" style="width:150px;">
         	<div class="easyui-accordion">  
				    <div title="ϵͳ����">
				         <!--ϵͳ�Ӳ˵�-->  
				            <center>
				                   <image src='image/userManagement.ico' width=32 height=32><br/>
				                     <a href="javascript:addTab('�û�����','http://www.wust.edu.cn')">�û�����</a><br/>

				                   <image src='image/roleManagement.ico' width=32 height=32><br/>
				                   <a href="javascript:addTab('��ɫ����','http://www.163.com')">��ɫ����</a><br/>

				                   <image src='image/authorityManagement.ico' width=32 height=32><br/>
				                  <a href="javascript:addTab('Ȩ�޹���','http://www.ifeng.com')">Ȩ�޹���</a><br/>

				          </center>
				         
				    </div>  
				    <div title="���Ź���">  
				         <!--�����Ӳ˵�--> 
				          <center>
						           <image src='image/departmentList.ico' width=32 height=32><br/>
						             <a href="#">�����б�</a><br/>
						            <image src='image/addDepartment.ico' width=32 height=32><br/>
						             <a href="#">��Ӳ���</a><br/>
				          </center>
				    </div>  
				    <div title="Ա������"> 
				         <!--Ա���Ӳ˵�--> 
				             <center>
						           <image src='image/staffList.ico' width=32 height=32><br/>
						             <a href="#">Ա���б�</a><br/>
						      
				          </center>
				    </div>  
             </div>
         
         </div>  
         <div region="center" title="CenterTitle" style="background:#eee;">
				  <div id="tt" class="easyui-tabs" style="width:700px;height:300px;">
						 
				</div>
         </div> 
</body>


</html>
