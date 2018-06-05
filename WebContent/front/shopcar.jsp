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
<link href="CSS/shopcar.css" rel="stylesheet" type="text/css"/>
<script type="text/javascript" src="JS/jquery.js"></script>
<script type="text/javascript" src="JS/shopcar.js"></script>
<title>购物车</title>


</head>
<body>

<c:if test="${loginer==null}">
    <script language="javascript">
	alert("您还未登录，请登录!");
	window.location.href="<%=basePath%>/front/register_login.jsp";
	</script>
</c:if>

<%@include file="rightbar.jsp"%>
<%@include file="top.jsp"%>
<hr width="100%"  color=" #E34245"  size="1px">
<form action="shop/JoinOrder.action" method="post">
  <div class="shopcarbx">
 	<div class="infobox">
 		 <div class="commodityinfo">商品信息</div>
 		 <div class="pricesbox">单价</div>
 		 <div class="numberbox">数量</div>
 		 <div class="moneybox">金额</div>
 		 <div class="dobox">操作</div>
 	</div>
 	
 	<c:forEach items="${shopcarList}" var="shopcarinfo">
 	<div class="commoditybox">
 		<div class="fengelan"></div>
 		
 		<div class="commodityinfo1" >
 		  
		  <div class="checkbox">
			<input type="checkbox" class="Checkbox" name="comm_id" id="" value="${shopcarinfo.comm_id}"> 
		  </div>
 			<div class="commodityimage">
	       <a href="info/commodityinfo.action?comm_id=${shopcarinfo.comm_id}"><img src="${shopcarinfo.image1}"  alt=""/> </a>
		    </div>
		    <div class="commodityname">
		    	<a href="info/commodityinfo.action?comm_id=${shopcarinfo.comm_id}"> ${shopcarinfo.comm_name_plus}</a>
		    </div> 
 		</div>
 		
 		<div class="pricesbox1"  id="comm_price" name="comm_price" value="${shopcarinfo.comm_price}" >${shopcarinfo.comm_price}</div>
 		
 		<div class="numberbox1">
 		  <input class="reduce" name="" id="${shopcarinfo.comm_id}"  id="reduce"  type="button" value="-">
 		  <input class="commoditynumber" name="commoditynumber"  type="number" value="${shopcarinfo.comm_number}" >
 		  <input class="add" name="" id="${shopcarinfo.comm_id}" id="add" type="button"   value="+">	
 		</div>
 		
 		<div class="moneybox1"   name="totalPrice"  value="${shopcarinfo.totalPrice}">  ${shopcarinfo.totalPrice}</div>
 		
 		<div class="dobox1">
 			<div class="joinfavorites">移入收藏夹</div>
 			<div class="delect">删除</div>
 		   <div class="comm_id"  value="${shopcarinfo.comm_id}">${shopcarinfo.comm_id}</div>
 		</div>
 	</div>
 	</c:forEach>
 	
 	<div class="hejibox">
	 	<div class="quanxuanbox">
	 		<div class="quanxuan">
	 			<input type="checkbox" name="" id="checkAll" value="">
	 		</div>
	 		<span>全选</span>
	 	</div>
	 	
	 	<div class="selectedbox">
	 		<div class="selectedcommoity">已选商品&nbsp;<label id="selectednumber">0</label>&nbsp;件&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;合计：￥<label id="seletedtotalprice">0.00</label></div>
	 		<input class="jiesuanbox" id="jiesuan" type="submit" value="结算">
	 	</div>
	 </div>

 	
 </div>
 </form>
</body>
</html>