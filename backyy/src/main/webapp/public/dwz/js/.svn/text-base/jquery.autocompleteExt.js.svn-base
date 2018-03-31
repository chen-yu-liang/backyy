var map = {};
var autofillInto = function (thisId,data){
		var spStr = "";
		var dat = eval(data);
		var datArr = dat.toString().split(',');
		var jsonArr = new Array();
		for(var i = 0;i<datArr.length;i++){
			var datStr = datArr[i].split('_');	//根据下划线 分割字符串
			map=(""+datStr[0],datStr[1]);	//把分割的字符串存到map里
			jsonArr[i] = datStr[0];
			//把下划线前面的到集合里 用来显示在页面上
		};
		var stfy = eval(jsonArr); 
		 $(thisId).autocomplete(stfy,{// 使用方法
			 minChars: 0, 
			 autoFill:false,
			 scroll: true, 
			 mustMatch: true,
			 selectFirst:true,
		 matchContains: true, 
		 scrollHeight: 220,
		});
};
$(".auto").live("focus",function(){
	var user = $(".auto").val();
	var msg = map.get(""+user);
	$(".autoId").val(msg);
});
$(".auto").live("keyup",function(){
	var user = $(".auto").val();
	var msg = map.get(""+user);
	if(msg==null){
		$(".autoId").val("");
	}else{
		$(".autoId").val(msg);
	};
});
var autofillIntoExt = function (thisId,data){
	var dat = eval(data);
	 $(thisId).autocomplete(dat,{// 使用方法
		 minChars: 0, 
		 autoFill:false,
		 scroll: true, 
		 mustMatch: false,
		 selectFirst:true,
	 matchContains: true, 
	 scrollHeight: 220 ,
	});
};