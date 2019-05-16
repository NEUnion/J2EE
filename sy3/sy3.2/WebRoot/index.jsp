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
	<script>
    function checkInt(value)    {    
    var reg=/^[+-]?\d+$/;  
     if (reg.test(value)) return true;  
    else return false; 
      }
    
    function check(obj)
    {  if (!checkInt(obj.value)) 
          if(obj.name=="v1") document.getElementById("e1").innerHTML="请输入实数值，且可带+-号";
          else document.getElementById("e2").innerHTML="请输入实数值，且可带+-号";
       else
          if(obj.name=="v1") document.getElementById("e1").innerHTML="OK";
          else document.getElementById("e2").innerHTML="OK";
    }
    
   
</script>
	
  </head>
  
<body>
  <form name=f  action="add.jsp" method=get>
     a:<input type="text" name="v1" onblur="check(this)"> <span id="e1">请输入实数值</span><br>
     b:<input type="text" name="v2" onblur="check(this)"> <span id="e2">请输入实数值</span><br>
     <span id="e3"></span><br>
     <input type="submit" value="计算" >
</form>

</html>
