<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'add.jsp' starting page</title>
    
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
    <% String a=request.getParameter("v1"); //获取值。
          String b=request.getParameter("v2"); //获取值。
          try{
          int s=Integer.parseInt(a);  //将字符串转化为数值
          int e=Integer.parseInt(b);
          int sum=s+e;
     
          %>
         a+b 的和是: <%=sum%>
          <% }
          catch(Exception e)  {   out.print("请输入正确数据") ; }  
          %>
  </body>
</html>
