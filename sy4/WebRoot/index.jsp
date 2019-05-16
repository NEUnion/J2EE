<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="javaBean.Triangle"%>
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
    function checkNo(value)    {    
    var reg=/^\+?\d+(\.\d+)?$/;  
     if (reg.test(value)) return true;  
    else return false; 
      }
    
    function check(obj)
    {  if (!checkNo(obj.value)) 
          if(obj.name=="a") document.getElementById("e1").innerHTML="请输入正实数值";
          else if(obj.name=="b") document.getElementById("e2").innerHTML="请输入正实数值";
          else document.getElementById("e3").innerHTML="请输入正实数值";
       else{
          if(obj.name=="a") document.getElementById("e1").innerHTML="ok";
          else if(obj.name=="b") document.getElementById("e2").innerHTML="ok";
          else document.getElementById("e3").innerHTML="ok";
          }
    }
    
   
</script>
  </head>
  <body>
   <form action="calu.jsp" >
      边a:<input type="text" name="a" onblur="check(this)"> <span id="e1">请输入正实数值</span><br>
      边b:<input type="text" name="b" onblur="check(this)"> <span id="e2">请输入正实数值</span><br>
      边c:<input type="text" name="c" onblur="check(this)"> <span id="e3">请输入正实数值</span><br>
       <input  type="submit"  value="计算周长与面积">
     
	</form>
  </body>
 

</html>
