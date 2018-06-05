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
<base href="<%=basePath%>"/>  <!--保证在相对路径  -->
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>注册</title>
<style>
	.forgetbox{
		width: 400px;
		height: 200px;
		margin: 240px auto;
		border:#7F7576 2px solid;
		
		
	}	
	.password{
		width: 400px;
		height: 40px;
		float:left;
		margin-top: 80px;
	}
	
	.password span{
		width: 100px;
		height: 40px;
		float:left;
		margin-left: 80px;
		line-height: 40px;
		text-align: center;
		font-size: 16px;
	}
	.password strong{
		width: 200px;
		height: 40px;
		float:left;
		line-height: 40px;
		font-size: 20px;
		color: #1494D3;
		font-weight: 800;
	}
	.password a{
		width:80px;
		height: 25px;
		line-height: 25px;
		float: right;
		text-align: center;
		margin-top: 45px;
		margin-right: 15px;
	}
	.password a:hover{
		color:#D9393C;
	}
	
	.password em{
	    width: 400px;
		height: 40px;
		float:left;
		line-height: 40px;
		text-align: center;
		font-size: 20px;
		color: #1494D3;
		font-weight: 800;
		font-style: normal;
	} 
</style>
</head>
<body>
<c:if test='${flag=="UserExist" &&flag1==true}'>
		 <div class="forgetbox">
		    <div class="password">
		    <em>修改密码成功!返回登录界面！</em>
		    <a href="front/register_login.do?select=login">登录</a>
		     </div>
		 </div>		
</c:if>


<c:if test='${flag=="UserExist" &&flag1==false}'>
		 <div class="forgetbox">
		    <div class="password">
		    <em>修改密码失败!请重新修改！</em>
		    <a href="Select_Reset_Forget.do?select=reset">返回</a>
		     </div>
		 </div>		
</c:if>


<c:if test='${flag=="PasswordDifferent" }'>
		 <div class="forgetbox">
		    <div class="password">
		    <em>两次密码输入不一致！</em>
		    <a href="Select_Reset_Forget.do?select=reset">返回</a>
		     </div>
		 </div>		
</c:if>

<c:if test='${flag=="NoUser" }'>
		 <div class="forgetbox">
		    <div class="password">
		    <em>此用户不存在！</em>
		    <a href="Select_Reset_Forget.do?select=reset">返回</a>
		     </div>
		 </div>		
</c:if>


</body>
</html>