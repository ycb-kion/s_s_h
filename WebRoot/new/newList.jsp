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

<title>My JSP 'newList.jsp' starting page</title>

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
    
	<table align="center" border="1" width="720" cellspacing="0" cellpadding="6">
		<tr align="center">
			<td>序号</td>
			<td>标题</td>
			<td>发布时间</td>
			<td>类型</td>
			<td>来源</td>
			<td>操作</td>
		</tr>

		<s:iterator value="news" var="new_">
			<tr align="center">
				<td width="60"><s:property value="#new_.id" /></td>
				<td width="350"><s:a href="showNewAction1.action?nid=%{#new_.id}">
						<s:property value="#new_.title" />
					</s:a></td>
				<td width="100"><s:property value="#new_.issueTime" /></td>
				<td width="80"><s:property value="#new_.category.categoryName" /></td>
				<td width="100"><s:property value="#new_.source" /></td>
				<td width="150">
				<s:a href="updateNewAction1.action?nid=%{#new_.id}">修改</s:a>
				<s:a href="deleteNewAction1.action?nid=%{#new_.id}">删除</s:a></td>
			</tr>
		</s:iterator>

	</table>

</body>
</html>
