
<div class="pageContent" style="overflow:hidden;">
	<form method="post" action="${(projectName)!}/?spm=${(urlEncrption('/${(action)!}/updateChangeRate'))!}" class="pageForm required-validate" onsubmit="return validateCallback(this, dialogAjaxDone);">
		<div class="pageFormContent" layoutH="45" style="background-color:#ecf2f4;overflow:hidden;padding-bottom:0">
			<fieldset> 
				<p>
					<label style="width:60px;">代理商编号</label>
					<input type="text" name="agent_no" value="${(agent_no)!}" readonly="readonly"/>
				</p>
				<p>
					<label style="width:60px;">代理商名称</label>
					<input type="text" name="agent_name" value="${(agent.agent_name)!}" readonly="readonly" />
				</p>
				<p>
					<label style="width:60px;">费率编号</label>
					<select name="rate_no"   selectvl="${(agent.rate_no)!}" selectvl_event="true" class="required">
						<option value="" rel="">--请选择--</option>
		    			<#list rateMap as rate>
		    			<option value="${(rate.rate_no)!}">${(rate.rate_no)!}-${(rate.rate_name)!}</option>
		    			</#list>
					</select>
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

