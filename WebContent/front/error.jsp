<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  <!--使  c: if判断有用  -->
      
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=basePath%>"/>  <!--保证在相对路径  -->
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>密码错误</title>
</head>
<body>
			
		
		<c:if test='${flag=="PasswordError"}'>
		<script language="javascript">
		alert("密码错误，请重新输入!");
		window.location.href="<%=basePath%>/front/register_login.jsp";
		</script>
		</c:if>	
		
		<c:if test='${flag=="UserIsNotExist"}'>
		<script language="javascript">
		alert("用户不存在，请重新输入!");
		window.location.href="<%=basePath%>/front/register_login.jsp";
		</script>
		</c:if>	
		
		<c:if test='${flag=="CodeError"}'>
		<script language="javascript">
		alert("验证码错误!");
		window.location.href="<%=basePath%>/front/register_login.jsp";
		</script>		
        </c:if>	
        
        <c:if test='${flag=="CodeNull"}'>
		<script language="javascript">
		alert("您没有输入验证码!");
		window.location.href="<%=basePath%>/front/register_login.jsp";
		</script>		
       </c:if>

</body>
</html>