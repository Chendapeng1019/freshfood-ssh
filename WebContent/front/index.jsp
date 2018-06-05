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

<link href="CSS/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="JS/jquery.min.js"></script>
<script type="text/javascript" src="JS/index_js.js"></script>
<script type="text/javascript" src="JS/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="JS/slide.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="Pragma" content="no-cache"/> 
<meta http-equiv="Cache-Control" content="no-cache"/>
<meta http-equiv="Expires" content="0"/>


<script type="text/javascript" language="javascript">
  $(function(){
	  
	  setInterval(function(){showtimes();},1000); //设置1秒调用一次show_cur_times函数
 
	  
function showtimes(){
 var date_time = new Date();
 var hours =date_time.getHours();//时
 var minutes =date_time.getMinutes();//分
 var seconds=date_time.getSeconds();//秒
 var Hours=document.getElementById("hh");
 var Minutes=document.getElementById("mm");
 var Seconds=document.getElementById("ss");
 var h=Time(24-1-hours);
 var m=Time(60-1-minutes);
 var s=Time(60-seconds);
 Hours.innerHTML=h;
 Minutes.innerHTML=m;
 Seconds.innerHTML=s;
  }
  
 	function Time(str)
	{
		var num;
		str>=10?num=str:num="0"+str;
		return num;	
	}
	
 
 	});
 //设置1秒调用一次show_cur_times函数

</script>
<title>首页</title>

</head>
<body>
<%@include file="rightbar.jsp"%>
<%@include file="top.jsp"%>


 
		
		

		

 
 
 <!--左侧导航栏-->
 <!--图片轮转-->
   <div class="left_sort">
   <div class="ck-slide">
			<ul class="ck-slide-wrapper">
				<li>
                <a href="javascript:"><img src="<%=basePath%>shopimage/ad1.jpg" height="495" width="1600" alt=""></a>
				</li>
				<li style="display:none">
					<a href="javascript:"><img src="<%=basePath%>shopimage/ad2.jpg" height="495" width="1600" alt=""></a>
				</li>
				<li style="display:none">
					<a href="javascript:"><img src="<%=basePath%>shopimage/ad3.jpg" height="495" width="1600" alt=""></a>
				</li>
				<li style="display:none">
					<a href="javascript:"><img src="<%=basePath%>shopimage/ad4.jpg" height="495" width="1600" alt=""></a>
				</li>
				<li style="display:none">
					<a href="javascript:"><img src="<%=basePath%>shopimage/ad5.jpg" height="495" width="1600" alt=""></a>
				</li>
			</ul>
			<a href="javascript:;" class="ctrl-slide ck-prev">上一张</a> <a href="javascript:;" class="ctrl-slide ck-next">下一张</a>
			<div class="ck-slidebox">
				<div class="slideWrap">
					<ul class="dot-wrap">
						<li class="current"><em>1</em></li>
						<li><em>2</em></li>
						<li><em>3</em></li>
						<li><em>4</em></li>
						<li><em>5</em></li>
					</ul>
				</div>
			</div>
     	
	<div class="left-sort">
 
	 <div class="food-list">
         	<li class="list">
         	  <div class="image"><img src="image/random-3.png" width="80" height="62" alt="" /></div>
				<a href="home/search.action?search=优质水果"><p class="zi">优质水果</p></a>
            </li>
         	<li class="list">
         	<div class="image"><img src="image/1448529987096473300-0.png" width="80" height="62" alt=""/></div>
         	<a href="home/search.action?search=禽品蛋类"><p class="zi">禽类蛋品</p></a>
         	
         	</li>
         	<li class="list">
				<div class="image"><img src="image/592fbc0aNa95bd81c.png" width="80" height="62" alt=""/></div>
				<a href="home/search.action?search=海鲜水产"><p class="zi">海鲜水产</p></a>
         	</li>
         	<li class="list">
        	    <div class="image"><img src="image/58ec7290N7f0f5fc4.png" width="80" height="62" alt=""/></div>
         	    <a href="home/search.action?search=精选肉类"><p class="zi">精选肉类</p></a>
         	</li>
         	<li class="list">
         	    <div class="image"><img src="image/蔬菜.png" width="80" height="62" alt=""/></div>
         	    <a href="home/search.action?search=新鲜蔬菜"><p class="zi">新鲜蔬菜</p></a>
         	</li>
         	<li class="list">
         	    <div class="image"><img src="image/蛋糕.png" width="80" height="62" alt=""/></div>
         	    <a href="home/search.action?search=乳品糕点"><p class="zi">乳品糕点</p></a>
         	</li>
         	<li class="list">
        	     <div class="image"><img src="image/9570160763838269.png" width="80" height="62" alt=""/></div>
         	     <a href="home/search.action?search=方便速食"><p class="zi">方便速食</p></a>
         	</li>
         	<li class="list">
        	    <div class="image"><img src="image/9570160757940029.png" width="80" height="62" alt=""/></div>
         	    <a href="home/search.action?search=粮油杂货"><p class="zi">粮油杂货</p></a>
         	</li>
</div>
	  	

     <div class="foods">
     
     <!--水果-->
		 <div class="foods-list">
  	     <div class="fore1">
  	     	<div class="fore_list">
  	     		<span>热销水果 &nbsp;&gt;</span> <!--&gt > -->
				  <ul>
					<li ><a href="home/search.action?search=苹果" class="fengexian">苹果 </a></li>
					<li ><a href="home/search.action?search=梨" class="fengexian">梨</a></li>
					<li ><a href="home/search.action?search=奇异果" class="fengexian">奇异果</a></li>
					<li ><a href="home/search.action?search=蓝莓" class="fengexian">蓝莓</a></li>
					<li ><a href="home/search.action?search=葡萄" class="fengexian">葡萄</a></li>
					<li ><a href="home/search.action?search=橙子" class="fengexian">橙子</a></li>
					<li ><a href="home/search.action?search=雪莲果" class="fengexian">雪莲果</a></li>
					<li ><a href="home/search.action?search=柠檬" class="fengexian">柠檬</a></li>
					<li ><a href="home/search.action?search=百香果" class="fengexian">百香果</a></li>
					<li ><a href="home/search.action?search=人参果" class="fengexian">人参果</a></li>
				</ul>
  	     	</div>
  	     	
  	     <div class="fore_list">
  	     	<span>时令水果 &nbsp;&gt; </span> 
			  <ul>
				<li ><a href="home/search.action?search=柚子" class="fengexian">柚子 </a></li>
				<li ><a href="home/search.action?search=石榴" class="fengexian">石榴</a></li>
				<li ><a href="home/search.action?search=柑橘" class="fengexian">柑橘</a></li>
				<li ><a href="home/search.action?search=冬枣" class="fengexian">冬枣</a></li>
				<li ><a href="home/search.action?search=西瓜" class="fengexian">西瓜</a></li>
				<li ><a href="home/search.action?search=香瓜" class="fengexian">香瓜</a></li>
				<li ><a href="home/search.action?search=哈密瓜" class="fengexian">哈密瓜</a></li>
				<li ><a href="home/search.action?search=车厘子" class="fengexian">车厘子</a></li>
				<li ><a href="home/search.action?search=樱桃" class="fengexian">樱桃</a></li>
				<li ><a href="home/search.action?search=甘蔗" class="fengexian">甘蔗</a></li>
				<li ><a href="home/search.action?search=柿子" class="fengexian">柿子</a></li>
			  </ul>
	 </div>
  	     	
  	 <div class="fore_list">
  	     	<span>热带水果 &nbsp;&gt; </span> 
			  <ul>
				<li ><a href="home/search.action?search=香蕉" class="fengexian">香蕉 </a></li>
				<li ><a href="home/search.action?search=榴莲" class="fengexian">榴莲</a></li>
				<li ><a href="home/search.action?search=芒果" class="fengexian">芒果</a></li>
				
				<li ><a href="home/search.action?search=山竹" class="fengexian">山竹</a></li>
				<li ><a href="home/search.action?search=木瓜" class="fengexian">木瓜</a></li>
				<li ><a href="home/search.action?search=荔枝" class="fengexian">荔枝</a></li>
				<li ><a href="home/search.action?search=龙眼" class="fengexian">龙眼</a></li>
				<li ><a href="home/search.action?search=牛油果" class="fengexian">牛油果</a></li>
				<li ><a href="home/search.action?search=菠萝" class="fengexian">菠萝</a></li>
				<li ><a href="home/search.action?search=火龙果" class="fengexian">火龙果</a></li>
			  </ul>
	 </div>
	 
	 
	 
	 <div class="fore_list">
  	     	<span>地标水果 &nbsp;&gt; </span> 
			  <ul>
				<li ><a href="home/search.action?search=洛川苹果" class="fengexian">洛川苹果 </a></li>
				<li ><a href="home/search.action?search=新疆哈密瓜" class="fengexian">新疆哈密瓜</a></li>
				<li ><a href="home/search.action?search=蒙自石榴" class="fengexian">蒙自石榴</a></li>
				<li ><a href="home/search.action?search=沾化冬枣" class="fengexian">沾化冬枣</a></li>
				<li ><a href="home/search.action?search=西峡猕猴桃" class="fengexian">西峡猕猴桃</a></li>
				
				<li ><a href="home/search.action?search=琯溪蜜柚" class="fengexian">琯溪蜜柚</a></li>
			  </ul>
	 </div>
 	     
 	
  </div>
