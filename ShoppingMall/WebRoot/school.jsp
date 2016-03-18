<%@ page language="java" pageEncoding="GBK"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>У԰���ֽ�</title>
<link href="CSS/school.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="Js/jquery-1.7.2.min.js"></script>
<script type="text/javascript" src="Js/jquery.bigautocomplete.js"></script>
<script type="text/javascript">
$(function(){
	$("#jquery").bigAutocomplete({
		width:543,
		data:[{title:"�������ְҵѧԺ",result:{ff:"qq"}},
		{title:"���ϿƼ���ѧ"},
		{title:"������ҽҩ��ѧ"},
		{title:"���ϲƾ�ѧԺ"},
		{title:"���Ϲ���ѧԺ"},
		{title:"������̶��ѧ"},
		{title:"���ϴ�ѧ"},
		{title:"�й���������"},
		{title:"�й��������ڶ���"},
		{title:"�й���ͼ"}],
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
        <!--������-->
        	<div class="wrap-school-search">
                <div class="school-search">
                    <div class="search-left fl"></div>
                    <div class="search-ipt fl">
                        <input type="text" id="jquery" value=""  placeholder="����ѧУ��������"/>
                    </div>
                    <div><input type="submit" value="����"  class="search-btn fl"/></div>
                </div>
            </div>
          <div class="wrap-school-list">
            <div class="school-item">
                    <div class="item-title">
                        <div class="item-title-txt"><span>��</span>����ѧУ<span>��</span></div>
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
            <p class="copyright">&copy;2015 .class ��Ȩ���� ��ICP0000000��</p>
        </div>
    </div>
</body>
</html>