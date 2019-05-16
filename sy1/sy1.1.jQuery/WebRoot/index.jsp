<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
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

	<script src="scripts/jquery-1.5.1.js" type="text/javascript"></script>
	<script type="text/javascript">
		$(document).ready(function() {
		$("#btnShow").click(function(){
			var str="";
			
			str="姓名："+$("#userName").val()+"\n";
			str+="密码："+$("#password").val()+"\n";
			str+="性别："+$(":radio[name='sex']:checked").val()+"\n";
			
			var likeString="";
			$(":checkbox").each(function(){
				if($(this).attr("checked"))
				{
					likeString+=$(this).val()+",";
				}
			});
			str+="爱好："+likeString.substring(0, likeString.length-1)+"\n";
			
			str+="专业："+$("#special").val()+"\n";
			
			var masterString="";
			$("#master option").each(function(){
				if($(this).attr("selected"))
				{
					masterString+=$(this).val()+",";
				}
			});
			str+="特长："+masterString.substring(0, masterString.length-1)+"\n";
			
			str+=" 附件："+$("#file1").val()+"\n";
			
			str+=" 简介："+$("#resume").val()+"\n";
			
			alert(str);
		});

		});
	</script>
</head>

<body>
	<form id="form1" name="myForm" action="URL" method="get">
		    用户名：<input type="text"  id="userName"> <br>
		    密码：<input type="password"  id="password" > <br>
		    性别：<input type="radio" name="sex" value="男" checked="checked">男
		    <input type="radio" name="sex" value="女" >女<br>
		    
		  爱好：<input type="checkbox" name="like" value="足球">足球
		 <input type="checkbox" name="like" value="篮球">篮球
		 <input type="checkbox" name="like" value="网球">网球<br>
		 
		 专业：
		 <select id="special">
		 	<option value="计算机科学与技术">计算机科学与技术</option>>
		 	<option value="软件工程">软件工程</option>
		 	<option value="网络工程">网络工程</option>
		 </select>
		 <br>
		 
		  特长： <br>
		 <select id="master" size=3 multiple="multiple">
		 	<option value=".net编程">.net编程</option>>
		 	<option value="J2EE编程">J2EE编程</option>
		 	<option value="C语言编程">C语言编程</option>
		 </select>
		 <br>
		 
		 附件：<input type="file" id="file1" >
		 <br>
		 简介：<br>
      <textarea  id="resume" 
        cols="50" rows="10"> 
      </textarea> 
      <br>
      <input type="button" name="showValue" value="显示录入值" id="btnShow">
      <input type="reset"  value="重填">
		 
		 
	</form>

</body>
</html>