</div>
    <!--水果end-->	
    	
    	<!--禽类蛋品-->
     	<div class="foods-list">
     	  <div class="fore1">
     	  	 <div class="fore_list">
  	     		<span>蛋类 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&gt;</span> <!--&gt > -->
				  <ul>
					<li ><a href="home/search.action?search=鸡蛋" class="fengexian">鸡蛋 </a></li>
					<li ><a href="home/search.action?search=鸭蛋" class="fengexian">鸭蛋</a></li>
					<li ><a href="home/search.action?search=鸽子蛋" class="fengexian">鸽子蛋</a></li>
					<li ><a href="home/search.action?search=鹅蛋" class="fengexian">鹅蛋</a></li>
					<li ><a href="home/search.action?search=鹌鹑蛋" class="fengexian">鹌鹑蛋</a></li>
					<li ><a href="home/search.action?search=皮蛋" class="fengexian">皮蛋</a></li>
					<li ><a href="home/search.action?search=喜蛋" class="fengexian">喜蛋</a></li>
					<li ><a href="home/search.action?search=咸黄蛋" class="fengexian">咸黄蛋</a></li>
					<li ><a href="home/search.action?search=咸蛋" class="fengexian">咸蛋</a></li>
				</ul>
  	     	</div>
  	    
	
	 <div class="fore_list">
  	     	<span>地标蛋品 &nbsp;&gt; </span> 
			  <ul>
				<li ><a href="home/search.action?search=高邮鸭蛋" class="fengexian">高邮鸭蛋 </a></li>
			  </ul>
	 </div>
    </div>
  </div>
    	<!--禽类蛋品-->
    	
    	
    	<!--海鲜水产-->
     	<div class="foods-list">
     	 <div class="fore1">
     	 <div class="fore_list">
  	     		<span>鱼类&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&gt;</span> <!--&gt > -->
				  <ul>
					<li ><a href="home/search.action?search=草鱼" class="fengexian">草鱼 </a></li>
					<li ><a href="home/search.action?search=鳕鱼" class="fengexian">鳕鱼</a></li>
					<li ><a href="home/search.action?search=黄花鱼" class="fengexian">黄花鱼</a></li>
					<li ><a href="home/search.action?search=鲈鱼" class="fengexian">鲈鱼</a></li>
					<li ><a href="home/search.action?search=鳗鱼" class="fengexian">鳗鱼</a></li>
					<li ><a href="home/search.action?search=胖头鱼" class="fengexian">胖头鱼</a></li>
					<li ><a href="home/search.action?search=金枪鱼" class="fengexian">金枪鱼</a></li>
					<li ><a href="home/search.action?search=带鱼" class="fengexian">带鱼</a></li>
					<li ><a href="home/search.action?search=三文鱼" class="fengexian">三文鱼</a></li>
				</ul>
  	     	</div>
  	     	
  	     <div class="fore_list">
  	     	<span>虾类 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&gt; </span> 
			  <ul>
				<li ><a href="home/search.action?search=大龙虾" class="fengexian">大龙虾 </a></li>
				<li ><a href="home/search.action?search=小龙虾" class="fengexian">小龙虾</a></li>
				<li ><a href="home/search.action?search=白虾" class="fengexian">白虾</a></li>
				<li ><a href="home/search.action?search=北极甜虾" class="fengexian">北极甜虾</a></li>
				<li ><a href="home/search.action?search=皮皮虾" class="fengexian">皮皮虾</a></li>
				<li ><a href="home/search.action?search=虾仁" class="fengexian">虾仁</a></li>
				
				<li ><a href="home/search.action?search=竹节虾" class="fengexian">竹节虾</a></li>
				<li ><a href="home/search.action?search=红虾" class="fengexian">红虾</a></li>
		
				<li ><a href="home/search.action?search=基围虾" class="fengexian">基围虾</a></li>
			  </ul>
	 </div>
  	     	
  	 <div class="fore_list">
  	     	<span>蟹类&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&gt; </span> 
			  <ul>
				<li ><a href="home/search.action?search=大闸蟹" class="fengexian">大闸蟹 </a></li>
				<li ><a href="home/search.action?search=帝王蟹" class="fengexian">帝王蟹</a></li>
				<li ><a href="home/search.action?search=梭子蟹" class="fengexian">梭子蟹</a></li>
				<li ><a href="home/search.action?search=黄金蟹" class="fengexian">黄金蟹</a></li>
				<li ><a href="home/search.action?search=青蟹" class="fengexian">青蟹</a></li>
				<li ><a href="home/search.action?search=雪蟹" class="fengexian">雪蟹</a></li>
				
				<li ><a href="home/search.action?search=红毛蟹" class="fengexian">红毛蟹</a></li>
				<li ><a href="home/search.action?search=醉蟹" class="fengexian">醉蟹</a></li>
				
				<li ><a href="home/search.action?search=香辣蟹" class="fengexian">香辣蟹</a></li>
			  </ul>
	 </div>
	 
	 <div class="fore_list">
  	     	<span>贝类&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&gt; </span> 
			  <ul>
				<li ><a href="home/search.action?search=生蚝" class="fengexian">生蚝 </a></li>
				<li ><a href="home/search.action?search=鲍鱼" class="fengexian">鲍鱼</a></li>
				<li ><a href="home/search.action?search=扇贝" class="fengexian">扇贝</a></li>
				<li ><a href="home/search.action?search=蛤" class="fengexian">蛤</a></li>
			  </ul>
	 </div>
	 
	  <div class="fore_list">
  	     	<span>海产干货&nbsp;&gt; </span> 
			  <ul>
				<li ><a href="home/search.action?search=干贝" class="fengexian">干贝 </a></li>
				<li ><a href="home/search.action?search=墨鱼干" class="fengexian">墨鱼干</a></li>
				<li ><a href="home/search.action?search=鱿鱼干" class="fengexian">鱿鱼干</a></li>
				<li ><a href="海带" class="fengexian">海带</a></li>
				<li ><a href="花胶" class="fengexian">花胶</a></li>
			  </ul>
	 </div>
	 
	 
	
	 <div class="fore_list">
  	     	<span>地标海产&nbsp;&gt; </span> 
			  <ul>
				<li ><a href="home/search.action?search=阿根廷红虾" class="fengexian">阿根廷红虾 </a></li>
				<li ><a href="home/search.action?search=厄瓜多尔白虾" class="fengexian">厄瓜多尔白虾</a></li>
				<li ><a href="home/search.action?search=舟山带鱼" class="fengexian">舟山带鱼</a></li>
				<li ><a href="home/search.action?search=福建鲍鱼" class="fengexian">福建鲍鱼</a></li>
				<li ><a href="home/search.action?search=阳登湖大闸蟹" class="fengexian">阳登湖大闸蟹</a></li>
				<li ><a href="home/search.action?search=宁波醉泥螺" class="fengexian">宁波醉泥螺</a></li>
			  </ul>
	 </div>
	 
	 <div class="fore_list">
  	     	<span>特色海产 &nbsp;&gt; </span> 
			  <ul>
				
				<li ><a href="home/search.action?search=鲍鱼" class="fengexian">鱿鱼</a></li>
				<li ><a href="home/search.action?search=墨鱼" class="fengexian">墨鱼</a></li>
				<li ><a href="home/search.action?search=章鱼" class="fengexian">章鱼</a></li>
				<li ><a href="home/search.action?search=甲鱼" class="fengexian">甲鱼</a></li>
				<li ><a href="home/search.action?search=大闸蟹" class="fengexian">大闸蟹</a></li>
			  </ul>
	 </div>
	 
	 </div>	
  </div>
   	   <!--海鲜水产-->
    	
    	<!--精选肉类-->
	<div class="foods-list">
       <div class="fore1">
       
        <div class="fore_list">
  	     	<span>猪肉 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&gt; </span> 
			  <ul>
				<li ><a href="home/search.action?search=排骨" class="fengexian">排骨 </a></li>
				<li ><a href="home/search.action?search=五花肉" class="fengexian">五花肉</a></li>
				<li ><a href="home/search.action?search=猪里脊" class="fengexian">猪里脊</a></li>
				<li ><a href="猪排" class="fengexian">猪排</a></li>
				<li ><a href="猪肘" class="fengexian">猪肘</a></li>
				<li ><a href="猪腿肉" class="fengexian">猪腿肉</a></li>
			
			  </ul>
	 </div>
	 
	 <div class="fore_list">
  	     	<span>牛肉 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&gt; </span> 
			  <ul>
				<li ><a href="home/search.action?search=牛排" class="fengexian">牛排 </a></li>
				<li ><a href="home/search.action?search=牛腩" class="fengexian">牛腩</a></li>
				<li ><a href="home/search.action?search=牛腱" class="fengexian">牛腱</a></li>
				<li ><a href="home/search.action?search=牛里脊" class="fengexian">牛里脊</a></li>
				<li ><a href="home/search.action?search=牛肋条" class="fengexian">牛肋条</a></li>
				<li ><a href="home/search.action?search=牛蹄筋" class="fengexian">牛蹄筋</a></li>
				<li ><a href="home/search.action?search=牛骨" class="fengexian">牛骨</a></li>
			
			  </ul>
	 </div>
    
     <div class="fore_list">
  	     	<span>羊肉 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&gt; </span> 
			  <ul>
				<li ><a href="home/search.action?search=羊肋排" class="fengexian">羊肋排 </a></li>
				<li ><a href="home/search.action?search=羊肉片" class="fengexian">羊肉片</a></li>
				<li ><a href="home/search.action?search=羊腿" class="fengexian">羊腿</a></li>
				<li ><a href="home/search.action?search=羊蝎子" class="fengexian">羊蝎子</a></li>
				<li ><a href="home/search.action?search=羊肉块" class="fengexian">羊肉块</a></li>
				<li ><a href="home/search.action?search=整羊" class="fengexian">整羊</a></li>
				<li ><a href="home/search.action?search=羊杂" class="fengexian">羊杂</a></li>
				<li ><a href="home/search.action?search=羊肉卷" class="fengexian">羊肉卷</a></li>
			  </ul>
	 </div>
     
     <div class="fore_list">
  	     	<span>鸡肉 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&gt; </span> 
			  <ul>
				<li ><a href="home/search.action?search=鸡翅" class="fengexian">鸡翅 </a></li>
				<li ><a href="home/search.action?search=整鸡" class="fengexian">整鸡</a></li>
				<li ><a href="home/search.action?search=鸡胸肉" class="fengexian">鸡胸肉</a></li>
				<li ><a href="home/search.action?search=鸡腿肉" class="fengexian">鸡腿</a></li>
				<li ><a href="home/search.action?search=鸡爪" class="fengexian">鸡爪</a></li>
				<li ><a href="home/search.action?search=鸡肉块" class="fengexian">鸡肉块</a></li>
				<li ><a href="home/search.action?search=鸡胗" class="fengexian">鸡胗</a></li>
				<li ><a href="home/search.action?search=老母鸡" class="fengexian">老母鸡</a></li>
				<li ><a href="home/search.action?search=柴鸡" class="fengexian">柴鸡</a></li>
			  </ul>
	 </div>
   
    <div class="fore_list">
  	     	<span>鸭肉 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&gt; </span> 
			  <ul>
				<li ><a href="home/search.action?search=鸭腿" class="fengexian">鸭腿 </a></li>
				<li ><a href="home/search.action?search=鸭胸" class="fengexian">鸭胸</a></li>
				<li ><a href="home/search.action?search=鸭胗" class="fengexian">鸭胗</a></li>
				<li ><a href="home/search.action?search=鸭掌" class="fengexian">鸭掌</a></li>
				<li ><a href="home/search.action?search=鸭脖" class="fengexian">鸭脖</a></li>
				<li ><a href="home/search.action?search=鸭舌" class="fengexian">鸭舌</a></li>
				<li ><a href="home/search.action?search=鸭翅" class="fengexian">鸭翅</a></li>
				<li ><a href="home/search.action?search=老鸭" class="fengexian">老鸭</a></li>
			  </ul>
	 </div>
   
    <div class="fore_list">
  	     	<span>地标肉类 &nbsp;&gt; </span> 
			  <ul>
				<li ><a href="home/search.action?search=内蒙古牛羊肉" class="fengexian">内蒙古牛羊肉 </a></li>
				<li ><a href="home/search.action?search=宁夏羊肉" class="fengexian">宁夏羊肉</a></li>
				<li ><a href="home/search.action?search=西藏藏香猪" class="fengexian">西藏藏香猪</a></li>
				<li ><a href="home/search.action?search=北京油鸡" class="fengexian">北京油鸡</a></li>
				<li ><a href="home/search.action?search=台湾烤肠" class="fengexian">台湾烤肠</a></li>
				<li ><a href="home/search.action?search=宣威火腿" class="fengexian">宣威火腿</a></li>
			  </ul>
	 </div>
	 
	 
   
    <div class="fore_list">
  	     	<span>内脏类 &nbsp;&nbsp;&nbsp;&nbsp;&gt; </span> 
			  <ul>
				<li ><a href="home/search.action?search=肝" class="fengexian">肝 </a></li>
				<li ><a href="home/search.action?search=肺" class="fengexian">肺</a></li>
				<li ><a href="home/search.action?search=肠" class="fengexian">肠</a></li>
				<li ><a href="home/search.action?search=肚" class="fengexian">肚</a></li>
				<li ><a href="home/search.action?search=心" class="fengexian">心</a></li>
				<li ><a href="home/search.action?search=腰子" class="fengexian">腰子</a></li>
				<li ><a href="home/search.action?search=鞭宝" class="fengexian">鞭宝</a></li>
			  </ul>
	 </div>
   
  </div>
 </div>
	   <!--精选肉类end-->
	
	<!--新鲜蔬菜-->
	<div class="foods-list">
  	     <div class="fore1">
  	     	<div class="fore_list">
  	     		<span>叶菜类 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&gt;</span> <!--&gt > -->
				  <ul>
					<li ><a href="home/search.action?search=生菜" class="fengexian">生菜 </a></li>
					<li ><a href="home/search.action?search=菜心" class="fengexian">菜心</a></li>
					<li ><a href="home/search.action?search=西兰花" class="fengexian">西兰花</a></li>
					<li ><a href="home/search.action?search=菠菜" class="fengexian">菠菜</a></li>
					<li ><a href="home/search.action?search=上海青" class="fengexian">上海青</a></li>
					<li ><a href="home/search.action?search=芥蓝" class="fengexian">芥蓝</a></li>
					<li ><a href="home/search.action?search=白菜" class="fengexian">白菜</a></li>
					<li ><a href="home/search.action?search=甘蓝" class="fengexian">甘蓝</a></li>
					<li ><a href="home/search.action?search=芹菜" class="fengexian">芹菜</a></li>
					<li ><a href="home/search.action?search=韭菜" class="fengexian">韭菜</a></li>
				</ul>
  	     	</div>
  	     	
  	     <div class="fore_list">
  	     	<span>根茎类 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&gt; </span> 
			  <ul>
				<li ><a href="home/search.action?search=山药" class="fengexian">山药 </a></li>
				<li ><a href="home/search.action?search=萝卜" class="fengexian">萝卜</a></li>
				<li ><a href="home/search.action?search=地瓜" class="fengexian">地瓜</a></li>
				<li ><a href="home/search.action?search=洋芋" class="fengexian">洋芋</a></li>
				<li ><a href="home/search.action?search=芋头" class="fengexian">芋头</a></li>
				<li ><a href="home/search.action?search=莲藕" class="fengexian">莲藕</a></li>
				<li ><a href="home/search.action?search=百合" class="fengexian">百合</a></li>
				<li ><a href="home/search.action?search=芦笋" class="fengexian">芦笋</a></li>
			  </ul>
	 </div>
  	     	
  	 <div class="fore_list">
  	     	<span>鲜菌菇 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&gt; </span> 
			  <ul>
				<li ><a href="home/search.action?search=香菇" class="fengexian">香菇 </a></li>
				<li ><a href="home/search.action?search=松茸" class="fengexian">松茸</a></li>
				<li ><a href="home/search.action?search=鸡枞菌" class="fengexian">鸡枞菌</a></li>
				<li ><a href="home/search.action?search=牛肝菌" class="fengexian">牛肝菌</a></li>
				<li ><a href="home/search.action?search=杏鲍菇" class="fengexian">杏鲍菇</a></li>
				<li ><a href="home/search.action?search=木耳" class="fengexian">木耳</a></li>
				<li ><a href="home/search.action?search=黑松露菌" class="fengexian">黑松露菌</a></li>
			
				<li ><a href="home/search.action?search=平菇" class="fengexian">平菇</a></li>
			  </ul>
	 </div>
	 
	 
	 <div class="fore_list">
  	     	<span>茄果瓜类 &nbsp;&gt; </span> 
			  <ul>
				<li ><a href="home/search.action?search=玉米" class="fengexian">玉米 </a></li>
				<li ><a href="home/search.action?search=黄瓜" class="fengexian">黄瓜</a></li>
				<li ><a href="home/search.action?search=西红柿" class="fengexian">西红柿</a></li>
				<li ><a href="home/search.action?search=南瓜" class="fengexian">南瓜</a></li>
				<li ><a href="home/search.action?search=茄子" class="fengexian">茄子</a></li>
				<li ><a href="home/search.action?search=四季豆" class="fengexian">四季豆</a></li>
				<li ><a href="home/search.action?search=苦瓜" class="fengexian">苦瓜</a></li>
				
				<li ><a href="home/search.action?search=赤豆" class="fengexian">赤豆</a></li>
			  </ul>
	 </div>
	
	 <div class="fore_list">
  	     	<span>葱姜蒜椒 &nbsp;&gt; </span> 
			  <ul>
				<li ><a href="home/search.action?search=葱" class="fengexian">葱 </a></li>
				<li ><a href="home/search.action?search=姜" class="fengexian">姜</a></li>
				<li ><a href="home/search.action?search=蒜" class="fengexian">蒜</a></li>
				<li ><a href="home/search.action?search=椒" class="fengexian">椒</a></li>
				<li ><a href="home/search.action?search=香料" class="fengexian">香料</a></li>
			  </ul>
	 </div>
	   
 	  <div class="fore_list">
  	     	<span>地标蔬菜 &nbsp;&gt; </span> 
			  <ul>
				<li ><a href="home/search.action?search=温县铁棍山药" class="fengexian">温县铁棍山药 </a></li>
				<li ><a href="home/search.action?search=桥头地瓜" class="fengexian">桥头地瓜</a></li>
				<li ><a href="home/search.action?search=兰州百合" class="fengexian">兰州百合</a></li>
			  </ul>
	 </div>   
 	
  </div>
