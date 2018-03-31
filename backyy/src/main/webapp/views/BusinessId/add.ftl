<#assign product_type=getCache("b_product_type")>
<div class="pageContent" style="overflow:hidden;">
	<form method="post" action="${(projectName)!}/?spm=${(urlEncrption('/${(action)!}/save'))!}" class="pageForm required-validate" onsubmit="return validateCallback(this, dialogAjaxDone);">
		<div class="pageFormContent" layoutH="50" style="background-color:#ecf2f4;overflow:hidden;padding-bottom:0">
			<fieldset>
				<p>
					<label style="width:90px;">上游商户号</label>
					<#if businessId??>
					<input type="text" readonly name="mch_id" value="${(businessId.mch_id)!}"/>
					<#else>
					<input type="text" name="mch_id" readonly  value="${(mch_id)!}"/>
					</#if>
				</p>
				<p>
					<label style="width:90px;">状态</label>
					<select id="status" name="status" class="required"   selectvl="${(businessId.status)!''}"   >
						<option value="0">启用</option>
						<option value="1">禁用</option>
	          		</select>
				</p>
				<p>
					<label style="width:90px;">业务代码</label>
					<input type="text" name="buss_id" class="required" value="${(businessId.buss_id)!}"/>
				</p>
				<p>
					<label style="width:90px;">交易类型 </label>
					<select id="deal_type" name="deal_type" class="required"   selectvl="${(businessId.deal_type)!''}"   >
						<option value="">--请选择--</option>
						<#list basepro as key>
							<option value="${(key.pro_no)!''}">${(key.pro_name)!''}</option>
						</#list>
	          		</select>
				</p>
				<input type="hidden" name="id" value="${(businessId.id)!}">
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

