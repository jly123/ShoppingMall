<!-- �����Ŀ -->
<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<div class="Navigation">
 <ul>
		<li class="area">
            <div>
                <div class="nav-icons"></div>
                <div id="college"><span><s:property value="#attr.school.school_name"/></span></div>
                                <a class="switch" href="SchoolAction!selectSchool">�л�</a>
            </div>
        </li>
        
        
 <s:iterator value="#attr.goodtypeList" id="type" status="str">
        
		<li id="category-<s:property value="#type.type_id"/> catg" class="category-<s:property value="#type.type_id"/> catg" >
            <a target="_blank" href="GoodAction!getTypeGoods?type_id=<s:property value="#type.type_id"/>&school_id=<s:property value="#attr.school.school_id"/>" >
                <div class="nav-icons">
					<img src="image/<s:property value="#type.type_id"/>.png" alt="<s:property value="#type.type_name"/>"/> </div>
                <h3><s:property value="#type.type_name"/></h3>
            </a>
            
       <s:if test="#type.type_id == 1">
          <div class="sub-nav" id="sub-nav">
                <span>
                	<a target="_blank" href="GoodAction!getFuzzyGoods?value=���г�">���г�</a>
                    <a target="_blank"href="GoodAction!getFuzzyGoods?value=�綯��">�綯��</a>
				</span>
           </div>
       </s:if> 
           
        <s:elseif test="#type.type_id == 3">
           <div class="sub-nav" id="sub-nav3">
                <span>
                      <a target="_blank" href="GoodAction!getFuzzyGoods?value=�ʼǱ�">�ʼǱ�</a>
					  <a target="_blank" href="GoodAction!getFuzzyGoods?value=̨ʽ��">̨ʽ��</a>
                 </span>
            </div>
        </s:elseif> 
           
        <s:elseif test="#type.type_id == 4">
           <div class="sub-nav" id="sub-nav4">
                <span>
                                        <a href="GoodAction!getFuzzyGoods?value=����" target="_blank">����</a>
                                        <a href="GoodAction!getFuzzyGoods?value=�ƶ�Ӳ��" target="_blank">�ƶ�Ӳ��</a>
                                        <a href="GoodAction!getFuzzyGoods?value=����" target="_blank">����</a>
                                        <a href="GoodAction!getFuzzyGoods?value=���" target="_blank">���</a>
                                        <a href="GoodAction!getFuzzyGoods?value=�����" target="_blank">�����</a>
                                        <a href="GoodAction!getFuzzyGoods?value=��ʾ��" target="_blank">��ʾ��</a>
                                        <a href="GoodAction!getFuzzyGoods?value=�ƶ���Դ" target="_blank">�ƶ���Դ</a>
				</span>
      		</div>
        </s:elseif> 
        
        <s:elseif test="#type.type_id == 5">
           <div class="sub-nav" id="sub-nav5">
                <span>
                                        <a href="GoodAction!getFuzzyGoods?value=mp" target="_blank">mp3/mp4</a>
                                        <a href="GoodAction!getFuzzyGoods?value=���" target="_blank">���</a>
                                        <a href="GoodAction!getFuzzyGoods?value=����" target="_blank">����</a>
                                        <a href="GoodAction!getFuzzyGoods?value=��Ϸ��" target="_blank">��Ϸ��</a>
                                        <a href="GoodAction!getFuzzyGoods?value=ƽ��" target="_blank">ƽ��</a>
				 </span>
            </div>
        </s:elseif>
        
        <s:elseif test="#type.type_id == 6">
           <div class="sub-nav" id="sub-nav6">
                <span>
                                        <a href="GoodAction!getFuzzyGoods?value=����" target="_blank">����</a>
                                        <a href="GoodAction!getFuzzyGoods?value=̨��" target="_blank">̨��</a>
                                        <a href="GoodAction!getFuzzyGoods?value=ϴ�»�" target="_blank">ϴ�»�</a>
                                        <a href="GoodAction!getFuzzyGoods?value=�紵��" target="_blank">�紵��</a>
                                        <a href="GoodAction!getFuzzyGoods?value=��ˮ��" target="_blank">��ˮ��</a>
                                        <a href="GoodAction!getFuzzyGoods?value=�յ�" target="_blank">�յ�</a>
                                        <a href="GoodAction!getFuzzyGoods?value=����" target="_blank">����</a>
                 </span>
            </div>
        </s:elseif> 
        
        <s:elseif test="#type.type_id == 7">
           <div class="sub-nav" id="sub-nav7">
                <span>
                                        <a href="GoodAction!getFuzzyGoods?value=����" target="_blank">����</a>
                                        <a href="GoodAction!getFuzzyGoods?value=����" target="_blank">����</a>
                                        <a href="GoodAction!getFuzzyGoods?value=����" target="_blank">����</a>
                                        <a href="GoodAction!getFuzzyGoods?value=����" target="_blank">����</a>
                                        <a href="GoodAction!getFuzzyGoods?value=����" target="_blank">�ֻ�</a>
				</span>
            </div>
        </s:elseif> 
        
        <s:elseif test="#type.type_id == 8">
        	<div class="sub-nav" id="sub-nav8">
           		<span>
                                        <a href="GoodAction!getFuzzyGoods?value=����" target="_blank">����</a>
                                        <a href="GoodAction!getFuzzyGoods?value=����" target="_blank">����</a>
                                        <a href="GoodAction!getFuzzyGoods?value=����" target="_blank">����</a>
                                        <a href="GoodAction!getFuzzyGoods?value=��ɡ" target="_blank">��ɡ</a>
                                        <a href="GoodAction!getFuzzyGoods?value=Ь��" target="_blank">Ь</a>
                                        <a href="GoodAction!getFuzzyGoods?value=ñ��" target="_blank">ñ��</a>
              	</span>
            </div>
        </s:elseif> 
        
        <s:elseif test="#type.type_id == 9">
           <div class="sub-nav" id="sub-nav9">
                <span>
                                        <a href="GoodAction!getFuzzyGoods?value=�̲�" target="_blank">�̲�</a>
                                        <a href="GoodAction!getFuzzyGoods?value=����" target="_blank">����</a>
                                        <a href="GoodAction!getFuzzyGoods?value=�и�" target="_blank">�и�/��˼/GRE</a>
                                        <a href="GoodAction!getFuzzyGoods?value=������" target="_blank">������</a>
                                    </span>
            </div>
        </s:elseif> 
        
        <s:elseif test="#type.type_id == 10">
           <div class="sub-nav" id="sub-nav10">
                <span>
                                        <a href="GoodAction!getFuzzyGoods?value=�ⷿ" target="_blank">�ⷿ</a>
                                        <a href="GoodAction!getFuzzyGoods?value=��װ" target="_blank">��װ</a>
                                        <a href="GoodAction!getFuzzyGoods?value=����" target="_blank">����</a>
				 </span>
            </div>
        </s:elseif> 
        
        <s:elseif test="#type.type_id == 11">
           <div class="sub-nav" id="sub-nav11">
                <span>
                                        <a href="GoodAction!getFuzzyGoods?value=����" target="_blank">����</a>
                                        <a href="GoodAction!getFuzzyGoods?value=�ճ���Ʒ" target="_blank">�ճ���Ʒ</a>
                                        <a href="GoodAction!getFuzzyGoods?value=�����˺�" target="_blank">�����˺�</a>
                                        <a href="GoodAction!getFuzzyGoods?value=��Ա��" target="_blank">��Ա��</a>
                                        <a href="GoodAction!getFuzzyGoods?value=��ױƷ" target="_blank">��ױƷ</a>
                </span>
            </div>
        </s:elseif> 
	  </li>
</s:iterator>

  </ul>
</div>