</div>
    <!--新鲜蔬菜end-->
    
    <!--乳品糕点-->
	   <div class="foods-list">
  	     <div class="fore1">
  	     	<div class="fore_list">
  	     		<span>乳品&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&gt;</span> <!--&gt > -->
				  <ul>
					<li ><a href="home/search.action?search=纯牛奶" class="fengexian">纯牛奶 </a></li>
					<li ><a href="home/search.action?search=酸奶" class="fengexian">酸奶</a></li>
					<li ><a href="home/search.action?search=乳酸菌" class="fengexian">乳酸菌</a></li>
				</ul>
  	     	</div>
  	     	
  	     <div class="fore_list">
  	     	<span>糕点&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&gt; </span> 
			  <ul>
				<li ><a href="home/search.action?search=点心" class="fengexian">点心 </a></li>
				<li ><a href="home/search.action?search=面包" class="fengexian">面包</a></li>
				<li ><a href="home/search.action?search=饼干" class="fengexian">饼干</a></li>
			  
			  </ul>
	 </div>
  	     	
  	 
 	     
 	
  </div>
</div>
	<!--乳品糕点end--> 
   
    <!--方便速食-->
	   <div class="foods-list">
     	 <div class="fore1">
     	 <div class="fore_list">
  	     		<span>面点&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&gt;</span> <!--&gt > -->
				  <ul>
					<li ><a href="home/search.action?search=水饺" class="fengexian">水饺 </a></li>
					<li ><a href="home/search.action?search=云吞" class="fengexian">云吞</a></li>
					<li ><a href="home/search.action?search=汤圆" class="fengexian">汤圆</a></li>
					<li ><a href="home/search.action?search=面条" class="fengexian">面条</a></li>
					<li ><a href="home/search.action?search=馒头" class="fengexian">馒头</a></li>
					<li ><a href="home/search.action?search=年糕" class="fengexian">年糕</a></li>
					<li ><a href="home/search.action?search=肠粉" class="fengexian">肠粉</a></li>
					<li ><a href="home/search.action?search=烧麦" class="fengexian">烧麦</a></li>
				</ul>
  	     	</div>
  	     	
  	     <div class="fore_list">
  	     	<span>速食 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&gt; </span> 
			  <ul>
				<li ><a href="home/search.action?search=方便菜" class="fengexian">方便菜 </a></li>
				<li ><a href="home/search.action?search=方便主食" class="fengexian">方便主食</a></li>
				<li ><a href="home/search.action?search=卤味" class="fengexian">卤味</a></li>
				<li ><a href="home/search.action?search=培根" class="fengexian">培根</a></li>
				<li ><a href="home/search.action?search=火腿" class="fengexian">火腿</a></li>

			  </ul>
	 </div>
  	     	
  	 <div class="fore_list">
  	     	<span>火锅底料&nbsp;&gt; </span> 
			  <ul>
				<li ><a href="home/search.action?search=牛肉丸" class="fengexian">牛肉丸 </a></li>
				<li ><a href="home/search.action?search=鱼豆腐" class="fengexian">鱼豆腐</a></li>
				<li ><a href="home/search.action?search=鱼丸" class="fengexian">鱼丸</a></li>
				<li ><a href="home/search.action?search=墨鱼丸" class="fengexian">墨鱼丸</a></li>
				<li ><a href="home/search.action?search=火锅饺" class="fengexian">火锅饺</a></li>
				<li ><a href="home/search.action?search=包心丸" class="fengexian">包心丸</a></li>
			  </ul>
	 </div>
	 
	
	 
	  <div class="fore_list">
  	     	<span>地标速食&nbsp;&gt; </span> 
			  <ul>
				<li ><a href="home/search.action?search=狗不理包子" class="fengexian">狗不理包子</a></li>
				<li ><a href="home/search.action?search=金华火腿" class="fengexian">金华火腿</a></li>
				<li ><a href="home/search.action?search=潮汕牛肉丸" class="fengexian">潮汕牛肉丸</a></li>
			  </ul>
	 </div>
	 

	 
	 </div>	
  </div>
   	<!--方便速食end-->
    	
    <!--粮油杂货-->
	<div class="foods-list">
       <div class="fore1">
       
        <div class="fore_list">
  	     	<span>米面杂粮 &nbsp;&gt; </span> 
			  <ul>
				<li ><a href="home/search.action?search=米" class="fengexian">米 </a></li>
				<li ><a href="home/search.action?search=面粉" class="fengexian">面粉</a></li>
			  </ul>
	 </div>
	 
	 <div class="fore_list">
  	     	<span>食用油 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&gt; </span> 
			  <ul>
				<li ><a href="home/search.action?search=调和油" class="fengexian">调和油 </a></li>
				<li ><a href="home/search.action?search=菜籽油" class="fengexian">菜籽油</a></li>
				<li ><a href="home/search.action?search=花生油" class="fengexian">花生油</a></li>
				<li ><a href="home/search.action?search=山茶油" class="fengexian">山茶油</a></li>
				<li ><a href="home/search.action?search=玉米油" class="fengexian">玉米油</a></li>
				<li ><a href="home/search.action?search=大豆油" class="fengexian">大豆油</a></li>
				<li ><a href="home/search.action?search=橄榄油" class="fengexian">橄榄油</a></li>
				
			  </ul>
	 </div>
    
     <div class="fore_list">
  	     	<span>调味品 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&gt; </span> 
			  <ul>
				<li ><a href="home/search.action?search=酱油" class="fengexian">酱油 </a></li>
				<li ><a href="home/search.action?search=盐" class="fengexian">盐</a></li>
				<li ><a href="home/search.action?search=鸡精" class="fengexian">鸡精</a></li>
				<li ><a href="home/search.action?search=味精" class="fengexian">味精</a></li>
				<li ><a href="home/search.action?search=醋" class="fengexian">醋</a></li>
				<li ><a href="home/search.action?search=咖喱酱" class="fengexian">咖喱酱</a></li>
			  </ul>
	 </div>
     
     
   
  </div>
 </div>
   <!--粮油杂货-->
   
  
	   

	 	 
 </div>
 </div>
