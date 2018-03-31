
<#include "/common/pageForm.ftl">
<script type="text/javascript">
	function liquidation(){
		$.ajax({
			type:"post",
			url:"${base}/AgentProfitAll/doClearing",
			data:{},
			success:function(data){
			}
		});
	}
</script>
<div class="pageHeader">
	<form onsubmit="return navTabSearch(this);" action="${url}" method="post">
		<div class="searchBar">
			<table class="searchContent">
				<tr>
					<td>
						上级代理商等级:
						<select name="all_agent_lev" selectvl = "${(p.params.all_agent_lev)!''}">
						<option value="">全部</option>
						<option value=1>一级</option>
						<option value=2>二级</option>
						<option value=3>三级</option>
					</td>
					<td>
						上级代理商编号:<input type="text" name="all_agent_no" value="${(p.params.all_agent_no)!''}" size=15/>
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
			<!--
			<li><a class="add " href="javascript:;"  onclick="liquidation();" title="清算"><span>清算</span></a></li>
			-->		
			<span  style="float:right;" >
			商户总交易金额：
			<strong>${(totup.dealMoney?number?string.currency)!''}</strong>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			商户总手续费：
			<strong>${(totup.clientCharge?number?string.currency)!''}</strong>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			商户总交易笔数：
			<strong>${(totup.num)!''}</strong>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			上级代理商总手续费：
			<strong>${(totup.allCharge?number?string.currency)!''}</strong>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			上级代理商总分润：
			<strong>${(totup.allProfit?number?string.currency)!''}</strong>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		</span>		
		</ul>
	</div>
	<table class="table" width="98%" layoutH="109">
		<thead>
			<tr>
				<th width="5%" orderField="client_no">商户编号</th>
				<th width="6%" orderField="client_name">商户名称</th>
				<th width="6%" orderField="serial">流水号</th>
				<th width="5%" orderField="deal_money">交易金额(元)</th>
				<th width="5%" orderField="deal_date">交易日期</th>
				<th width="5%" orderField="client_rate">商户费率</th>
				<th width="5%" orderField="client_charge">商户手续费(元)</th>
				<th width="5%" orderField="deal_type">交易类型</th>
				<th width="5%" orderField="clear_no">清算类型</th>
				<th width="5%" orderField="agent_no">所属代理商</th>
				<th width="5%" orderField="all_agent_no">上级代理商编号</th>
				<th width="5%" orderField="agent_name">上级代理商名称</th>
				<th width="5%" orderField="all_agent_lev">上级级别</th>
				<th width="5%" orderField="all_agent_rate">上级代理商费率</th>
				<th width="5%" orderField="all_agent_charge">上级代理商手续费(元)</th>
				<th width="5%" orderField="all_agent_profit">上级代理商分润(元)</th>
				<th width="5%" orderField="add_date">运算日期</th>
			</tr>
		</thead>
		<tbody>
			<#list p.results as list>
				<tr target="id" rel="${(list.ID)!}">
					<td >${(list.CLIENT_NO)!}</td>
					<td >${(list.CLIENT_NAME)!}</td>
					<td >${(list.SERIAL)!}</td>
					<td >${(list.DEAL_MONEY)!}</td>
					<td >${(list.DEAL_DATE)!}</td>
					<td >${(list.CLIENT_RATE)!}%</td>
					<td >${(list.CLIENT_CHARGE)!}</td>
					<td ><#if list.DEAL_TYPE == 0>微信<#elseif list.DEAL_TYPE ==1>支付宝<#else>无卡</#if></td>
					<td ><#if list.CLEAR_NO ==0>T0<#else>T1</#if></td>
					<td >${(list.AGENT_NO)!}</td>
					<td >${(list.ALL_AGENT_NO)!}</td>
					<td >${(list.AGENT_NAME)!}</td>
					<td >${(list.ALL_AGENT_LEV)!}级</td>
					<td >${(list.ALL_AGENT_RATE)!}%</td>
					<td >${(list.ALL_AGENT_CHARGE)!}</td>
					<td >${(list.ALL_AGENT_PROFIT)!}</td>
					<td >${(list.ADD_DATE)!}</td>
				</tr>
			</#list>
		</tbody>
	</table>
	<#include "/common/pages.ftl">
</div>

