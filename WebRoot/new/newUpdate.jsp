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

<title>My JSP 'categoryNew.jsp' starting page</title>

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
<h3>新闻修改</h3>
	<s:form action="addOrUpdateNewAction1.action" method="post">
		<s:hidden name="new_.id" value="%{new_.id}" />
		<s:textfield name="new_.title" label="标题" />
 		<s:select name="new_.category.id" list="categorys" headerKey=" "
			headerValue="--请选择--" listKey="id" listValue="categoryName" 
			label="类别"/>
		<s:textarea name="new_.content" label="内容 "
			cssStyle="width:245px;height:100px" />
		<s:textfield name="new_.source" label="來源" />
		<s:submit value="修改" />
	</s:form>
	<input type="button" class="btn"  value="返回" onclick="javascript:history.go(-1);"/>
</body>
</html>
