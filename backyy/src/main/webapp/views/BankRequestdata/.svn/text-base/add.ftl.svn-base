
<div class="pageContent" style="overflow:hidden;">
	<form method="post" action="${(projectName)!}/?spm=${(urlEncrption('/${(action)!}/save'))!}" class="pageForm required-validate" onsubmit="return validateCallback(this, dialogAjaxDone);">
		<div class="pageFormContent" layoutH="50" style="background-color:#ecf2f4;overflow:hidden;padding-bottom:0">
			<fieldset>
				<p>
					<label style="width:60px;">交易金额</label>
					<input type="text" name="amount" value="${(bankRequestdata.amount)!}"/>
				</p>
				<p>
					<label style="width:60px;">渠道商户号</label>
					<input type="text" name="mch_id" value="${(bankRequestdata.mch_id)!}"/>
				</p>
				<p>
					<label style="width:60px;">交易类型</label>
					<input type="text" name="service" value="${(bankRequestdata.service)!}"/>
				</p>
				<p>
					<label style="width:60px;">交易时间</label>
					<input type="text" name="localdate" value="${(bankRequestdata.localdate)!}"/>
				</p>
				<p>
					<label style="width:60px;">唯一凭证号</label>
					<input type="text" name="serial" value="${(bankRequestdata.serial)!}"/>
				</p>
				<p>
					<label style="width:60px;">通道编号</label>
					<input type="text" name="bid" value="${(bankRequestdata.bid)!}"/>
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

