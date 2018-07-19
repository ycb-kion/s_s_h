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

<title>My JSP 'listCategory' starting page</title>

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
	<h3 align="center">新闻类型</h3>
	<table align="center" border="1" width="360" cellspacing="0" cellpadding="6">
		<tr align="center">
			<td>序号</td>
			<td>类型名</td>
			<td>操作</td>
		</tr>
		<s:iterator value="categorys" var="category">
			<tr align="center">
				<td width="60"><s:property value="#category.id" /></td>
				<td width="120"><s:property value="#category.categoryName"/></td>
				<td><s:a href="getCategoryByIdAction.action?cid=%{#category.id}">修改</s:a>
					<s:a href="deleteCategoryAction.action?cid=%{#category.id}">删除</s:a></td>
			</tr>
		</s:iterator>
	</table>
</body>
</html>
