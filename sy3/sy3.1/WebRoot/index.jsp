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
    רҵ: 
    <select name="master">
    	<option value="�������ѧ�뼼��">�������ѧ�뼼��</option>>
    	<option value="�������">�������</option>>
    	<option value="���繤��">���繤��</option>>
    </select>
    <br>
    �༶:
    <input type="text" name="class"> <br>
     ����:
    <input type="text" name="name"> <br>
  
     �Ա�
    <input type="radio" name="sex" value="��" checked="checked">��
	<input type="radio" name="sex" value="Ů" >Ů<br>
	 
	 רҵ�γ�(�ɶ�ѡ)�� <br>
	 <select name="cou" size=4 multiple="multiple">
	  	    <option   value="J2EE���">J2EE���</option>
		 	<option  value=".net���">.net���</option>
		 	<option  value="Java�������">Java�������</option>
		 	<option  value="C���Ա��">C���Ա��</option>
	 </select>
		 <br>
		  <br>
		   <br>
		   
	<input type="submit" value="�ύ" >
    <input type="reset"  value="����">
  </body>
</html>
