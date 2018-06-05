<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<link href="CSS/top.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="JS/jquery.min.js"></script>
<script type="text/javascript" src="JS/index_js.js"></script>
<script type="text/javascript" src="JS/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="JS/slide.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="Pragma" content="no-cache"/> 
<meta http-equiv="Cache-Control" content="no-cache"/>
<meta http-equiv="Expires" content="0"/>
<!-- 顶部导航栏-->
<script type="text/javascript">
<!--
 判断提交表单是否为空
//-->
  function checkInput(){
	  var input=$("#searchInput").val();
	  if(input==null||input.match(/^\s*$/)){
		  alert("搜索条件不能为空，请重新输入！")
		  $("#searchInput").val("");
		  return false;
	  }
	  
	  return true;
  }

</script>

<div class="top">
  <div class="top-left">
		<div class="top-left font"><a href="front/select_login.action">亲，请登录</a> &nbsp; &nbsp;<a href="front/select_register.action">免费注册</a> </div>
	</div>
	
  <div class="top-right">
		<div class="top-right font"><a href="home/index.action">商城首页</a> &nbsp; &nbsp;
			<a href="shop/AllOrder.action"><img src="image/people.png" width="16" height="16" style="vertical-align:middle;" alt=""/><a href="shop/AllOrder.action" style=" color:red;">${loginer.cust_name}个人中心</a></a> &nbsp; &nbsp;
			<a href="shop/showMyShopCar.action"><img src="image/shopcar.png" width="20" height="20" style="vertical-align:middle;" alt=""/>购物车</a> &nbsp; &nbsp;
			<a href="#"><img src="image/favorite.png" width="20" height="20" style="vertical-align:middle;" alt=""/>收藏夹</a>
	   </div>
  </div>
</div>
<!-- 顶部导航栏end-->

<!-- 搜索框-->
<div class="search" align="center">
	 <div class="searchframe">
		<form  action="home/search.action" method="get" onsubmit="return checkInput();">
          <input class="searchInput" type="text" name="search"  placeholder="搜索食品" id="searchInput">
          <input class="searchSubmit" type="submit" value="搜索" >
		</form>
	 </div>
</div>
<!-- 搜索框end-->

<!--导航栏-->
<div class="navigation_bar">
	<div class="navigation-bar">
		 <div class="all-goods">全部分类</div>
			<ul class="sort">
			 <li ><a href="home/search.action?search=优质水果">水果</a></li>
			 <li ><a href="home/search.action?search=精选肉类">肉类</a></li>
			 <li ><a href="home/search.action?search=海鲜水产">海鲜</a></li>
			 <li ><a href="home/search.action?search=乳品糕点">糕点</a></li>
			 <li ><a href="home/search.action?search=粮油杂货">油粮</a></li>
			 <li ><a href="home/search.action?search=方便速食">速食</a></li>
		  </ul>	 
	</div>
</div>
<!--导航栏end-->
