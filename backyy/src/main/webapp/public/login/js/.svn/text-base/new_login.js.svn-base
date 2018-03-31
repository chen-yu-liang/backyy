var sign = 1;
$(function () {
	document.onkeydown = function(e){
	    var ev = document.all ? window.event : e;
	    if(ev.keyCode==13&&sign==1) {
	    	$('#login-button').click();	
	    }
	}
	
	$('#user_code').poshytip({
    	content: '用户名必须填写',
	    className: 'tip-yellowsimple',
		showOn: 'none',
		alignTo: 'target',
		alignX: 'right',
		alignY: 'center',
		offsetX: 5,
		offsetY: 0,
		showTimeout: 100
	});
	
	$('#user_pass').poshytip({
    	content: '密码必须填写',
	    className: 'tip-yellowsimple',
		showOn: 'none',
		alignTo: 'target',
		alignX: 'right',
		alignY: 'center',
		offsetX: 5,
		offsetY: 0,
		showTimeout: 100
	});
	
	$('#user_code').focus(function(){
		$('#user_code').poshytip("hide");	
	})
	$('#user_pass').focus(function(){
		$('#user_pass').poshytip("hide");	
	})
	
	$('#user_code').blur(function(){
		$('#user_code').poshytip("hide");	
	})
	$('#user_pass').blur(function(){
		$('#user_pass').poshytip("hide");	
	});
	
});

function proName() {
	 var pathName=window.document.location.pathname;
	 return pathName.substring(1,pathName.substr(1).indexOf('/')+1);
}

var handlerPopup = function (captchaObj) {
    // 成功的回调
    captchaObj.onSuccess(function () {
        var validate = captchaObj.getValidate();
        $.ajax({
            url: "/"+proName()+"/Users/loginUsers", // 进行二次验证
            type: "post",
            data: {
        		user_name: $("#user_code").val(),
        		user_pass: $("#user_pass").val()         
            },
            success: function (data) {
            	if(data['code'] == "0"){
            		$("#popup-captcha").fadeOut(100);
                	$('form').fadeOut(500);
                	$("#loginWelcome").text($("#loginWelcome").text()+" ! 欢迎进入...").animate({marginTop:'100px'},goToIndex());
            	}else if(data['code'] == "1"){
					alert("用户不存在！！");
				}else if(data['code'] == "2"){
					alert("用户已禁用！");
				}else if(data['code'] == "3"){
					alert("用户名或密码不正确！");
				}else if(data['code'] == "5"){
					alert("登录异常，请联系管理员！");
				}else if(data['code'] == "6"){
					alert("验证码服务端异常！");
				}
            },error: function(){
            	alert("系统异常!"); 
            }
        });
    });
    $("#login-button").click(function () {
    	var user_code=$("#user_code").val();
    	var user_pass=$("#user_pass").val();
    	if(user_code==""){
    		$('#user_code').poshytip('show');
    		return false;
    	}
    	if(user_pass==""){
    		$('#user_pass').poshytip('show');
    		return false;
    	}
    	if(sign==1){
    	sign = 0;
    	$.ajax({
            url: "/"+proName()+"/Users/loginUsers", // 进行二次验证
            type: "post",
            data: {
        		user_name: $("#user_code").val(),
        		user_pass: $("#user_pass").val(),
            },
            success: function (data) {
            	if(data['code'] == "0"){
            		$("#popup-captcha").fadeOut(100);
                	$('form').fadeOut(500);
                	$("#loginWelcome").text($("#loginWelcome").text()+" ! 欢迎进入...").animate({marginTop:'100px'},goToIndex());
            	}else if(data['code'] == "1"){
            		sign = 1 ;
					alert("用户不存在！！");
				}else if(data['code'] == "2"){
					sign = 1 ;
					alert("用户已禁用！");
				}else if(data['code'] == "3"){
					sign = 1 ;
					alert("用户名或密码不正确！");
				}else if(data['code'] == "5"){
					sign = 1 ;
					alert("登录异常，请联系管理员！");
				}else if(data['code'] == "6"){
					sign = 1 ;
					alert("验证码服务端异常！");
				}
            },error: function(){
            	alert("系统异常!");
            }
        });
    	}
    	
    	//显示验证码
//        captchaObj.show();
//        $("a.gt_help_button").hide();
//		$("a.gt_logo_button").hide();
    });
    // 将验证码加到id为captcha的元素里
//    captchaObj.appendTo("#popup-captcha");
    // 更多接口参考：http://www.geetest.com/install/sections/idx-client-sdk.html
};
   

//跳转主界面
function goToIndex(){
	window.location.href = "/"+proName()+"/Index/index";
}

// 验证开始需要向网站主后台获取id，challenge，success（是否启用failback）
$.ajax({
    url: "/"+proName()+"/StartCaptcha/register?t=" + (new Date()).getTime(), // 加随机数防止缓存
    type: "get",
    dataType: "json",
    success: function (data) {
        // 使用initGeetest接口
        // 参数1：配置参数
        // 参数2：回调，回调的第一个参数验证码对象，之后可以使用它做appendTo之类的事件
        initGeetest({
            gt: data.gt,
            challenge: data.challenge,
            product: "popup", // 产品形式，包括：float，embed，popup。注意只对PC版验证码有效
            offline: !data.success // 表示用户后台检测极验服务器是否宕机，一般不需要关注
            // 更多配置参数请参见：http://www.geetest.com/install/sections/idx-client-sdk.html#config
        }, handlerPopup);
    }
});