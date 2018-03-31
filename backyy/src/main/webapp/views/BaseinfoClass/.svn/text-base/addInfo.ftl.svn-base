
<div class="pageContent" style="overflow:hidden;">
	<form method="post" action="${(projectName)!}/?spm=${(urlEncrption('BaseinfoClass/saveInfo'))!}" class="pageForm required-validate" onsubmit="return validateCallback(this, dialogAjaxDone);">
		<div class="pageFormContent" layoutH="50">
			<fieldset>
				<p>
					<label style="width:60px;">信息值</label>
					<input type="text" name="info" value="${(baseinfo.info)!}"/>
				</p>
					<div class="divider"></div>
				<p>
					<label style="width:60px;">信息标识</label>
					<input type="text" name="info_en" value="${(baseinfo.info_en)!}"  <#if (baseinfo.id)??> readonly=true<#else> remote="${(projectName)!}/?spm=${(urlEncrption('BaseinfoClass/ajaxBaseinfoClassRemoteInfoEn'))!}&class_en=${(class_en)!}"</#if>/>
				</p>
				<div class="divider"></div>				
				<p>				
				<label style="width:70px;">状态：</label>
			    <select name="status" selectvl="${(baseinfo.status)!"1"}">
			    <option value="1">启用</option>
			    <option value="0">禁用</option>			    
				</select>
			    </p>
				<input type="hidden" name="class_en" value="${(class_en)!}"/>
				<input type="hidden" name="id" value="${(baseinfo.id)!}">
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

