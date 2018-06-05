<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  <!--使  c: if判断有用  -->
 <link href="CSS/cebianstyle.css" rel="stylesheet" type="text/css" />
 <script type="text/javascript" src="JS/cebian.js"></script>
 <script type="text/javascript" src="JS/jquery-1.8.3.min.js"></script>
 <script type="text/javascript" src="JS/jquery.min.js"></script>
<div class="right-sidebar">
	<div class="user"><a href="#"><img src="image/userimg.png" width="20" height="20" alt=""/></a>
	  <div class="userbox">
           <div class="img"><img src="image/touxiang.png" alt=""/></div>
           <div class="info">
           
           		<li>
           			用户名：${loginer.cust_name}
           		</li>
           		<li>
           			积分：
           		</li>
           	
           </div>
           <div class="box">
           	<div class="box1">我的订单</div>
           	<div class="box1">我的收藏</div>
           </div>
	  </div>
	</div>
	
	
	<div class="shoppingcar">
	
	   <c:if test="${loginer!=null}">
	    <a href="shop/showMyShopCar.action">
		<div class="img"><img src="image/shoppingcar.png" alt=""/></div>
		<p>购物车</p>
		
		<div class="num">${shoppingnumber}</div>
		</a>
	  </c:if>
	  
	   <c:if test="${loginer==null}">
	    <a href="ShowMyShopCar.do">
		<div class="img"><img src="image/shoppingcar.png" alt=""/></div>
		<p>购物车</p>
		
		<div class="num">0</div>
		</a>
	  </c:if>
	  
	</div>
	
	<div class="foot">
		<a href="#"><img src="image/zuji.png"  alt=""/></a>
		<div class="myfoot">我的足迹</div>
	</div>
	
	<div class="shoucang">
		<a href="#"><img src="image/wdsc.png"  alt=""/></a>
		<div class="myshoucang">我的收藏</div>
	</div>
	
	<div class="kefu">
		<!--  <a href="#"><img src="image/kefu.png" alt=""/>--><a target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=714491235&site=qq&menu=yes"><img border="0" src="http://wpa.qq.com/pa?p=2:714491235:52" alt="点击这里给我发消息" title="点击这里给我发消息"/></a><!-- </a> -->
		<div class="mykefu">客服中心</div>
	</div>
	
<div class="returntop">
		<img src="image/returntop.png" alt=""/>
	</div>
	
</div>