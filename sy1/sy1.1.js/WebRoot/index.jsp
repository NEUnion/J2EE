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
	<script type="text/javascript">
	function GetRadioValue(RadioName){
	    var obj;    
	    obj=document.getElementsByName(RadioName);
	    if(obj!=null){        
	        for( var i=0; i<obj.length; i++){
	            if(obj[i].checked)  return obj[i].value;  
	        }
	    }
	    return null;
	}
	
	function GetCheckBoxValue(CheckBoxName)
	{   var obj,str="";    
	    obj=document.getElementsByName(CheckBoxName);
	    if(obj!=null){
	        for(var i=0; i<obj.length; i++){
	            if(obj[i].checked)  str+=obj[i].value+","; //逗号分隔  
	        }
	    }
	    if(str.length>0) str=str.substring(0,str.length-1); //去掉最后一个逗号
	    return str;
	}
	
	function GetMultiSelectValue(SelectId)
	{   var obj,str="";    
	    obj=document.getElementById(SelectId);
	    if(obj!=null){
	        for(var i=0; i<obj.length; i++){
	            if( obj.options[i].selected ) str+=obj.options[i].value+",";            
	        }
	    }
	    if(str.length>0) str=str.substring(0,str.length-1);
	    return str;
	}
	
		function show()
		{
			var str="";
			var usrName=document.getElementById("userName").value;
			str+="用户名："+usrName+"\n";
			
			var psd=document.getElementById("password").value;
			str+="密码："+psd+"\n";
			
			var sex= GetRadioValue("sex");
			str+="性别："+sex+"\n";
			
			var like=GetCheckBoxValue("like");
			str+="爱好："+like+"\n";
			
			var special=document.getElementById("special").value;
			str+="专业："+special+"\n";
			
			var master=GetMultiSelectValue("master");
			str+="特长："+master+"\n";
			
			var file=document.getElementById("file1").value;
			str+="附件："+file+"\n";
			
			var resume=document.getElementById("resume").value;
			str+="简介："+resume+"\n";
			
			alert(str);
		}
	</script>
  </head>
  
  <body>
   <form id="form1" name="myForm" action="URL" method="get">
		    用户名：<input type="text"  id="userName"> <br>
		    密码：<input type="password"  id="password" > <br>
		    性别：<input type="radio" name="sex" value="男" checked="checked">男
		    <input type="radio" name="sex" value="女" >女<br>
		    
		  爱好：<input type="checkbox" name="like" value="足球">足球
		 <input type="checkbox" name="like" value="篮球">篮球
		 <input type="checkbox" name="like" value="网球">网球<br>
		 
		 专业：
		 <select id="special">
		 	<option value="计算机科学与技术">计算机科学与技术</option>>
		 	<option value="软件工程">软件工程</option>
		 	<option value="网络工程">网络工程</option>
		 </select>
		 <br>
		 
		  特长： <br>
		 <select id="master" size=3 multiple="multiple">
		 	<option value=".net编程">.net编程</option>>
		 	<option value="J2EE编程">J2EE编程</option>
		 	<option value="C语言编程">C语言编程</option>
		 </select>
		 <br>
		 
		 附件：<input type="file" id="file1" >
		 <br>
		 简介：<br>
      <textarea  id="resume" 
        cols="50" rows="10"> 
      </textarea> 
      <br>
      <input type="button" value="显示录入值" onclick="show()">
      <input type="reset"  value="重填">
		 
		 
	</form>

  </body>
</html>
