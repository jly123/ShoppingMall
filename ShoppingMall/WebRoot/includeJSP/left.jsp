<!-- 左边栏目 -->
<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<div class="Navigation">
 <ul>
		<li class="area">
            <div>
                <div class="nav-icons"></div>
                <div id="college"><span><s:property value="#attr.school.school_name"/></span></div>
                                <a class="switch" href="SchoolAction!selectSchool">切换</a>
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
                	<a target="_blank" href="GoodAction!getFuzzyGoods?value=自行车">自行车</a>
                    <a target="_blank"href="GoodAction!getFuzzyGoods?value=电动车">电动车</a>
				</span>
           </div>
       </s:if> 
           
        <s:elseif test="#type.type_id == 3">
           <div class="sub-nav" id="sub-nav3">
                <span>
                      <a target="_blank" href="GoodAction!getFuzzyGoods?value=笔记本">笔记本</a>
					  <a target="_blank" href="GoodAction!getFuzzyGoods?value=台式机">台式机</a>
                 </span>
            </div>
        </s:elseif> 
           
        <s:elseif test="#type.type_id == 4">
           <div class="sub-nav" id="sub-nav4">
                <span>
                                        <a href="GoodAction!getFuzzyGoods?value=耳机" target="_blank">耳机</a>
                                        <a href="GoodAction!getFuzzyGoods?value=移动硬盘" target="_blank">移动硬盘</a>
                                        <a href="GoodAction!getFuzzyGoods?value=键盘" target="_blank">键盘</a>
                                        <a href="GoodAction!getFuzzyGoods?value=鼠标" target="_blank">鼠标</a>
                                        <a href="GoodAction!getFuzzyGoods?value=充电器" target="_blank">充电器</a>
                                        <a href="GoodAction!getFuzzyGoods?value=显示器" target="_blank">显示器</a>
                                        <a href="GoodAction!getFuzzyGoods?value=移动电源" target="_blank">移动电源</a>
				</span>
      		</div>
        </s:elseif> 
        
        <s:elseif test="#type.type_id == 5">
           <div class="sub-nav" id="sub-nav5">
                <span>
                                        <a href="GoodAction!getFuzzyGoods?value=mp" target="_blank">mp3/mp4</a>
                                        <a href="GoodAction!getFuzzyGoods?value=相机" target="_blank">相机</a>
                                        <a href="GoodAction!getFuzzyGoods?value=单反" target="_blank">单反</a>
                                        <a href="GoodAction!getFuzzyGoods?value=游戏机" target="_blank">游戏机</a>
                                        <a href="GoodAction!getFuzzyGoods?value=平板" target="_blank">平板</a>
				 </span>
            </div>
        </s:elseif>
        
        <s:elseif test="#type.type_id == 6">
           <div class="sub-nav" id="sub-nav6">
                <span>
                                        <a href="GoodAction!getFuzzyGoods?value=电扇" target="_blank">电扇</a>
                                        <a href="GoodAction!getFuzzyGoods?value=台灯" target="_blank">台灯</a>
                                        <a href="GoodAction!getFuzzyGoods?value=洗衣机" target="_blank">洗衣机</a>
                                        <a href="GoodAction!getFuzzyGoods?value=电吹风" target="_blank">电吹风</a>
                                        <a href="GoodAction!getFuzzyGoods?value=电水壶" target="_blank">电水壶</a>
                                        <a href="GoodAction!getFuzzyGoods?value=空调" target="_blank">空调</a>
                                        <a href="GoodAction!getFuzzyGoods?value=电视" target="_blank">电视</a>
                 </span>
            </div>
        </s:elseif> 
        
        <s:elseif test="#type.type_id == 7">
           <div class="sub-nav" id="sub-nav7">
                <span>
                                        <a href="GoodAction!getFuzzyGoods?value=篮球" target="_blank">篮球</a>
                                        <a href="GoodAction!getFuzzyGoods?value=足球" target="_blank">足球</a>
                                        <a href="GoodAction!getFuzzyGoods?value=球拍" target="_blank">球拍</a>
                                        <a href="GoodAction!getFuzzyGoods?value=哑铃" target="_blank">哑铃</a>
                                        <a href="GoodAction!getFuzzyGoods?value=滑轮" target="_blank">轮滑</a>
				</span>
            </div>
        </s:elseif> 
        
        <s:elseif test="#type.type_id == 8">
        	<div class="sub-nav" id="sub-nav8">
           		<span>
                                        <a href="GoodAction!getFuzzyGoods?value=上衣" target="_blank">上衣</a>
                                        <a href="GoodAction!getFuzzyGoods?value=裤子" target="_blank">裤子</a>
                                        <a href="GoodAction!getFuzzyGoods?value=背包" target="_blank">背包</a>
                                        <a href="GoodAction!getFuzzyGoods?value=雨伞" target="_blank">雨伞</a>
                                        <a href="GoodAction!getFuzzyGoods?value=鞋子" target="_blank">鞋</a>
                                        <a href="GoodAction!getFuzzyGoods?value=帽子" target="_blank">帽子</a>
              	</span>
            </div>
        </s:elseif> 
        
        <s:elseif test="#type.type_id == 9">
           <div class="sub-nav" id="sub-nav9">
                <span>
                                        <a href="GoodAction!getFuzzyGoods?value=教材" target="_blank">教材</a>
                                        <a href="GoodAction!getFuzzyGoods?value=考研" target="_blank">考研</a>
                                        <a href="GoodAction!getFuzzyGoods?value=托福" target="_blank">托福/雅思/GRE</a>
                                        <a href="GoodAction!getFuzzyGoods?value=课外书" target="_blank">课外书</a>
                                    </span>
            </div>
        </s:elseif> 
        
        <s:elseif test="#type.type_id == 10">
           <div class="sub-nav" id="sub-nav10">
                <span>
                                        <a href="GoodAction!getFuzzyGoods?value=租房" target="_blank">租房</a>
                                        <a href="GoodAction!getFuzzyGoods?value=服装" target="_blank">服装</a>
                                        <a href="GoodAction!getFuzzyGoods?value=道具" target="_blank">道具</a>
				 </span>
            </div>
        </s:elseif> 
        
        <s:elseif test="#type.type_id == 11">
           <div class="sub-nav" id="sub-nav11">
                <span>
                                        <a href="GoodAction!getFuzzyGoods?value=乐器" target="_blank">乐器</a>
                                        <a href="GoodAction!getFuzzyGoods?value=日常用品" target="_blank">日常用品</a>
                                        <a href="GoodAction!getFuzzyGoods?value=虚拟账号" target="_blank">虚拟账号</a>
                                        <a href="GoodAction!getFuzzyGoods?value=会员卡" target="_blank">会员卡</a>
                                        <a href="GoodAction!getFuzzyGoods?value=化妆品" target="_blank">化妆品</a>
                </span>
            </div>
        </s:elseif> 
	  </li>
</s:iterator>

  </ul>
</div>