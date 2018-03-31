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
							交易流水号:<input type="text" name="serial" value="${(p.params.serial)!''}" size=25/>
						</td>
						<td>
							上游流水号:<input type="text" name="bank_serial" value="${(p.params.bank_serial)!''}" size=25/>
						</td>
						<td>
							商户名称:<input type="text" name="client_name" value="${(p.params.client_name)!''}" size=20/>
						</td>
						<td>
							商户订单号:<input type="text" name="req_did" value="${(p.params.req_did)!''}" size=20/>
						</td>
						<td>
							通道编号bid:<input type="text" name="bid" value="${(p.params.bid)!''}" size=20/>
						</td>
						</tr>
						<tr>
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
							清算状态：
							<select name="liquidation" selectvl="${(p.params.liquidation)!''}" >
								<option value="">请选择</option>
								<option value=0>未清算</option>
								<option value=1>已清算</option>
							</select>
						</td>
						<td>
							交易状态：
							<select name="status" selectvl="${(p.params.status)!''}" >
								<option value="">请选择</option>
								<option value=0>成功</option>
								<option value=1>失败</option>
								<option value=2>未支付</option>
							</select>
						</td>
						<td>
							通道：
							<select name="tbid" selectvl="${(p.params.tbid)!''}" >
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
			<li><a class="edit permission" href="${(projectName)!}/?spm=${(urlEncrption('${action}/exportClientRecord'))!}&begintime=${(p.params.begintime)!''}&endtime=${(p.params.endtime)!''}&client_no=${(p.params.client_no)!''}
			&serial=${(p.params.serial)!''}&bank_serial=${(p.params.bank_serial)!''}&req_did=${(p.params.req_did)!''}&agent_no=${(p.params.agent_no)!''}
			&deal_type=${(p.params.deal_type)!''}&pay_status=${(p.params.pay_status)!''}&liquidation=${(p.params.liquidation)!''}&status=${(p.params.status)!''}
			&bid=${(p.params.bid)!''}&dingbegintime=${(p.params.dingbegintime)!''}&dingendtime=${(p.params.dingendtime)!''}"><span>导出交易信息</span></a></li>
			<li><a  id="changeC" class="edit permission" href="${(projectName)!}/?spm=${(urlEncrption('/DealRecord/list'))!}"  onclick="findClientMap()" target="navTab"  width="900" height="500" rel="DealRecord_getbaidumaptrade" title="查看位置"><span>获取交易位置</span></a></li>
			<li><a class="edit permission"  href="${(projectName)!}/?spm=${(urlEncrption('${action}/clearDeal'))!}&serial={id}" target="ajaxTodo"  ><span>清算</span></a></li>
			<li><a class="edit permission" href="${(projectName)!}/?spm=${(urlEncrption('/${(action)!}/addnotice'))!}&serial={id}&service=0002" target="ajaxTodo" ><span>补发通知</span></a></li>
			<li><a class="edit permission" href="${(projectName)!}/?spm=${(urlEncrption('/${(action)!}/stepup'))!}&serial={id}&service=0003" target="ajaxTodo" ><span>同步上游状态</span></a></li>
			<span style="float:right;margin-right:2%;">总金额：<strong>${(count.ant?number?string.currency)!''}</strong></span>
			<span style="float:right;margin-right:3%;">交易成功率：<strong>${(percent.pre)!'0'}%</strong></span>
		</ul>
	</div>
	<table class="table" width="120%" layoutH="135">
		<thead>
			<tr>
				<th width="2%"><input type="checkBox" group="clientSerial" class="checkboxCtrl"/></th>
				<th width="6%" >交易流水号</th>
				<th width="3%" >商户编号</th>
				<th width="3%" >商户名称</th>
				<th width="4%" >商户订单号</th>
				<th width="6%" >上游流水号</th>
				<th width="6%" >代理商</th>
				<th width="3%" >支付类型</th>
				<th width="5%" >交易金额</th>
				<th width="3%" >商户手续费 </th>
				<th width="3%" >入账金额</th>
				<th width="3%" >商户费率 </th>
				<th width="5%" >交易时间</th>
				<th width="5%" >订单时间</th>
				<th width="3%" >状态 </th>
				<th width="4%" >清算状态</th>
				<th width="2%" >通道编号</th>
				<th width="4%" >通道</th>
				<th width="5%" >异步通知时间</th>
				<th width="5%" >异步通知次数</th>
				<th width="5%" >异步通知结果</th>
				<th width="5%" >支付备注</th>
				
				<th width="3%" >结算人</th>
				<th width="5%" >结算卡号</th>
				<th width="5%" >总行名称</th>
			</tr>
		</thead>
		<tbody id="clientRecord">
			<#list p.results as list>
				<tr target="id" rel="${(list.SERIAL)!}">
					<td target="c_name" rel="${(list.CLIENT_NAME)!}"><input type="checkBox" id="clientSerial" name="clientSerial" value="${(list.SERIAL)!}"/></td>
					<td >${(list.SERIAL)!}</td>
					<td >${(list.CLIENT_NO)!}</td>
					<td >${(list.CLIENT_NAME)!}</td>
					<td >${(list.REQ_DID)!}</td>
					<td >${(list.BANK_SERIAL)!}</td>
					
					<td >${(list.AGENT_NAME)!}</td>
					<td >${(list.DEAL_TYPE)!}-${(list.PRO_NAME)!}</td>
					<td >${(list.AMOUNT)!}</td>
					<td >${(list.CLIENT_CHARGE)!}</td>
					<td >${(list.SETTLEMENT)!}</td>
					<td >${(list.CLIENT_RATE)!}</td>
					<td >${(list.DEAL_DATE)!} ${(list.DEAL_TIME)!}</td>
					<td >${(list.ORDER_DATA)!}</td>
					<td ><#if list.STATUS==0>成功<#elseif list.STATUS==1>失败<#else>未支付</#if>[${(list.STATUS)!}]</td>
					<td ><#if list.LIQUIDATION==1>已清算<#else>未清算</#if>[${(list.CHECK_STATUS)!}]</td>
					<td >${(list.BID)!}</td>
					<td >${(list.C_PID)!}-${(list.NAME)!}</td>
					<td >${(list.SEND_NOTIFY_TIME)!}</td>
					<td >${(list.SEND_NOTIFY_TIMES)!}</td>
					<td >${(list.SEND_NOTIFY_RECEIVE)!}</td>
					<td >${(list.REMARK)!}</td>
					
					<td >${(list.ACCOUNT_NAME)!}</td>
					<td >${(list.ACCOUNT_CARD_NO)!}</td>
					<td >${(list.ACCOUNT_BANK_NAME)!}</td>
				</tr>
			</#list>
		</tbody>
	</table>
	<#include "/common/pages.ftl">
</div>

