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
    
    <title>My JSP 'calu.jsp' starting page</title>
    
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
    <jsp:useBean id="box" class="javaBean.Triangle" scope="page" />
    <jsp:setProperty name="box" property="*" />
    ��a�ĳ���Ϊ��<jsp:getProperty name="box" property="a"/><br>
����b�ĳ���Ϊ��<jsp:getProperty name="box" property="b"/><br>
����c�ĳ���Ϊ��<jsp:getProperty name="box" property="c"/><br>
	<% if(box.isTriangle())
	{
		out.println("�����ε��ܳ�Ϊ��"+box.getCircle()+"<br>");
		out.println("�����ε����Ϊ��"+box.getArea()+"<br>"); 
	}else
	out.println("���ܹ��������Σ��뷵�������������ߣ�"+"<br>"); 
	%>
��
    <br>
  </body>
</html>
