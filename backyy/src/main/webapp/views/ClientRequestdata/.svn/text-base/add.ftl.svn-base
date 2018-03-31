
<div class="pageContent" style="overflow:hidden;">
	<form method="post" action="${(projectName)!}/?spm=${(urlEncrption('/${(action)!}/save'))!}" class="pageForm required-validate" onsubmit="return validateCallback(this, dialogAjaxDone);">
		<div class="pageFormContent" layoutH="50" style="background-color:#ecf2f4;overflow:hidden;padding-bottom:0">
			<fieldset>
				<p>
					<label style="width:60px;">交易金额</label>
					<input type="text" name="amount" value="${(clientRequestdata.amount)!}"/>
				</p>
				<p>
					<label style="width:60px;">交易类型</label>
					<input type="text" name="service" value="${(clientRequestdata.service)!}"/>
				</p>
				<p>
					<label style="width:60px;">交易时间</label>
					<input type="text" name="localdate" value="${(clientRequestdata.localdate)!}"/>
				</p>
				<p>
					<label style="width:60px;">商户号</label>
					<input type="text" name="client_no" value="${(clientRequestdata.client_no)!}"/>
				</p>
				<p>
					<label style="width:60px;">唯一凭证号</label>
					<input type="text" name="serial" value="${(clientRequestdata.serial)!}"/>
				</p>
				<p>
					<label style="width:60px;">商户订单号</label>
					<input type="text" name="req_did" value="${(clientRequestdata.req_did)!}"/>
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

