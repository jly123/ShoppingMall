<%@ page pageEncoding="GBK" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>У԰���ֽ�</title>
<link href="CSS/index.css" rel="stylesheet" type="text/css" />
<script src="Js/index.js" type="text/javascript"></script>
<script src="Js/jquery-1.10.1.js"></script>
<script type="text/javascript" src="Js/jquery-1.7.2.min.js"></script>
<script type="text/javascript" src="Js/jquery.bigautocomplete.js"></script>
<script type="text/javascript">
$(function(){
	$("#jquery").bigAutocomplete({
		width:543,
		data:[{title:"�������ְҵѧԺ",result:{ff:"qq"}},
		{title:"�й��ƶ�����Ӫҵ��"},
		{title:"�й�����"},
		{title:"�й��ƶ�"},
		{title:"�й�������������"},
		{title:"�й������� ��һ��"},
		{title:"�й���������Ӫҵ��"},
		{title:"�й���������"},
		{title:"�й��������ڶ���"},
		{title:"�й���ͼ"}],
	});
})
</script>
</head>
<body class="body">

<%@ include file="includeJSP/head.jsp" %>
<!--�����Ŀ-->
<%@ include file="includeJSP/left.jsp" %>
<!--���·�����Ʒ-->

<div class="container">
<!--���߲���-->
 <div class="label-wr center clearfix">
            <div id="nav-labels">
                <a href="#">���·���</a>
			</div>
            <div class="lin">
            <span></span>
            </div>
            <div id="link-labels">
                <a href="releaseGoods">��Ҫ����</a>
            </div> 
            
  </div>
 		<ul>
 		
 		<!-- codelist�Ƿ�Ϊ�� Ϊ��ʱ����ʾ��ʾ��Ϣ -->
	<s:if test="#attr.goodList.isEmpty()">
			
					<h2 style="color: #4BC0A5;text-align:center;">��Ǹ��������ƷŶ!</h2>
							
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
 	<!--ҳ��-->
 	<%@ include file="includeJSP/pageNumber.jsp" %>
 
<!--�ײ�-->
<%@ include file="includeJSP/bottom.jsp" %>
</body>
</html>