</div> 
  </div> 
   <!--左侧导航栏end-->

 <!--秒杀-->
 <div class="sale-all">
<div class="sale">
	<div class="miaosha">
		<i></i>
		<em class="title">限时秒杀</em>
		<div class="s-time">
			<span class="hh"><div id="hh"></div></span>
			<span class="mm"><div id="mm"></div></span>
			<span class="ss"><div id="ss"></div></span>
		</div>
	</div>
	
	
	<div class="miaosha-foods">
	<c:forEach items="${commodityList}" var="activity1">
		<div class="miao_foods">
			<div class="img">
		    <img src="${activity1.image1}"  alt=""/>
		    </div>
		    <div class="miaosha-price">
		    	<div class="miaosha-foodsname">${activity1.commodity_name}</div>
		    	<div class="money">${activity1.activityfood_price}</div>
				<div class="miaosha1"><a href="info/commodityinfo.action?comm_id=${activity1.comm_id}">秒杀</a></div>
		    </div>
		     
	  </div>
	 </c:forEach>
	 <!--   
		<div class="miao_foods">
			<div class="img">
		    <img src="image/2.jpg"  alt=""/>
		    </div>
		    <div class="miaosha-price">
		    	<div class="miaosha-foodsname">蜜柚</div>
		    	<div class="money">$9.9</div>
				<div class="miaosha1"><a href="#">秒杀</a></div>
		    </div>
		</div>
		
		<div class="miao_foods">
			<div class="img">
		    <img src="image/3.jpg"  alt=""/>
		    </div>
		    <div class="miaosha-price">
		    	<div class="miaosha-foodsname">奇异果</div>
		    	<div class="money">$9.9</div>
				<div class="miaosha1"><a href="#">秒杀</a></div>
		    </div>
		</div>
		
		<div class="miao_foods">
			<div class="img">
		    <img src="image/4.jpg"  alt=""/>
		    </div>
		    <div class="miaosha-price">
		    	<div class="miaosha-foodsname">牛肉</div>
		    	<div class="money">$9.9</div>
				<div class="miaosha1"><a href="#">秒杀</a></div>
		    </div>
		</div>
		-->
	</div>

		
