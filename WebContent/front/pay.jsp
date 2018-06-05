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
<link href="CSS/pay.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="JS/jquery.min.js"></script>
<script type="text/javascript" src="JS/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="JS/pay.js"></script>
<title>结算</title>
</head>

<body>
   
  <c:if test="${loginer==null}">
    <script language="javascript">
	window.location.href="<%=basePath%>/front/NoLogin.jsp";
	</script>
  </c:if>
 	
<%@include file="rightbar.jsp"%>
<%@include file="top.jsp"%>
<hr width="100%"  color=" #E34245"  size="1px">

<div class="paybox">
	<div class="topline">
		<h3>确认收货地址</h3>
		<div class="usenewadd">使用新地址</div>
	</div>
	
	<div class="address">
		<ul>
		<c:forEach items="${userAddsList}" var="receive">
		
		    <c:if test='${receive.moren==1}'>
			<li class="selected">
				<div class="name_phone">
					<div class="name">${receive.rece_name}</div>
					<div class="phone">${receive.rece_tel}</div>
				</div>
				<div class="moren active">默认地址</div>
				
				
				<div class="receviebox"> 
				    <span> 收货地址 &nbsp;：&nbsp; </span>
				    <div class="sheng">${receive.shengfen}</div>
					<div class="shi">${receive.shi}</div>
					<div class="xianqu">${receive.xianqu}</div>
					<div class="add"> ${receive.rece_add}</div>
					
				</div>
				
				<div class="rece_id">${receive.rece_id}</div>
				<div class="dobox">
					<div class="setmoren active">
						<span>设为默认</span>&nbsp; |
					</div>
					<div class="bianji">
						<span>编辑</span>&nbsp; |
					</div>
					<div class="delete">
						<span> 删除</span>
					</div>
				</div>
			</li>
			</c:if>
			 
			<c:if test="${receive.moren==0}">
				<li>
				<div class="name_phone">
					<div class="name">${receive.rece_name}</div>
					<div class="phone">${receive.rece_tel}</div>
				</div>
				<div class="moren">默认地址</div>
				
				<div class="receviebox">
				    <span> 收货地址 &nbsp;：&nbsp; </span>
				    <div class="sheng">${receive.shengfen}</div>
					<div class="shi">${receive.shi}</div>
					<div class="xianqu">${receive.xianqu}</div>
					<div class="add"> ${receive.rece_add}</div>
				
				</div>
				<div class="rece_id">${receive.rece_id}</div>
				<div class="dobox">
					<div class="setmoren">
						<span>设为默认</span>&nbsp; |
					</div>
					<div class="bianji">
						<span>编辑</span>&nbsp; |
					</div>
					<div class="delete">
						<span> 删除</span>
					</div>
				</div>
			</li>
			</c:if>
			
			</c:forEach>
			
		</ul>
	</div>
	
	<form action="front/alipay.trade.page.pay.jsp" method="post">
   <div class="payways">
   	<span> 选择支付方式</span>
   	 <ul>
   	 	<li id="weixin">
   	 		<img src="image/weizhifu.jpg">
   	 		<span>微信</span>
   	 	</li>	
   	 	<li id="zhifubao">
   	 		<img src="image/zhifubao.jpg">
   	 		<span>支付宝</span>
   	 	</li>
   	 </ul>
   </div>
   
   	<div class="ordercheck">确认订单信息</div>
   		
   	<div class="infobox">
   		<div class="commodityinfo">商品信息</div>
   		<div class="pricesbox">单价</div>
   		<div class="numberbox">数量</div>
   		<div class="moneybox">金额</div>
   	</div>
	
	<c:forEach items="${orderList}" var="commodity">
	<div class="commoditybox">
		<div class="commodityinfo1">
			<div class="commodityimage">
				<a href="info/commodityinfo.action?comm_id=${commodity.comm_id}"><img src="${commodity.image1}"></a>
			</div>
			<div class="commodityname">
			<a href="info/commodityinfo.action?comm_id=${commodity.comm_id}">${commodity.comm_name_plus}</a>
			</div>
		</div>
		
		<div class="pricesbox1">${commodity.comm_price}</div>
		<div class="numberbox1">${commodity.comm_number}</div>
		<div class="moneybox1">${commodity.sum_price}</div>
		
	</div>
	</c:forEach>
	
	
	<div class="fukuanbox">
		<div class="fukuan">
			<div class="totalprice">
				
				<strong>${totalprice}</strong>
				<span>¥</span>
				<em>实际付款：</em>
				
			</div>
			<div class="useradd">
			  <span>寄送至：</span>
			  <textarea class="add" name="shouhuodizhi" type="text" id="receiveadd" value=""></textarea>
			</div>
			<div class="rece_id1" id="ReceiveID"></div>
			<input class="paymethod" id="paymethods" type="hidden" name="paymethod" value="">
			<input class="subject" name="subject" type="hidden" value="定单">
			<input class="subject" name="order_id" type="hidden" value="${order_id}" id="Order_ID">
			<input class="subject" name="total_amount" type="hidden" value="${totalprice}">
			
			<input id="WIDbody" name="WIDbody"  type="hidden"/>
			<div class="receviepeople">
			   <span>收货人：</span>
			  <input class="name" id="receivename" name="rece_name" value="">
			  <em>&nbsp;</em>
			  <input class="phone" id="receivephone" name="rece_tel" value="">
			</div>
		</div>
		<div class="tijiaobox">
			<input class="tijiao" id="TiJiao" value="提交订单" type="submit">
		</div>
	</div>
	</form>
	
</div>




<form action="shop/addReceive.action?order_id=${order_id}&cust_id=${loginer.cust_id}" method="post" >
<div class="bodybackground"></div>
<div class="newaddbox">
	<div class="newadd"><span>新增地址</span> &nbsp; /Add &nbsp;&nbsp;address</div>
	<div class="infobox1">
		<div class="linebox">
			<div class="xinxibox"><em>收货人</em></div>
			<input type="text" placeholder="收货人" name="receiveName" id="">
		</div>	
		
		<div class="linebox">
			<div class="xinxibox"><em>手机号码</em></div>
			<input type="text" placeholder="手机号码" name="receiveTel" id="">
		</div>	
		
		<div class="linebox">
			<div class="xinxibox"><em>所在地</em></div>
			<select name="sheng" id="sheng" size="1">
			<option value="">=请选择=</option>
			<c:forEach items="${provincesList}" var="provinces">
            <option value="${provinces.provinceid}">${provinces.province}</option>
            </c:forEach>
            </select>
            
            <select name="shi" id="shi" size="1" >
			<option value="">=请选择=</option>
			<c:forEach items="${citiesList}" var="cities">
            <option value="${cities.cityid}">${cities.city}</option>
            </c:forEach>
            </select>
            
              <select name="xianqu" id="xianqu" size="1" >
			<option value="">=请选择=</option>
			<c:forEach items="${areasList}" var="areas">
            <option value="${areas.areaid}">${areas.area}</option>
            </c:forEach>
            </select>
		</div>
		
		
		<div class="linbox1">
			<div class="xinxibox"><em>详细地址</em></div>
			<textarea  rows="3" id="" placeholder="输入详细地址" name="add"></textarea>
		</div>
		
		<div class="linebox2">
			<input  type="submit" value="保存" class="save">
			<div class="exit">取消</div>
		</div>
		
	</div>
</div>
</form>
</body>
</html>
