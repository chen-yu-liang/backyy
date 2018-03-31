<script>
	$(function(){
		$("#oldPwd").blur(function(){
			var oldPwd = $(this).val();
			oldPwd = oldPwd.trim();
			if(oldPwd!=""){
				$.post("${(projectName)!}/?spm=${(urlEncrption('Users/ajaxUser_pass'))!}",{"user_pass":oldPwd},function(data){
					if(data=="false"){
						$("#pwdError").show();
					}
				})
			}else{
				$("#pwdError").hide();
			}
		});
	});
</script>
<div class="pageContent" style="overflow:hidden;">
	<form method="post" action="${(projectName)!}/?spm=${(urlEncrption('Users/savePassword'))!}" class="pageForm required-validate" onsubmit="return validateCallback(this, dialogAjaxDone);">
		<div class="pageFormContent" layoutH="50"  >
			<fieldset>
				<input type="hidden" name="id" value="${(users.id)!}"/>
				
				<p style="width:98%">
					<label style="width:80px;">旧密码：</label>
					<input type="password" name="user_pass" class="required"  size="20" id = "oldPwd"/>
				</p>
				<span id = "pwdError" class="error" for="password" generated="true" style="left: 228px; display:none;">
					<div class="tip-yellowsimple">
					<div class="tip-inner tip-bg-image">旧密码输入错误</div>
					<div class="tip-arrow tip-arrow-left" style="margin:-13px 0 0 -14px;float:left;"></div>
					</div>
				</span>
				<div class="divider"></div>
				<p style="width:98%">
					<label style="width:80px;">新密码：</label>
					<input type="password" alt="字母、数字、下划线" class="required alphanumeric textInput" size="20" name="password" id="password">
				</p>
				<p style="width:98%">
					<label style="width:80px;">验证新密码：</label>
					<input type="password" alt="字母、数字、下划线" class="required  alphanumeric textInput" size="20" name="password2" equalTo="#password"><span class="info">重复输入新密码</span>
				</p>
				<input type="hidden" name="id" value="${(baseinfoClass.id)!}">
			</fieldset>
		</div>
		<div class="formBar">
			<ul>
				<li><div class="buttonActive"><div class="buttonContent"><button type="submit">保存</button></div></div></li>
				<li><div class="button"><div class="buttonContent"><button type="button" class="close">取消</button></div></div></li>
			</ul>
		</div>
	</form>
</div>

