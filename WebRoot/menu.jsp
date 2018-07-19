<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'menu.jsp' starting page</title>
    
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
    <table>
       <tr><td width="200px" align="center" bgcolor="#FF83FA">类型管理</td></tr>
       <tr><td align="center"><a href="listCategoryAction.action" target="mainFrame">类型查看</a></td></tr>
       <tr><td align="center"><a href="${pageContext.request.contextPath}/category/categoryAdd.jsp" target="mainFrame">类型发布</a></td></tr>
       
       <tr><td align="center" bgcolor="#FF83FA">新闻管理</td></tr>
       <tr><td align="center"><a href="${pageContext.request.contextPath}/listNewAction1.action" target="mainFrame">新闻查看</a></td></tr>
       <tr><td align="center"><a href="${pageContext.request.contextPath}/getAllCategoryForAddAction1.action" target="mainFrame">新闻发布</a></td></tr>
    </table>
  </body>
</html>
