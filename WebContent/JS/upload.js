// JavaScript Document
window.onload=function(){

	$("#bigtype_name").change( function(){
		$("#smalltype_name option:gt(0)").remove();
		getSmalltyeNameList();
	});
	
	function getSmalltyeNameList(){
		var BigtypeName=$.trim($("#bigtype_name").val());
		
	
		$.post("front/getSmallTypeName.do", {
			bigtype_name : BigtypeName
		}, function(result) {

			
			var dataObject = eval("(" + result + ")");

			for (var i = 0; i < dataObject.length; i++) {
				var smalltypename = dataObject[i].smalltype_name;
				$option = $("<option/>");
				$option.attr("value", smalltypename);
				$option.text(smalltypename);
				$("#smalltype_name").append($option);
				
			}
			});
		
	}
	
	$("#smalltype_name").change( function(){
		$("#commodity_name option:gt(0)").remove();

		//$("#smalltype_name option:gt(0)").remove();
		getCommodityNameList();
	});
	
	
	function getCommodityNameList(){
		var SmalltypeName=$.trim($("#smalltype_name").val());
		
		$.post("front/getCommodityName.do", {
			smalltype_name : SmalltypeName
		}, function(result) {

			var dataObject = eval("(" + result + ")");

			for (var i = 0; i < dataObject.length; i++) {
				var commodityname = dataObject[i].commodity_name;
				$option = $("<option/>");
				$option.attr("value", commodityname);
				$option.text(commodityname);
				$("#commodity_name").append($option);
				
			}
			});
		
	}
    
	
	 function mysubmit()
     {    alert("aaaaa");
         var str = document.getElementById("uploadres").innerHTML;
         document.getElementById("commodityimage").value = str;
         document.forms["myform"].submit();
     }

};