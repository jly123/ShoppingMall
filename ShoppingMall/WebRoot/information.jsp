<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>校园二手街</title>
<link href="CSS/information.css" rel="stylesheet" type="text/css" />
<script src="Js/jquery-1.10.1.js"></script>
<script src="Js/sc-js.js"></script>
</head>
<body class="body">
<!--头部-->
<%@ include file="includeJSP/head.jsp" %>
<!--中间内容-->
<div id="main">
	<!--卖家信息-->
	<div class="clearfix">
    	<div id="user_msg">
                    <div class="name"><s:property value="#attr.user.user_name"/></div>
                    <p class="has_sell">已卖出<span>1</span>件商品</p>
                    <ul class="seller_attr">
                        <li>
                        <s:property value="#attr.school.school_name"/>
                         <s:property value="#attr.user.user_department"/>
                         <s:property value="#attr.user.user_IDCard"/>
                        </li>
                                           
                    </ul>
                </div>
        <div id="user_photo">
   	    <img src="image/iOS_avatar_1417682638_56737_0.jpg"  /></div>
    </div>
		<ul id="middle_nav">
                <li class="on"><a href="#">正在出售的商品</a></li>
        </ul>
        <!--卖家商品信息-->
<div id="my_products">
        	<div id="my_products" >
        	
        	
        	
        	<s:iterator value="otherGoodList" id="otherGood" status="str">
        	  <div class="enshr_each">  
                  <div class="enshr_info">
                            <h2><a href="#" target="_blank"><s:property value="#otherGood.good_name"/></a></h2>
                            <p><s:property value="#otherGood.good_description"/></p>
                            <div class="enshr_state"> 
                                <span class="enshr_info_price">¥<s:property value="#otherGood.good_price"/></span>
                                <span class="enshr_info_address"><s:property value="#otherGood.good_place"/></span>
                            </div>
                </div>
                        <a href="#" target="_blank">
                            <img class="enshr_ph" src="image/<s:property value="#otherGood.good_image"/>">
                        </a>
              </div>
              
              </s:iterator>
              
    </div>
  </div>
</div>
<div class="botton">
  <div class="Feedback">
	<span>&copy;2015 .class 版权所有 湘ICP0000000号</span>
    </div>
</div>
</body>
</html>
