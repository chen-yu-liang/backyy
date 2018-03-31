
<div class="pageContent" style="overflow:hidden;">
	<form method="post" action="${(projectName)!}/?spm=${(urlEncrption('/${(action)!}/save'))!}" class="pageForm required-validate" onsubmit="return validateCallback(this, dialogAjaxDone);">
		<div class="pageFormContent" layoutH="50" style="background-color:#ecf2f4;overflow:hidden;padding-bottom:0">
			<fieldset>
				<p>
					<label style="width:60px;">产品编号</label>
					<select id="product_no" name="product_no"   selectvl="${(agentProduct.product_no)!''}"  class="required" style="width: 80px">
						<option value="">请选择</option> 
						<#list basepro as list>
							<option value="${(list.pro_no)!}">${(list.pro_name)!}</option>
						</#list>
	          		</select>
				</p>
				<p>
					<label style="width:60px;">代理商编号</label>
					<#if agentProduct??>
					<input type="text" readonly name="agent_no" value="${(agentProduct.agent_no)!}"/>
					<#else>
					<input type="text" readonly name="agent_no" value="${(agentNo)!''}"/>
					</#if>
				</p>
				<p>
					<label style="width:60px;">结算费率</label>
					<select id="rate" name="rate"   selectvl="${(agentProduct.rate)!''}"  class="required" style="width: 80px">
						<option value="">请选择</option> 
						<#list rateList as list>
							<option value="${(list.rate_no)!}">${(list.rate_no)!}-${(list.rate_name)!}</option>
						</#list>
	          		</select>
				</p>
				<p>
					<label style="width:60px;">状态 </label>
	          		<input type="radio" name="status" class="required" value=1 <#if agentProduct?? && agentProduct.status==1>checked<#else>checked</#if>/>未开通
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<input type="radio" name="status" class="required" value=0 <#if agentProduct?? && agentProduct.status==0>checked</#if>/>开通
				</p>
				<p>
					<label style="width:60px;">结算方式</label>
	          		<input type="radio" name="clear_type" class="required" value=0 <#if agentProduct?? && agentProduct.clear_type==0>checked<#else>checked</#if>/>S0
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<input type="radio" name="clear_type" class="required" value=1 <#if agentProduct?? && agentProduct.clear_type==1>checked</#if>/>T1
				</p>				
				<input type="hidden" name="product_no" value="${(agentProduct.product_no)!}">
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