</div> 
</div>
 <!--秒杀end-->
 
<!--商品分类展示-->
<div class="foods_display">
	<div class="foods-display">
		 <div class="foods-top">
		 	<div class="foods-type">新鲜水果</div>
		 	<div class="foods-jianjie">优质水果带给您更高品质生活</div>
		 </div>
	    
      <div class="content-1">
	      	  <ul>
	      	  	 <li><a href="home/search.action?search=苹果">苹果</a></li>
	      	  	 <li><a href="home/search.action?search=蓝莓">蓝莓</a></li>
	      	  	 <li><a href="home/search.action?search=葡萄">葡萄</a></li>
	      	  </ul>
	      	   <ul>
	      	  	 <li><a href="home/search.action?search=柚子">柚子</a></li>
	      	  	 <li><a href="home/search.action?search=车厘子">车厘子</a></li>
	      	  	 <li><a href="home/search.action?search=香蕉">香蕉</a></li>
	      	  </ul>
	      	   <ul>
	      	  	 <li><a href="home/search.action?search=榴莲">榴莲</a></li>
	      	  	 <li><a href="home/search.action?search=荔枝">荔枝</a></li>
	      	  	 <li><a href="home/search.action?search=牛油果">牛油果</a></li>
	      	  </ul>
	      	  
	    <div class="a">新鲜优质水果开抢啦！</div>
			  <div class="b"><a href="info/commodityinfo.action?comm_id=${fruits[0].comm_id}"><img src="${fruits[0].image1}" alt=""/></a></div>
	   </div>
	  
	  <div class="content-2">
	  	 <span>${fruits[1].commodity_name}</span>
	  	 <div class="content-2-prices">¥${fruits[1].comm_price}</div>
	  	 <div class="photos">
	  	 	<a href="info/commodityinfo.action?comm_id=${fruits[1].comm_id}"><img src="${fruits[1].image1}"  alt=""/></a>
	  	 </div>
	 </div>
	
	 <div class="content-3">
	 	<div class="box">
	 		<a href="info/commodityinfo.action?comm_id=${fruits[2].comm_id}"><img src="${fruits[2].image1}"  alt=""/></a>
	 		<span>${fruits[2].commodity_name}</span>
	 		<div class="box-prices"> ¥${fruits[2].comm_price}</div>
	 	</div>
	 	<div class="box">
	 		<a href="info/commodityinfo.action?comm_id=${fruits[3].comm_id}"><img src="${fruits[3].image1}"  alt=""/></a>
	 		<span>${fruits[3].commodity_name}</span>
	 		<div class="box-prices"> ¥${fruits[3].comm_price}</div>
	 	</div>
	</div>
	
	<div class="content-4">
	   <div class="box1">
		<span>${fruits[4].commodity_name}</span>
	  <div class="box1-prices">¥${fruits[4].comm_price}</div>
		<a href="info/commodityinfo.action?comm_id=${fruits[4].comm_id}"><img src="${fruits[4].image1}" alt=""/></a>
	</div> 
  </div>
  
  <div class="content-5">
	 	<div class="box">
	 		<a href="info/commodityinfo.action?comm_id=${fruits[5].comm_id}"><img src="${fruits[5].image1}"  alt=""/></a>
	 		<span>${fruits[5].commodity_name}</span>
	 		<div class="box-prices"> ¥${fruits[5].comm_price}</div>
	 	</div>
	 	<div class="box">
	 		<a href="info/commodityinfo.action?comm_id=${fruits[6].comm_id}"><img src="${fruits[6].image1}"  alt=""/></a>
	 		<span>${fruits[6].commodity_name}</span>
	 		<div class="box-prices"> ¥${fruits[6].comm_price}</div>
	 	</div>
	</div>
	 
	
</div>
</div>	  		

