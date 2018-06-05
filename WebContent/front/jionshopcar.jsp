<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=basePath%>"/>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="CSS/joinshopcar.css" rel="stylesheet" type="text/css" />
<title>成功加入购物车</title>
</head>
<body>
<%@include file="top.jsp"%>
<hr width="100%"  color=" #E34245"  size="2px">
<div class="bodybox">
  <div class="box1">
		<img src="image/success.png"  alt=""/>
    <span>商品已成功加入购物车</span>
  </div>
  
  <div class="box2">
  	<img src="${carMo.image1}"  alt=""/>
  	<div class="info">
  		<span>${carMo.comm_name_plus}</span>
  		<em>数量：${number}</em>
  	</div>
  	
  	<div class="lookinfo">
  		<a href="info/commodityinfo.action?comm_id=${carMo.comm_id}">查看商品详情</a>
  	</div>
  	
  	<div class="lookshopcar">
  		<a href="shop/showMyShopCar.action">去购物车结算 &gt;</a>
  	</div>
  </div>
  
  
</div>
</body>
</html>

