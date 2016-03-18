<!--  -->
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<div class="top">
  <div class="logo">
	<a href="GoodAction!getAllGoods">
        <img class="logo ease2" src="image/1_01.jpg">
    </a>
    </div>
<div class="header-main center ease2">
        <a href="GoodAction!getAllGoods" class="slogan">
            <img src="image/2shoujie_web_title.png">
        </a>
        <div class="search-box-wr ease2">
            <form class="search-box" action="/search" method="get" >
                <input type="submit" class="search-submit" value="搜索" onMouseOut="this.style.backgroundColor=''" onMouseOver="this.style.backgroundColor='#00AD91'"/>
                <div class="input-wr">
                    <img class="search-icon" src="image/search-icon.png">
                    <div class="search-input">
                    <input name="keyword" id="jquery" x-webkit-speech="" type="text" placeholder="搜索你想要的二货">
                    </div>
                </div>
            </form>
            <div class="search-hots center ease2">
                <span>热门：</span>
                                <a class="hots" href="GoodAction!getFuzzyGoods?value=自行车" target="_blank">自行车</a>
                                <a class="hots" href="GoodAction!getFuzzyGoods?value=运动健身" target="_blank">运动健身</a>
                                <a class="hots" href="GoodAction!getFuzzyGoods?value=教材" target="_blank">教材</a>
                                <a class="hots" href="GoodAction!getFuzzyGoods?value=生活娱乐" target="_blank">生活娱乐</a>
                            </div>
        </div>
       <div id="login-bar">
         <div id="login-msg">
			 <span class="icon-cancel-circle light_pink"></span>
			 <span class="light_pink"> 用户名不可为空！</span>
		   </div>
				
				<!-- 如果session中没有loginUser对象，则代表未登录，显示登录表单 -->
				<s:if test="#session.loginUser == null">
					<form action="login" method="get" id="loginForm">
					<input type="text" name="loginUser.username" placeholder="用户名"/>
					<input type="password" name="loginUser.password" placeholder="密码"/>
					<a class="submit_btn" id="loginBtn" href="#"><span class="icon-enter"></span> 登录</a><a class="normal_btn" href="registered.html"><span class="icon-user3"></span> 注册</a>
					</form>
				</s:if>
				<!-- 否则，代表已登录，显示欢迎信息 -->
				<!--<s:else>
				<div id="welcome">
				<span class="green"><s:property value="#session.loginUser.username"/></span> 您好！欢迎回来
				<a class="submit_btn" href="logout"><span class="icon-exit"></span> 退出登录</a>
				</div>
               </s:else>
             </div -->
    </div>
</div>
</div>