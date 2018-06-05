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
<base href="<%=basePath%>"/>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="CSS/success.css" rel="stylesheet" type="text/css" />
<title>付款成功</title>
</head>

<body>
  <c:if test="${loginer==null}">
    <script language="javascript">
	window.location.href="<%=basePath%>/front/NoLogin.jsp";
	</script>
  </c:if>
<%@include file="top.jsp"%>
<%@include file="rightbar.jsp"%>
 <div class="successbox">
 	<div class="successbox1">
 		<div class="infobox">
 			<div class="a">
 				您已成功付款
 			</div>
 			<div class="b">
 				<em>付款金额</em>
 				<span>¥${paysuccess.totalprice}</span>
 			</div>
 			<div class="infobox1">
 				<div class="receivebox">
 					<p>
 						收货人：${paysuccess.rece_name}
 					</p>
 					<p>
 					    联系电话：${paysuccess.rece_tel}
 					</p> 
 					<p>
 						收货地址：${paysuccess.rece_add}
 					</p>
 				</div>
 			</div>
 			<div class="c">
 				<span>
 					请认真核对您的收货信息，如有错误请联系客服
 				</span>
 			</div>
 			
 			<div class="d">
 				<em>您可以</em>
				<a href="shop/AllOrder.action"><em>查看</em><span> 已经买到的宝贝</span></a>
				<a href="shop/OrderInfo.action?order_id=${paysuccess.order_id}"><em>查看</em><span> 交易详情</span></a>
 			</div>
 			
 		</div>
 	</div>
 </div>
</body>
</html>