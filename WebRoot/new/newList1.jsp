<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'newList1.jsp' starting page</title>
    
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
    <table border="1" width="720" cellspacing="0" cellpadding="6">
		<tr align="center">
			<td>序号</td>
			<td>标题</td>
			<td>发布时间</td>
			<td>类型</td>
			
		</tr>
		
		<s:iterator value="news" var="new_">
		<tr align="center">
				<td width="60"><s:property value="#new_.id"/></td>
				<td width="450"><s:a href="showNewAction1.action?nid=%{#new_.id}" target="mainFrame1">
				<s:property value="#new_.title"/></s:a></td>
				<td width="250"><s:property value="#new_.issueTime"/></td>
				<td width="80"><s:property value="#new_.category.categoryName"/></td>
				
				</td>
			</tr>
		</s:iterator>
   
	</table>
  </center>
  </body>
</html>
