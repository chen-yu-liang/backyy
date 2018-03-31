
<div class="pageContent" style="overflow:hidden;">
	<form method="post" action="${(projectName)!}/?spm=${(urlEncrption('/${(action)!}/save'))!}" class="pageForm required-validate" onsubmit="return validateCallback(this, dialogAjaxDone);">
		<div class="pageFormContent" layoutH="50" style="background-color:#ecf2f4;overflow:hidden;padding-bottom:0">
			<fieldset>
				<p>
					<label style="width:60px;"></label>
					<input type="text" name="id" value="${(accounts.id)!}"/>
				</p>
				<p>
					<label style="width:60px;">结算卡号</label>
					<input type="text" name="account_card_no" value="${(accounts.account_card_no)!}"/>
				</p>
				<p>
					<label style="width:60px;">开户行支付系统行号</label>
					<input type="text" name="account_bank_no" value="${(accounts.account_bank_no)!}"/>
				</p>
				<p>
					<label style="width:60px;"> -1冻结,0未启用，1启用</label>
					<input type="text" name="status" value="${(accounts.status)!}"/>
				</p>
				<p>
					<label style="width:60px;">对象编号(商户或者代理编号)</label>
					<input type="text" name="object_id" value="${(accounts.object_id)!}"/>
				</p>
				<p>
					<label style="width:60px;">最后修改时间</label>
					<input type="text" name="add_time" value="${(accounts.add_time)!}"/>
				</p>
				<p>
					<label style="width:60px;">最后修改人</label>
					<input type="text" name="add_user" value="${(accounts.add_user)!}"/>
				</p>
				<p>
					<label style="width:60px;">校验值，把账号信息按规则加密生成的，用于校验是否被篡改</label>
					<input type="text" name="check_value" value="${(accounts.check_value)!}"/>
				</p>
				<p>
					<label style="width:60px;">账户类型 0商户账户，1代理商账户</label>
					<input type="text" name="account_type" value="${(accounts.account_type)!}"/>
				</p>
				<p>
					<label style="width:60px;">结算名</label>
					<input type="text" name="account_name" value="${(accounts.account_name)!}"/>
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

