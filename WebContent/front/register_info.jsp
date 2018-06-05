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
</head>
<body>

    	
 <c:if test='${flag=="RegisterOK" }'>
		<script language="javascript">
		alert("注册成功!");
		window.location.href="<%=basePath%>/front/register_login.jsp";
		</script>		
</c:if>
<c:if test='${flag=="UserNameIsNull" }'>
		<script language="javascript">
		alert("用户名不能为空，请重新注册!");
		window.location.href="<%=basePath%>/front/register_login.jsp";
		</script>		
</c:if>

<c:if test='${flag=="UserPhoneIsNull" }'>
		<script language="javascript">
		alert("手机号不能为空，请重新注册!");
		window.location.href="<%=basePath%>/front/register_login.jsp";
		</script>		
</c:if>



<c:if test='${flag=="CodeIsNull" }'>
		<script language="javascript">
		alert("验证码不能为空，请重新注册！");
		window.location.href="<%=basePath%>/front/register_login.jsp";
		</script>		
</c:if>

<c:if test='${flag=="UserPasswordIsNull" }'>
		<script language="javascript">
		alert("密码不能为空，请重新注册！");
		window.location.href="<%=basePath%>/front/register_login.jsp";
		</script>		
</c:if>

<c:if test='${flag=="RePasswordIsNull" }'>
		<script language="javascript">
		alert("确认密码不能为空，请重新注册！");
		window.location.href="<%=basePath%>/front/register_login.jsp";
		</script>		
</c:if>

<c:if test='${flag=="CodeError" }'>
		<script language="javascript">
		alert("验证码错误，请重新注册！");
		window.location.href="<%=basePath%>/front/register_login.jsp";
		</script>		
</c:if>
<c:if test='${flag=="PasswordIsDifferent" }'>
		<script language="javascript">
		alert("两次密码不一致!请重新注册！");
		window.location.href="<%=basePath%>/front/register_login.jsp";
		</script>		
</c:if>
<c:if test='${flag=="UserIsExist" }'>
		<script language="javascript">
		alert("此手机号已注册!");
		window.location.href="<%=basePath%>/front/register_login.jsp";
		</script>		
</c:if>
</body>
</html>