<script type="text/javascript">
function getclientNo() {
	var clientNo = $("#clientNo").val();
	var client_no = $("#client_no").val();
	var maxclientNO = $("#maxclientNO").val();
	if(maxclientNO==-1){
		alertMsg.error("系统错误");
		return false;
	}else{
		if(client_no<clientNo){
			alertMsg.error("输入结束商户号应大于起始商户号");
			return false;
		}else if(client_no-clientNo>10000){
			alertMsg.error("当次只能生成10000条数据");
			return false;
		}else if(client_no>maxclientNO){
			alertMsg.error("输入结束商户号超过制卡最大限额");
			return false;
		}
	}
}

</script>


<div class="pageContent" style="overflow:hidden;">
	<form method="post" action="${(projectName)!}/?spm=${(urlEncrption('/${(action)!}/updateMarkCard'))!}" class="pageForm required-validate" onsubmit="return validateCallback(this, dialogAjaxDone);">
		<div class="pageFormContent" layoutH="50" style="background-color:#ecf2f4;overflow:hidden;padding-bottom:0">
			<fieldset>
				<p>
					<label style="width:60px;">起始商户号</label>
					<input type="text" name="mark_client_no_start_num" id="clientNo" class="required" readonly  value="${(clientNo)!}"/>
				</p>
				<p>
					<label style="width:60px;">结束商户号</label>
					<input type="text" id="client_no" name="mark_client_no_end_num" maxlength="8" minlength="8" class="required" onblur="getclientNo()"  value="${(markCardTotal.client_no_end_num)!}"/>
				</p>
				<p>
					<label style="width:60px;">代理商</label>
					<select id="agent_no" name="agent_no"   selectvl="${(markCardTotal.agent_no)!''}"  class="required"  style="width:90px;">
						<option value="">请选择</option> 
						<#list agentlist as list>
							<option value="${list.agent_no}">${list.agent_name}[${list.agent_no}]</option>
						</#list>
	          		</select>
				</p>
				<input type="hidden" name="maxclientNO" id="maxclientNO"   value="${(maxclientNO)!}"/>
			</fieldset>
		</div>
		<div class="formBar">
			<ul>
				<li><div class="buttonActive"><div class="buttonContent"><button type="submit" >保存</button></div></div></li>
				<li><div class="button"><div class="buttonContent"><button type="button" class="close">取消</button></div></div></li>
			</ul>
		</div>
	</form>
</div>

