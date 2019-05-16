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
			// 加载驱动程序
			Class.forName(driver);
			// 连接数据库
			conn = DriverManager.getConnection(URL, name, password);
			// 查看是否连接成功
			if (!conn.isClosed()) {
				System.out.println("Succeeded connecting to the Database!");
			}
			  } catch (Exception e) {
			System.out.println("数据库连接失败" + e.getMessage());
		}
			  finally{
			// 获取表达式
			stmt = conn.createStatement();
			// 执行SQL
			 String username=request.getParameter("username");
			  String sql="select * from user where id='"+username+"'";
			rs = stmt.executeQuery(sql);
     if(rs.next())
         out.print("用户名已存在");
     else
         out.print("该用户名可用");
         }
       
   %>
  </body>
</html>
