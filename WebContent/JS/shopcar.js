// JavaScript Document

$(function(){
	

	
	$(".add").click(function(){
		
		var t=$(this).parent().find('input[class*=commoditynumber]');
        t.val(parseInt(t.val())+1);
		var comm_number=$(this).parent().children(".commoditynumber").val();
		var comm_id=parseInt($(this).parent().nextAll(".dobox1").children("div.comm_id").html());
		var Comm_id=$(this).parent().nextAll(".dobox1").children("div.comm_id").html();
		var comm_price=parseFloat($(this).parent().prevAll(".pricesbox1").html());
		var totalPrice=parseFloat($(this).parent().nextAll(".moneybox1").html());
		var comm_number=parseInt($(this).parent().children(".commoditynumber").val());
		$.post("ajax/ChangNumber.action",{comm_number:comm_number,comm_id:comm_id},
				function(obj){
			if($.trim(obj.flag)==1){
				var totalprice=(comm_price*comm_number).toFixed(2);
				$("#"+Comm_id).parent().nextAll(".moneybox1").html(totalprice);
				GetCount();
			}
		});
		
	});
	
	
	$(".reduce").click(function(){
		var t=$(this).parent().find('input[class*=commoditynumber]');
		var Comm_id=parseInt($(this).parent().nextAll(".dobox1").children("div.comm_id").html());
		var comm_id=$(this).parent().nextAll(".dobox1").children("div.comm_id").html();
		var comm_price=parseFloat($(this).parent().prevAll(".pricesbox1").html());
		var totalPrice=parseFloat($(this).parent().nextAll(".moneybox1").val());
		
		if(parseInt(t.val())>1){
			t.val(parseInt(t.val())-1);
			var comm_number=parseInt(t.val());
			$.post("ajax/ChangNumber.action",{comm_number:comm_number,comm_id:comm_id},
					function(obj){
				if($.trim(obj.flag)==1){
					var totalprice=(comm_price*comm_number).toFixed(2);
					$("#"+Comm_id).parent().nextAll(".moneybox1").html(totalprice);
					GetCount();
				}
			});
			
		}
		
	});
	
	
	
	$(".commoditynumber").change(function(){
		
        var t=parseInt($(this).val());
		var comm_id=parseInt($(this).parent().nextAll(".dobox1").children("div.comm_id").html());
		var Comm_id=$(this).parent().nextAll(".dobox1").children("div.comm_id").html();
		var comm_price=parseFloat($(this).parent().prevAll(".pricesbox1").html());
	
		var totalPrice=parseFloat($(this).parent().nextAll(".moneybox1").html());
						
			$.post("ajax/ChangNumber.action",{comm_number:t,comm_id:comm_id},
					function(obj){
				if($.trim(obj.flag)==1){
					var totalprice=(comm_price*t).toFixed(2);
					$("#"+Comm_id).parent().nextAll(".moneybox1").html(totalprice);
					GetCount();
				}
			});
			
		
		
	});
	
	$("#checkAll").click(function(){
	if($(this).attr("checked")){
		$(".Checkbox").each(function(){
			$(this).attr("checked",true);
		});
	
	}
	else{
		$(".Checkbox").each(function(){
			$(this).attr("checked",false);
		});
	}
	GetCount();
	});
	
	
	//attr("属性"，属性值)
	
	
	
  $(".Checkbox").click(function(){
	  
	  GetCount();
	  
	  
  });
  
  function GetCount(){
		var selectednumber=0; //选中商品的总数量
		var selectedtotalprice=0;//选中商品的总价
	  $(".Checkbox").each(function(){
		  //复选框选中的每一项进行数量加减，总价加减
		 if($(this).attr("checked")){
			 //alert($(this).parent().parent().nextAll(".numberbox1").children(".commoditynumber").val());
			    
				 selectednumber=selectednumber+parseInt($(this).parent().parent().nextAll(".numberbox1").children(".commoditynumber").val());//获取所选择的总数量 
				 
				 selectedtotalprice=selectedtotalprice+parseFloat($(this).parent().parent().nextAll(".moneybox1").html());  //获取所选择的商品的总价钱
				
			     
				// alert(selectedtotalprice);
			 }
	  });
	  
	  
	  if(parseInt(selectednumber)==0){
		  $(".jiesuanbox").removeClass("active");
	  }
	  else{
		  $(".jiesuanbox").addClass("active");
	  }
	  $("#selectednumber").text(selectednumber);
	  $("#seletedtotalprice").text(parseFloat(selectedtotalprice).toFixed(2));
	 
  }
  
		
  $(".delect").click(function(){
	  var comm_id=$(this).next().html();
	 // var comm=$(this).parent().parent(".commoditybox").css("background", "yellow");
	  $(this).parent().parent(".commoditybox").slideUp(350);//隐藏指定的版块，时间350毫秒
	  if($(this).parent().prevAll(".commodityinfo1").children(".checkbox").children(".Checkbox").attr("checked")){
		  $(this).parent().prevAll(".commodityinfo1").children(".checkbox").children(".Checkbox").attr("checked",false);
		  GetCount();
	  }
		
	  $.post("ajax/DeleteShopCar.action",{comm_id:comm_id},
		function(obj){
		  if($.trim(obj.flag)==1){
			 
			}
  });
  });
  
  
});

