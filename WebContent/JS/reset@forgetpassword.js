// JavaScript Document
// JavaScript Document
$(function(){
	
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
	
	$("#username").blur(function(){ //昵称文本框失去焦点触发验证事件
		
		
		if(!$(this).val()){
			$(this).addClass("active");
			$(".reminder1").addClass("active");
			$("#reminder1").html("昵称不能为空！");
		}
		else{
			$(this).removeClass("active");
			$(".reminder1").removeClass("active");
		}
	});
	
	
	$("#userphone").blur(function(){//手机号码文本框失去焦点触发验证事件
		if(!$(this).val() ||!(/^[0-9]{11}$/).test($(this).val())){
			
			$(this).addClass("active");
			$(".reminder2").addClass("active");
			$("#reminder2").html("号码不能为空且只能是数字，长度为11！");
		}
		else{
			//用户名格式合法，判断是否已经被注册
			$.post("RegisterServlet.do",{UserPhone:$(this).val()},
					function(obj){
				if($.trim(obj)=="OK"){
					$("#userphone").addClass("active");
					$(".reminder2").addClass("active");
					$("#reminder2").html("该手机未注册！");
				}
				else{
					$("#userphone").removeClass("active");
					$(".reminder2").removeClass("active");
				  }
			  });
		
	  }
		  
});
	
	$("#oldpassword").blur(function(){
		if(!$(this).val() ||!(/^[A-Za-z0-9_]{5,20}$/).test($(this).val())){
			$(this).addClass("active");
			$(".reminder-verify").addClass("active");
			$("#reminder-verify").html("密码不为空且只能是数字和英文，长度为5-20！");
		}
		else{
			$(this).removeClass("active");
			$(".reminder-verify").removeClass("active");
		}
	});
	
	$("#userpassword").blur(function(){
	if(!$(this).val() ||!(/^[A-Za-z0-9_]{5,20}$/).test($(this).val())){
		$(this).addClass("active");
		$(".reminder3").addClass("active");
		$("#reminder3").html("密码不为空且只能是数字和英文，长度为5-20！");
	}
	else{
		$(this).removeClass("active");
		$(".reminder3").removeClass("active");
	}
});

	$("#repassword").blur(function(){
		if(!$(this).val() ||!(/^[A-Za-z0-9_]{5,20}$/).test($(this).val())){
			$(this).addClass("active");
			$(".reminder4").addClass("active");
			$("#reminder4").html("确认密码不为空且只能是数字和英文，长度为5-20！");
		}
		else{
			if($(this).val()!=$("#userpassword").val())
				{
				$(".reminder4").addClass("active");
			    $("#reminder4").html("两次密码输入不一致！");}
			else{
				$(this).removeClass("active");
				$(".reminder4").removeClass("active");
			}
			
		}
	});
	
	
	
	
	  $("#phone").blur(function(){////手机号码文本框失去焦点触发验证事件
		  if(!$(this).val()||!(/^[0-9]{11}$/).test($(this).val())){

				$(this).addClass("active");
				$(".reminder5").addClass("active");
				$("#reminder5").html("号码不能为空且只能是数字，长度为11！");
		  }else{
				
			  $(this).removeClass("active");
			  $(".reminder5").removeClass("active");
	
			
		  }
			  
	  });
	  
	  
	  
	  $("#phone").blur(function(){////手机号码文本框失去焦点触发验证事件
		  if(!$(this).val()||!(/^[0-9]{11}$/).test($(this).val())){

				$(this).addClass("active");
				$(".reminder5").addClass("active");
				$("#reminder5").html("号码不能为空且只能是数字，长度为11！");
		  }else{
			  //用户名格式合法，判断是否已经被注册
			  $.post("RegisterServlet.do", {UserPhone:$(this).val()},  
			             function (obj){  
					  if ($.trim(obj)=="OK"){
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