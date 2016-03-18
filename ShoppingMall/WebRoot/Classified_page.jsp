<%@ page language="java" pageEncoding="GBK" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>校园二手街</title>
<link href="CSS/Classified_page.css" rel="stylesheet" type="text/css" />
<script src="Js/Classified_page.js" type="text/javascript" language="javascript"></script>
<script src="Js/jquery-1.10.1.js"></script>
<script src="Js/sc-js.js"></script>
<script>
	$(document).ready(function(){
		$("#loginBtn").click(function(){
			$("#loginForm").submit();
		});
	});
	
	</script>
</head>
<body class="body" onload="MM_preloadImages('image/未标题-1.jpg','image/jiage1.jpg','image/jiage1.jpg','image/jiage2.jpg')">
<!--头部-->
<%@ include file="includeJSP/head.jsp" %>

<!--最新发布商品-->

<div class="container">

<!--虚线部分-->
<!-- 时间价格排序 -->
 <div class="label-wr center clearfix">
	<div class="time" ><a href="#" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('Image27','','image/weibiaoti-1.jpg',1)"><img src="image/weibiaoti-2.jpg" name="Image27" width="60" height="30" border="0" id="Image27" /></a></div>
    <div class="Integral" ><a href="#" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('Image25','','image/shijian1.jpg',1)"><img src="image/shijian2.jpg" name="Image25" width="60" height="30" border="0" id="Image25" /></a></div>
        <div class="Price" ><a href="#" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('Image26','','image/jiage2.jpg',1)"><img src="image/jiage3.jpg" name="Image26" width="60" height="30" border="0" id="Image26" /></a></div>
 </div>
 
 
 
 <ul>
 	<!-- codelist是否为空 为空时，显示提示信息 -->
		<s:if test="#attr.goodList.isEmpty()">
			<h2 style="color: #4BC0A5;text-align:center;">抱歉！暂无商品哦!</h2>
		</s:if>
 		
 <s:else>
 	<s:iterator value="goodList" id="good" status="st">
 		
 	 <li class="item">
         <a href="GoodAction!getDetailsGoods?good_id=<s:property value="#good.good_id"/>"  target="_blank"><img src="image/<s:property value="#good.good_image"/>" alt="<s:property value="#good.good_description"/>"/></a>
              <div class="info">
                 <div class="price"><s:property value="#good.good_price"/></div>
                        <div class="name">
                   			<a href="GoodAction!getDetailsGoods?good_id=<s:property value="#good.good_id"/>" target="_blank"><s:property value="#good.good_name"/></a>
                   		</div>
             	<div class="department"></div>
			<div class="place"><s:property value="#good.good_place"/></div>
		</div>
 	</li>
    
    </s:iterator>
</s:else>
</ul>

 	<!--页码-->
 	<%@ include file="includeJSP/pageNumber.jsp" %>
 	
 <%-- <div class="Page number">
 	<!-- 判断，没有商品时 ，则不显示页码-->
<s:if test="#attr.goodList.isEmpty()">
	  
</s:if>

<s:else>
	<s:if test="#attr.pageNow != 1">
	  <a class="page-arrow arrow-left" href="GoodAction!getAllGoods?pageNow=${pageNow-1 }&school_id=<s:property value="#attr.school.school_id"/>">上一页</a>
	  </s:if>
	  
	  <s:iterator begin="1" end="#attr.pageCount" status="str">
	  		<s:if test="#attr.pageNow == #str.count">
		  					<a class="page-num cur2"><s:property value='#str.count'/></a>
		  	</s:if>
	  		<s:else>
	  						<a class="page-num cur" href="GoodAction!getAllGoods?pageNow=<s:property value='#str.count'/>&school_id=<s:property value="#attr.school.school_id"/>"><s:property value='#str.count'/></a>
	 		</s:else>
	  </s:iterator>
	  
	  <s:if test="#attr.pageNow != #attr.pageCount">       
	  <a class="page-arrow" href="GoodAction!getAllGoods?pageNow=${pageNow+1 }&school_id=<s:property value="#attr.school.school_id"/>">下一页</a>  
	   </s:if>
</s:else>
 	
</div> --%>
<!--底部-->
<%@ include file="includeJSP/bottom.jsp" %>

<!-- 
<div class="botton">
	<div class="Link">
    	<h3>友情链接</h3>
    	<a href="#">校园二手街</a><span>/</span>
        <a href="http://www.hnsoftedu.com/">湖南软件职业学院官网</a><span>/</span>
        <a href="http://tieba.baidu.com/f?kw=%BA%FE%C4%CF%C8%ED%BC%FE%D6%B0%D2%B5%D1%A7%D4%BA&amp;fr=ala0">湖南软件职业学院吧</a>
    </div>
    <div class="Feedback">
    	<a href="#">产品意见反馈</a>
        <a href="#">加入我们</a>
        <a href="#">开通学校</a><br />
	<span>&copy;2015 .class 版权所有 湘ICP06-530号</span>
    </div>
</div>
 -->
</body>
</html>
