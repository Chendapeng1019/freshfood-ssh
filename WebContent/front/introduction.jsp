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
<link href="CSS/introduction.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="JS/jquery.min.js"></script>
<script type="text/javascript" src="JS/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="JS/introduction.js"></script>
<title>商品详情</title>
</head>

<body>
<%@include file="top.jsp"%>
<%@include file="rightbar.jsp"%>
<div class="bodybox">
	<div class="linebox">
		<a href="home/search.action?search=${commoditynames.bigtype_name}">${commoditynames.bigtype_name}</a>
		<em>/</em>
		<a href="home/search.action?search=${commoditynames.smalltype_name}">${commoditynames.smalltype_name}</a>
		<em>/</em>
		<a href="home/search.action?search=${commoditynames.commodity_name}">${commoditynames.commodity_name}</a>
	</div>
	
	<div class="commoditybox">
		<div class="imgbox"><img src="${commodityinfo.image2}"  alt=""/></div>
		<div class="xuanze">
			<div class="nameline">${commodityinfo.comm_name_plus}</div>
			<div class="pricebox">
				<ul>
					<li>
						<div class="p">店铺优惠</div>
						<div class="youhui">
							<p>购物满2件打8折,满3件7折</p>
						</div>
					</li>
					<li>
						<div class="p">促销价</div>
						<div class="cuxiao">
							<em>¥</em>
							<p>${commodityinfo.comm_price}</p>
						</div>
					</li>
					<li>
						<div class="p">原价</div>
						<div class="yuanjia">
							<em>¥</em>
							<p>${commodityinfo.comm_price+15}</p>
						</div>
					</li>
				</ul>
			</div>
			<div class="xiaoliangbox">
				<div class="a"><em>月销量</em><p>${commodityinfo.sales_number}</p></div>
				<div class="a"><em>总销量</em><p>${commodityinfo.sales_number}</p></div>
				<div class="b"><em>累计评价</em><p>${commodityinfo.comment_number}</p></div>
			</div>
		<form action="shop/joinShopCar.action?comm_id=${commodityinfo.comm_id}&comm_price=${commodityinfo.comm_price}" method="post">
			<div class="numberbox">
				<input class="number" type="number" value="1" name="number" >
				<div class="addreduce">
					<input class="add" type="button" name="add" value="+">
					<input class="reduce" type="button" name="reduce" value="-">
				</div>
				<!--  <div class="jionshopcar"><a href="">加入购物车</a></div>-->
				<input type="submit" value="加入购物车" class="jionshopcar">
				<div class="kucun">库存${commodityinfo.comm_number}件</div>
			</div>
		</form>
		</div>
		
	</div>
	
	
	
  <div class="infobox">
		<div class="infoline">
			<ul>
			  <li class="active">商品介绍</li>
			  <li>商品评价（${commodityinfo.comment_number}+）</li>
			</ul>
	</div>
		
	<div class="c">产品参数</div>
		<div class="d">
			<ul>
				<li>产品类型：烘炒类</li>
				<li>原产地：巴基斯坦</li>
				<li>产地：湖北省武汉市</li>
			</ul>
			<ul>
				<li>配料表：进口松子、食用油</li>
				<li>产品规格：210g</li>
				<li>保质期：180天</li>
			</ul>
			<ul>
				<li>产品标准号：GB/T22165</li>
				<li>生产许可证：QS420118010226</li>
				<li>存储方法：请放置于常温、阴凉、通风、干燥...</li>
			</ul>
				<ul>
				<li>食用方法：看说明书</li>
			</ul>
		</div>
	<div class="c">商品细节</div>
		<div class="e">
			<ul>
			  <c:forEach items="${commodityimages}" var="images">
				<li><img src="${images.images}" alt=""/></li>
				</c:forEach>
			</ul>
	  </div>
	</div>
	
</div>


</body>
</html>
