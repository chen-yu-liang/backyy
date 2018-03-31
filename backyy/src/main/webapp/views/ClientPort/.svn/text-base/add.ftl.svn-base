
<div class="pageContent" style="overflow:hidden;">
	<form method="post" action="${(projectName)!}/?spm=${(urlEncrption('/${(action)!}/save'))!}" class="pageForm required-validate" onsubmit="return validateCallback(this, dialogAjaxDone);">
		<div class="pageFormContent" layoutH="50" style="background-color:#ecf2f4;overflow:hidden;padding-bottom:0">
			<fieldset>
				<p>
					<label style="width:100px;">代理商号</label>
					<#if clientPort??>
					<input type="text" name="client_no" readonly value="${(clientPort.client_no)!}"/>
					<#else>
					<input type="text" name="client_no" readonly value="${(clientNo)!}"/>
					</#if>
				</p>
				<p>
					<label style="width:100px;">代理商请求ip</label>
					<input type="text" name="client_ip" class="required" value="${(clientPort.client_ip)!}"/>
				</p>
				<p>
					<label style="width:100px;">代理商响应地址</label>
					<input type="text" name="client_response" class="required" value="${(clientPort.client_response)!}"/>
				</p>
				<p>
					<label style="width:100px;">状态 </label>
					<select name="status" id="status" class="required"  selectvl="${(clientPort.status)!''}">
						<option value="1">-启用-</option>
						<option value="0">-禁用-</option>
					</select>
				</p>
				<input type="hidden" name="id" value="${(clientPort.id)!}">
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

