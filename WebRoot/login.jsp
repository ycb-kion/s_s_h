<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>


<!DOCTYPE html>
<html>

<!-- Head -->
<head>

	<title>登录表单</title>

	<!-- Meta-Tags -->
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

		<script type="application/x-javascript"> 
		addEventListener("load", function() { 
		setTimeout(hideURLbar, 0); 
		}, false); 
		function hideURLbar(){ window.scrollTo(0,1); } 
		</script>
	<!-- //Meta-Tags -->

	<!-- Style --> <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css" type="text/css" media="all">



</head>
<!-- //Head -->

<!-- Body -->
<body>

	<h1>管理员登陆</h1>

	<div class="container w3layouts agileits">

		<div class="login w3layouts agileits">
			<h2 >登 录</h2>
			<h3 ><s:actionerror cssStyle="color:red"/></h3>
			<s:form action="user_login" method="post" >
				<input type="text" name="username" placeholder="用户名" >
				<input type="password" name="password" placeholder="密码" >
			
			
			<div class="send-button w3layouts agileits">
				
					<input type="submit" value="登 录">
				</s:form>
			</div>
			
			
			<div class="clear"></div>
		</div>
		
		

		<div class="clear"></div>

	</div>

</body>
<!-- //Body -->

</html>
