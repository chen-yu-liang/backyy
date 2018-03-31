<#include "/common/pageForm.ftl">

<script type="text/javascript">
 function findExportExcel(){
		var idArr = $("#clientRecord input[name='clientSerial']:checked");
		if(idArr.size()>0){
			var clientSerial = "";
			for(var i=0;i<idArr.size();i++){
				var id = $(idArr).eq(i).val();
				clientSerial += clientSerial=="" ?id:","+id;
			}
			window.location = "${(projectName)!}/?spm=${(urlEncrption('${action}/exportClientRecord'))!}&clientSerial="+clientSerial;
		}else{
			alert("请选择需导出的数据");
			return false;
		}
	}
 function findClientMap(){
		var idArr = $("#clientRecord input[name='clientSerial']:checked");
		if(idArr.size()>0){
			var clientSerial = "";
			for(var i=0;i<idArr.size();i++){
				var id = $(idArr).eq(i).val();
				clientSerial += clientSerial=="" ?id:","+id;
			}
			var href="${(projectName)!}/?spm=${(urlEncrption('/${(action)!}/getbaidumaptrade'))!}&clientSerial="+clientSerial;
			document.getElementById('changeC').href=href;
			document.getElementById("changeC").click();
		}else{
			alert("请选择需查看数据");
		}
	}	
</script>
<#assign product_type=getCache("b_product_type")>
<div class="pageHeader">
	<form onsubmit="return navTabSearch(this);" action="${url}" method="post">
		<div class="searchBar">
			<table class="searchContent">
				<tr>
						<td>
							商户编号:<input type="text" name="client_no" value="${(p.params.client_no)!''}" size=20/>
						</td>
						<td>
							交易时间：<input type="text" btw="date" selectvl_event="true" name="begintime" class="date" size="8" value="${(p.params.begintime)!''}" id = "startClassroomTime" maxDate = "#F{$dp.$D(\'endClassroomTime\',{M:-0});}" dateFmt="yyyy-MM-dd" readonly="true"/>
							--<input type="text" btw="date" selectvl_event="true" name="endtime" class="date" size="8" value="${(p.params.endtime)!''}" id = "endClassroomTime" minDate = "#F{$dp.$D(\'startClassroomTime\',{M:0});}" dateFmt="yyyy-MM-dd" readonly="true"/>&nbsp;&nbsp;&nbsp;
						</td>
						<td>
							订单时间：<input type="text" btw="date" selectvl_event="true" name="dingbegintime" class="date" size="8" value="${(p.params.dingbegintime)!''}" id = "startClassroomTime" maxDate = "#F{$dp.$D(\'endClassroomTime\',{M:-0});}" dateFmt="yyyy-MM-dd" readonly="true"/>
							--<input type="text" btw="date" selectvl_event="true" name="dingendtime" class="date" size="8" value="${(p.params.dingendtime)!''}" id = "endClassroomTime" minDate = "#F{$dp.$D(\'startClassroomTime\',{M:0});}" dateFmt="yyyy-MM-dd" readonly="true"/>&nbsp;&nbsp;&nbsp;
						</td>
						<td>
							所属代理商：
							<select name="agent_no" selectvl="${(p.params.agent_no)!''}"  style="width:150px;">
								<option value="">请选择</option>
								<#list agentList as key>
									<option value="${(key.agent_no)}">${(key.agent_name)}</option>
								</#list>
							</select>
						</td>
						<td>
							支付类型：
							<select name="deal_type" id="deal_type" selectvl="${(p.params.deal_type)!''}">
								<option value="">-请选择-</option>
								<#list basepro as key>
									<option value="${(key.pro_no)!''}">${(key.pro_name)!''}</option>
								</#list>
							</select>
						</td>
						<td>
							通道：
							<select name="bid" selectvl="${(p.params.bid)!''}" >
								<option value="">请选择</option>
								<#list channelList as key>
									<option value="${(key.id)}">${(key.id)}-${(key.name)}</option>
								</#list>
							</select>
						</td>
						<td>
							<div class="buttonActive"><div class="buttonContent"><button type="submit">查询</button></div></div>
						</td>
				<tr>
			</table>
		</div>
	</form>
</div>
<div class="pageContent">
	<div class="panelBar">
		<ul class="toolBar">
			<span style="float:right;margin-right:2%;">总金额：<strong>${(count.ant?number?string.currency)!''}</strong></span>
		</ul>
	</div>
	<table class="table" width="100%" layoutH="108">
		<thead>
			<tr>
				<th width="10%" >支付类型</th>
				<th width="10%" >成功占比</th>
				<th width="10%" >失败占比</th>
				<th width="10%" >处理中占比</th>
			</tr>
		</thead>
		<tbody id="clientRecord">
			<#list p.results as list>
				<tr target="id" >
					<td >${(list.PRO_NAME)!}</td>
					<td >${(list.S)!}%</td>
					<td >${(list.E)!}%</td>
					<td >${(list.U)!}%</td>
				</tr>
			</#list>
		</tbody>
	</table>
	<#include "/common/pages.ftl">
</div>

