<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
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

<title>My JSP 'newAdd.jsp' starting page</title>

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
	<h3>发布新闻</h3>
	<form action="addOrUpdateNewAction1.action" method="post">

		<p>
			<s:textfield name="new_.title" label="标题  " />
		</p>
		<p>
			类别：
			<s:select name="new_.category.id" list="categorys" headerKey="1"
				headerValue="--请选择新闻类型--" listKey="id" listValue="categoryName" />
		</p>
		<p>
			<s:textarea name="new_.content" label="内容  "  cssStyle="width:245px;height:100px"/>
		</p>
		<p>
			<s:textfield name="new_.source" label="来源 " />
		</p>
		<s:submit value="添加" />
	</form>
	<input type="button" class="btn"  value="返回" onclick="javascript:history.go(-1);"/>
	</center>
</body>
</html>
