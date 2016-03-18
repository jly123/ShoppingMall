<!-- 页码 -->
<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<div class="Page number">
 	<!-- 判断，没有商品时 ，则不显示页码-->
<s:if test="#attr.goodList.isEmpty()">
	  
</s:if>

<s:else>
	<s:if test="#attr.pageNow != 1">
	  <a class="page-arrow arrow-left" href="GoodAction!getAllGoods?s_pageNow=${pageNow-1 }&school_id=<s:property value="#attr.school.school_id"/>">上一页</a>
	  </s:if>
	  
	  <s:iterator begin="1" end="#attr.pageCount" status="str">
	  		<s:if test="#attr.pageNow == #str.count">
		  					<a class="page-num cur2"><s:property value='#str.count'/></a>
		  	</s:if>
	  		<s:else>
	  						<a class="page-num cur" href="GoodAction!getAllGoods?s_pageNow=<s:property value='#str.count'/>&school_id=<s:property value="#attr.school.school_id"/>"><s:property value='#str.count'/></a>
	 		</s:else>
	  </s:iterator>
	  
	  <s:if test="#attr.pageNow != #attr.pageCount">       
	  <a class="page-arrow" href="GoodAction!getAllGoods?s_pageNow=${pageNow+1 }&school_id=<s:property value="#attr.school.school_id"/>">下一页</a>  
	   </s:if>
</s:else>
 	
</div>