
<#include "/common/pageForm.ftl">
<div class="pageHeader">
	<form onsubmit="return navTabSearch(this);" action="${url}" method="post">
		<div class="searchBar">
			<table class="searchContent">
				<tr>
						<td>
							商户编号:<input type="text" name="client_no" value="${(p.params.client_no)!''}" size=15/>
						</td>
						<td>
							代理商编号:<input type="text" name="agent_no" value="${(p.params.agent_no)!''}" size=15/>
						</td>
						<td>
							交易时间：<input type="text" btw="date" selectvl_event="true" name="begintime" class="date" size="8" value="${(p.params.begintime)!''}" id = "startClassroomTime" maxDate = "#F{$dp.$D(\'endClassroomTime\',{M:-0});}" dateFmt="yyyy-MM-dd" readonly="true"/>
							--<input type="text" btw="date" selectvl_event="true" name="endtime" class="date" size="8" value="${(p.params.endtime)!''}" id = "endClassroomTime" minDate = "#F{$dp.$D(\'startClassroomTime\',{M:0});}" dateFmt="yyyy-MM-dd" readonly="true"/>&nbsp;&nbsp;&nbsp;
						</td>
						<td>
							支付类型：
							<select name="deal_type" selectvl="${(p.params.deal_type)!''}" >
								<option value="">请选择</option>
								<option value=0>微信</option>
								<option value=1>支付宝</option>
							</select>
						</td>
						<td>
							支付状态：
							<select name="status" selectvl="${(p.params.status)!''}" >
								<option value="">请选择</option>
								<option value=0>未处理</option>
								<option value=1>出款中</option>
								<option value=2>已出款</option>
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
		<span>总金额：<strong>${(count.ant?number?string.currency)!''}</strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;总清算金额：<strong>${(count.cant?number?string.currency)!''}</strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;总手续费：<strong>${(count.pro?number?string.currency)!''}</strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;代理总成本：&nbsp;<strong>${(count.npro?number?string.currency)!''}</strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;总分润：<strong>${(count.apro?number?string.currency)!''}</strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;通道总成本：<strong>${(count.tdc?number?string.currency)!''}</strong></span>
		</ul>
	</div>
	<table class="table" width="120%" layoutH="109">
		<thead>
			<tr>
				<th width="6%" orderField="serial">结算流水号</th>
				<th width="5%" orderField="money">原交易金额</th>
				<th width="5%" orderField="settlement">清算金额</th>
				<th width="3%" orderField="tbid">通道编号</th>
				<th width="5%" orderField="agent_no">代理商编号</th>
				<th width="5%" orderField="agent_name">代理商名称</th>
				<th width="5%" orderField="agent_charge">代理商成本</th>
				<th width="5%" orderField="client_charge">商户手续费</th>
				<th width="5%" orderField="agent_profit">代理商分润</th>
				<th width="5%" orderField="liqui_date">清算日期</th>
				<th width="5%" orderField="c_rate">清算所取费率代号</th>
				<th width="5%" orderField="client_no">商户编号</th>
				<th width="5%" orderField="client_name">商户名</th>
				<th width="5%" orderField="deal_type">支付类型</th>
				<th width="5%" orderField="deal_date">交易日期</th>
				<th width="6%" orderField="c_status">出款状态</th>
				<th width="6%" orderField="c_serial">出款流水号</th>
				<th width="6%" orderField="paid_type">代付状态</th>
				<th width="5%" orderField="td_charge">通道成本</th>
				<th width="4%" orderField="client_type">商户类型</th>
			</tr>
		</thead>
		<tbody>
			<#list p.results as list>
				<tr target="id" rel="${(list.ID)!}">
					<td >${(list.SERIAL)!}</td>
					<td >${(list.MONEY)!}</td>
					<td >${(list.SETTLEMENT)!}</td>
					<td >${(list.TBID)!}</td>
					<td >${(list.AGENT_NO)!}</td>
					<td >${(list.AGENT_NAME)!}</td>
					<td >${(list.AGENT_CHARGE)!}</td>
					<td >${(list.CLIENT_CHARGE)!}</td>
					<td >${(list.AGENT_PROFIT)!}</td>
					<td >${(list.LIQUI_DATE)!}</td>
					<td >${(list.C_RATE)!}</td>
					<td >${(list.CLIENT_NO)!}</td>
					<td >${(list.CLIENT_NAME)!}</td>
					<td ><#if list.DEAL_TYPE=0>微信<#else>支付宝</#if>[${(list.DEAL_TYPE)!}]</td>
					<td >${(list.DEAL_DATE)!}</td>
					<td ><#if list.C_STATUS=0>未出款<#elseif list.C_STATUS=1>处理中<#elseif list.C_STATUS=2>出款中<#elseif list.C_STATUS=3>出款成功<#elseif list.C_STATUS=4>出款失败<#elseif list.C_STATUS=5>冻结<#else>处理数据</#if>[${(list.C_STATUS)!}]</td>
					<td >${(list.C_SERIAL)!}</td>
					<td ><#if list.PAID_TYPE=0>无需代付<#else>需要代付</#if>[${(list.PAID_TYPE)!}]</td>
					<td >${(list.TD_CHARGE)!}</td>
					<td ><#if list.CLIENT_TYPE==1>接口商户<#else>普通商户</#if>[${(list.CLIENT_TYPE)!}]</td>
				</tr>
			</#list>
		</tbody>
	</table>
	<#include "/common/pages.ftl">
</div>

