<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>校园二手街</title>
<!-- 引用控制层插件样式 -->
<link rel="stylesheet" href="CSS/zyUpload.css" type="text/css">
<link href="CSS/goods.css" rel="stylesheet" type="text/css" />
<script src="Js/jquery.min.js"></script>

<!-- 引用核心层插件 -->
<script src="Js/zyFile.js"></script>

<!-- 引用控制层插件 -->
<script src="Js/zyUpload.js"></script>

<!-- 引用初始化JS -->
<script src="Js/script.js"></script>
<script src="Js/index.js" type="text/javascript" language="javascript"></script>

<script src="Js/sc-js.js"></script>
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

<!-- 发布商品 -->
	<div class="container">
		<img class="release-icon-main" src="image/release-icon.png" alt="">
	    <div class="wave-fluid"></div>
	    <div class="release-title">发布商品</div> 
	   	<div class="demo" id="demo">
   
<form action="CurdGoodAction!addGood" method="post" id="loginForm" enctype="multipart/form-data">
   <div class="form-wr">
            <div class="form-must-wr">
                <div class="form-item l goods-title">
                    <div class="form-key"><span>商品名称</span></div>
                    <div class="form-value">
                        <div class="form-input-wr">
                            <input type="text" id="title" name="agood.good_name" placeholder="最多25个字">
                        </div>
                    </div>
                </div>
                
                <div class="form-item m">
                    <div class="form-key"><span>图片</span></div>
                    <div class="form-value">
                        	<input type="file" name="upload" id="uploadFile"/>
                    </div>
                </div>
                
                
                <div class="form-item xl goods-desc">
                    <div class="form-key"><span>商品详情</span></div>
                    <div class="form-value">
                        <div class="form-input-wr">
                            <textarea name="agood.good_description" id="desc" placeholder="建议填写物品用途、新旧程度、原价等信息，至少15个字"></textarea>
                        </div>
                    </div>
                </div>
                <div class="form-item l goods-title">
                    <div class="form-key"><span>交易地点</span></div>
                    <div class="form-value">
                        <div class="form-input-wr">
                            <input type="text" id="trade_place" name="agood.good_place" placeholder="宿舍、教学楼、食堂等" value="">
                        </div>
                    </div>
                </div>
                <div class="form-item m goods-price">
                    <div class="form-key"><span>价格</span></div>
                    <div class="form-value">
                        <div class="form-input-wr">
                            ￥<input class="price" type="text" id="price" name="agood.good_price" value="">
                        </div>
                    </div>
                </div>
                <div class="form-item m goods-cat">
                    <div class="form-key"><span>分类</span></div>
                    <div class="form-value">
                        <div class="form-input-wr">
               
               
                <select name="agood.type_id"  class="select" size="1" onChange="redirect(this.options.selectedIndex)">
                    <option>未选择</option>
                    
                    <s:iterator value="#attr.goodtypeList" id="goodtype" status="str">
                    	<option value="<s:property value="#goodtype.type_id"/>">
                    		<s:property value="#goodtype.type_name"/>
                    	</option> 
                    </s:iterator>
                    
                     </select>
                     
                    </div>
                </div>
            </div>
     
		            <div class="form-contact">联系方式</div>
		            <div class="form-least">（至少选填一项）</div>
           
            <div class="form-select">
                <div class="form-item m">
                    <div class="form-key"><span>手机</span></div>
                    <div class="form-value">
                        <div class="form-input-wr">
                            <input type="tel" id="tel" name="users.user_phone" value="<s:property value="#session.loginUsers.user_phone"/>">
                        </div>
                    </div>
                </div>
            </div>
            
            <div class="form-select">
                <div class="form-item m">
                    <div class="form-key"><span>QQ</span></div>
                    <div class="form-value">
                        <div class="form-input-wr">
                            <input type="text" id="qq" name="users.user_QQ" value="<s:property value="#session.loginUsers.user_QQ"/>">
                        </div>
                    </div>
          		</div>
            </div>
         
            <input type="hidden" id="school_id" value="2">
            <input type="hidden" id="user_school_id" value="2">
            <input type="submit" class="form-submit" id="loginBtn" value="马上发布"/>
            
            
            
  		</div>
  </div>
    </form>  
      

  
  
  

  
 <!--页码-->
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
