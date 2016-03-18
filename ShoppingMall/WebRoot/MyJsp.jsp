<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'MyJsp.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link href="CSS/index.css" rel="stylesheet" type="text/css" />
<script src="Js/index.js" type="text/javascript" language="javascript"></script>
<script src="Js/jquery-1.10.1.js"></script>
  </head>
  
  <body>
  <%@ include file="includeJSP/head.jsp" %>
  <div>
  	<h1 style="color: #4BC0A5;text-align:center;">¹§Ï²£¡²Ù×÷³É¹¦!</h1>
  </div>
  </body>
</html>
