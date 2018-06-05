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

<c:if test='${flag==1}'>
		<script language="javascript">
		alert("您未选择收货地址!");
		window.location.href="<%=basePath%>/JieSuan.do?order_id="+order_id;
		</script>	
</c:if>

<c:if test='${flag==2}'>
		<script language="javascript">
		alert("您未选择支付!");
		window.location.href="<%=basePath%>/JieSuan.do?order_id="+order_id;
		</script>	
</c:if>

<c:if test='${flag==3}'>
		<script language="javascript">
		alert("收货地址和支付都未选择!");
		window.location.href="<%=basePath%>/JieSuan.do?order_id="+order_id;
		</script>	
</c:if>
</body>
</html>