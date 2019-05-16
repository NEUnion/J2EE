<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>


<title>My JSP 'index.jsp' starting page</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">

<script src="scripts/jquery-1.5.1.js" type="text/javascript"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$("p").click(function() {
			alert("hello");
		});

	});
</script>

</head>

<body>
	<p>click me</p>
</body>
</html>
