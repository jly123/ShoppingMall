<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html lang="UTF-8">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>校园二手街</title>
<link href="CSS/Userinfor.css" rel="stylesheet" type="text/css" />
<script src="Js/index.js" type="text/javascript" language="javascript"></script>
<script src="Js/jquery-1.10.1.js"></script>
<script src="Js/sc-js.js"></script>
<script src="Js/Userinfor.js"></script>
<script>
	$(document).ready(function(){
		$("#loginBtn").click(function(){
			$("#loginForm").submit();
		});
	});
	
	</script>
</head>
<body class="body">
<!--头部-->
<%@ include file="includeJSP/head.jsp" %>
<!--左边栏目-->
<%@ include file="includeJSP/left.jsp" %>
<!--左边栏目-->
<!--最新发布商品-->

<div class="container">
<!--虚线部分-->
 <div class="label-wr center clearfix">
        <ul id="middle_nav" class="clearfix">
        <li class="on"><a href="Personal_Center.jsp">个人资料</a></li>
        <li class="on"><a href="GoodAction!getUserGood">我发布的商品</a></li>
        <li><a href="#">消息中心</a></li>
</ul>  
	  <div id="my_products">
      	
        	<div id="onsale_pro">
        	<h1>正在出售</h1> 
        	
        	
        	
        	
        	
    <s:if test="#attr.userGoodList.isEmpty()">
			
					<h2 style="color: #4BC0A5;text-align:center;">您尚未发布过商品哦!</h2>
							
	</s:if>   	
       	
    <s:else>
    
		   <s:iterator value="#attr.userGoodList" id="userGood" status="str">     	
		          <div class="enshr_each">
		           	<div class="enshr_info">
		            	<h2><a href="#"><s:property value="#userGood.good_name"/></a></h2>
		                <p><s:property value="#userGood.good_description"/></p>
		               	<div class="enshr_state">
		                	<span class="enshrine_it" onclick="sold(120723);">确认售出</span>
		                    <span class="enshrine_it make_edition" onclick="off_shelf(120723);">下架</span>
		                    <a href="#" target="_blank">
		                                <span class="enshrine_it  make_edition">编辑</span>
		                            </a>
		                </div>
		            </div>
		              <a href="#"><img src="image/<s:property value="#userGood.good_image"/>" /></a>
		            </div>
		            
		            
		       </s:iterator>     
            
       </s:else>  
            
            
            
            
        </div>
      </div>
  </div>
 <!--页码-->
</div>
<!--底部-->
<div class="botton">
	
    <div class="Feedback">
    	<a href="#">产品意见反馈</a>
        <a href="#">加入我们</a>
        <a href="#">开通学校</a><br />
	<span>&copy;2015 .class 版权所有 湘ICP0000000号</span>
    </div>
</div>

</body>
</html>
