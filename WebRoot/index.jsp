<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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

</head>
<frameset rows="70,*" scrolling="no">
  <frame src="title.jsp"  noresize="noresize" scrolling="no"/>
    <frameset cols="25%,75%" frameborder="0" border="0" framespacing="0">
         <frame src="menu.jsp" name="leftFrame" scrolling="no" noresize="noresize" id="leftFrame"/>
         <frame src="${pageContext.request.contextPath}/listCategoryAction.action" name="mainFrame" id="mainFrame"
         />
    </frameset>
 </frameset>   
<body>

</body>
</html>
