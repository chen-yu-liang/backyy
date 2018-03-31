<script type="text/javascript">
$(function(){
	autofillInto(".bank",${bankJson});
});

//查询该支行行号的名称
function findBankNameByNo() {
	var brank_num=$("#bank_branch_no").val();
	if(brank_num!=""){
		$.ajax({
	        url: "${(projectName)!}/?spm=${(urlEncrption('/Agent/findBankNameByNo'))!}",
	        data: { "bank_num": brank_num},
	        datatype:'json',
	        type: "post",
	        success: function (data) {
	        	$("#bank_branch_name").val(data.bankName);
	        }
	    });
	}
}
 	function checkAgentLevel(th){
	 	  var belong_agent=$(th).val().trim();
	 	  $("#agent_level").val(1)
	 	  if(belong_agent=="")return false
	 	  var url="${(projectName)!}/?spm=${(urlEncrption("${action}/getAgentLevel"))!}";
		  $.post(url,{belong_agent:belong_agent},function(json){
		  $("#agent_level").val(json.AGENT_LEVEL);
		  },"json");
 	}
</script>
<#assign agent_style=getCache("b_agent_style")>
<div class="pageContent" style="overflow:hidden;">
	<form method="post" action="${(projectName)!}/?spm=${(urlEncrption('/${(action)!}/save'))!}" class="pageForm required-validate" onsubmit="return validateCallback(this, dialogAjaxDone);">
		<div class="pageFormContent" layoutH="50" style="background-color:#ecf2f4;overflow:hidden;padding-bottom:0">
			<fieldset>
				<legend>代理商基本信息</legend>
				<p>
					<label style="width:90px;">代理商名称</label>
					<input type="text" name="agent_name" class="required" value="${(agent.agent_name)!}"/>
				</p>
				<p>
					<label style="width:90px;">联系人</label>
					<input type="text" name="person" class="required" value="${(agent.person)!}"/>
				</p>
				<p>
					<label style="width:90px;">身份证号</label>
					<input type="text" name="card_no" maxlength="18"  minlength="18" class="required" value="${(agent.card_no)!}"/>
				</p>
				<p>
					<label style="width:90px;">手机</label>
					<input type="text" name="mobile" maxlength="11" minlength="11" class="required" value="${(agent.mobile)!}"/>
				</p>
				<p>
					<label style="width:90px;">所属代理商</label>
					<select id="belong_agent" name="belong_agent"   selectvl="${(agent.belong_agent)!''}"  onchange="checkAgentLevel(this)" >
						<option value="">请选择</option> 
						<#list agentlist as list>
							<option value="${list.agent_no}">${list.agent_name}[${list.agent_no}]</option>
						</#list>
	          		</select>
				</p>
				<!--
				<p>
					<label style="width:90px;">费率编号</label>
					<select name="rate_no"   selectvl="${(agent.rate_no)!''}" selectvl_event="true" class="required">
						<option value="" rel="">--请选择--</option>
		    			<#list rateList as rate>
		    			<option value="${(rate.rate_no)!}">${(rate.rate_no)!}-${(rate.rate_name)!}</option>
		    			</#list>
					</select>
				</p>
				-->
				<p>
					<label style="width:90px;">代理商等级</label>
					<input type="text" id="agent_level" name="agent_level" class="required number" readonly maxlength="1" minlength="1" value="${(agent.agent_level)!'1'}"/>
				</p>
				<p >
					<label style="width:90px;">客户区域</label>
						<select id="province" name="province"  <#if agent??>selectvl_event="true"</#if> class="linkage required" linkage_href="${(projectName)!}/?spm=${(urlEncrption('/${(action)!}/getarea'))!}&parent_id="  directing="city"  class="required" selectname="${(agent.province)!''}" style="width: 80px">
							<option value="">请选择</option> 
							<#list areas as area>
								<option value="${area.AREA_ID}">${area.AREA_NAME}</option>
							</#list>
          				</select>
            			<select name="city" id="city"  <#if agent??>selectvl_event="true"</#if> selectname="${(agent.city)!''}" width="20px"  class="linkage" linkage_href="${(projectName)!}/?spm=${(urlEncrption('/${(action)!}/getarea'))!}&parent_id="    directing="area" style="width: 80px">
            				<option value="">请选择</option>
          				</select>
          				<select name="area" id="area"  <#if clientBase??>selectvl_event="true"</#if> selectname="${(agent.area)!''}"  style="width: 80px">
	                		<option value="">请选择</option>
	               		</select>
				</p>
				<p>
					<label style="width:90px;">渠道类型</label>
					<select id="agent_style" name="agent_style" class="required"  selectvl="${(agent.agent_style)!''}"   >
						<#list agent_style?keys as key>
							<option value="${(key)!}">${agent_style[(key)!]["INFO"]}</option>
						</#list>
	          		</select>
				</p>
				<input type="hidden" name="id" value="${(agent.agent_no)!}">
			</fieldset>
			<fieldset>
				<legend>商户账户信息</legend>
				<p>
					<label style="width:90px;">结算账户名</label>
					<input type="text" name="account_name"  class="required" maxlength="50" value="${(accountMap.ACCOUNT_NAME)!}"/>
				</p>
				<p>
					<label style="width:90px;">结算卡号</label>
					<input type="text" name="account_card_no"  class="required" maxlength="50" value="${(accountMap.ACCOUNT_CARD_NO)!}"/>
				</p>
				<p>
					<label style="width:90px;">总行行号</label>
					<input type="text" class="required textinput number"  maxlength="50" name="account_bank_no" value="${(accountMap.ACCOUNT_BANK_NO)!}"/>
				</p>
				<p>
					<label style="width:90px;">总行名称</label>
					<input type="text" maxlength="500"  class="required"  name="account_bank_name" value="${(accountMap.ACCOUNT_BANK_NAME)!}"/>
				</p>
				<p>
					<label style="width:90px;">联行名称</label>
					<input type="text"  maxlength="50" id="bank_branch_name" name="bank_branch_name" value="${(accountMap.BANK_BRANCH_NAME)!}"/>
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
				<#if agent ??>
					<#if agent.status==0 || agent.status==-2 || agent.status==-1>
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

