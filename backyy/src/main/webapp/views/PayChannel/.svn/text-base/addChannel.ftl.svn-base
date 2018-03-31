<style>
	#div_p input{
		width:300px;
	}
</style>
<div class="pageContent" style="overflow:hidden;">
	<form method="post" action="${(projectName)!}/?spm=${(urlEncrption('/${(action)!}/save'))!}" class="pageForm required-validate" onsubmit="return validateCallback(this, dialogAjaxDone);">
		<div class="pageFormContent" layoutH="50" style="background-color:#ecf2f4;overflow:hidden;padding-bottom:0">
			<fieldset>
				<p>
					<label style="width:100px;">机构编号</label>
					<input type="text" name="ins_id_cd" value="${(payChannel.ins_id_cd)!}" class="required"/>
				</p>
				<p>
					<label style="width:100px;">编号名称</label>
					<input type="text" name="code_name" value="${(payChannel.code_name)!}" class="required"/>
				</p>
				<p>
					<label style="width:100px;">通道编号</label>
					<input type="text" name="company_id" value="${(payChannel.company_id)!}" class="required"/>
				</p>
				<p>
					<label style="width:100px;">代付优先级</label>
					<input type="text" name="pay_level" value="${(payChannel.pay_level)!}" class="required"/>
				</p>
				<p>
					<label style="width:100px;">终端编号</label>
					<input type="text" name="term_id" value="${(payChannel.term_id)!}" class="required"/>
				</p>
				<p>
					<label style="width:100px;">渠道编码</label>
					<input type="text" name="company_code" value="${(payChannel.company_code)!}" class="required"/>
				</p>
				<p>
					<label style="width:100px;">私密钥</label>
					<input type="text" name="private_key" value="${(payChannel.private_key)!}"/>
				</p>
				<p>
					<label style="width:100px;">公共密钥</label>
					<input type="text" name="public_key" value="${(payChannel.public_key)!}"/>
				</p>
				<p>
					<label style="width:100px;">数据加密密钥</label>
					<input type="text" name="data_key" value="${(payChannel.data_key)!}"/>
				</p>
				<p>
					<label style="width:100px;">账户登录地址</label>
					<input type="text" name="login_url" value="${(payChannel.login_url)!}"/>
				</p>
				<p>
					<label style="width:100px;">账户登录用户名</label>
					<input type="text" name="login_name" value="${(payChannel.login_name)!}" />
				</p>
				<p>
					<label style="width:100px;">账户登录密码</label>
					<input type="text" name="login_pass" value="${(payChannel.login_pass)!}"/>
				</p>
				<input  type="hidden" name="status" value="0">	
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

