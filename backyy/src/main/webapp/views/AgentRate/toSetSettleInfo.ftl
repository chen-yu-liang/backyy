<div class="pageContent" style="overflow:hidden;">
	<form method="post"  action="${(projectName)!}/?spm=${(urlEncrption('/${(action)!}/save'))!}" class="pageForm required-validate" onsubmit="return validateCallback(this, dialogAjaxDone);">
		<div class="pageFormContent" layoutH="50" style="background-color:#ecf2f4;overflow:hidden;padding-bottom:0">
			<fieldset>
				<legend>二维码</legend>
				<p style="width:auto;">
						<label style="width:110px;font-weight:bold;font-size:15px;">结算编号</label>
						<label style="width:120px;font-weight:bold;font-size:15px;">卡类型</label>
						<label style="width:110px;font-weight:bold;font-size:15px;">费率</label>
						<label style="width:100px;font-weight:bold;font-size:15px;">封顶</label>
				</p>
				<div class="divider"/>
				<p style="width:auto;">
					<label style="width:80px;font-weight:bold;font-size:14px;margin-left:20px;">D1</label>
					<label style="width:80px;margin-left:20px;font-weight:bold;font-size:14px;">-----</label>
					<input name="d1_rate_min" type="text" value="${(agentRate.d1_rate_min)!}" style="margin-left:20px;" size="10"    maxLength="10"/>
					<input name="d1_rate_max" type="text" value="${(agentRate.d1_rate_max)!}" style="margin-left:30px;" size="10"    maxLength="10"/>
				
				</p>
				<div class="divider"/>
				<p style="width:auto;">
					<label style="width:80px;font-weight:bold;font-size:14px;margin-left:20px;">S0</label>
					<label style="width:80px;margin-left:20px;font-weight:bold;font-size:14px;">-----</label>
					<input name="s0_rate_min" type="text" value="${(agentRate.s0_rate_min)!}" style="margin-left:20px;" size="10"   maxLength="10"/>
					<input name="s0_rate_max" type="text" value="${(agentRate.s0_rate_max)!}" style="margin-left:30px;" size="10"   maxLength="10"/>
				</p>
			</fieldset>
			
		<input  name="agent_no"type="hidden" value="${(agent_no)!}"/>
		</div>
		<div class="formBar">
			<ul>
				<li><div class="buttonActive"><div class="buttonContent"><button type="submit">保存</button></div></div></li>
				<li><div class="button"><div class="buttonContent"><button type="button" class="close">取消</button></div></div></li>
			</ul>
		</div>
	</form>
</div>

