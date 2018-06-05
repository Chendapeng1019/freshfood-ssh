/**
 * 
 */
// JavaScript Document
$(function(){
	     //$('.foods').hide();//初始二级菜单foods菜单隐藏
	   
		    var thisTime;
		    //鼠标离开左侧内容栏
		    $('.list').mouseleave(function(even){
		        thisTime = setTimeout(thisMouseOut,1000);
		    });
		    //鼠标点击左侧内容栏   滑动出弹层
		    $('.list ').mouseenter(function(){
		        $(this).addClass("listactive").siblings().removeClass("listactive");
		        clearTimeout(thisTime);
		        var thisUB = $('.list').index($(this));
		        if($.trim($('.foods .foods-list').eq(thisUB).html()) != ""){
		            $('.foods').addClass('active');
		            $('.foods-list').hide();
		            $('.foods-list').eq(thisUB).show();
		        }else{
		            $('.foods').removeClass('active');
		        }
		    });
		    //函数——执行鼠标离开左侧内容栏的动作
		   function thisMouseOut(){
		        $('.foods').removeClass('active');
		        $('.list').removeClass('listactive');
				//$('.foods-list').hide();
		    }
	
		    $('.foods').mouseenter(function(){
				
		        clearTimeout(thisTime);
		        $('.foods').addClass('active');
		    });
	
		    $('.foods').mouseleave(function(){
		       $('.foods').removeClass('active');
		        $('.list').removeClass('listactive');
				//$('.foods-list').hide();
		    });
	
	        /*$('.foods-list').mouseleave(function(){
		        $('.foods').removeClass('active');
		        //$('.list').removeClass('listactive');
				
		    });*/
	
	
	$('.ck-slide').ckSlide({
				autoPlay: true,//默认为不自动播放，需要时请以此设置
				dir: 'x',//默认效果淡隐淡出，x为水平移动，y 为垂直滚动
				interval:3000//默认间隔2000毫秒
				
			});
	
	
});
	
	