<!--商品分类展示-->
<div class="foods_display">
	<div class="foods-display">
		 <div class="foods-top">
		 	<div class="foods-type">禽类蛋品</div>
		 	<div class="foods-jianjie">优质水果带给您更高品质生活</div>
		 </div>
	    
      <div class="content-1">
	      	  <ul>
	      	  	 <li><a href="home/search.action?search=鸡蛋">鸡蛋</a></li>
	      	  	 <li><a href="home/search.action?search=鸭蛋">鸭蛋</a></li>
	      	  	 <li><a href="home/search.action?search=鸽子蛋">鸽子蛋</a></li>
	      	  </ul>
	      	   <ul>
	      	  	 <li><a href="home/search.action?search=鹅蛋">鹅蛋</a></li>
	      	  	 <li><a href="home/search.action?search=鹌鹑蛋">鹌鹑蛋</a></li>
	      	  	 <li><a href="home/search.action?search=皮蛋">皮蛋</a></li>
	      	  </ul>
	      	   <ul>
	      	  	 <li><a href="home/search.action?search=喜蛋">喜蛋</a></li>
	      	  	 <li><a href="home/search.action?search=咸黄蛋">咸黄蛋</a></li>
	      	  	 <li><a href="home/search.action?search=咸蛋">咸蛋</a></li>
	      	  </ul>
	      	  
	     <div class="a">新鲜优质水果开抢啦！</div>
			  <div class="b"><a href="info/commodityinfo.action?comm_id=${egg[0].comm_id}"><img src="${egg[0].image1}" alt=""/></a></div>
	   </div>
	  
	  <div class="content-2">
	  	 <span>${egg[1].commodity_name}</span>
	  	 <div class="content-2-prices">¥${egg[1].comm_price}</div>
	  	 <div class="photos">
	  	 	<a href="info/commodityinfo.action?comm_id=${egg[1].comm_id}"><img src="${egg[1].image1}"  alt=""/></a>
	  	 </div>
	 </div>
	
	 <div class="content-3">
	 	<div class="box">
	 		<a href="info/commodityinfo.action?comm_id=${egg[2].comm_id}"><img src="${egg[2].image1}"  alt=""/></a>
	 		<span>${egg[2].commodity_name}</span>
	 		<div class="box-prices"> ¥${egg[2].comm_price}</div>
	 	</div>
	 	<div class="box">
	 		<a href="info/commodityinfo.action?comm_id=${egg[3].comm_id}"><img src="${egg[3].image1}"  alt=""/></a>
	 		<span>${egg[3].commodity_name}</span>
	 		<div class="box-prices"> ¥${egg[3].comm_price}</div>
	 	</div>
	</div>
	
	<div class="content-4">
	   <div class="box1">
		<span>${egg[4].commodity_name}</span>
	  <div class="box1-prices">¥${egg[4].comm_price}</div>
		<a href="info/commodityinfo.action?comm_id=${egg[4].comm_id}"><img src="${egg[4].image1}" alt=""/></a>
	</div> 
  </div>
  
  <div class="content-5">
	 	<div class="box">
	 		<a href="info/commodityinfo.action?comm_id=${egg[5].comm_id}"><img src="${egg[5].image1}"  alt=""/></a>
	 		<span>${egg[5].commodity_name}</span>
	 		<div class="box-prices"> ¥${egg[5].comm_price}</div>
	 	</div>
	 	<div class="box">
	 		<a href="info/commodityinfo.action?comm_id=${egg[6].comm_id}"><img src="${egg[6].image1}"  alt=""/></a>
	 		<span>${egg[6].commodity_name}</span>
	 		<div class="box-prices"> ¥${egg[6].comm_price}</div>
	 	</div>
	</div>
		
</div>
</div>



  		
 <!--商品分类展示-->
<div class="foods_display">
	<div class="foods-display">
		 <div class="foods-top">
		 	<div class="foods-type">海鲜水产</div>
		 	<div class="foods-jianjie">优质水果带给您更高品质生活</div>
		 </div>
	    
      <div class="content-1">
	      	   	  <ul>
	      	  	 <li><a href="home/search.action?search=草鱼">草鱼</a></li>
	      	  	 <li><a href="home/search.action?search=金枪鱼">金枪鱼</a></li>
	      	  	 <li><a href="home/search.action?search=大龙虾">大龙虾</a></li>
	      	  </ul>
	      	   <ul>
	      	  	 <li><a href="home/search.action?search=小龙虾">小龙虾</a></li>
	      	  	 <li><a href="home/search.action?search=皮皮虾">皮皮虾</a></li>
	      	  	 <li><a href="home/search.action?search=大闸蟹">大闸蟹</a></li>
	      	  </ul>
	      	   <ul>
	      	  	 <li><a href="home/search.action?search=生蚝">生蚝</a></li>
	      	  	 <li><a href="home/search.action?search=鲍鱼">鲍鱼</a></li>
	      	  	 <li><a href="home/search.action?search=鱿鱼">鱿鱼</a></li>
	      	  </ul>
	      	  
	    <div class="a">新鲜优质水果开抢啦！</div>
			  <div class="b"><a href="info/commodityinfo.action?comm_id=${seafood[0].comm_id}"><img src="${seafood[0].image1}" alt=""/></a></div>
	   </div>
	  
	  <div class="content-2">
	  	 <span>${seafood[1].commodity_name}</span>
	  	 <div class="content-2-prices">¥${seafood[1].comm_price}</div>
	  	 <div class="photos">
	  	 	<a href="info/commodityinfo.action?comm_id=${seafood[1].comm_id}"><img src="${seafood[1].image1}"  alt=""/></a>
	  	 </div>
	 </div>
	
	 <div class="content-3">
	 	<div class="box">
	 		<a href="info/commodityinfo.action?comm_id=${seafood[2].comm_id}"><img src="${seafood[2].image1}"  alt=""/></a>
	 		<span>${seafood[2].commodity_name}</span>
	 		<div class="box-prices"> ¥${seafood[2].comm_price}</div>
	 	</div>
	 	<div class="box">
	 		<a href="info/commodityinfo.action?comm_id=${seafood[3].comm_id}"><img src="${seafood[3].image1}"  alt=""/></a>
	 		<span>${seafood[3].commodity_name}</span>
	 		<div class="box-prices"> ¥${seafood[3].comm_price}</div>
	 	</div>
	</div>
	
	<div class="content-4">
	   <div class="box1">
		<span>${seafood[4].commodity_name}</span>
	  <div class="box1-prices">¥${seafood[4].comm_price}</div>
		<a href="info/commodityinfo.action?comm_id=${seafood[4].comm_id}"><img src="${seafood[4].image1}" alt=""/></a>
	</div> 
  </div>
  
  <div class="content-5">
	 	<div class="box">
	 		<a href="info/commodityinfo.action?comm_id=${seafood[5].comm_id}"><img src="${seafood[5].image1}"  alt=""/></a>
	 		<span>${seafood[5].commodity_name}</span>
	 		<div class="box-prices"> ¥${seafood[5].comm_price}</div>
	 	</div>
	 	<div class="box">
	 		<a href="info/commodityinfo.action?comm_id=${seafood[6].comm_id}"><img src="${seafood[6].image1}"  alt=""/></a>
	 		<span>${seafood[6].commodity_name}</span>
	 		<div class="box-prices"> ¥${seafood[6].comm_price}</div>
	 	</div>
	</div>
	 
	
</div>
</div>
	
	  	  		  	
<!--商品分类展示-->
<div class="foods_display">
	<div class="foods-display">
		 <div class="foods-top">
		 	<div class="foods-type">精选肉类</div>
		 	<div class="foods-jianjie">优质水果带给您更高品质生活</div>
		 </div>
	    
      <div class="content-1">
	      	   	  <ul>
	      	  	 <li><a href="home/search.action?search=排骨">排骨</a></li>
	      	  	 <li><a href="home/search.action?search=五花肉">五花肉</a></li>
	      	  	 <li><a href="home/search.action?search=牛排">牛排</a></li>
	      	  </ul>
	      	   <ul>
	      	  	 <li><a href="home/search.action?search=羊肋排">羊肋排</a></li>
	      	  	 <li><a href="home/search.action?search=鸡翅">鸡翅</a></li>
	      	  	 <li><a href="home/search.action?search=鸡腿">鸡腿</a></li>
	      	  </ul>
	      	   <ul>
	      	  	 <li><a href="home/search.action?search=鸭脖">鸭脖</a></li>
	      	  	 <li><a href="home/search.action?search=肠">肠</a></li>
	      	  	 <li><a href="home/search.action?search=牛腱">牛腱</a></li>
	      	  </ul>
	      	  
	    <div class="a">新鲜优质水果开抢啦！</div>
			  <div class="b"><a href="info/commodityinfo.action?comm_id=${meat[0].comm_id}"><img src="${meat[0].image1}" alt=""/></a></div>
	   </div>
	  
	  <div class="content-2">
	  	 <span>${meat[1].commodity_name}</span>
	  	 <div class="content-2-prices">¥${meat[1].comm_price}</div>
	  	 <div class="photos">
	  	 	<a href="info/commodityinfo.action?comm_id=${meat[1].comm_id}"><img src="${meat[1].image1}"  alt=""/></a>
	  	 </div>
	 </div>
	
	 <div class="content-3">
	 	<div class="box">
	 		<a href="info/commodityinfo.action?comm_id=${meat[2].comm_id}"><img src="${meat[2].image1}"  alt=""/></a>
	 		<span>${meat[2].commodity_name}</span>
	 		<div class="box-prices"> ¥${meat[2].comm_price}</div>
	 	</div>
	 	<div class="box">
	 		<a href="info/commodityinfo.action?comm_id=${meat[3].comm_id}"><img src="${meat[3].image1}"  alt=""/></a>
	 		<span>${meat[3].commodity_name}</span>
	 		<div class="box-prices"> ¥${meat[3].comm_price}</div>
	 	</div>
	</div>
	
	<div class="content-4">
	   <div class="box1">
		<span>${meat[4].commodity_name}</span>
	  <div class="box1-prices">¥${meat[4].comm_price}</div>
		<a href="info/commodityinfo.action?comm_id=${meat[4].comm_id}"><img src="${meat[4].image1}" alt=""/></a>
	</div> 
  </div>
  
  <div class="content-5">
	 	<div class="box">
	 		<a href="info/commodityinfo.action?comm_id=${meat[5].comm_id}"><img src="${meat[5].image1}"  alt=""/></a>
	 		<span>${meat[5].commodity_name}</span>
	 		<div class="box-prices"> ¥${meat[5].comm_price}</div>
	 	</div>
	 	<div class="box">
	 		<a href="info/commodityinfo.action?comm_id=${meat[6].comm_id}"><img src="${meat[6].image1}"  alt=""/></a>
	 		<span>${meat[6].commodity_name}</span>
	 		<div class="box-prices"> ¥${meat[6].comm_price}</div>
	 	</div>
	</div>
	 
	
