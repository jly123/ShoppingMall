<%@ page language="java" pageEncoding="GBK" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>У԰���ֽ�</title>
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
<body class="body" onload="MM_preloadImages('image/δ����-1.jpg','image/ʱ��1.jpg','image/�۸�1.jpg','image/�۸�2.jpg')">
<!--ͷ��-->
<%@ include file="includeJSP/head.jsp" %>

<!--�����Ŀ--><!--���·�����Ʒ-->

<div class="container">
    
    <div class="ershou-details">
    <!--��Ʒ��ͼƬ-->
    	<div class="ershou-photos">
        	<div class="bigger-photo-box">
            	<a class="bigger" href="#">
               	<img  src="image/<s:property value="#attr.goods.good_image"/>" id="defaultImg"/> </a>
            </div>
       <!--СͼƬ-->
        <div class="ershou-photo-slide">
        
       <!-- �˴�Ӧ��ѭ��ȡ�����ݿ��еĶ���ͼƬ������ʱд���� -->
             <div class="ershou-small-pthots">
       	    <img class="small cur" src="image/<s:property value="#attr.goods.good_image"/>" onmousemove="showDaTu('image/<s:property value="#attr.goods.good_image"/>')" />
            </div>
            
            
        </div>
        </div>
        <!--���ҽ�����Ϣ-->
        <div class="ershou-info">
        	<div class="ershou-hd">
                        <h2 class="ershou-title"><s:property value="#attr.goods.good_name"/></h2>
                        <div class="ershou-price discount">
                            <span><h3>��</h3><s:property value="#attr.goods.good_price"/></span>
                        </div> 
                    </div>
                    
                <ul class="ershou-detail">
                	<li class="ershou-place">
                    	<div class="name"><span>���׵ص�</span></div>
                        <div class="value"><span><s:property value="#attr.goods.good_place"/></span></div>
                    </li>
                    <li class="ershou-place">
                    	<div class="name"><span>����</span></div>
                        <a href="GoodAction!getOthersGood?user_id=<s:property value="#attr.user.user_id"/>" target="_blank"><div class="value"><span><s:property value="#attr.user.user_name"/></span></div></a>
                    </li>
                    <li class="ershou-place">
                    	<div class="name"><span>��֤״̬</span></div>
                        <div class="value"><span><s:property value="#attr.user.user_department"/>��δ��֤��</span></div>
                    </li>
                    
                    <!-- ����û�δ��½������ʾ����ȫ��Ϣ -->
                    <s:if test="#session.loginUsers==null&&#session.regUsers==null">
                    	<li class="ershou-place">
                    		<div class="name"><span>�ֻ�</span></div>
                        	<div class="value"><span><s:property value="#attr.user.user_phone.substring(0, 4)"/>*****</span></div>
                    	</li>
                     	<li class="ershou-place">
                    		<div class="name"><span>QQ</span></div>
                        	<div class="value"><span><s:property value="#attr.user.user_QQ.substring(0, 4)"/>*****</span></div>
                    	</li>
                    </s:if>
                    <s:else>
                    <li class="ershou-place">
                    	<div class="name"><span>�ֻ�</span></div>
                        <div class="value"><span><s:property value="#attr.user.user_phone"/></span></div>
                    </li>
                     <li class="ershou-place">
                    	<div class="name"><span>QQ</span></div>
                        <div class="value"><span><s:property value="#attr.user.user_QQ"/></span></div>
                    </li>
                    </s:else>
                    
                    
                    
                    <li class="ershou-place">
                    	<div class="name"><span>����ʱ��</span></div>
                        <div class="value"><span><s:property value="#attr.goods.good_date"/></span></div>
                    </li>
                </ul>    
        </div>
    </div>
 	<!--��Ʒ��ϸ˵��-->
   <div class="ershou-desc">
   	<div class="desc clearfix">
     <a href="#"><img id="user_ph" src="image/men_head.gif"/></a>
     <span id="user_cmt"><s:property value="#attr.goods.good_description"/><br>(��ϵ�ҵ�ʱ����˵������У԰���ֽֿ������ޣ�)</span>
    </div>
  </div>
   <!--���۹���-->
   <div class="comentes">
   	<div class="comments-title">����</div>
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
<!--�ײ�-->
<div class="botton">
    <div class="Feedback">
    	<a href="#">��Ʒ�������</a>
        <a href="#">��������</a>
        <a href="#">��ͨѧУ</a><br />
	<span>&copy;2015 .class ��Ȩ���� ��ICP06-530��</span>
    </div>
</div>
</body>
</html>
