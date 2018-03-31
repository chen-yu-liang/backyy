
<div class="pageContent" style="overflow:hidden;">
	<form method="post" action="${(projectName)!}/?spm=${(urlEncrption('/${(action)!}/updatePay'))!}" class="pageForm required-validate" onsubmit="return validateCallback(this, dialogAjaxDone);">
		<div class="pageFormContent" layoutH="45" style="background-color:#ecf2f4;overflow:hidden;padding-bottom:0">
			<fieldset> 
				<p>
					<label style="width:90px;">代付推送IP</label>
					<input type="text" name="pay_push_ip" value="${(agent.pay_push_ip)!}"/>
				</p>
				<p>
					<label style="width:90px;">代付推送端口</label>
					<input type="text" name="pay_push_port" value="${(agent.pay_push_port)!}"/>
				</p>
				<input type="hidden" name="agent_no" value="${(agent.agent_no)!}" />
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

