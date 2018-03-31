
<div class="pageContent" style="overflow:hidden;">
	<form method="post" action="${(projectName)!}/?spm=${(urlEncrption('/${(action)!}/save'))!}" class="pageForm required-validate" onsubmit="return validateCallback(this, dialogAjaxDone);">
		<div class="pageFormContent" layoutH="50" style="background-color:#ecf2f4;overflow:hidden;padding-bottom:0">
			<fieldset>
				<p>
					<label style="width:90px;">代理商编号</label>
					<input type="text" name="agent_no" class="required" value="${(ipWhitelist.agent_no)!}"/>
				</p>
				<p>
					<label style="width:90px;">ip</label>
					<input type="text" name="ip" class="required" value="${(ipWhitelist.ip)!}"/>
				</p>
				<p>
					<label style="width:90px;">状态  </label>
					<select name="status" id="status" class="required"  selectvl="${(ipWhitelist.status)!''}">
						<option value="0">-启用-</option>
						<option value="1">-禁用-</option>
					</select>
				</p>
				<!--
				<p>
					<label style="width:90px;">系统编号  </label>
					<select name="sys_no" id="sys_no" class="required"  selectvl="${(ipWhitelist.sys_no)!''}">
						<option value="">-请选择-</option>
						<option value="1">-接口-</option>
						<option value="2">-代付-</option>
					</select>
				</p>
				-->
				<input type="hidden" name="id" value="${(ipWhitelist.id)!}">
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

