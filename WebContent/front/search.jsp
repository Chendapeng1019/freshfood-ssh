<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  <!--使  c: if判断有用  -->
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<base href="<%=basePath%>"/>

<link href="CSS/search.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="JS/jquery.min.js"></script>
<script type="text/javascript" src="JS/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="JS/search.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="Pragma" content="no-cache"/> 
<meta http-equiv="Cache-Control" content="no-cache"/>
<meta http-equiv="Expires" content="0"/>

<title>搜索</title>

<script type="text/javascript">
$(document).ready(function(){
 $("ul.yeshu li").removeClass("active");
 $("ul.yeshu li[indexPage=${pagebean.currentPage}]").addClass("active");
});
</script>

<c:if test='${selectsort=="zhonghe"||selectsort==null}'>
		<script language="javascript">
		$(document).ready(function(){
			 $(".zhonghe a").addClass("active");
			});
		</script>		
</c:if>

<c:if test='${selectsort=="xiaoliang" }'>
		<script language="javascript">
		$(document).ready(function(){
			 $(".xiaoliang a").addClass("active");
			});
		</script>		
</c:if>

<c:if test='${selectsort=="jiage" }'>
		<script language="javascript">
		$(document).ready(function(){
			 $(".jiage a").addClass("active");
			});
		</script>		
</c:if>

<c:if test='${selectsort=="pinglun" }'>
		<script language="javascript">
		$(document).ready(function(){
			 $(".pinglun a").addClass("active");
			});
		</script>		
</c:if>
</head>

<body>

</body>
<%@include file="top.jsp"%>
<%@include file="rightbar.jsp"%>


<hr width="100%"  color="#F75A5C"  size="2px">
<!--搜索商品显示框-->

<div class="searchbox">

 <div class="foodsortbox">
 	<span >
 		<strong id="foodname">${search}</strong>
 		<em>搜索到</em>
 		<strong id="num">${pagebean.rowCount}</strong>
 		<em>个相关商品</em>
 	</span>
 	
 	<li>
 		<span>品牌</span>
 		<em><a href="#">百草味</a></em>
 		<em><a href="#">百草味</a></em>
 		<em><a href="#">百草味</a></em>
 	</li>
 	<li>
 		<span>种类</span>
 	    <em><a href="#">百草味</a></em>
 	    <em><a href="#">百草味</a></em>
 	</li>
 	<li>
 		<span>选购热点</span>
 		<em><a href="#">百草味</a></em>
 		<em><a href="#">百草味</a></em>
 		<em><a href="#">百草味</a></em>
 	</li>
 </div>
 
 
 <div class="selectsortbox">
	  <div class="selectsort">
		<div class="zhonghe"><a href="home/search.action?search=${search}&selectsort=zhonghe">综合排序</a></div>
		<div class="xiaoliang"><a href="home/search.action?search=${search}&selectsort=xiaoliang">销量排序</a></div>
		<div class="jiage"><a href="home/search.action?search=${search}&selectsort=jiage">价格优先</a></div>
		<div class="pinglun"><a href="home/search.action?search=${search}&selectsort=pinglun">评论为主</a></div>
	  </div>
</div>	
   <div class="food" id="">
   <c:forEach items="${pagebean.pageList}" var="comminfo">
	<div class="foodbox">
	    <div class="foodimg">
		<a href="info/commodityinfo.action?comm_id=${comminfo.comm_id}"><img src="${comminfo.image1}" width="220" height="220" alt=""/></a>
		</div>
		<div class="pricebox">
			<em>￥</em>
			<i>${comminfo.comm_price}</i>
		</div>
		<div class="commodityname">
			<i>${comminfo.comm_name_plus}</i>
		</div>
		<div class="pinglunshu_xiaoliang">
			<strong>
				<a href="#">${comminfo.comment_number}万+</a>
			</strong>
			<span>条评论</span>
			
			
	    <i>${comminfo.sales_number}</i>
		   <em>销量：</em>
		    
		</div>
		
		<div class="chandi">${comminfo.trademark}</div>
		
		<div class="bottombox">
			<div class="guanzhu">
			<a href="" >关注</a>
			</div>
			<div class="jionshopcar">
				<a href="shop/joinShopCar.action?comm_id=${comminfo.comm_id}&number=1&comm_price=${comminfo.comm_price}" >加入购物车</a>
			</div>
		</div>
	</div>	
	</c:forEach>
	
 </div>	
	
 <div class="fenyebox">
	 <div class="shangxiaye" >
	 <c:if test="${pagebean.firstPage==true}">
     <a href="javaScript:;" onClick="return false;">上一页 </a>
	 </c:if>
	  <c:if test="${pagebean.firstPage==false}">
     <a href="home/search.action?search=${search}&curPage=${pagebean.previousPageCount}&selectsort=${selectsort}" >上一页 </a>
	 </c:if>
	 </div>
 	<ul  class="yeshu">
 	<c:forEach items="${pagebean.pageNumList}" var="single">
 	<li indexPage="${single}"><a  href="home/search.action?search=${search}&curPage=${single}&selectsort=${selectsort}">${single}</a></li>
 	</c:forEach>
 	</ul>
 	<div class="shangxiaye">
             <c:if test="${pagebean.lastPage==true}">
             <a href="javaScript:;" onClick="return false;">下一页 </a>
             </c:if>
              <c:if test="${pagebean.lastPage==false}">
             <a href="home/search.action?search=${search}&curPage=${pagebean.nextPageCount}&selectsort=${selectsort}" >下一页 </a>
             </c:if>
 	</div>
 	<div id="zongyeshu">共${pagebean.pageCount}页</div>
 	
 </div>
	
</div>
</html>