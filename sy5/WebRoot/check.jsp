<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@ page import="java.sql.*" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'check.jsp' starting page</title>
    
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
    <%
       String driver = "com.mysql.jdbc.Driver";
	
		final String URL = "jdbc:mysql://localhost:3306/userdb";
		
		final String name = "root";
	
		final String password = "123456";
		
		Statement stmt = null;
	
		ResultSet rs = null;
		
		Connection conn = null;
		try {
			// ������������
			Class.forName(driver);
			// �������ݿ�
			conn = DriverManager.getConnection(URL, name, password);
			// �鿴�Ƿ����ӳɹ�
			if (!conn.isClosed()) {
				System.out.println("Succeeded connecting to the Database!");
			}
			  } catch (Exception e) {
			System.out.println("���ݿ�����ʧ��" + e.getMessage());
		}
			  finally{
			// ��ȡ���ʽ
			stmt = conn.createStatement();
			// ִ��SQL
			 String username=request.getParameter("username");
			  String sql="select * from user where id='"+username+"'";
			rs = stmt.executeQuery(sql);
     if(rs.next())
         out.print("�û����Ѵ���");
     else
         out.print("���û�������");
         }
       
   %>
  </body>
</html>
