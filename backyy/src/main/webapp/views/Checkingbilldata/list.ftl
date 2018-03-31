
<#include "/common/pageForm.ftl">
<div class="pageHeader">
	<form onsubmit="return navTabSearch(this);" action="${url}" method="post">
		<div class="searchBar">
			<table class="searchContent">
				<tr>
						<td>
							文件编号:<input type="text" name="bill_no" value="${(p.params.bill_no)!''}" size=15/>
						</td>
						<td>
							订单号:<input type="text" name="rrno" value="${(p.params.rrno)!''}" size=15/>
						</td>
						<td>
							商户号:<input type="text" name="client_no" value="${(p.params.client_no)!''}" size=15/>
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
		</ul>
	</div>
	<table class="table" width="98%" layoutH="109">
		<thead>
			<tr>
				<th width="6%" orderField="bill_no">文件编号</th>
				<th width="6%" orderField="client_no">商户号</th>
				<th width="6%" orderField="serial">交易流水</th>
				<th width="4%" orderField="rrno">订单号</th>
				<th width="4%" orderField="trade_money">交易金额</th>
				<th width="3%" orderField="status">状态 </th>
				<th width="3%" orderField="trade_type">交易类型</th>
				<th width="3%" orderField="clear_type">结算类型</th>
				<th width="3%" orderField="to_state">出款状态</th>
				<th width="4%" orderField="account_name">结算名</th>
				<th width="3%" orderField="trade_charage">手续费</th>
				<th width="3%" orderField="revoke_num">撤销表示 </th>
				<th width="6%" orderField="trade_date">交易日期</th>
				<th width="6%" orderField="trade_time">交易时间</th>
				<th width="3%" orderField="clear_money">结算金额</th>
				<th width="4%" orderField="bid">通道编号</th>
				<th width="4%" orderField="agent_cost">代理商成本</th>
				<th width="4%" orderField="agent_profit">代理商分润</th>
			</tr>
		</thead>
		<tbody>
			<#list p.results as list>
				<tr target="id" rel="${(list.ID)!}">
					<td >${(list.BILL_NO)!}</td>
					<td >${(list.CLIENT_NO)!}</td>
					<td >${(list.SERIAL)!}</td>
					<td >${(list.RRNO)!}</td>
					<td >${(list.TRADE_MONEY)!}</td>
					<td ><#if list.STATUS==0>已支付<#else>未支付</#if>[${(list.STATUS)!}]</td>
					<td ><#if list.TRADE_TYPE==0>微信<#elseif list.TRADE_TYPE==1>支付宝<#else>无卡</#if>[${(list.TRADE_TYPE)!}]</td>
					<td >${(list.CLEAR_TYPE)!}</td>
					<td ><#if list.TO_STATE==0>未出款<#else>已出款</#if>[${(list.TO_STATE)!}]</td>
					<td >${(list.ACCOUNT_NAME)!}</td>
					<td >${(list.TRADE_CHARAGE)!}</td>
					<td ><#if list.REVOKE_NUM??&&list.REVOKE_NUM==0>正常<#elseif list.REVOKE_NUM??&&list.REVOKE_NUM==1>撤销<#elseif list.REVOKE_NUM??&&list.REVOKE_NUM==2>冲正<#else>暂无</#if>[${(list.REVOKE_NUM)!}]</td>
					<td >${(list.TRADE_DATE)!}</td>
					<td >${(list.TRADE_TIME)!}</td>
					<td >${(list.CLEAR_MONEY)!}</td>
					<td >${(list.BID)!}</td>
					<td >${(list.AGEMT_COST)!}</td>
					<td >${(list.AGEMT_PROFIT)!}</td>
				</tr>
			</#list>
		</tbody>
	</table>
	<#include "/common/pages.ftl">
</div>

