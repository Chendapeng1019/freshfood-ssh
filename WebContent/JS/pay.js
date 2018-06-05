// JavaScript Document
$(function() {

	var SelectedAdd = "NO";
	var SelectedPay = "NO";
	$("#TiJiao").hide();

	function Submit() {
		if (SelectedAdd == "OK" && SelectedPay == "OK") {
			$("#TiJiao").show();
		} else {
			$("#TiJiao").hide();
		}
	}

	$(".address ul li")
			.click(
					function() {

						$(this).addClass("selected").siblings().removeClass(
								"selected");/*
											 * siblings()
											 * 获得匹配集合中每个元素的同胞，通过选择器进行筛选是可选的。
											 */
						var rece_name = $(this).children(".name_phone")
								.children(".name").html();
						var rece_phone = $(this).children(".name_phone")
								.children(".phone").html();
						var rece_sheng = $(this).children(".receviebox")
								.children(".sheng").html();
						var rece_shi = $(this).children(".receviebox")
								.children(".shi").html();
						var rece_xianqu = $(this).children(".receviebox")
								.children(".xianqu").html();
						var rece_add = $(this).children(".receviebox")
								.children(".add").html();
						var rece_id = $(this).children(".rece_id").html();

						$("#receivename").val(rece_name);
						$("#receivephone").val(rece_phone);
						$("#receiveadd").val(
								rece_sheng + rece_shi + rece_xianqu + rece_add);
						$("#ReceiveID").html(rece_id);

						var Rece_name = $("#receivename").val();
						var Rece_phone = $("#receivephone").val();
						var Rece_add = $("#receiveadd").val();
						var Order_id = $("#Order_ID").val();
						$.post("ajax/SaveReceiveInfo.action", {
							order_id : Order_id,
							rece_name : Rece_name,
							rece_tel : Rece_phone,
							rece_add : Rece_add
						}, function(obj) {
							if ($.trim(obj.flag) == 1) {

							}
						});

						SelectedAdd = "OK";
						Submit();
					});

	$(".setmoren span").click(
			function() {

				$(this).parent().parent().prevAll(".moren").addClass("active");
				$(this).parent().addClass("active");
				$(this).parent().parent().parent().siblings()
						.children(".dobox").children(".setmoren").removeClass(
								"active");// 该项设为默认隐藏
				$(this).parent().parent().parent().siblings()
						.children(".moren").removeClass("active");// 其他默认地址隐藏
				var rece_id = $(this).parent().parent().prevAll(".rece_id")
						.html();
				$.post("ajax/setMoRen.action", {
					rece_id : rece_id
				}, function() {
					if ($.trim(obj)) {

					}
				});
			});

	$(".payways ul li").click(function() {
		$(this).siblings().removeClass("selected");
		$(this).addClass("selected");
		SelectedPay = "OK";
		Submit();
	});

	$("#weixin").click(function() {
		$("#paymethods").val("微信");
		var paymethod = $("#paymethods").val();
		var Order_id = $("#Order_ID").val();
		$.post("ajax/SavePayMethod.action", {
			order_id : Order_id,
			paymethod : paymethod
		}, function(obj) {
			if ($.trim(obj) == 1) {

			}
		});

	});

	$("#zhifubao").click(function() {
		$("#paymethods").val("支付宝");
		var paymethod = $("#paymethods").val();
		var Order_id = $("#Order_ID").val();
		$.post("ajax/SavePayMethod.action", {
			order_id : Order_id,
			paymethod : paymethod
		}, function(obj) {
			if ($.trim(obj.flag) == 1) {

			}
		});
	});

	$(".usenewadd").click(function() {

		$(".bodybackground").show();
		$('.newaddbox').slideDown(500);
	});
	/*
	 * $(".save").click(function(){
	 * 
	 * $(".bodybackground").hide(); $('.newaddbox').slideUp(500);//slideDown()
	 * 方法通过使用滑动效果，隐藏的被选元素 });
	 */
	$(".exit").click(function() {

		$(".bodybackground").hide();
		$('.newaddbox').slideUp(500);// slideUp() 方法通过使用滑动效果，显示的被选元素
	});



	$(".delete span").click(function() {
		var rece_id = $(this).parent().parent().prevAll(".rece_id").html();
		var Rece_id = $("#ReceiveID").html();
		var N = null;
		if (rece_id == Rece_id) {
			$("#receivename").html(N);
			$("#receivephone").html(N);
			$("#receiveadd").html(N);
			$("#ReceiveID").html(N);
		}

		$(this).parent().parent().parent().slideUp(500);

		$.post("ajax/DeleteReceiveInfo.action", {
			rece_ID : rece_id
		}, function(obj) {
			if ($.trim(obj == 1)) {
			}
		});

	});

	$("#sheng").change(function() {
		$("#shi option:gt(0)").remove();
		getCityList();
	});
	
	function getCityList() {

		var provinceid = $.trim($("#sheng").val());
		
		$.post("ajax/getCity.action", {
			provinceid : provinceid
		}, function(result) {

			var Cities = result.citiesList;
			for (var i = 0; i < Cities.length; i++) {
				var city = Cities[i].city;
				var cityid=Cities[i].cityid;
				$option = $("<option/>");
				$option.attr("value", cityid);
				$option.text(city);
				$("#shi").append($option);
			}
		});
	}

	$("#shi").change(function() {
		$("#xianqu option:gt(0)").remove();// 把以前的结果去除
		getAreaList();
	});

	function getAreaList() {
		var cityid = $.trim($("#shi").val());
		$.post("ajax/getArea.action", {
			cityid : cityid
		}, function(result) {
			var Areas = result.areasList;
			for (var i = 0; i < Areas.length; i++) {
				var area = Areas[i].area;
				var areaid=Areas[i].areaid;
				$option = $("<option/>");
				$option.attr("value", areaid);
				$option.text(area);
				$("#xianqu").append($option);
			}
		});
	}

});