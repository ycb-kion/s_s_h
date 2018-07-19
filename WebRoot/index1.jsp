<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css" type="text/css" media="all">
  <head>
    <base href="<%=basePath%>">
    
    <title>新闻网</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	 

  </head>
  
 
 
 <frameset rows="70,*" scrolling="no">
  <frame src="title1.html"  noresize="noresize" scrolling="no"/>
    <frameset cols="200,*" frameborder="0" border="0" framespacing="0">
         <frame src="${pageContext.request.contextPath}/111.action" name="leftFrame1" scrolling="no" noresize="noresize" id="leftFrame1"/>
         <frame src="${pageContext.request.contextPath}/showNew1Action1.action" name="mainFrame1" id="mainFrame1"/>
    </frameset>
 </frameset> 
 <body>
 </body> 
  
</html>
