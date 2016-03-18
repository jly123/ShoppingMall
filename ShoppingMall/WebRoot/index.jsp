<%@ page pageEncoding="GBK" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>校园二手街</title>
<link href="CSS/index.css" rel="stylesheet" type="text/css" />
<script src="Js/index.js" type="text/javascript"></script>
<script src="Js/jquery-1.10.1.js"></script>
<script type="text/javascript" src="Js/jquery-1.7.2.min.js"></script>
<script type="text/javascript" src="Js/jquery.bigautocomplete.js"></script>
<script type="text/javascript">
$(function(){
	$("#jquery").bigAutocomplete({
		width:543,
		data:[{title:"湖南软件职业学院",result:{ff:"qq"}},
		{title:"中国移动网上营业厅"},
		{title:"中国银行"},
		{title:"中国移动"},
		{title:"中国好声音第三期"},
		{title:"中国好声音 第一期"},
		{title:"中国电信网上营业厅"},
		{title:"中国工商银行"},
		{title:"中国好声音第二期"},
		{title:"中国地图"}],
	});
})
</script>
</head>
<body class="body">

<%@ include file="includeJSP/head.jsp" %>
<!--左边栏目-->
<%@ include file="includeJSP/left.jsp" %>
<!--最新发布商品-->

<div class="container">
<!--虚线部分-->
 <div class="label-wr center clearfix">
            <div id="nav-labels">
                <a href="#">最新发布</a>
			</div>
            <div class="lin">
            <span></span>
            </div>
            <div id="link-labels">
                <a href="releaseGoods">我要发布</a>
            </div> 
            
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
			             	<div class="department"><s:property value="#good.good_date"/></div>
						<div class="place"><s:property value="#good.good_place"/></div>
					</div>
			 	</li>
    
    		</s:iterator>
    </s:else>
 </ul>
 	<!--页码-->
 	<%@ include file="includeJSP/pageNumber.jsp" %>
 
<!--底部-->
<%@ include file="includeJSP/bottom.jsp" %>
</body>
</html>