</div>
</div>

<!--商品分类展示-->
<div class="foods_display">
	<div class="foods-display">
		 <div class="foods-top">
		 	<div class="foods-type">新鲜蔬菜</div>
		 	<div class="foods-jianjie">优质水果带给您更高品质生活</div>
		 </div>
	    
      <div class="content-1">
	      	   	  <ul>
	      	  	 <li><a href="home/search.action?search=生菜">生菜</a></li>
	      	  	 <li><a href="home/search.action?search=芥蓝">芥蓝</a></li>
	      	  	 <li><a href="home/search.action?search=西兰花">西兰花</a></li>
	      	  </ul>
	      	   <ul>
	      	  	 <li><a href="home/search.action?search=山药">山药</a></li>
	      	  	 <li><a href="home/search.action?search=百合">百合</a></li>
	      	  	 <li><a href="home/search.action?search=芦笋">芦笋</a></li>
	      	  </ul>
	      	   <ul>
                  <li><a href="home/search.action?search=香菇">香菇</a></li>
	      	  	 <li><a href="home/search.action?search=松茸">松茸</a></li>
	      	  	 <li><a href="home/search.action?search=西红柿">西红柿</a></li>
	      	  </ul>
	      	  
	    <div class="a">新鲜优质水果开抢啦！</div>
			  <div class="b"><a href="info/commodityinfo.action?comm_id=${vegetables[0].comm_id}"><img src="${vegetables[0].image1}" alt=""/></a></div>
	   </div>
	  
	  <div class="content-2">
	  	 <span>${vegetables[1].commodity_name}</span>
	  	 <div class="content-2-prices">¥${vegetables[1].comm_price}</div>
	  	 <div class="photos">
	  	 	<a href="info/commodityinfo.action?comm_id=${vegetables[1].comm_id}"><img src="${vegetables[1].image1}"  alt=""/></a>
	  	 </div>
	 </div>
	
	 <div class="content-3">
	 	<div class="box">
	 		<a href="info/commodityinfo.action?comm_id=${vegetables[2].comm_id}"><img src="${vegetables[2].image1}"  alt=""/></a>
	 		<span>${vegetables[2].commodity_name}</span>
	 		<div class="box-prices"> ¥${vegetables[2].comm_price}</div>
	 	</div>
	 	<div class="box">
	 		<a href="info/commodityinfo.action?comm_id=${vegetables[3].comm_id}"><img src="${vegetables[3].image1}"  alt=""/></a>
	 		<span>${vegetables[3].commodity_name}</span>
	 		<div class="box-prices"> ¥${vegetables[3].comm_price}</div>
	 	</div>
	</div>
	
	<div class="content-4">
	   <div class="box1">
		<span>${vegetables[4].commodity_name}</span>
	  <div class="box1-prices">¥${vegetables[4].comm_price}</div>
		<a href="info/commodityinfo.action?comm_id=${vegetables[4].comm_id}"><img src="${vegetables[4].image1}" alt=""/></a>
	</div> 
  </div>
  
  <div class="content-5">
	 	<div class="box">
	 		<a href="info/commodityinfo.action?comm_id=${vegetables[5].comm_id}"><img src="${vegetables[5].image1}"  alt=""/></a>
	 		<span>${vegetables[5].commodity_name}</span>
	 		<div class="box-prices"> ¥${vegetables[5].comm_price}</div>
	 	</div>
	 	<div class="box">
	 		<a href="info/commodityinfo.action?comm_id=${vegetables[6].comm_id}"><img src="${vegetables[6].image1}"  alt=""/></a>
	 		<span>${vegetables[6].commodity_name}</span>
	 		<div class="box-prices"> ¥${vegetables[6].comm_price}</div>
	 	</div>
	</div>
	 
	
</div>
</div>

	  		  	  	  			  	  	  		  	
<!--商品分类展示-->
<div class="foods_display">
	<div class="foods-display">
		 <div class="foods-top">
		 	<div class="foods-type">乳品糕点</div>
		 	<div class="foods-jianjie">优质水果带给您更高品质生活</div>
		 </div>
	    
      <div class="content-1">
	      	  	  <ul>
	      	  	 <li><a href="home/search.action?search=纯牛奶">纯牛奶</a></li>
	      	  	 <li><a href="home/search.action?search=酸奶">酸奶</a></li>
	      	  	 <li><a href="home/search.action?search=乳酸菌">乳酸菌</a></li>
	      	  </ul>
	      	   <ul>
	      	  	 <li><a href="home/search.action?search=点心">点心</a></li>
	      	  	 <li><a href="home/search.action?search=面包">面包</a></li>
	      	  	 <li><a href="home/search.action?search=饼干">饼干</a></li>
	      	  </ul>
	      
	      	  
	    <div class="a">新鲜优质水果开抢啦！</div>
			  <div class="b"><a href="info/commodityinfo.action?comm_id=${milk[0].comm_id}"><img src="${milk[0].image1}" alt=""/></a></div>
	   </div>
	  
	  <div class="content-2">
	  	 <span>${milk[1].commodity_name}</span>
	  	 <div class="content-2-prices">¥${milk[1].comm_price}</div>
	  	 <div class="photos">
	  	 	<a href="info/commodityinfo.action?comm_id=${milk[1].comm_id}"><img src="${milk[1].image1}"  alt=""/></a>
	  	 </div>
	 </div>
	
	 <div class="content-3">
	 	<div class="box">
	 		<a href="info/commodityinfo.action?comm_id=${milk[2].comm_id}"><img src="${milk[2].image1}"  alt=""/></a>
	 		<span>${milk[2].commodity_name}</span>
	 		<div class="box-prices"> ¥${milk[2].comm_price}</div>
	 	</div>
	 	<div class="box">
	 		<a href="info/commodityinfo.action?comm_id=${milk[3].comm_id}"><img src="${milk[3].image1}"  alt=""/></a>
	 		<span>${milk[3].commodity_name}</span>
	 		<div class="box-prices"> ¥${milk[3].comm_price}</div>
	 	</div>
	</div>
	
	<div class="content-4">
	   <div class="box1">
		<span>${milk[4].commodity_name}</span>
	  <div class="box1-prices">¥${milk[4].comm_price}</div>
		<a href="info/commodityinfo.action?comm_id=${milk[4].comm_id}"><img src="${milk[4].image1}" alt=""/></a>
	</div> 
  </div>
  
  <div class="content-5">
	 	<div class="box">
	 		<a href="info/commodityinfo.action?comm_id=${milk[5].comm_id}"><img src="${milk[5].image1}"  alt=""/></a>
	 		<span>${milk[5].commodity_name}</span>
	 		<div class="box-prices"> ¥${milk[5].comm_price}</div>
	 	</div>
	 	<div class="box">
	 		<a href="info/commodityinfo.action?comm_id=${milk[6].comm_id}"><img src="${milk[6].image1}"  alt=""/></a>
	 		<span>${milk[6].commodity_name}</span>
	 		<div class="box-prices"> ¥${milk[6].comm_price}</div>
	 	</div>
	</div>
	 
	
