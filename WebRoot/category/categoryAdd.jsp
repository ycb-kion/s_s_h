<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'MyJsp1.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script type="text/javascript" src="js/jquery-1.11.1.js"></script>
    <script type="text/javascript">
	    function checkForm(){
		     var userName=$("#category.categoryName").val();
		     if(userName==""){
		    	 $("#error").html("姓名不能为空！");
		    	 return false;
		     }
		     return true;
	    }
	    

    </script>

  </head>
  
  <body>
  
  <h3 align="center" >添加类型</h3>
  <center>
   <s:form action="addOrUpdateCategoryAction" onsubmit="return checkForm()">
    <s:textfield id="category.categoryName" name="category.categoryName" label="类型名"/>
    <s:submit  value="添 加"/>
    <font id="error"  color="red">${error}</font>
   </s:form>
   <input type="button" class="btn"  value="返回" onclick="javascript:history.go(-1);"/>
   </center>
  </body>
</html>
