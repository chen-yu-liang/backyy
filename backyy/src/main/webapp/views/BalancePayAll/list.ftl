<#include "/common/pageForm.ftl">
<div class="pageHeader">
	<form onsubmit="return navTabSearch(this);" action="${url}" method="post">
		<div class="searchBar">
			<table class="searchContent">
				<tr>
					<td>
						变更流水号:<input type="text" name="serial_id" value="${(p.params.serial_id)!''}" size=25/>
					</td>
					<td>
						代理商编号:<input type="text" name="agent_no" value="${(p.params.agent_no)!''}" size=15/>
					</td>
					<td>
						操作类型 
						<select  name="operation" selectvl="${(p.params.operation)!}">
						<option value="">全部</option>
						<option value='D001'>充值</option>
						<option value='D002'>提现</option>
						<option value='D004'>提现调账</option>
						<option value='D003'>提现手续费</option>
						</select>
					</td>
					<td>
						交易时间：<input type="text" btw="date" selectvl_event="true" name="begintime" class="date" size="8" value="${(p.params.begintime)!''}" id = "startClassroomTime" maxDate = "#F{$dp.$D(\'endClassroomTime\',{M:-0});}" dateFmt="yyyy-MM-dd" readonly="true"/>
						--<input type="text" btw="date" selectvl_event="true" name="endtime" class="date" size="8" value="${(p.params.endtime)!''}" id = "endClassroomTime" minDate = "#F{$dp.$D(\'startClassroomTime\',{M:0});}" dateFmt="yyyy-MM-dd" readonly="true"/>&nbsp;&nbsp;&nbsp;
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
			<li><a class="add permission" href="javascript:findExcel()"><span>导出代付信息</span></a></li>
		</ul>
	</div>
	<table class="table" width="98%" layoutH="109">
		<thead>
			<tr>
				<th width="10%" orderField="client_no">代理商编号</th>
				<th width="10%" orderField="client_name">代理商名称</th>
				<th width="10%" orderField="operation">操作类型</th>
				<th width="10%" orderField="serial_id">变更流水号</th>
				
				<th width="10%" orderField="amount_before">变更前金额</th>
				<th width="10%" orderField="amount">变更金额</th>
				<th width="10%" orderField="amount_after">变更后金额</th>
				<th width="10%" orderField="operation_remark">备注</th>
				<th width="10%" orderField="add_date">操作时间</th>
			</tr>
		</thead>
		<tbody>
			<#list p.results as list>
				<tr target="id" rel="${(list.ID)!}">
					<td >${(list.CLIENT_NO)!}</td>
					<td >${(list.CLIENT_NAME)!}${(list.AGENT_NAME)!}</td><!--D001充值，D002提现，D003 提现手续费，D004 提现失败调账,DL01分润累加，DL02分润提现，DL03利润金额调帐，DL04利润冻结金额调帐-->
					<td >
					<#if list.OPERATION == 'D001'>充值
					<#elseif list.OPERATION == 'D002'>提现
					<#elseif list.OPERATION == 'D003'>提现手续费
					<#elseif list.OPERATION == 'D004'>提现失败调账
					<#elseif list.OPERATION == 'DL01'>分润累加
					<#elseif list.OPERATION == 'DL02'>分润提现
					<#elseif list.OPERATION == 'DL03'>利润金额调帐
					<#elseif list.OPERATION == 'DL04'>利润冻结金额调帐
					<#else>${(list.OPERATION)!}</#if>
					</td>
					<td >${(list.SERIAL_ID)!}</td>
					<td >${(list.AMOUNT_BEFORE)!}</td>
					<td style="color:red;width:200px;">
					<#if list.OPERATION == 'D001' >+${(list.AMOUNT)!}
					<#elseif list.OPERATION == 'D002'>-${(list.AMOUNT)!}
					<#elseif list.OPERATION == 'D003'>-${(list.AMOUNT)!}
					<#elseif list.OPERATION == 'D004'>+${(list.AMOUNT)!}
					<#elseif list.OPERATION == 'DL01'>+${(list.AMOUNT)!}
					<#elseif list.OPERATION == 'DL02'>-${(list.AMOUNT)!}
					<#else>${(list.AMOUNT)!}
					</#if></td>
					<td >${(list.AMOUNT_AFTER)!}</td>
					<td >${(list.OPERATION_REMARK)!}</td>
					<td >${(list.ADD_DATE)!}</td>
				</tr>
			</#list>
		</tbody>
	</table>
	<#include "/common/pages.ftl">
</div>

