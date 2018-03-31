
<div class="pageContent" style="overflow:hidden;">
	<form method="post" action="${(projectName)!}/?spm=${(urlEncrption('/${(action)!}/save'))!}" class="pageForm required-validate" onsubmit="return validateCallback(this, dialogAjaxDone);">
		<div class="pageFormContent" layoutH="50" style="background-color:#ecf2f4;overflow:hidden;padding-bottom:0">
			<fieldset>
				<p>
					<label style="width:60px;">产品编号</label>
					<select id="product_type" name="product_type"   selectvl="${(rateList.product_type)!''}"  class="required" style="width: 80px">
						<option value="">请选择</option> 
						<#list basepro as list>
							<option value="${(list.info_en)!}">${(list.info)!}</option>
						</#list>
	          		</select>
				</p>
				<p>
					<label style="width:60px;">结算费率</label>
					<select id="rate_no" name="rate_no"   selectvl="${(rateList.rate_no)!''}"  class="required" style="width: 80px">
						<option value="">请选择</option> 
						<#list rate as list>
							<option value="${(list.rate_no)!}">${(list.rate_no)!}-${(list.rate_name)!}</option>
						</#list>
	          		</select>
				</p>
				<p>
					<label style="width:60px;">结算方式</label>
	          		<input type="radio" name="rate_type" class="required" value=0 <#if rateList?? && rateList.rate_type==0>checked<#else>checked</#if>/>S0
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<input type="radio" name="rate_type" class="required" value=1 <#if rateList?? && rateList.rate_type==1>checked</#if>/>T1
				</p>
				<input type="hidden" name="id" value="${(rateList.id)!}">
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

