<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>

<html lang="UTF-8">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>校园二手街</title>
<link href="CSS/Personal_Center.css" rel="stylesheet" type="text/css" />
<script src="Js/index.js" type="text/javascript" language="javascript"></script>
<script src="Js/jquery-1.10.1.js"></script>
<script src="Js/sc-js.js"></script>
<script src="Js/Personal_Center.js"></script>
<script>
	$(document).ready(function(){
		$("#loginBtn").click(function(){
			$("#loginForm").submit();
		});
		$("#save_info").click(function(){
			$("#search-box").submit();
		});
	});
	
	
	
	</script>
	
</head>
<body class="body">
<!--头部-->
	<%@ include file="includeJSP/head.jsp"%>
<!--左边栏目-->
<%@ include file="includeJSP/left.jsp" %>
<!--左边栏目-->

<!--最新发布商品-->

<div class="container">
<!--虚线部分-->
 <div class="label-wr center clearfix">
        <ul id="middle_nav" class="clearfix">
        <li class="on"><a href="Personal_Center.jsp">个人资料</a></li>
        <li><a href="GoodAction!getUserGood">我发布的商品</a></li>
        <li><a href="#">消息中心</a></li>
</ul>  
	<div id="my_info">
            <div id="account_info">
                <h2>账户信息</h2>
                <ul class="infos">
                    <li>用户名</li>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <s:property value="#session.loginUsers.user_name"/>
                    <%-- <li class="right_info">
                        <span><s:property value="#session.loginUsers.user_name"/></span>
                    </li> --%>
                </ul>
            </div>
              <form id="search-box" action="user!" method="get" >
            <div id="base_info">
                <h2>基本信息 <span id="edit_info">编辑</span><span id="save_info">保存</span></h2>  
                <ul class="infos">
                    <li>手机</li>
                    <li class="right_info">
                        <span id="phone_span"></span>
                         <s:property value="#session.loginUsers.user_phone"/>
                         <input type="text" value="<s:property value="#session.loginUsers.user_phone"/>" name="loginUsers.user_phone" id="phone">
                        
                    </li>
                </ul>
                <ul class="infos">
                    <li>QQ</li>
                    <li class="right_info">
                        <span id="qq_span"></span>
                        <s:property value="#session.loginUsers.user_QQ"/>
                        <input type="text" value=<s:property value="#session.loginUsers.user_QQ"/> name="loginUsers.user_QQ" id="qq">
                        
                    </li>
                </ul>
            </div>
            </form>
        </div> 
  </div>
 <!--页码-->
</div>
<!--底部-->
<%@ include file="includeJSP/bottom.jsp" %>
<%-- <div class="botton">
    <div class="Feedback">
    	<a href="#">产品意见反馈</a>
        <a href="#">加入我们</a>
        <a href="#">开通学校</a><br />
	<span>&copy;2015 .class 版权所有 湘ICP0000000号</span>
    </div>
</div> --%>
<div><s:debug></s:debug></div>
</body>
</html>
