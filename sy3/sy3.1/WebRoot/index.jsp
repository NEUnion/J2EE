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
  </head>
  
  <body>
  <form method="post" action="servlet/MyServlet">
    专业: 
    <select name="master">
    	<option value="计算机科学与技术">计算机科学与技术</option>>
    	<option value="软件工程">软件工程</option>>
    	<option value="网络工程">网络工程</option>>
    </select>
    <br>
    班级:
    <input type="text" name="class"> <br>
     姓名:
    <input type="text" name="name"> <br>
  
     性别：
    <input type="radio" name="sex" value="男" checked="checked">男
	<input type="radio" name="sex" value="女" >女<br>
	 
	 专业课程(可多选)： <br>
	 <select name="cou" size=4 multiple="multiple">
	  	    <option   value="J2EE编程">J2EE编程</option>
		 	<option  value=".net编程">.net编程</option>
		 	<option  value="Java程序设计">Java程序设计</option>
		 	<option  value="C语言编程">C语言编程</option>
	 </select>
		 <br>
		  <br>
		   <br>
		   
	<input type="submit" value="提交" >
    <input type="reset"  value="重填">
  </body>
</html>
