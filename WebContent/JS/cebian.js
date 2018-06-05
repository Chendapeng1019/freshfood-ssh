// JavaScript Document
window.onload=function(){
	     //$('.foods').hide();//初始二级菜单foods菜单隐藏
	     
	 
	$(".user").mouseenter(function(){
		$(this).children(".userbox").animate({left:-288,queue:true});
		$(this).children(".userbox").css("visibility","visible");
		
	});
	$(".user").mouseleave(function(){
		$(this).children(".userbox").css("visibility","hidden");
		$(this).children(".userbox").animate({left:-308,queue:true});
	});
	
	$(".foot").mouseenter(function(){
		$(this).children(".myfoot").animate({left:-92,queue:true});
		$(this).children(".myfoot").css("visibility","visible");
		
	});
	$(".foot").mouseleave(function(){
		$(this).children(".myfoot").css("visibility","hidden");
		$(this).children(".myfoot").animate({left:-120,queue:true});
		
	});
	
	$(".shoucang").mouseenter(function(){
		$(this).children(".myshoucang").animate({left:-92,queue:true});
		$(this).children(".myshoucang").css("visibility","visible");
		
	});
	$(".shoucang").mouseleave(function(){
		$(this).children(".myshoucang").css("visibility","hidden");
		$(this).children(".myshoucang").animate({left:-120,queue:true});
		
	});
	
	$(".kefu").mouseenter(function(){
		$(this).children(".mykefu").animate({left:-92,queue:true});
		$(this).children(".mykefu").css("visibility","visible");
		
	});
	$(".kefu").mouseleave(function(){
		$(this).children(".mykefu").css("visibility","hidden");
		$(this).children(".mykefu").animate({left:-120,queue:true});
		
	});
	
	$(".returntop").click(function(){
		$("html,body").animate({scrollTop:0},500);
		});
	
};
	
	
