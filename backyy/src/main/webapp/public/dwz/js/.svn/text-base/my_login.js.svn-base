$(document).ready(function(){ 
	$(document).keypress(function(e) { 
       if(e.which == 13) { 
    	  login();
       } 
	}); 
	$("#userLogin").click(function(){
		login();
	});
});
//登录标识
var loginSign = false;
//登陆方法
function login(){
	if(checkForm()&&!loginSign){          //验证登录
		//是否为正在登陆
		loginSign = true;
		$("#userLogin").val("正在登陆...");
		var name = $("#userName").val();
		var pwd = $("#userPwd").val();
		var code = $("#code").val();
		var remember =$("#remember").attr("checked")
		$.post("/"+demo_name()+"/Users/loginUsers",{"user_name" : name,"user_pass" : pwd,"code" : code, "remember":remember},
				function(data){
					if(data['code'] == "0"){
						$("#userLogin").val("进入中...");
						if (window.location.href.indexOf(demo_name()+"/Index/index") == -1) {
							window.location.href = "/"+demo_name()+"/Index/index";
							//重置登陆标识
							loginSign = false;
						} else {
							window.location.reload(true);
						}
					}else{
						$("#userLogin").val("登录");
						//重置登陆标识
						loginSign = false;
						//改变验证码
						changeCode();
						//清空验证码
						$("#code").val('');
						if(data['code'] == "1"){
							alert("用户不存在！！");
						}else if(data['code'] == "2"){
							alert("用户已禁用！");
						}else if(data['code'] == "3"){
							alert("用户名或密码不正确！");
						}else if(data['code'] == "5"){
							alert("登录异常，请联系管理员！");
						}else if(data['code'] == "6"){
							alert("验证码输入有误！");
						}
					}
				}
		,"json");
	}
}
 //输入框验证
 function checkForm() {
	 var name = $("#userName").val();
	 if (name.length <= 0) {
		 alert("用户名不能为空!");
		 return false;
	 }  
	 var pass = $("#userPwd").val();
	 if (pass.length <= 0) {
		 alert("密码不能为空!");
		 return false;
	 }  
	 var code = $("#code").val();
	 if (code.length <= 0) {
		 alert("验证码不能为空!");
		 return false;
	 }  
	 return true;
 }
 //获取项目地址
 function demo_name() {
	 var pathName=window.document.location.pathname;
	 var projectName=pathName.substring(1,pathName.substr(1).indexOf('/')+1);
	 return projectName;
 }
 //改变验证码
 function changeCode(){
	 $("#validateCode").attr('src', "/"+demo_name()+'/CaptchaImageCreate/captcha-image?date='+new Date().getTime());     
 }
 
 