// JavaScript Document
$(function(){
	$(".b ul li").click(function(){
		$(this).addClass("active").siblings().removeClass("active");
	});
	
	$("#tab1").click(function(){
		$(".c ul li").hide();
		$(".tab1 .commoditybox .commodityinfo ul li").show();
		$(".tab1").fadeIn(700);
	});
	
	$("#tab2").click(function(){
		$(".c ul li").hide();
		$(".tab2 .commoditybox .commodityinfo ul li").show();
		$(".tab2").fadeIn(700);
	});
	
	$("#tab3").click(function(){
		$(".c ul li").hide();
		$(".tab3 .commoditybox .commodityinfo ul li").show();
		$(".tab3").slideDown(700);
	});
	
	$("#tab4").click(function(){
		$(".c ul li").hide();
		$(".tab4 .commoditybox .commodityinfo ul li").show();
		$(".tab4").slideDown(700);
	});
	
	$("#tab5").click(function(){
		$(".c ul li").hide();
		$(".tab5 .commoditybox .commodityinfo ul li").show();
		$(".tab5").slideDown(700);
	});
});