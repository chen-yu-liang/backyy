<#assign agent_style=getCache("b_agent_style")>
<div class="pageContent" style="overflow:hidden;">
	<form method="post" action="${(projectName)!}/?spm=${(urlEncrption('/${(action)!}/saveChangeAgentMessage'))!}" class="pageForm required-validate" onsubmit="return validateCallback(this, dialogAjaxDone);">
		<div class="pageFormContent" layoutH="50" style="background-color:#ecf2f4;overflow:hidden;padding-bottom:0">
			<fieldset>
				<p>
					<label style="width:90px;">代理商号</label>
					<input type="text" name="agent_no" readonly value="${(agent.agent_no)!}"/>
				</p>
				<p>
					<label style="width:90px;">代理商名称</label>
					<input type="text" name="agent_name" readonly value="${(agent.agent_name)!}"/>
				</p>
				<p>
					<label style="width:90px;">变更前手机号</label>
					<input type="text" readonly class="required" value="${(agent.mobile)!}"/>
				</p>
				<p>
					<label style="width:90px;">变更后手机号</label>
					<input type="text" name="mobile" class="required" value=""/>
				</p>
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

