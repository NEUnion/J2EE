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
			// 加载驱动程序
			Class.forName(driver);
			// 连接数据库
			conn = DriverManager.getConnection(URL, name, password);
			// 查看是否连接成功
			if (!conn.isClosed()) {
				System.out.println("数据库连接成功!");
				try {
				stmt = conn.createStatement();
			// 执行SQL
			 String username=request.getParameter("username");
			 String psd=request.getParameter("password");
			 
			  String sql="insert into user values('"+username+"','"+psd+"')";
			
			stmt.executeUpdate(sql);
			out.println("注册成功！");
			

		} catch (SQLException e) {
			out.println("注册失败！");
		}
				}
	} catch (Exception e) {
			System.out.println("数据库连接失败" + e.getMessage());
		}finally{
		stmt.close();
		conn.close();
		
		
			
			}
	



       
   %>
  </body>
</html>
