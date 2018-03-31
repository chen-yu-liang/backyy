
<div class="pageContent" style="overflow:hidden;">
	<form method="post" action="${(projectName)!}/?spm=${(urlEncrption('/${(action)!}/save'))!}" class="pageForm required-validate" onsubmit="return validateCallback(this, dialogAjaxDone);">
		<div class="pageFormContent" layoutH="55" style="background-color:#ecf2f4;overflow:hidden;padding-bottom:0">
			<fieldset style="height:250px;">
			
				<p>
					<label style="width:100px;">类型 </label>
					<input style="width:200px; type="text" name="update_type" <#if updateStatusOrder.update_type == 'trade'>value="交易"<#else>value="代付"</#if> class="required" readonly="readonly"/>
				</p>
				<p>
					<label style="width:100px;">相关流水号</label>
					<input style="width:200px; type="text" name="tran_seq" value="${(updateStatusOrder.tran_seq)!}" class="required" readonly="readonly"/>
				</p>
				<p>
					<label style="width:100px;">由:原状态</label>
					<input style="width:200px; type="text" name="old_status" value="${(updateStatusOrder.old_status)!}" class="required" readonly="readonly"/>
				</p>
				<p>
					<label style="width:100px;">改为:新状态</label>
					<input style="width:200px; type="text" name="new_status" value="${(updateStatusOrder.new_status)!}" class="required" readonly="readonly"/>
				</p>
				<p>
					<label style="width:100px;">提交说明</label>
					<textarea style="width:200px;height:75px;" name="submit_info" class="required" readonly="readonly" cols="15" rows="4">${(updateStatusOrder.submit_info)!}</textarea>
				</p>
				</fieldset>
				<fieldset>
				<p>
					<label style="width:auto;">审核状态:</label>
					<input type="radio" name="audit_status" value = "1" checked selectvl = "${(updateStatusOrder.audit_status)!}" />通过
					<input type="radio" name="audit_status" value = "2" />拒绝
				</p>
				<p>
					<label style="width:160px;">审核说明</label>
					<textarea style="width:200px;height:75px;" name="audit_info" value="${(updateStatusOrder.audit_info)!}" cols="15" rows="4"></textarea>
				</p>
				<input type="hidden" name="id" value="${(updateStatusOrder.id)!}">
			</fieldset>
		</div>
		<div class="formBar">
			<ul>
				<#if updateStatusOrder ??>
					<#if updateStatusOrder.audit_status == 0>
						<li><div class="buttonActive"><div class="buttonContent"><button type="submit">保存</button></div></div></li>
					<#else>
					</#if>
				</#if>
				
				<li><div class="button"><div class="buttonContent"><button type="button" class="close">取消</button></div></div></li>
			</ul>
		</div>
	</form>
</div>

