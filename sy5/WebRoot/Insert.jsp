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
    
    <title>My JSP 'Insert.jsp' starting page</title>
    
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
        final String driver = "com.mysql.jdbc.Driver";
		final String URL = "jdbc:mysql://localhost:3306/userdb";
		final String name = "root";
		final String password = "123456";
		Statement stmt = null;
		Connection conn = null;
		try {
			// ������������
			Class.forName(driver);
			// �������ݿ�
			conn = DriverManager.getConnection(URL, name, password);
			// �鿴�Ƿ����ӳɹ�
			if (!conn.isClosed()) {
				System.out.println("���ݿ����ӳɹ�!");
				try {
				stmt = conn.createStatement();
			// ִ��SQL
			 String username=request.getParameter("username");
			 String psd=request.getParameter("password");
			 
			  String sql="insert into user values('"+username+"','"+psd+"')";
			
			stmt.executeUpdate(sql);
			out.println("ע��ɹ���");
			

		} catch (SQLException e) {
			out.println("ע��ʧ�ܣ�");
		}
				}
	} catch (Exception e) {
			System.out.println("���ݿ�����ʧ��" + e.getMessage());
		}finally{
		stmt.close();
		conn.close();
		
		
			
			}
	



       
   %>
  </body>
</html>
