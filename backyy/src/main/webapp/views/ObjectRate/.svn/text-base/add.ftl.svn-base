
<div class="pageContent" style="overflow:hidden;">
	<form method="post" action="${(projectName)!}/?spm=${(urlEncrption('/${(action)!}/save'))!}" class="pageForm required-validate" onsubmit="return validateCallback(this, dialogAjaxDone);">
		<div class="pageFormContent" layoutH="50" style="background-color:#ecf2f4;overflow:hidden;padding-bottom:0">
			<fieldset>
				<p>
					<label style="width:90px;">费率代号:</label>
					<select name="rate_no" selectvl="${(objectRate.rate_no)!}">
						<option value="">请选择</option>
						<#list rate as key>
						<option value="${(key.rate_no)!}">${(key.rate_name)!}[${(key.rate_no)!}]</option>
						</#list>
					</select>
				</p>
				<p>
					<label style="width:90px;">费率类型:</label>
					<input type="radio" name="rate_type" value=0 <#if objectRate??&&objectRate.rate_type==0>checked</#if>/>S0
					<input type="radio" name="rate_type" value=1 <#if objectRate??&&objectRate.rate_type==1>checked</#if>/>T1
				</p>
				<p>
					<label style="width:90px;">校验值:</label>
					<input type="text" name="check_value" value="${(objectRate.check_value)!}"/>
				</p>
				<input type="hidden" name="object_no" value="${(object_no)!}"/>
				<input type="hidden" name="object_type" value="${(object_type)!}"/>
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

