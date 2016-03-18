<%@ page language="java" pageEncoding="GBK"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>校园二手街</title>
<link href="CSS/school.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="Js/jquery-1.7.2.min.js"></script>
<script type="text/javascript" src="Js/jquery.bigautocomplete.js"></script>
<script type="text/javascript">
$(function(){
	$("#jquery").bigAutocomplete({
		width:543,
		data:[{title:"湖南软件职业学院",result:{ff:"qq"}},
		{title:"湖南科技大学"},
		{title:"湖南中医药大学"},
		{title:"湖南财经学院"},
		{title:"湖南工程学院"},
		{title:"湖南湘潭大学"},
		{title:"湖南大学"},
		{title:"中国工商银行"},
		{title:"中国好声音第二期"},
		{title:"中国地图"}],
		callback:function(data){
			alert(data.title);	
		}
	});
})
</script>
</head>

<body>
	<div class="wrap-container">
        <div class="school_top">
            <h3></h3>
        </div>
        <div class="school-area">
        <!--搜索框-->
        	<div class="wrap-school-search">
                <div class="school-search">
                    <div class="search-left fl"></div>
                    <div class="search-ipt fl">
                        <input type="text" id="jquery" value=""  placeholder="输入学校中文名称"/>
                    </div>
                    <div><input type="submit" value="搜索"  class="search-btn fl"/></div>
                </div>
            </div>
          <div class="wrap-school-list">
            <div class="school-item">
                    <div class="item-title">
                        <div class="item-title-txt"><span>●</span>热门学校<span>●</span></div>
                    </div>
                    <p class="school-list">
                    
                    <s:iterator value="schoolList" id="school" status="st">
                    		<a href="GoodAction!getAllGoods?school_id=<s:property value="#school.school_id"/>"><s:property value="#school.school_name"/>&nbsp;&nbsp;&nbsp;</a>
                    </s:iterator>
                            
                  </p>
                </div>
          </div>
        </div>
        
        
        <div class="school-bottom">
        	<span></span>
            <p class="copyright">&copy;2015 .class 版权所有 湘ICP0000000号</p>
        </div>
    </div>
</body>
</html>