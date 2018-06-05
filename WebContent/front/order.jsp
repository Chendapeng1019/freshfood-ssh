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
<link href="CSS/order.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="JS/jquery.min.js"></script>
<script type="text/javascript" src="JS/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="JS/order.js"></script>
<title>订单管理</title>
</head>
    
<body>
   <c:if test="${loginer==null}">
    <script language="javascript">
	window.location.href="<%=basePath%>/front/NoLogin.jsp";
	</script>
  </c:if>
<%@include file="top.jsp"%>
<%@include file="rightbar.jsp"%>
  <div class="body">
  <div class="bodybox">
     
  	<div class="libox">
  		<div class="usecenter">
			<img src="image/user.png" alt=""/> 
			<a href="">个人中心</a>
	    </div>
	    
	    <div class="a">
   	    <img src="image/gerenziliao.png" /> 
   	    <span>个人资料</span>
   	    </div>
   	    <ul>
   	    	<li><a href="">个人信息</a></li>
   	    	<li><a href="">安全设置</a></li>
   	    	<li><a href="">地址管理</a></li>
   	    </ul>
   	    
   	    
   	    <div class="a">
   	    <img src="image/jiaoyi.png" /> 
   	    <span>我的交易</span>
   	    </div>
   	    <ul>
   	    	<li><a href="shop/AllOrder.action">订单管理</a></li>
   	    	<li><a href="">退款售后</a></li>
   	    	<li><a href="">评价商品</a></li>
   	    </ul>
   	    
   	    
   	    <div class="a">
   	    <img src="image/shoucang.png" /> 
   	    <span>我的收藏</span>
   	    </div>
   	    <ul>
   	    	<li><a href="">收藏</a></li>
   	    	<li><a href="">足迹</a></li>
   	    </ul>
   	    
   	    
   	    <div class="a">
   	    <img src="image/kefu1.png" /> 
   	    <span>在线客服</span>
   	    </div>
   	    <ul>
   	    	<li><a href="">商品咨询</a></li>
   	    	<li><a href="">意见反馈</a></li>
   	    	<li><a href="">我的消息</a></li>
   	    </ul>
   	   
  	</div>
  	
  	
  	<div class="mainbox">
  		<div class="linebox">
  			<p>订单管理&nbsp;</p>
  			<span>/&nbsp;Order</span>
  		</div>
 	    
  	    <div class="b">
  	    	<ul>
  	    		<li class="active" id="tab1">所有订单</li>
  	    		<li id="tab2">待付款</li>
  	    		<li id="tab3">待发货</li>
  	    		<li id="tab4">待收货</li>
  	    		<li id="tab5">待评价</li>
  	    	</ul>
  	    </div> 
  	    
  	    <div class="c">
  	      <ul>
			<li class="tab1"> <!--所有订单-->
				<div class="linebox1">
					<div class="commodityline">商品</div>
					<div class="priceline">单价</div>
					<div class="numberline">数量</div>
					<div class="doline">商品操作</div>
					<div class="caozuoline">交易操作</div>
					<div class="hejiline">合计</div>
					<div class="zhuangtailine">交易状态</div>
				</div>
         <c:forEach items="${allOrderInfo}" var="AllOrder">
           <c:if test='${AllOrder.is_receive==1&&AllOrder.is_comment==1}'>
				<div class="commoditybox">
					 <div class="IDTime">
						<p>订单编号：${AllOrder.order_id}</p>
						<p>成交时间：${AllOrder.paymoney_time}</p>
					 </div>
					<div class="commodityinfo">
						<ul>
						   <c:forEach items="${AllOrder.commodityList}" var="cList">
							<li>
								<img src="${cList.image1}" /> 
								<div class="commodityname">
								  <a href="info/commodityinfo.action?comm_id=${cList.comm_id}">${cList.comm_name_plus}</a>
								</div>
								<div class="price">${cList.comm_price}</div>
								<div class="number">x${cList.comm_number}</div>
								<div class="dobox"></div>
								<div class="caozuobox">删除订单</div>
							</li>
							</c:forEach>
						</ul>

						<div class="hejibox">合计：${AllOrder.totalprice}</div>
						<div class="zhuangtaibox">
							<p>交易成功</p>
							<a href="shop/OrderInfo.action?order_id=${AllOrder.order_id}">订单详情</a>
						</div>
					</div>
				</div>
			</c:if>
			
			<c:if test='${AllOrder.is_receive==1&&AllOrder.is_comment==0}'>
				<div class="commoditybox">
					 <div class="IDTime">
						<p>订单编号：${AllOrder.order_id}</p>
						<p>成交时间：${AllOrder.paymoney_time}</p>
					 </div>
					<div class="commodityinfo">
						<ul>
						 <c:forEach items="${AllOrder.commodityList}" var="cList">
							<li>
								<img src="${cList.image1}" /> 
								<div class="commodityname">
								  <a href="info/commodityinfo.action?comm_id=${cList.comm_id}">${cList.comm_name_plus}</a>
								</div>
								<div class="price">${cList.comm_price}</div>
								<div class="number">x${cList.comm_number}</div>
								<div class="dobox"></div>
								<div class="caozuobox1"><a href="" id="">评价商品</a></div>
							</li>
							</c:forEach>
						</ul>

						<div class="hejibox">合计：${AllOrder.totalprice}</div>
						<div class="zhuangtaibox">
							<p>交易成功</p>
							<a href="shop/OrderInfo.action?order_id=${AllOrder.order_id}">订单详情</a>
						</div>
		
					</div>
				</div>
					
			</c:if>
			
			<c:if test='${AllOrder.order_state=="未支付"}'>
				<div class="commoditybox">
					 <div class="IDTime">
						<p>订单编号：${AllOrder.order_id}</p>
						<p>成交时间：${AllOrder.order_time}</p>
					 </div>
					<div class="commodityinfo">
						<ul>
						<c:forEach items="${AllOrder.commodityList}" var="cList">
							<li>
								<img src="${cList.image1}" /> 
								<div class="commodityname">
								  <a href="info/commodityinfo.action?comm_id=${cList.comm_id}">${cList.comm_name_plus}</a>
								</div>
								<div class="price">${cList.comm_price}</div>
								<div class="number">x${cList.comm_number}</div>
								<div class="dobox"></div>
								<div class="caozuobox1"><a href="shop/JieSuan.action?order_id=${AllOrder.order_id}" id="">一键支付</a></div>
							</li>
						</c:forEach>
						</ul>

						<div class="hejibox">合计：${AllOrder.totalprice}</div>
						<div class="zhuangtaibox">
							<p>等待买家付款</p>
							<a href="">取消订单</a>
							<a href="shop/OrderInfo.action?order_id=${AllOrder.order_id}">订单详情</a>
						</div>
						
					</div>
				</div>
					
			</c:if>
			
			<c:if test='${AllOrder.is_send==0 && AllOrder.order_state=="已支付"}'>
				<div class="commoditybox">
					 <div class="IDTime">
						<p>订单编号：${AllOrder.order_id}</p>
						<p>成交时间：${AllOrder.paymoney_time}</p>
					 </div>
					<div class="commodityinfo">
						<ul>
						  <c:forEach items="${AllOrder.commodityList}" var="cList">
							<li>
								<img src="${cList.image1}" /> 
								<div class="commodityname">
								  <a href="info/commodityinfo.action?comm_id=${cList.comm_id}">${cList.comm_name_plus}</a>
								</div>
								<div class="price">${cList.comm_price}</div>
								<div class="number">x${cList.comm_number}</div>
								<div class="dobox1"><a href="">退款</a></div>
								<div class="caozuobox">提醒发货</div>
							</li>
						 </c:forEach>
						</ul>

						<div class="hejibox">合计：${AllOrder.totalprice}</div>
						<div class="zhuangtaibox">
							<p>买家已付款</p>
							<a href="shop/OrderInfo.action?order_id=${AllOrder.order_id}">订单详情</a>
						</div>
						
					</div>
				</div>

					
			</c:if>
			
				<c:if test='${AllOrder.is_send==1&&AllOrder.is_receive==0}'>
				
				<div class="commoditybox">
					 <div class="IDTime">
						<p>订单编号：${AllOrder.order_id}</p>
						<p>成交时间：${AllOrder.order_time}</p>
					 </div>
					<div class="commodityinfo">
						<ul>
						 <c:forEach items="${AllOrder.commodityList}" var="cList">
							<li>
								<img src="${cList.image1}" /> 
								<div class="commodityname">
								  <a href="info/commodityinfo.action?comm_id=${cList.comm_id}">${cList.comm_name_plus}</a>
								</div>
								<div class="price">${cList.comm_price}</div>
								<div class="number">x${cList.comm_number}</div>
								<div class="dobox"><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p><a href="">退货</a><p/>/<p/><a href="">退款</a></div>
								<div class="caozuobox">确认收货</div>
							</li>
						</c:forEach>
						</ul>

						<div class="hejibox">合计：${AllOrder.totalprice}</div>
						<div class="zhuangtaibox">
							<p>卖家已发货</p>
							<a href="shop/OrderInfo.action?order_id=${AllOrder.order_id}">订单详情</a>
						</div>
					
					</div>
				</div>

					
			</c:if>
			
         </c:forEach>

	 </li>


			  <li class="tab2">   <!--未付款-->
				<div class="linebox1">
					<div class="commodityline">商品</div>
					<div class="priceline">单价</div>
					<div class="numberline">数量</div>
					<div class="doline">商品操作</div>
					<div class="caozuoline">交易操作</div>
					<div class="hejiline">合计</div>
					<div class="zhuangtailine">交易状态</div>
				</div>
               <c:forEach items="${noPayOrderInfo}" var="NoPayOrder">
				<div class="commoditybox">
					 <div class="IDTime">
						<p>订单编号：${NoPayOrder.order_id}</p>
						<p>成交时间：${NoPayOrder.order_time}</p>
					 </div>
					<div class="commodityinfo">
						<ul> 
						<c:forEach items="${NoPayOrder.commodityList}" var="cList1">
							<li>
								<img src="${cList1.image1}" /> 
								<div class="commodityname">
								  <a href="info/commodityinfo.action?comm_id=${cList1.comm_id}">${cList1.comm_name_plus}</a>
								</div>
								<div class="price">${cList1.comm_price}</div>
								<div class="number">x${cList1.comm_number}</div>
								<div class="dobox"></div>
								<div class="caozuobox1"><a href="shop/JieSuan.action?order_id=${NoPayOrder.order_id}" id="">一键支付</a></div>
							</li>
							</c:forEach>
						</ul>

						<div class="hejibox">合计：${NoPayOrder.totalprice}</div>
						<div class="zhuangtaibox">
							<p>等待买家付款</p>
							<a href="">取消订单</a>
							<a href="shop/OrderInfo.action?order_id=${NoPayOrder.order_id}">订单详情</a>
						</div>
						
					</div>
				</div>
          </c:forEach>

	   </li>

			 <li class="tab3"> <!--未发货-->
				<div class="linebox1">
	                <div class="commodityline">商品</div>
					<div class="priceline">单价</div>
					<div class="numberline">数量</div>
					<div class="doline">商品操作</div>
					<div class="caozuoline">交易操作</div>
					<div class="hejiline">合计</div>
					<div class="zhuangtailine">交易状态</div>  
				</div>
             <c:forEach items="${noSendOrderInfo}" var="NoSendOrder">
				<div class="commoditybox">
					 <div class="IDTime">
						<p>订单编号：${NoSendOrder.order_id}</p>
						<p>成交时间：${NoSendOrder.order_time}</p>
					 </div>
					<div class="commodityinfo">
						<ul>
						 <c:forEach items="${NoSendOrder.commodityList}" var="cList">
							<li>
								<img src="${cList.image1}" /> 
								<div class="commodityname">
								  <a href="info/commodityinfo.action?comm_id=${cList.comm_id}">${cList.comm_name_plus}</a>
								</div>
								<div class="price">${cList.comm_price}</div>
								<div class="number">x${cList.comm_number}</div>
								<div class="dobox1"><a href="">退款</a></div>
								<div class="caozuobox">提醒发货</div>
							</li>
						</c:forEach>
						</ul>

						<div class="hejibox">合计：${NoSendOrder.totalprice}</div>
						<div class="zhuangtaibox">
							<p>买家已付款</p>
							<a href="shop/OrderInfo.action?order_id=${NoSendOrder.order_id}">订单详情</a>
						</div>
						
					</div>
				</div>
           </c:forEach>

			 </li>


			   <li class="tab4">  <!--待收货-->
				<div class="linebox1">
					<div class="commodityline">商品</div>
					<div class="priceline">单价</div>
					<div class="numberline">数量</div>
					<div class="doline">商品操作</div>
					<div class="caozuoline">交易操作</div>
					<div class="hejiline">合计</div>
					<div class="zhuangtailine">交易状态</div>
				</div>

             <c:forEach items="${noReceiveOrderInfo}" var="NoReceiveOrder">
				<div class="commoditybox">
					 <div class="IDTime">
						<p>订单编号：${NoReceiveOrder.order_id}</p>
						<p>成交时间：${NoReceiveOrder.order_time}</p>
					 </div>
					<div class="commodityinfo">
						<ul>
						<c:forEach items="${NoReceiveOrder.commodityList}" var="cList">
							<li>
								<img src="${cList.image1}" /> 
								<div class="commodityname">
								  <a href="info/commodityinfo.action?comm_id=${cList.comm_id}">${cList.comm_name_plus}</a>
								</div>
								<div class="price">${cList.comm_price}</div>
								<div class="number">x${cList.comm_number}</div>
								<div class="dobox"><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p><a href="">退货</a><p/>/<p/><a href="">退款</a></div>
								<div class="caozuobox">确认收货</div>
							</li>
						</c:forEach>
						</ul>

						<div class="hejibox">合计：${NoReceiveOrder.totalprice}</div>
						<div class="zhuangtaibox">
							<p>卖家已发货</p>
							<a href="shop/OrderInfo.action?order_id=${NoReceiveOrder.order_id}">订单详情</a>
						</div>
					
					</div>
				</div>
          </c:forEach>

			 </li>


			 <li class="tab5">  <!--未评价-->
				<div class="linebox1">
					<div class="commodityline">商品</div>
					<div class="priceline">单价</div>
					<div class="numberline">数量</div>
					<div class="doline">商品操作</div>
					<div class="caozuoline">交易操作</div>
					<div class="hejiline">合计</div>
					<div class="zhuangtailine">交易状态</div>
				</div>
          <c:forEach items="${noCommentOrderInfo}" var="NoCommentOrder">
				<div class="commoditybox">
					 <div class="IDTime">
						<p>订单编号：${NoCommentOrder.order_id}</p>
						<p>成交时间：${NoCommentOrder.order_time}</p>
					 </div>
					<div class="commodityinfo">
						<ul>
							<c:forEach items="${NoCommentOrder.commodityList}" var="cList">
							<li>
								<img src="${cList.image1}" /> 
								<div class="commodityname">
								  <a href="info/commodityinfo.action?comm_id=${cList.comm_id}">${cList.comm_name_plus}</a>
								</div>
								<div class="price">${cList.comm_price}</div>
								<div class="number">x${cList.comm_number}</div>
								<div class="dobox"></div>
								<div class="caozuobox1"><a href="" id="">评价商品</a></div>
							</li>
							</c:forEach>
						</ul>

						<div class="hejibox">合计：${NoCommentOrder.totalprice}</div>
						<div class="zhuangtaibox">
							<p>交易成功</p>
							<a href="shop/OrderInfo.action?order_id=${NoCommentOrder.order_id}">订单详情</a>
						</div>
		
					</div>
				</div>
            </c:forEach>

			 </li>
  		 </ul>
  	   </div>	
  		
  	</div>
  	
  	
  </div>
  
  </div>
</body>
</html>
