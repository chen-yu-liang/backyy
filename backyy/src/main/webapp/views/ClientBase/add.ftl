<script type="text/javascript">
$(function(){
	autofillInto(".bank",${bankJson});
});

//查询该支行行号的名称
function findBankNameByNo() {
	var brank_num=$("#bank_branch_no").val();
	if(brank_num!=""){
		$.ajax({
	        url: "${(projectName)!}/?spm=${(urlEncrption('/ClientBase/findBankNameByNo'))!}",
	        data: { "bank_num": brank_num},
	        datatype:'json',
	        type: "post",
	        success: function (data) {
	        	$("#bank_branch_name").val(data.bankName);
	        }
	    });
	}
}
</script>
<div class="pageContent" style="overflow:hidden;">
	<form method="post" action="${(projectName)!}/?spm=${(urlEncrption('/${(action)!}/save'))!}" class="pageForm required-validate" onsubmit="return validateCallback(this, dialogAjaxDone);">
		<div class="pageFormContent" layoutH="50" style="background-color:#ecf2f4;overflow:hidden;padding-bottom:0">
			<fieldset>
				<legend>商户基本信息</legend>
				<p>
					<label style="width:90px;">商户名称</label>
					<input type="text" name="client_name" class="required" value="${(clientBase.client_name)!}"/>
				</p>
				<p >
					<label style="width:90px;">客户区域：</label>
						<select id="province" name="province" <#if clientBase??>selectvl_event="true"</#if> class="linkage required" linkage_href="${(projectName)!}/?spm=${(urlEncrption('/${(action)!}/getarea'))!}&parent_id="  directing="city"  class="required" selectname="${(clientBase.province)!''}" style="width: 80px">
							<option value="">请选择</option> 
							<#list areas as area>
								<option value="${area.AREA_ID}">${area.AREA_NAME}</option>
							</#list>
          				</select>
            			<select name="city" id="city" <#if clientBase??>selectvl_event="true"</#if> selectname="${(clientBase.city)!''}" width="20px"  class="linkage" linkage_href="${(projectName)!}/?spm=${(urlEncrption('/${(action)!}/getarea'))!}&parent_id="    directing="area" style="width: 80px">
            				<option value="">请选择</option>
          				</select>
          				<select name="area" <#if clientBase??>selectvl_event="true"</#if> selectname="${(clientBase.area)!''}" id="area" style="width: 80px">
	                		<option value="">请选择</option>
	               		</select>
				</p>
				<p>
					<label style="width:90px;">联系人</label>
					<input type="text" name="person" value="${(clientBase.person)!}"/>
				</p>
				<p>
					<label style="width:90px;">所属代理商</label>
					<select id="agent_no" name="agent_no"   selectvl="${(clientBase.agent_no)!''}"  class="required" style="width: 80px">
						<option value="">请选择</option> 
						<#list agentlist as list>
							<option value="${list.agent_no}">${list.agent_name}[${list.agent_no}]</option>
						</#list>
	          		</select>
				</p>
				<!--
				<p>
					<label style="width:90px;">费率编号</label>
					<select name="rate_no"   selectvl="${(clientBase.rate_no)!''}" selectvl_event="true" class="required">
						<option value="" rel="">--请选择--</option>
		    			<#list rateList as rate>
		    			<option value="${(rate.rate_no)!}">${(rate.rate_no)!}-${(rate.rate_name)!}</option>
		    			</#list>
					</select>
				</p>
				-->
				<p>
					<label style="width:90px;">客户等级</label>
					<input type="text" name="client_level" class="required number" maxlength="1" minlength="1" value="${(clientBase.client_level)!'1'}"/>
				</p>
				<p>
					<label style="width:90px;">手机</label>
					<input type="text" name="mobile"   maxlength="11" minlength="11" class="required number" value="${(clientBase.mobile)!}"/>
				</p>
				<p>
					<label style="width:90px;">微信</label>
					<input type="text" name="we_unionid"  class="required" <#if clientBase ??>value="${(clientBase.we_unionid)!}"<#else>value="1"</#if>/>
				</p>
				<p>
					<label style="width:90px;">身份证</label>
					<input type="text" name="idcard" maxlength="18"  minlength="18" class="idcard required" value="${(clientBase.idcard)!}"/>
				</p>
				<input type="hidden" name="id" value="${(clientBase.client_no)!}">
			</fieldset>
			<fieldset>
				<legend>商户微信信息</legend>
				<p>
					<label style="width:90px;">微信姓别</label>
					<input type="radio" name="we_sex" class="required" value="男" <#if clientRim?? && clientRim.we_sex=='男'>checked<#else>checked</#if>/>男
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<input type="radio" name="we_sex" class="required" value="女" <#if clientRim?? && clientRim.we_sex=='女'>checked</#if>/>女
				</p>
				<p>
					<label style="width:90px;">微信昵称</label>
					<input type="text" name="we_name" value="${(clientRim.we_name)!}"/>
				</p>
			</fieldset>
			<fieldset>
				<legend>商户账户信息</legend>
				<p>
					<label style="width:90px;">结算账户名</label>
					<input type="text" name="account_name"  class="required" maxlength="50" value="${(accountMap.ACCOUNT_NAME)!}"/>
				</p>
				<p>
					<label style="width:90px;">结算卡号</label>
					<input type="text" name="account_card_no"  class="required number" maxlength="50" value="${(accountMap.ACCOUNT_CARD_NO)!}"/>
				</p>
				<p>
					<label style="width:90px;">总行行号</label>
					<input type="text"  maxlength="50" name="account_bank_no" value="${(accountMap.ACCOUNT_BANK_NO)!}"/>
				</p>
				<p>
					<label style="width:90px;">总行名称</label>
					<input type="text" maxlength="500"  class="bank required"  name="account_bank_name" id="account_bank_name" value="${(accountMap.ACCOUNT_BANK_NAME)!}" onchange="getBank()"/>
				</p>
				<p>
					<label style="width:90px;">联行名称</label>
					<input type="text" class=" textinput required" maxlength="50" id="bank_branch_name" name="bank_branch_name" value="${(accountMap.BANK_BRANCH_NAME)!}"/>
				</p>
				<p>
					<label style="width:90px;">联行号</label>
					<input type="text"  maxlength="50" class=" textinput number required" id="bank_branch_no" name="bank_branch_no" value="${(accountMap.BANK_BRANCH_NO)!}" onblur="findBankNameByNo()"/>
				</p>
				<p>
					<label style="width:90px;">银行预留手机号</label>
					<input type="text"  maxlength="11" minlength="11" class=" textinput number required" id="reservedtel" name="reservedtel" value="${(accountMap.reservedtel)!}" />
				</p>
			</fieldset>
		</div>
		<div class="formBar">
			<ul>
				<#if clientBase ??>
					<#if clientBase.status==0 || clientBase.status==-2 >
					<li><div class="buttonActive"><div class="buttonContent"><button type="submit">保存</button></div></div></li>
					</#if>
				<#else>
				<li><div class="buttonActive"><div class="buttonContent"><button type="submit">保存</button></div></div></li>
				</#if>
				<li><div class="button"><div class="buttonContent"><button type="button" class="close">取消</button></div></div></li>
			</ul>
		</div>
	</form>
</div>

