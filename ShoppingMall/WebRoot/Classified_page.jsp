<%@ page language="java" pageEncoding="GBK" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>У԰���ֽ�</title>
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
<body class="body" onload="MM_preloadImages('image/δ����-1.jpg','image/jiage1.jpg','image/jiage1.jpg','image/jiage2.jpg')">
<!--ͷ��-->
<%@ include file="includeJSP/head.jsp" %>

<!--���·�����Ʒ-->

<div class="container">

<!--���߲���-->
<!-- ʱ��۸����� -->
 <div class="label-wr center clearfix">
	<div class="time" ><a href="#" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('Image27','','image/weibiaoti-1.jpg',1)"><img src="image/weibiaoti-2.jpg" name="Image27" width="60" height="30" border="0" id="Image27" /></a></div>
    <div class="Integral" ><a href="#" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('Image25','','image/shijian1.jpg',1)"><img src="image/shijian2.jpg" name="Image25" width="60" height="30" border="0" id="Image25" /></a></div>
        <div class="Price" ><a href="#" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('Image26','','image/jiage2.jpg',1)"><img src="image/jiage3.jpg" name="Image26" width="60" height="30" border="0" id="Image26" /></a></div>
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
             	<div class="department"></div>
			<div class="place"><s:property value="#good.good_place"/></div>
		</div>
 	</li>
    
    </s:iterator>
</s:else>
</ul>

 	<!--ҳ��-->
 	<%@ include file="includeJSP/pageNumber.jsp" %>
 	
 <%-- <div class="Page number">
 	<!-- �жϣ�û����Ʒʱ ������ʾҳ��-->
<s:if test="#attr.goodList.isEmpty()">
	  
</s:if>

<s:else>
	<s:if test="#attr.pageNow != 1">
	  <a class="page-arrow arrow-left" href="GoodAction!getAllGoods?pageNow=${pageNow-1 }&school_id=<s:property value="#attr.school.school_id"/>">��һҳ</a>
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
	  <a class="page-arrow" href="GoodAction!getAllGoods?pageNow=${pageNow+1 }&school_id=<s:property value="#attr.school.school_id"/>">��һҳ</a>  
	   </s:if>
</s:else>
 	
</div> --%>
<!--�ײ�-->
<%@ include file="includeJSP/bottom.jsp" %>

<!-- 
<div class="botton">
	<div class="Link">
    	<h3>��������</h3>
    	<a href="#">У԰���ֽ�</a><span>/</span>
        <a href="http://www.hnsoftedu.com/">�������ְҵѧԺ����</a><span>/</span>
        <a href="http://tieba.baidu.com/f?kw=%BA%FE%C4%CF%C8%ED%BC%FE%D6%B0%D2%B5%D1%A7%D4%BA&amp;fr=ala0">�������ְҵѧԺ��</a>
    </div>
    <div class="Feedback">
    	<a href="#">��Ʒ�������</a>
        <a href="#">��������</a>
        <a href="#">��ͨѧУ</a><br />
	<span>&copy;2015 .class ��Ȩ���� ��ICP06-530��</span>
    </div>
</div>
 -->
</body>
</html>
