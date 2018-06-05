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
<link href="CSS/resetpassword@forgetpassword.css" rel="stylesheet" type="text/css" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="JS/jquery.min.js"></script>
<script type="text/javascript" src="JS/reset@forgetpassword.js"></script>
<script type="text/javascript" src="JS/jquery-1.8.3.min.js"></script>
<title>忘记密码/重置密码</title>
</head>
<body>

<c:if test='${select=="forget" }'>
		<script language="javascript">
		$(document).ready(function(){
		$(".select-login").addClass("active");
		$(".select-register").removeClass("active");
		$(".registerbox").hide();
		$(".loginbox").show();
		});
		</script>		
</c:if>

<c:if test='${select=="reset" }'>
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
				<li class="select-login">忘记密码</li>
				<li class="select-register">重置密码</li>
			</ul>
			
			<div class="loginbox">
			<form action="front/forgetpassword.do" method="post">
			 <div class="login-input">
					<input type="text" name="phone" id="phone" placeholder="请输入手机号" >
			 </div>
			 <span class="reminder5" id="reminder5"></span>
			  <div class="login-input">
					<input type="text" name="username" id="password" placeholder="请输入用户名" >
			 </div>
			 <span class="reminder6" id="reminder6"></span>
			 <div class="login-links">
			 	 <input type="checkbox" class="remember" value="">记住密码
			 	 <a href="Select_Reset_Forget.do?select=reset">重置密码</a>
			 </div>
			 
			 <input type="submit" name="login" value="获取密码"  class="inter" >
			  
			</form>
			</div>
			
			<div class="registerbox">
			<form action="front/resetpassword.do" method="post">
			
			  
			 <div class="register-input">
					<input type="text" name="userphone" id="userphone" placeholder="请输入手机号" >
			 </div>
			 <span class="reminder2" id="reminder2"></span>
			 
			 <div class="register-verify">
			
					<input type="password"  name="oldpassword" id="oldpassword" placeholder="请输入原密码" >
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
			 	 <input type="checkbox" class="remember" value="">记住密码
			 	 <a href="Select_Reset_Forget.do?select=forget">忘记密码</a>
			 </div>
			 
			 <input type="submit" name="register" value="重置"  class="inter" >
			  
			</form>
			</div>
		
		
		</div>
	</div>
</div>
</body>
</html>