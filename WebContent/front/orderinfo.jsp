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
<link href="CSS/orderinfo.css" rel="stylesheet" type="text/css" />
<title>订单详情</title>
</head>
   
   
<body>
<%@include file="rightbar.jsp"%>
<%@include file="top.jsp"%>
<hr width="100%"  color=" #E34245"  size="1px">
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
  			<p>订单详情&nbsp;</p>
  			<span>/&nbsp;Order&nbsp; Details</span>
  		</div>
  		
  		<c:if test='${orderInfo.order_state=="未支付"}'>
 	    <div class="wuliubox">
 	        <div class="wu">
				<div class="wuliu">
					<div class="wuliu1">1</div>
				</div>
				<hr>
				<div class="wuliu">
					<div class="wuliu1">2</div>
				</div>
				<hr>
				<div class="wuliu">
					<div class="wuliu1">3</div>
				</div>
				<hr>
				<div class="wuliu">
					<div class="wuliu1">4</div>
				</div>
 	    	</div>
 	    	<div class="wuliuline">
				<p>拍下商品</p>
				<p>买家发货</p>
				<p>确认收货</p>
				<span>交易完成</span>
 	    	</div>
 	   </div>
 	  </c:if>
 	  
 	  <c:if test='${orderInfo.order_state=="已支付" && orderInfo.is_send==0}'>
 	    <div class="wuliubox">
 	        <div class="wu">
				<div class="wuliu">
					<div class="wuliu1 active"></div>
				</div>
				<hr>
				<div class="wuliu">
					<div class="wuliu1">2</div>
				</div>
				<hr>
				<div class="wuliu">
					<div class="wuliu1">3</div>
				</div>
				<hr>
				<div class="wuliu">
					<div class="wuliu1">4</div>
				</div>
 	    	</div>
 	    	<div class="wuliuline">
				<p>拍下商品</p>
				<p>买家发货</p>
				<p>确认收货</p>
				<span>交易完成</span>
 	    	</div>
 	   </div>
 	  </c:if>
 	   
 	  <c:if test='${orderInfo.is_send==1 && orderInfo.is_receive==0}'>
 	    <div class="wuliubox">
 	        <div class="wu">
				<div class="wuliu">
					<div class="wuliu1 active"></div>
				</div>
				<hr>
				<div class="wuliu">
					<div class="wuliu1 active"></div>
				</div>
				<hr>
				<div class="wuliu">
					<div class="wuliu1">3</div>
				</div>
				<hr>
				<div class="wuliu">
					<div class="wuliu1">4</div>
				</div>
 	    	</div>
 	    	<div class="wuliuline">
				<p>拍下商品</p>
				<p>买家发货</p>
				<p>确认收货</p>
				<span>交易完成</span>
 	    	</div>
 	   </div>
 	  </c:if> 
 	  
 	  
 	  
 	  <c:if test='${orderInfo.is_receive==1}'>
 	    <div class="wuliubox">
 	        <div class="wu">
				<div class="wuliu">
					<div class="wuliu1 active"></div>
				</div>
				<hr>
				<div class="wuliu">
					<div class="wuliu1 active"></div>
				</div>
				<hr>
				<div class="wuliu">
					<div class="wuliu1 active"></div>
				</div>
				<hr>
				<div class="wuliu">
					<div class="wuliu1 active"></div>
				</div>
 	    	</div>
 	    	<div class="wuliuline">
				<p>拍下商品</p>
				<p>买家发货</p>
				<p>确认收货</p>
				<span>交易完成</span>
 	    	</div>
 	   </div>
 	  </c:if>   
 	   
 	  <c:if test='${orderInfo.order_state=="已支付"}'>
       <div class="addressbox">
       	 <div class="address">
       	 	<div class="name_phone">
              ${orderInfo.rece_name}&nbsp;&nbsp;&nbsp;&nbsp;${orderInfo.rece_tel}
       	 	</div>
       	 	<div class="receviebox">收货地址 &nbsp;：&nbsp; ${orderInfo.rece_add}</div>
       	 </div>
       </div>
  	 </c:if>  
  	    
  	    <div class="c">
  	      <ul>
			   <li>  
				<div class="linebox1">
					<div class="commodityline">商品</div>
					<div class="priceline">单价</div>
					<div class="numberline">数量</div>
					<div class="doline">商品操作</div>
					<div class="caozuoline">交易操作</div>
					<div class="hejiline">合计</div>
					<div class="zhuangtailine">交易状态</div>
				</div>
                 <c:if test='${orderInfo.is_receive==1&&orderInfo.is_comment==1}'>
				<div class="commoditybox">
					 <div class="IDTime">
						<p>订单编号：${orderInfo.order_id}</p>
						<p>成交时间：${orderInfo.paymoney_time}</p>
					 </div>
					<div class="commodityinfo">
						<ul>
						   <c:forEach items="${orderInfo.commodityList}" var="cList">
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

						<div class="hejibox">合计：${orderInfo.totalprice}</div>
						<div class="zhuangtaibox">
							<p>交易成功</p>
						
						</div>
					</div>
				</div>
			</c:if>
			
			<c:if test='${orderInfo.is_receive==1&&orderInfo.is_comment==0}'>
				<div class="commoditybox">
					 <div class="IDTime">
						<p>订单编号：${orderInfo.order_id}</p>
						<p>成交时间：${orderInfo.paymoney_time}</p>
					 </div>
					<div class="commodityinfo">
						<ul>
						 <c:forEach items="${orderInfo.commodityList}" var="cList">
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

						<div class="hejibox">合计：${orderInfo.totalprice}</div>
						<div class="zhuangtaibox">
							<p>交易成功</p>
							
						</div>
		
					</div>
				</div>
					
			</c:if>
			
			<c:if test='${orderInfo.order_state=="未支付"}'>
				<div class="commoditybox">
					 <div class="IDTime">
						<p>订单编号：${orderInfo.order_id}</p>
						<p>成交时间：${orderInfo.order_time}</p>
					 </div>
					<div class="commodityinfo">
						<ul>
						<c:forEach items="${orderInfo.commodityList}" var="cList">
							<li>
								<img src="${cList.image1}" /> 
								<div class="commodityname">
								  <a href="info/commodityinfo.action?comm_id=${cList.comm_id}">${cList.comm_name_plus}</a>
								</div>
								<div class="price">${cList.comm_price}</div>
								<div class="number">x${cList.comm_number}</div>
								<div class="dobox"></div>
								<div class="caozuobox1"><a href="shop/JieSuan.action?order_id=${orderInfo.order_id}" id="">一键支付</a></div>
							</li>
						</c:forEach>
						</ul>

						<div class="hejibox">合计：${orderInfo.totalprice}</div>
						<div class="zhuangtaibox">
							<p>等待买家付款</p>
							<a href="">取消订单</a>
						</div>
						
					</div>
				</div>
					
			</c:if>
			
			<c:if test='${orderInfo.is_send==0 && orderInfo.order_state=="已支付"}'>
				<div class="commoditybox">
					 <div class="IDTime">
						<p>订单编号：${orderInfo.order_id}</p>
						<p>成交时间：${orderInfo.paymoney_time}</p>
					 </div>
					<div class="commodityinfo">
						<ul>
						  <c:forEach items="${orderInfo.commodityList}" var="cList">
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

						<div class="hejibox">合计：${orderInfo.totalprice}</div>
						<div class="zhuangtaibox">
							<p>买家已付款</p>
							
						</div>
						
					</div>
				</div>

					
			</c:if>
			
				<c:if test='${orderInfo.is_send==1&&orderInfo.is_receive==0}'>
				
				<div class="commoditybox">
					 <div class="IDTime">
						<p>订单编号：${orderInfo.order_id}</p>
						<p>成交时间：${orderInfo.order_time}</p>
					 </div>
					<div class="commodityinfo">
						<ul>
						 <c:forEach items="${orderInfo.commodityList}" var="cList">
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

						<div class="hejibox">合计：${orderInfo.totalprice}</div>
						<div class="zhuangtaibox">
							<p>卖家已发货</p>
							
						</div>
					
					</div>
				</div>

					
			</c:if>
           
	 </li>

  		 </ul>
  	   </div>	
  		
  	</div>
  	
  	
  </div>
 </div> 
</body>
</html>