
<div class="pageContent" style="overflow:hidden;">
	<#if sign !='1'>
	<form method="post" action="${(projectName)!}/?spm=${(urlEncrption('/ChannelPoolMapper/save'))!}" class="pageForm required-validate" onsubmit="return validateCallback(this, dialogAjaxDone);">
	<#else>
	<form method="post" action="${(projectName)!}/?spm=${(urlEncrption('/ChannelPoolDetails/save'))!}" class="pageForm required-validate" onsubmit="return validateCallback(this, dialogAjaxDone);">
	</#if>
		<div class="pageFormContent" layoutH="50" style="background-color:#ecf2f4;overflow:hidden;padding-bottom:0;text-align:center;">
			<p style ="margin-top:20px;width:270px;">
				<#if (channelPoolList?size > 0) >
					<label style="width:100px;font-weight:bold;">请选择商编池:</label>
					<select name = "c_pid" class = "required combox">
						<#list channelPoolList as map>
							<option value = "${(map['C_ID'])!}">${(map['C_ID'])!}_${(map['C_NAME'])!}</option>
						</#list>
					</select>
				<#else>
					<span style = "color:red;font-weight:bold;font-size:18px;">*请添加商编池</span>
				</#if>
			</p>
			<input type="hidden" name="ids" value="${(ids)!}">
			<input type="hidden" name="pids" value="${(pids)!}">
			<input type="hidden" name="sign" value="${(sign)!}">
		</div>
		<div class="formBar">
			<ul>
				<#if (channelPoolList?size > 0) >
					<li><div class="buttonActive"><div class="buttonContent"><button type="submit">保存</button></div></div></li>
				</#if>
				<li><div class="button"><div class="buttonContent"><button type="button" class="close">关闭</button></div></div></li>
			</ul>
		</div>
	</form>
</div>

