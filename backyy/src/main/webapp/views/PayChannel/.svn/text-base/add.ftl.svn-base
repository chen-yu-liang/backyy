<style>
#div_p input{
	width:210px;
}
</style>
<div class="pageContent" style="overflow:hidden;">
	<form method="post" action="${(projectName)!}/?spm=${(urlEncrption('/${(action)!}/save'))!}" class="pageForm required-validate" onsubmit="return validateCallback(this, dialogAjaxDone);">
		<div id="div_p" class="pageFormContent" layoutH="50" style="background-color:#ecf2f4;overflow:hidden;padding-bottom:0">
			<fieldset>
			<legend>修改通道信息</legend>
				<p>
					<label style="width:120px;">代付通道状态</label>
					<select name="status" selectvl="${(payChannel.status)!}" >
						<option value="1">选择:启用</option>
						<option value="0">选择:禁用</option>
					</select>
					
				</p>
				<p>
					<label style="width:120px;">代付优先级</label>
					<select name="pay_level" selectvl="${(payChannel.pay_level)!}" >
						<option value="3">选择:3级</option>
						<option value="2">选择:2级</option>
						<option value="1">选择:1级</option>
						<option value="0">选择:0级</option>
					</select>
					&nbsp&nbsp&nbsp<span style="color:red;">级别小优先级高</span>
				</p>
				<p>
					<label style="width:120px;">编号名称</label>
					<input type="text" class="required" name="code_name" value="${(payChannel.code_name)!}"/>
				</p>
				<p>
					<label style="width:120px;">代付可用时间段</label>
					<input type="text" class="required" name="pay_time" value="${(payChannel.pay_time)!}"/>
				</p>
				<p>
					<label style="width:120px;">账户登录用户名</label>
					<input type="text" class="required" name="login_name" value="${(payChannel.login_name)!}"/>
				</p>
				<p>
					<label style="width:120px;">账户登录密码</label>
					<input type="text" class="required" name="login_pass" value="${(payChannel.login_pass)!}"/>
				</p>
				<p>
					<label style="width:120px;">账户登录地址</label>
					<input type="text" class="required" name="login_url" value="${(payChannel.login_url)!}"/>
				</p>
				<input  type="hidden" name="id" value="${(payChannel.id)!}">			
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