</div>
</div>


	 <!--商品分类展示-->
<div class="foods_display">
	<div class="foods-display">
		 <div class="foods-top">
		 	<div class="foods-type">方便速食</div>
		 	<div class="foods-jianjie">优质水果带给您更高品质生活</div>
		 </div>
	    
      <div class="content-1">
	      	  	  <ul>
	      	  	 <li><a href="home/search.action?search=水饺">水饺</a></li>
	      	  	 <li><a href="home/search.action?search=汤圆">汤圆</a></li>
	      	  	 <li><a href="home/search.action?search=馒头">馒头</a></li>
	      	  </ul>
	      	   <ul>
	      	  	 <li><a href="home/search.action?search=肠粉">肠粉</a></li>
	      	  	 <li><a href="home/search.action?search=牛肉丸">牛肉丸</a></li>
	      	  	 <li><a href="home/search.action?search=鱼丸">鱼丸</a></li>
	      	  </ul>
	      	   <ul>
	      	  	 <li><a href="home/search.action?search=金华火腿">金华火腿</a></li>
	      	  	 <li><a href="home/search.action?search=卤味">卤味</a></li>
	      	  	 <li><a href="home/search.action?search=火腿">火腿</a></li>
	      	  </ul>
	      	  
	     <div class="a">新鲜优质水果开抢啦！</div>
			  <div class="b"><a href="info/commodityinfo.action?comm_id=${fastfood[0].comm_id}"><img src="${fastfood[0].image1}" alt=""/></a></div>
	   </div>
	  
	  <div class="content-2">
	  	 <span>${fastfood[1].commodity_name}</span>
	  	 <div class="content-2-prices">¥${fastfood[1].comm_price}</div>
	  	 <div class="photos">
	  	 	<a href="info/commodityinfo.action?comm_id=${fastfood[1].comm_id}"><img src="${fastfood[1].image1}"  alt=""/></a>
	  	 </div>
	 </div>
	
	 <div class="content-3">
	 	<div class="box">
	 		<a href="info/commodityinfo.action?comm_id=${fastfood[2].comm_id}"><img src="${fastfood[2].image1}"  alt=""/></a>
	 		<span>${fastfood[2].commodity_name}</span>
	 		<div class="box-prices"> ¥${fastfood[2].comm_price}</div>
	 	</div>
	 	<div class="box">
	 		<a href="info/commodityinfo.action?comm_id=${fastfood[3].comm_id}"><img src="${fastfood[3].image1}"  alt=""/></a>
	 		<span>${fastfood[3].commodity_name}</span>
	 		<div class="box-prices"> ¥${fastfood[3].comm_price}</div>
	 	</div>
	</div>
	
	<div class="content-4">
	   <div class="box1">
		<span>${fastfood[4].commodity_name}</span>
	  <div class="box1-prices">¥${fastfood[4].comm_price}</div>
		<a href="info/commodityinfo.action?comm_id=${fastfood[4].comm_id}"><img src="${fastfood[4].image1}" alt=""/></a>
	</div> 
  </div>
  
  <div class="content-5">
	 	<div class="box">
	 		<a href="info/commodityinfo.action?comm_id=${fastfood[5].comm_id}"><img src="${fastfood[5].image1}"  alt=""/></a>
	 		<span>${fastfood[5].commodity_name}</span>
	 		<div class="box-prices"> ¥${fastfood[5].comm_price}</div>
	 	</div>
	 	<div class="box">
	 		<a href="info/commodityinfo.action?comm_id=${fastfood[6].comm_id}"><img src="${fastfood[6].image1}"  alt=""/></a>
	 		<span>${fastfood[6].commodity_name}</span>
	 		<div class="box-prices"> ¥${fastfood[6].comm_price}</div>
	 	</div>
	</div>
	 
	
</div>
</div>	  	 		  		  	  	  			  	  	  		  		  		  	  	  			  	  	  		  		  		  	  	  			  	  	  		  		  		  	

	 <!--商品分类展示-->
<div class="foods_display">
	<div class="foods-display">
		 <div class="foods-top">
		 	<div class="foods-type">粮油杂货</div>
		 	<div class="foods-jianjie">优质商品带给您更高品质生活</div>
		 </div>
	    
      <div class="content-1">
	       	  <ul>
	      	  	 <li><a href="home/search.action?search=米">米</a></li>
	      	  	 <li><a href="home/search.action?search=面粉">面粉</a></li>
	      	  	 <li><a href="home/search.action?search=花生油">花生油</a></li>
	      	  </ul>
	      	   <ul>
	      	  	 <li><a href="home/search.action?search=菜籽油">菜籽油</a></li>
	      	  	 <li><a href="home/search.action?search=山茶油">山茶油</a></li>
	      	  	 <li><a href="home/search.action?search=玉米油">玉米油</a></li>
	      	  </ul>
	      	   <ul>
	      	  	 <li><a href="home/search.action?search=酱油">酱油</a></li>
	      	  	 <li><a href="home/search.action?search=鸡精">鸡精</a></li>
	      	  	 <li><a href="home/search.action?search=盐">盐</a></li>
	      	  </ul>
	      	  
	    <div class="a">新鲜优质水果开抢啦！</div>
			  <div class="b"><a href="info/commodityinfo.action?comm_id=${grain[0].comm_id}"><img src="${grain[0].image1}" alt=""/></a></div>
	   </div>
	  
	  <div class="content-2">
	  	 <span>${grain[1].commodity_name}</span>
	  	 <div class="content-2-prices">¥${grain[1].comm_price}</div>
	  	 <div class="photos">
	  	 	<a href="info/commodityinfo.action?comm_id=${grain[1].comm_id}"><img src="${grain[1].image1}"  alt=""/></a>
	  	 </div>
	 </div>
	
	 <div class="content-3">
	 	<div class="box">
	 		<a href="info/commodityinfo.action?comm_id=${grain[2].comm_id}"><img src="${grain[2].image1}"  alt=""/></a>
	 		<span>${grain[2].commodity_name}</span>
	 		<div class="box-prices"> ¥${grain[2].comm_price}</div>
	 	</div>
	 	<div class="box">
	 		<a href="info/commodityinfo.action?comm_id=${grain[3].comm_id}"><img src="${grain[3].image1}"  alt=""/></a>
	 		<span>${grain[3].commodity_name}</span>
	 		<div class="box-prices"> ¥${grain[3].comm_price}</div>
	 	</div>
	</div>
	
	<div class="content-4">
	   <div class="box1">
		<span>${grain[4].commodity_name}</span>
	  <div class="box1-prices">¥${grain[4].comm_price}</div>
		<a href="info/commodityinfo.action?comm_id=${grain[4].comm_id}"><img src="${grain[4].image1}" alt=""/></a>
	</div> 
  </div>
  
  <div class="content-5">
	 	<div class="box">
	 		<a href="info/commodityinfo.action?comm_id=${grain[5].comm_id}"><img src="${grain[5].image1}"  alt=""/></a>
	 		<span>${grain[5].commodity_name}</span>
	 		<div class="box-prices"> ¥${grain[5].comm_price}</div>
	 	</div>
	 	<div class="box">
	 		<a href="info/commodityinfo.action?comm_id=${grain[6].comm_id}"><img src="${grain[6].image1}"  alt=""/></a>
	 		<span>${grain[6].commodity_name}</span>
	 		<div class="box-prices"> ¥${grain[6].comm_price}</div>
	 	</div>
	</div>
	 
	
</div>
</div>	  	 	  	  			  	  	  		  		  		  	  	  			  	  	  		  		  		  	  	  			  	  	  		  		  	  	  			  	  	  		  		  		  	  	  			  	  	  		  		  		  	  	  			  	  	  		  	
</body>
</html>