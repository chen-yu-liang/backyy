<script>
	$(function(){
		$(".close",$.pdialog.getCurrent()).hide();
	});
	function loginValidate(){
	
		var username = $("#users").val();
		var password = $("#pwd").val();
		if(username==""||password==""){
			alertMsg.warn("请填写用户名和密码!");
		}else{
			$.post("${(base)!}/Users/loginUsers",{"user_name":username,"user_pass":password,"code" : "code_bind","isLogin":0},function(data){
					if(data['code'] == "0"){
						$.pdialog.closeCurrent();
						alertMsg.correct("登陆成功,请继续您的操作！");
					}else if(data['code'] == "1"){
						alertMsg.error("用户不存在！");
					}else if(data['code'] == "2"){
						alertMsg.error("用户已禁用！");
					}else if(data['code'] == "3"){
						alertMsg.error("用户名或密码不正确！");
					}else if(data['code'] == "4"){
						alertMsg.error("只能在绑定电脑登录！");
					}else if(data['code'] == "5"){
						alertMsg.error("登录异常，请联系管理员！");
					}
			});
		}
	}
</script>
<div class="pageContent">
		<div class="pageFormContent" layoutH="58">
			<div class="unit">
				<label>用户名：</label>
				<input type="text" id="users" size="30" value = "${(login_user)!}"/>
			</div>
			<div class="unit">
				<label>密码：</label>
				<input type="password" id="pwd" size="30" value = "${(login_password)!}"/>
			</div>
		</div>
		<div class="formBar">
			<ul>
				<li><div class="buttonActive"><div class="buttonContent"><button type="button" onclick = "loginValidate()">登陆</button></div></div></li>
			</ul>
		</div>
</div>

