// JavaScript Document
$(function(){
	$("#Register").hide();
	$(".loginbox").show();
	$(".registerbox").hide();
	$(".select-login").click(function(){
		$(".select-login").addClass("active");
		$(".select-register").removeClass("active");
		$(".registerbox").hide();
		$(".loginbox").show();
	});
	
	$(".select-register").click(function(){
		$(".select-register").addClass("active");
		$(".select-login").removeClass("active");
		$(".loginbox").hide();
		$(".registerbox").show();
	});
	
	var username;
	var userphone;
	var verify_value;
	var userpassword;
	var repassword;
	var agree;
	
	function Register(){
	    if(agree=="OK"&&username=="OK"&& userphone=="OK"&&verify_value=="OK"&&userpassword=="OK"&&repassword=="OK")
		{   
			$("#Register").show();
		}
	    else{
	    	$("#Register").hide();
	    }
	}
	
	$("#agree").click(function(){
		if($(this).attr("checked")){
			agree="OK";
			
		}
		else{
			agree="NO";
		}
		Register();
		});
	
	$("#username").blur(function(){ //昵称文本框失去焦点触发验证事件
		
		
		if(!$(this).val()){
			$(this).addClass("active");
			$(".reminder1").addClass("active");
			$("#reminder1").html("昵称不能为空！");
			username="NO";
		}
		else{
			username="OK";
			
			$(this).removeClass("active");
			$(".reminder1").removeClass("active");
		}
		Register();
	});
	
	
	$("#userphone").blur(function(){//手机号码文本框失去焦点触发验证事件
		
		if(!$(this).val() ||!(/^[0-9]{11}$/).test($(this).val())){
			userphone="NO";
			$(this).addClass("active");
			$(".reminder2").addClass("active");
			$("#reminder2").html("号码不能为空且只能是数字，长度为11！");
		}

		else{
			
			 
			//用户名格式合法，判断是否已经被注册
			$.get("ajax/RegisterAjax.action",{registerphone:$(this).val()},
					function(obj){
				if($.trim(obj.registerinfo)==1){
					userphone="NO";
					$("#userphone").addClass("active");
					$(".reminder2").addClass("active");
					$("#reminder2").html("该手机已注册！");
				}
				else{
					userphone="OK";
					$("#userphone").removeClass("active");
					$(".reminder2").removeClass("active");
				  }
			  });
		
	  }
		Register();	
});
	
	$("#verify_value").blur(function(){
		if(!$(this).val() ||!(/^[A-Za-z0-9_]{4}$/).test($(this).val())){
			$(this).addClass("active");
			$(".reminder-verify").addClass("active");
			$("#reminder-verify").html("不为空且只能是数字和英文，长度为4！");
			verify_value="NO";
		}
		else{
			verify_value="OK";
			
			$(this).removeClass("active");
			$(".reminder-verify").removeClass("active");
		}
		Register();
	});
	
	$("#userpassword").blur(function(){
	if(!$(this).val() ||!(/^[A-Za-z0-9_]{5,20}$/).test($(this).val())){
		$(this).addClass("active");
		$(".reminder3").addClass("active");
		$("#reminder3").html("密码不为空且只能是数字和英文，长度为5-20！");
		userpassword="NO";
	}
	else{
		userpassword="OK";
		
		$(this).removeClass("active");
		$(".reminder3").removeClass("active");
	}
	Register();
});

	$("#repassword").blur(function(){
		if(!$(this).val() ||!(/^[A-Za-z0-9_]{5,20}$/).test($(this).val())){
			$(this).addClass("active");
			$(".reminder4").addClass("active");
			$("#reminder4").html("确认密码不为空且只能是数字和英文，长度为5-20！");
			repassword="NO";
		}
		else{
			if($(this).val()!=$("#userpassword").val())
				{
				repassword="NO";
				$(".reminder4").addClass("active");
			    $("#reminder4").html("两次密码输入不一致！");}
			else{
				repassword="OK";
				
				$(this).removeClass("active");
				$(".reminder4").removeClass("active");
			}
			
		}
		Register();
	});
	
	
	
	/*  $("#phone").blur(function(){////手机号码文本框失去焦点触发验证事件
		  if(!$(this).val()||!(/^[0-9]{11}$/).test($(this).val())){

				$(this).addClass("active");
				$(".reminder5").addClass("active");
				$("#reminder5").html("号码不能为空且只能是数字，长度为11！");
		  }else{
				
			  $(this).removeClass("active");
			  $(".reminder5").removeClass("active");
	
			
		  }
			  
	  });
	  
	  */
	  
	  $("#phone").blur(function(){////手机号码文本框失去焦点触发验证事件
		  if(!$(this).val()||!(/^[0-9]{11}$/).test($(this).val())){

				$(this).addClass("active");
				$(".reminder5").addClass("active");
				$("#reminder5").html("号码不能为空且只能是数字，长度为11！");
		  }else{
			  
			  //用户名格式合法，判断是否已经被注册
			  $.get("ajax/LoginAjax.action", {loginphone:$(this).val()},  
			             function (obj){  
					  if ($.trim(obj.logininfo)==0){
						   $(this).addClass("active");
							$(".reminder5").addClass("active");
							$("#reminder5").html("该手机未注册！");
					  }
					  else{
						  $(this).removeClass("active");
							$(".reminder5").removeClass("active");
					  }
				  });
			
		  }
			  
	  });
	 

});