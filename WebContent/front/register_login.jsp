<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  <!--使  c: if判断有用  -->
    <%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=basePath%>"/>
<link href="CSS/register_login.css" rel="stylesheet" type="text/css" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="JS/jquery.min.js"></script>
<script type="text/javascript" src="JS/register_login.js"></script>
<script type="text/javascript" src="JS/jquery-1.8.3.min.js"></script>
<meta content="no-cache" http-equiv="pragma">
<meta content="no-cache" http-equiv="cache-control">
<meta content="0" http-equiv="expires">
<meta content="no-cache" http-equiv="pragma">
<title>注册/登录</title>
</head>
<body>

<script type="text/javascript">
function changeCode2(){
var img=document.getElementById("codeimg2");
//img.setAttribute("src","Code.do");// XML Dom语法
img.src="front/CodeRegister.action?time="+new Date().getTime();
}

function changeCode1(){
	var img=document.getElementById("codeimg1");
	//img.setAttribute("src","front/Code.action");// XML Dom语法
	img.src="front/CodeLogin.action?time="+new Date().getTime();
	}
</script>
<c:if test='${param.select=="login" }'>
		<script language="javascript">
		$(document).ready(function(){
		$(".select-login").addClass("active");
		$(".select-register").removeClass("active");
		$(".registerbox").hide();
		$(".loginbox").show();
		});
		</script>		
</c:if>
<c:if test='${param.select=="register" }'>
		<script language="javascript">
		$(document).ready(function(){
		$(".select-register").addClass("active");
		$(".select-login").removeClass("active");
		$(".loginbox").hide();
		$(".registerbox").show();
		});
		</script>		
</c:if>
<div class="bigbox">
	<div class="smallbox">
		<div class="imgbox"><img src="image/big.jpg" width="572" height="412" alt=""/></div>
		<div class="login-register">
			<ul class="selectbox">
				<li class="select-login">用户登录</li>
				<li class="select-register">用户注册</li>
			</ul>
			
			<div class="loginbox">
			<form action="front/Login.action" method="post">
			 <div class="login-input">
					<input type="text" name="cust_phone" id="phone" placeholder="请输入手机号" >
			 </div>
			 <span class="reminder5" id="reminder5"></span>
			  <div class="login-input">
					<input type="password" name="cust_password" id="password" placeholder="请输入密码" >
			 </div>
			 
			 <div class="register-verify">
			
					<input type="text"  name="code" id="code" placeholder="请输入验证码" >
					
			 </div>
			 
			 <div class="code">
					<img src="front/CodeLogin.action" id="codeimg1" onclick="changeCode1()" alt="点击换图片"/>
			 </div>
			
			 
			 <span class="reminder6" id="reminder6"></span>
			 <div class="login-links">
			 	 <input type="checkbox" class="remember" value="">记住密码
			 	 <a href="Select_Reset_Forget.do?select=forget">忘记密码</a>
			 </div>
			 
			 <input type="submit" name="login" value="登录"  class="inter" >
			  
			</form>
			</div>
			
			<div class="registerbox">
			<form action="front/register.action" method="post">
			  <div class="register-input">
			   <input type="text" name="username" id="username" placeholder="请输入昵称" >
			 </div>
			  <span class="reminder1" id="reminder1"></span>
			  
			 <div class="register-input">
					<input type="text" name="userphone" id="userphone" placeholder="请输入手机号" >
			 </div>
			 <span class="reminder2" id="reminder2"></span>
			 
			 <div class="register-verify">
			
					<input type="text"  name="verify_value" id="verify_value" placeholder="请输入验证码" >
					
			 </div>
			 
			 <div class="code">
					<img src="front/CodeRegister.action" id="codeimg2" onclick="changeCode2()" alt="点击换图片"/>
			 </div>
			 <span class="reminder-verify" id="reminder-verify"></span>
			 
			  <div class="register-input">
					<input  type="password" name="userpassword" id="userpassword" placeholder="设置密码" >
			 </div>
			 <span class="reminder3" id="reminder3"></span>
			
			 <div class="register-input">
				  
					<input  type="password" name="repassword" id="repassword" placeholder="确认密码" >
			 </div>
			  <span class="reminder4" id="reminder4"></span>
			 
			 <div class="login-links">
			 	 <input type="checkbox" class="remember" value="" id="agree">点击表示您同意商城《服务协议》
			 </div>
			 
			 <input type="submit" name="register" value="注册"  class="inter" id="Register">
			  
			</form>
			</div>
		
		
		</div>
	</div>
</div>
</body>
</html>