<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html lang="UTF-8">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>校园二手街</title>
<link href="CSS/registered.css" rel="stylesheet" type="text/css" />
<link href="CSS/registered-style.css" rel="stylesheet" type="text/css" />
<script src="Js/jquery-1.10.1.js"></script>
<script src="Js/sc-js.js"></script>
<script>
	$(document).ready(function(){
		var usernameValidate=false,passwordValidate=false,repasswordValidate=false,selectDepartment=false;
			var isValidate=false;
			$("#username").blur(function(){
				var val = $(this).val();
				var reg = /[0-9a-zA-Z\u4E00-\u9FA0]{3,16}/;
				if(isNullOrBlankOrUD(val)){
					$("#username_info").html('<span class="icon-cancel-circle light_pink"></span><span class="light_pink"> 用户名为必填项</span>');
					usernameValidate = false;
				}else if(!reg.test(val)){
					$("#username_info").html('<span class="icon-cancel-circle light_pink"></span><span class="light_pink"> 必须由3-16位组成</span>');
					usernameValidate = false;
				}else{
					$("#username_info").html('<span class="icon-checkmark-circle correct_text"></span>');
					usernameValidate = true;
				}
			});		
			$("#Select_Department").blur(function(){
				var val = $(this).val();
				var reg = /^[\u4E00-\u9FA0]+$/;
				if(isNullOrBlankOrUD(val)){
					$("#selectDepartment_info").html('<span class="icon-cancel-circle light_pink"></span><span class="light_pink"> 院系为必填项</span>');
					selectDepartment = false;
				}else if(!reg.test(val)){
					$("#selectDepartment_info").html('<span class="icon-cancel-circle light_pink"></span><span class="light_pink"> 必须由3-16位的汉字组成</span>');
					selectDepartment = false;
				}else{
					$("#selectDepartment_info").html('<span class="icon-checkmark-circle correct_text"></span>');
					selectDepartment = true;
				}
			});
			
			
			$("#password").blur(function(){
				var val = $(this).val();
				var reg = /[a-zA-z0-9]{6,25}/;
				if(isNullOrBlankOrUD(val)){
					$("#password_info").html('<span class="icon-cancel-circle light_pink"></span><span class="light_pink"> 密码为必填项</span>');
					passwordValidate = false;
				}else if(!reg.test(val)){
					$("#password_info").html('<span class="icon-cancel-circle light_pink"></span><span class="light_pink"> 必须由6-25位的字母或数字组成</span>');
					passwordValidate = false;
				}else{
					$("#password_info").html('<span class="icon-checkmark-circle correct_text"></span>');
					passwordValidate = true;
				}
			});
			$("#repassword").blur(function(){
				var val = $(this).val();
				var password = $("#password").val();
				var reg = /[a-zA-z0-9]{6,25}/;
				if(isNullOrBlankOrUD(val)){
					$("#repassword_info").html('<span class="icon-cancel-circle light_pink"></span><span class="light_pink"> 重复密码为必填项</span>');
					repasswordValidate = false;
				}else if(!reg.test(val)){
					$("#repassword_info").html('<span class="icon-cancel-circle light_pink"></span><span class="light_pink"> 必须由6-25位的字母或数字组成</span>');
					repasswordValidate = false;
				}else if(val != password){
					$("#repassword_info").html('<span class="icon-cancel-circle light_pink"></span><span class="light_pink"> 重复密码必须与密码一致</span>');
					repasswordValidate = false;
				}else{
					$("#repassword_info").html('<span class="icon-checkmark-circle correct_text"></span>');
					repasswordValidate = true;
				}
			});

			$("#register_form").submit(function(){
				isValidate = usernameValidate&&passwordValidate&&repasswordValidate;
				if(!isValidate){
					alert("请正确填写表单后再提交！");
				}
				return isValidate;
			});
			
			$("#registerBtn").click(function(){
				$("#register_form").submit();
			});

	});

	</script>
</head>
<body class="body">
<!--头部-->
		<%@ include file="includeJSP/head.jsp" %>
<!--中间内容-->
<div id="main">
			<h3>用户注册</h3>
			<br/>
			<form action="users!register" id="register_form" method="post">
				<label for="username">用户名：</label>
				<input type="text" name="regUser.user_name" id="username"/>
				<span id="username_info">
					<span class="icon-info info_text"></span>
					<span class="info_text"> 必填，由3-16位的字母或数字组成</span>
				</span><br/>
				<label for="password">密码：</label>
				<input type="password" name="regUser.user_password" id="password"/>
				<span id="password_info">
					<span class="icon-info info_text"></span>
					<span class=" info_text"> 必填，由6-25位的字母或数字组成</span>
				</span><br/>
				<label for="repassword">重复密码：</label>
				<input type="password" name="repassword" id="repassword"/>
				<span id="repassword_info">
					<span class="icon-info info_text"></span>
					<span class=" info_text"> 必填，与密码一致</span>
				</span><br/>
                 <label for="Select_Department">输入院系：</label> 
                <input type="text" name="regUser.user_department" id="Select_Department"/>         
				<span id="selectDepartment_info">
					<span class="icon-info info_text"></span>
					<span class=" info_text"> 必填选项</span>
				</span><br/>
               
                <label for="Chooseschool">选择学校：</label>
                <select name="regschool.school_name" id="Chooseschool">  
                  <option value="湖南软件职业学院">湖南软件职业学院</option>  
                    <option value="湖南科技大学">湖南科技大学</option>     
                </select> 
				<span id="repassword_info">
					<span class="icon-info info_text"></span>
					<!--<span class=" info_text"> 必选项选</span>-->
				</span><br/>
				<div class="action-bar">
					<a class="submit_btn large_btn" id="registerBtn" ><span class="icon-user3"></span> 注册</a>
				</div>
			</form>
		</div>
		<div><s:debug></s:debug> </div>
</body>
</html>