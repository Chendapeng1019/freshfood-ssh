// JavaScript Document
$(function(){
	
	$(".add").click(function(){
		var t=$(this).parent().parent().find('input[class=number]');
		t.val(parseInt(t.val())+1);
	});
	
	$(".reduce").click(function(){
		var t =$(this).parent().parent().find('input[class=number]');
		if(parseInt(t.val())>1){
			t.val(parseInt(t.val())-1);
		}
	});
	
	$(".infoline ul li").click(function(){
		$(this).addClass("active").siblings().removeClass("active");
	});
});