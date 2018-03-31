<div class="pageContent" style="overflow:hidden;">
	<form method="post" action="${(projectName)!}/?spm=${(urlEncrption('BaseinfoClass/save'))!}" class="pageForm required-validate" onsubmit="return validateCallback(this, dialogAjaxDone);">
		<div class="pageFormContent" layoutH="50">
		  <fieldset>
			<p style="width:98%">
				<label style="width:70px;">控件名称</label>
				<input type="text" name="class_cn" value="${(baseinfoClass.class_cn)!}" class="required" style="width:200px"/>
			</p>
			<div class="divider"></div>
			<p style="width:98%">
				<label style="width:70px;">英文名称：</label>
				<input type="text" name="class_en" value="${(baseinfoClass.class_en)!}"  <#if (baseinfoClass.id)??> readonly=true<#else> class="required" remote="${(projectName)!}/?spm=${(urlEncrption('BaseinfoClass/ajaxBaseinfoClassRemoteClassen'))!}"</#if> style="width:130px"/>
			</p>
			<div class="divider"></div>
			<p style="width:98%">
				<label style="width:70px;">状态：</label>
			    <select name="status" selectvl="${(baseinfoClass.status)!"1"}">
			    <option value="1">启用</option>
			    <option value="0">禁用</option>			    
				</select>
			</p>
			<div class="divider"></div>
			<p style="height:auto">
				<label style="width:70px;">备注：</label>
				<textarea cols="35" rows="4" name="note">${(baseinfoClass.note)!}</textarea>
			</p>			
			<input type="hidden" name="id" value="${(baseinfoClass.id)!}">
			</fieldset>  
		</div>
		<div class="formBar">
			<ul>
				<li><div class="buttonActive"><div class="buttonContent"><button type="submit">保存</button></div></div></li>
				<li>
					<div class="button"><div class="buttonContent"><button type="button" class="close">取消</button></div></div>
				</li>
			</ul>
		</div>
	</form>
</div>
