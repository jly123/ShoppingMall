<%@ page language="java" pageEncoding="GBK" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>校园二手街</title>
<link href="CSS/Commodity_ details.css" rel="stylesheet" type="text/css" />
<script>
function showDaTu(src){
document.getElementById("defaultImg").src=src;
}
</script>
<script src="js/jquery-1.10.1.js"></script>
<script src="js/sc-js.js"></script>
<script>
	$(document).ready(function(){
		$("#loginBtn").click(function(){
			$("#loginForm").submit();
		});
	});
	</script>
</head>
<body class="body" onload="MM_preloadImages('image/未标题-1.jpg','image/时间1.jpg','image/价格1.jpg','image/价格2.jpg')">
<!--头部-->
<%@ include file="includeJSP/head.jsp" %>

<!--左边栏目--><!--最新发布商品-->

<div class="container">
    
    <div class="ershou-details">
    <!--商品大图片-->
    	<div class="ershou-photos">
        	<div class="bigger-photo-box">
            	<a class="bigger" href="#">
               	<img  src="image/<s:property value="#attr.goods.good_image"/>" id="defaultImg"/> </a>
            </div>
       <!--小图片-->
        <div class="ershou-photo-slide">
        
       <!-- 此处应当循环取出数据库中的多张图片，先暂时写单个 -->
             <div class="ershou-small-pthots">
       	    <img class="small cur" src="image/<s:property value="#attr.goods.good_image"/>" onmousemove="showDaTu('image/<s:property value="#attr.goods.good_image"/>')" />
            </div>
            
            
        </div>
        </div>
        <!--卖家交易信息-->
        <div class="ershou-info">
        	<div class="ershou-hd">
                        <h2 class="ershou-title"><s:property value="#attr.goods.good_name"/></h2>
                        <div class="ershou-price discount">
                            <span><h3>￥</h3><s:property value="#attr.goods.good_price"/></span>
                        </div> 
                    </div>
                    
                <ul class="ershou-detail">
                	<li class="ershou-place">
                    	<div class="name"><span>交易地点</span></div>
                        <div class="value"><span><s:property value="#attr.goods.good_place"/></span></div>
                    </li>
                    <li class="ershou-place">
                    	<div class="name"><span>卖家</span></div>
                        <a href="GoodAction!getOthersGood?user_id=<s:property value="#attr.user.user_id"/>" target="_blank"><div class="value"><span><s:property value="#attr.user.user_name"/></span></div></a>
                    </li>
                    <li class="ershou-place">
                    	<div class="name"><span>认证状态</span></div>
                        <div class="value"><span><s:property value="#attr.user.user_department"/>（未认证）</span></div>
                    </li>
                    
                    <!-- 如果用户未登陆，则显示不完全信息 -->
                    <s:if test="#session.loginUsers==null&&#session.regUsers==null">
                    	<li class="ershou-place">
                    		<div class="name"><span>手机</span></div>
                        	<div class="value"><span><s:property value="#attr.user.user_phone.substring(0, 4)"/>*****</span></div>
                    	</li>
                     	<li class="ershou-place">
                    		<div class="name"><span>QQ</span></div>
                        	<div class="value"><span><s:property value="#attr.user.user_QQ.substring(0, 4)"/>*****</span></div>
                    	</li>
                    </s:if>
                    <s:else>
                    <li class="ershou-place">
                    	<div class="name"><span>手机</span></div>
                        <div class="value"><span><s:property value="#attr.user.user_phone"/></span></div>
                    </li>
                     <li class="ershou-place">
                    	<div class="name"><span>QQ</span></div>
                        <div class="value"><span><s:property value="#attr.user.user_QQ"/></span></div>
                    </li>
                    </s:else>
                    
                    
                    
                    <li class="ershou-place">
                    	<div class="name"><span>发布时间</span></div>
                        <div class="value"><span><s:property value="#attr.goods.good_date"/></span></div>
                    </li>
                </ul>    
        </div>
    </div>
 	<!--商品详细说明-->
   <div class="ershou-desc">
   	<div class="desc clearfix">
     <a href="#"><img id="user_ph" src="image/men_head.gif"/></a>
     <span id="user_cmt"><s:property value="#attr.goods.good_description"/><br>(联系我的时候，请说明是在校园二手街看见的噢！)</span>
    </div>
  </div>
   <!--评论功能-->
   <div class="comentes">
   	<div class="comments-title">评论</div>
    <div class="comments-wr">
    	<div class="comment-wr">
        	<div class="post-comment clearfix">
            	<div class="comment-cover">
                                <span class="loader loader-quart"></span>
                </div>
            </div>
        </div>
    </div>
   </div>
</div>
<!--底部-->
<div class="botton">
    <div class="Feedback">
    	<a href="#">产品意见反馈</a>
        <a href="#">加入我们</a>
        <a href="#">开通学校</a><br />
	<span>&copy;2015 .class 版权所有 湘ICP06-530号</span>
    </div>
</div>
</body>
</html>
