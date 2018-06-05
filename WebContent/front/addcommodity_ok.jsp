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

<c:if test='${flag==1 }'>
		<script language="javascript">
		alert("添加商品成功!");
		window.location.href="<%=basePath%>/front/commodityupload.jsp";
		</script>		
</c:if>

<c:if test='${flag==0 }'>
		<script language="javascript">
		alert("添加商品失败，请重新添加!");
		window.location.href="<%=basePath%>/front/commodityupload.jsp";
		</script>		
</c:if>

</body>
</html>