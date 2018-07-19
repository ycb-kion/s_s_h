<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'shownew.jsp' starting page</title>

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

	<center>
		<h2>
			<s:property value="new_.title" />
		</h2>
		<p />
		<b> 
		       来源： <s:property value="new_.source" /> 
		       发布时间：<s:property value="new_.issueTime" /></b>
		<p />
   <hr size="2" color="#FF83FA" />
   <s:property value="new_.content" />
   <br/>
   <input type="button" class="btn"  value="返回" onclick="javascript:history.go(-1);"/>
	</center>
</body>
</html>
